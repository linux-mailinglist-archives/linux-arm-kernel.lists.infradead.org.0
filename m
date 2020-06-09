Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CB71F46C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VGQ0gB+foWRryULxUOKSb/5LpAM/34TG8qdforvZO4=; b=KrUqLigtsXx9y6
	UdYNSlZAL1K0iAJJ9Wvz1NfIu5QtX+s3SXkOMtkBJiGN7/dp9Osa1LF02fhHRIbmx7rWea92lUW5V
	4Zv5Yry1lXlXSz7yUa+VsRtKm5F2kWXDTJEkcWalS8YjTdkIuy4d2zEj4b0rNhpiQskrwpWQ0cjAT
	4dFwMlHMlS1C0o+iIU9yyhq0kvzIUrQ/6G65JMbm8pQpbuUsuWwcDdozyfVTPr1UJqu9Qe/WOaNvd
	N4k/fTOOkfQM2cOHYtEBDthCbjT3ynslNnr05b5vwIa4CmC3wwipJ/TrSmFyZi2SOnuPGGyiTax80
	wOU88aVaZ3jCByjKSEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijYQ-0003ij-1J; Tue, 09 Jun 2020 19:04:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijYH-0003iD-Ix
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:04:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id r9so3850952wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Ge3VyoAaZL1/OTneZ+2zUT+PtoEIvR18KepPJWadg9c=;
 b=YzCXPlKztl5CJV/qwyuSuukBnUr3e+8KLSfzl0TTqnV1Tbrsyld6tNRKD3PrQoU0l9
 Sa5fTQ6+C9sRbTX2XaHSoLR1M6k97ZiNwg4wPy8nTgzHmiS6XNuh6V5W6g0utgMwljM5
 rzYxOOFmojUpgjLWDRYm6IUeSOsSK+AWPgs4xw9KocaDbKG0yrMIKJJzm2GUeOkmN2Zc
 kPZljWf/OGSNTRpZJveKQDz5RY+4kFNQNIWjdAb7CZtH+rcPNb6BOf6lC13G7R7mCGEk
 h5F9TxveHrq1CUWDceH9H+nZ/cLOxU0xOILATOaRfuJRqTysFIz3kwn7j5rR1F494h5I
 Ukdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ge3VyoAaZL1/OTneZ+2zUT+PtoEIvR18KepPJWadg9c=;
 b=DC7rBgLQGH4OZJd8FVwmpae8fdx/vGwOATlJ3I8WT3Boj2vqG05GREMnYBLJX8EwWJ
 dSvgMBJ8FetXf20qzUrvi4Pw6RvuRJFjYpbwa2K6M9EQ6GeD3OmLB2i9kT9WC8cJDej6
 fKRYMlnrwxPyWYlrrW1nm/bzchaA6btyCUd3cE4vg4titjMJogidCrH93cPS/wtPssuj
 SiaYRXYfyyzeEvi/SrpZPlPNPC8M49VNjqS0T3PZClAGrzen8gCozuebIIhNDjQ2Rc9L
 +E4k+7mHJnPWdoEKvpA7cTOVcDiO5v4waWDAkruA/MPuL1qenVfoBon1ZL/siA9rxp8W
 B0iQ==
X-Gm-Message-State: AOAM532miSIBg50G02sduBRLVRp9UMJ6ld8gVjb557IrYcpmDvzzaMeL
 5hVpfRUJ4ZejNrM1kuBy8rnBXQ==
X-Google-Smtp-Source: ABdhPJzN+BygjHAXONePT0Kf4YAs7yH6hesdbbYDOCsdr+huL8ukQ34b+ZD+otUf+KiEJ7FWdD9eJA==
X-Received: by 2002:a7b:ce88:: with SMTP id q8mr5410226wmj.176.1591729488213; 
 Tue, 09 Jun 2020 12:04:48 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id g25sm3794436wmh.18.2020.06.09.12.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:04:46 -0700 (PDT)
Date: Tue, 9 Jun 2020 20:04:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [RFC] MFD's relationship with Device Tree (OF)
Message-ID: <20200609190445.GP4106@dell>
References: <20200609110136.GJ4106@dell>
 <CAHp75Vfy2siUikK7bN3iM=pj3B8XYWzszkKAFgBt0SFh26s+Sw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75Vfy2siUikK7bN3iM=pj3B8XYWzszkKAFgBt0SFh26s+Sw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_120449_660594_E3D1E3FB 
X-CRM114-Status: GOOD (  36.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 GregKroah-Hartmangregkh@linuxfoundation.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOSBKdW4gMjAyMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgoKPiBPbiBUdWUsIEp1
biA5LCAyMDIwIGF0IDI6MDEgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPgo+ID4gR29vZCBtb3JuaW5nLAo+ID4KPiA+IEFmdGVyIGEgbnVtYmVyIG9mIHJlcG9y
dHMvcXVlcmllcyBzdXJyb3VuZGluZyBhIGtub3duIGxvbmctdGVybSBpc3N1ZQo+ID4gaW4gdGhl
IE1GRCBjb3JlLCBpbmNsdWRpbmcgdGhlIHN1Ym1pc3Npb24gb2YgYSBjb3VwbGUgb2YgYXR0ZW1w
dGVkCj4gPiBzb2x1dGlvbnMsIEkndmUgZGVjaWRlZCB0byBmaW5hbGx5IHRhY2tsZSB0aGlzIG9u
ZSBteXNlbGYuCj4gPgo+ID4gQ3VycmVudGx5LCB3aGVuIGEgY2hpbGQgcGxhdGZvcm0gZGV2aWNl
IChzb21ldGltZXMgcmVmZXJyZWQgdG8gYXMgYQo+ID4gc3ViLWRldmljZSkgaXMgcmVnaXN0ZXJl
ZCB2aWEgdGhlIE11bHRpLUZ1bmN0aW9uYWwgRGV2aWNlIChNRkQpIEFQSSwKPiA+IHRoZSBmcmFt
ZXdvcmsgYXR0ZW1wdHMgdG8gbWF0Y2ggdGhlIG5ld2x5IHJlZ2lzdGVyZWQgcGxhdGZvcm0gZGV2
aWNlCj4gPiB3aXRoIGl0cyBhc3NvY2lhdGVkIERldmljZSBUcmVlIChPRikgbm9kZS4gIFVudGls
IG5vdywgdGhlIGRldmljZSBoYXMKPiA+IGJlZW4gYWxsb2NhdGVkIHRoZSBmaXJzdCBub2RlIGZv
dW5kIHdpdGggYW4gaWRlbnRpY2FsIE9GIGNvbXBhdGlibGUKPiA+IHN0cmluZy4gIFVuZm9ydHVu
YXRlbHksIGlmIHRoZXJlIGFyZSwgc2F5IGZvciBleGFtcGxlICczJyBkZXZpY2VzCj4gPiB3aGlj
aCBhcmUgdG8gYmUgaGFuZGxlZCBieSB0aGUgc2FtZSBkcml2ZXIgYW5kIHRoZXJlZm9yZSBoYXZl
IHRoZSBzYW1lCj4gPiBjb21wYXRpYmxlIHN0cmluZywgZWFjaCBvZiB0aGVtIHdpbGwgYmUgYWxs
b2NhdGVkIGEgcG9pbnRlciB0byB0aGUKPiA+ICpmaXJzdCogbm9kZS4KPiA+Cj4gPiBMZXQgbWUg
Z2l2ZSB5b3UgYW4gZXhhbXBsZS4KPiA+Cj4gPiBJIGhhdmUga25vY2tlZCB1cCBhbiBleGFtcGxl
ICdwYXJlbnQnIGFuZCAnY2hpbGQnIGRldmljZSBkcml2ZXIuICBUaGUKPiA+IHBhcmVudCB1dGls
aXNlcyB0aGUgTUZEIEFQSSB0byByZWdpc3RlciAzIGlkZW50aWNhbCBjaGlsZHJlbiwgZWFjaAo+
ID4gY29udHJvbGxlZCBieSB0aGUgc2FtZSBkcml2ZXIuICBUaGlzIGhhcHBlbnMgYSBsb3QuICBG
b3J0dW5hdGVseSwgaW4KPiA+IHRoZSBtYWpvcml0eSBvZiBjYXNlcywgdGhlIE9GIG5vZGVzIGFy
ZSBhbHNvIHRvdGFsbHkgaWRlbnRpY2FsLCBidXQKPiA+IHdoYXQgaWYgeW91IHdpc2ggdG8gY29u
ZmlndXJlIG9uZSBvZiB0aGUgY2hpbGQgZGV2aWNlcyB3aXRoIGRpZmZlcmVudAo+ID4gYXR0cmli
dXRlcyBvciByZXNvdXJjZXMgc3VwcGxpZWQgdmlhIERldmljZSBUcmVlLCBsaWtlIGEgY2xvY2s/
ICBUaGlzCj4gPiBpcyBjdXJyZW50bHkgaW1wb3NzaWJsZS4KPiA+Cj4gPiBIZXJlIGlzIHRoZSBE
ZXZpY2UgVHJlZSByZXByZXNlbnRhdGlvbiBmb3IgdGhlIDEgcGFyZW50IGFuZCB0aGUgMwo+ID4g
Y2hpbGQgKHN1YikgZGV2aWNlcyBkZXNjcmliZWQgYWJvdmU6Cj4gPgo+ID4gICAgICAgICBwYXJl
bnQgewo+ID4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWZkLG9mLXRlc3QtcGFyZW50
IjsKPiA+Cj4gPiAgICAgICAgICAgICAgICAgY2hpbGRAMCB7Cj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICBjb21wYXRpYmxlID0gIm1mZCxvZi10ZXN0LWNoaWxkIjsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgMD47Cj4gPiAgICAgICAgICAgICAgICAgfTsK
PiA+Cj4gPiAgICAgICAgICAgICAgICAgY2hpbGRAMSB7Cj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gIm1mZCxvZi10ZXN0LWNoaWxkIjsKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgMT47Cj4gPiAgICAgICAgICAgICAgICAgfTsKPiA+
Cj4gPiAgICAgICAgICAgICAgICAgY2hpbGRAMiB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gIm1mZCxvZi10ZXN0LWNoaWxkIjsKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY2xvY2sgMj47Cj4gPiAgICAgICAgICAgICAgICAgfTsKPiA+ICAg
ICAgICAgfTsKPiA+Cj4gPiBUaGlzIGlzIGhvdyB3ZSByZWdpc3RlciB0aG9zZSBkZXZpY2VzIGZy
b20gTUZEOgo+ID4KPiA+IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWZkX2NlbGwgbWZkX29mX3Rlc3Rf
Y2VsbFtdID0gewo+ID4gICAgICAgICBPRl9NRkRfQ0VMTCgibWZkX29mX3Rlc3RfY2hpbGQiLCBO
VUxMLCBOVUxMLCAwLCAwLCAibWZkLG9mLXRlc3QtY2hpbGQiKSwKPiA+ICAgICAgICAgT0ZfTUZE
X0NFTEwoIm1mZF9vZl90ZXN0X2NoaWxkIiwgTlVMTCwgTlVMTCwgMCwgMSwgIm1mZCxvZi10ZXN0
LWNoaWxkIiksCj4gPiAgICAgICAgIE9GX01GRF9DRUxMKCJtZmRfb2ZfdGVzdF9jaGlsZCIsIE5V
TEwsIE5VTEwsIDAsIDIsICJtZmQsb2YtdGVzdC1jaGlsZCIpCj4gPiB9Owo+ID4KPiA+IC4uLiB3
aGljaCB3ZSBwYXNzIGludG8gbWZkX2FkZF9kZXZpY2VzKCkgZm9yIHByb2Nlc3NpbmcuCj4gPgo+
ID4gSW4gYW4gaWRlYWwgd29ybGQuICBUaGUgZGV2aWNlcyB3aXRoIHRoZSBwbGF0Zm9ybV9pZDsg
MCwgMSBhbmQgMiB3b3VsZAo+ID4gYmUgbWF0Y2hlZCB1cCB0byBEZXZpY2UgVHJlZSBub2Rlczsg
Y2hpbGRAMCwgY2hpbGRAMSBhbmQgY2hpbGRAMgo+ID4gcmVzcGVjdGl2ZWx5LiAgSW5zdGVhZCBh
bGwgMyBkZXZpY2VzIHdpbGwgYmUgYWxsb2NhdGVkIGEgcG9pbnRlciB0bwo+ID4gY2hpbGRAMCdz
IE9GIG5vZGUsIHdoaWNoIGlzIG9idmlvdXNseSBub3QgY29ycmVjdC4KPiA+Cj4gPiBUaGlzIGlz
IGhvdyBpdCBsb29rcyB3aGVuIGVhY2ggb2YgdGhlIGNoaWxkIGRldmljZXMgYXJlIHByb2JlZDoK
PiA+Cj4gPiAgWzAuNzA4Mjg3XSBtZmQtb2YtdGVzdC1wYXJlbnQgbWZkX29mX3Rlc3Q6IFJlZ2lz
dGVyaW5nIDMgZGV2aWNlcwo+ID4gIFsuLi5dCj4gPiAgWzAuNzEyNTExXSBtZmQtb2YtdGVzdC1j
aGlsZCBtZmRfb2ZfdGVzdF9jaGlsZC4wOiBQcm9iaW5nIHBsYXRmb3JtIGRldmljZTogMAo+ID4g
IFswLjcxMjcxMF0gbWZkLW9mLXRlc3QtY2hpbGQgbWZkX29mX3Rlc3RfY2hpbGQuMDogVXNpbmcg
T0Ygbm9kZTogY2hpbGRAMAo+ID4gIFswLjcxMzAzM10gbWZkLW9mLXRlc3QtY2hpbGQgbWZkX29m
X3Rlc3RfY2hpbGQuMTogUHJvYmluZyBwbGF0Zm9ybSBkZXZpY2U6IDEKPiA+ICBbMC43MTMzODFd
IG1mZC1vZi10ZXN0LWNoaWxkIG1mZF9vZl90ZXN0X2NoaWxkLjE6IFVzaW5nIE9GIG5vZGU6IGNo
aWxkQDAKPiA+ICBbMC43MTM2OTFdIG1mZC1vZi10ZXN0LWNoaWxkIG1mZF9vZl90ZXN0X2NoaWxk
LjI6IFByb2JpbmcgcGxhdGZvcm0gZGV2aWNlOiAyCj4gPiAgWzAuNzEzODg5XSBtZmQtb2YtdGVz
dC1jaGlsZCBtZmRfb2ZfdGVzdF9jaGlsZC4yOiBVc2luZyBPRiBub2RlOiBjaGlsZEAwCj4gPgo+
ID4gIldoeSBpcyBpdCB3aGVuIEkgY2hhbmdlIGNoaWxkIDIncyBjbG9jayByYXRlLCBpdCBhbHNv
IGNoYW5nZXMgMCdzPyIKPiA+Cj4gPiBXaG9vcHMhCj4gPgo+ID4gU28gaW4gb3JkZXIgdG8gZml4
IHRoaXMsIHdlIG5lZWQgdG8gbWFrZSBNRkQgbW9yZS1jbGV2ZXJlciEKPiA+Cj4gPiBIb3dldmVy
LCB0aGlzIGlzIG5vdCBzbyBzaW1wbGUuICBUaGVyZSBhcmUgc29tZSBydWxlcyB3ZSBzaG91bGQg
YWJpZGUKPiA+IGJ5IChJIHVzZSAic2hvdWxkIiBpbnRlbnRpb25hbGx5IGhlcmUsIGFzIHNvbWV0
aGluZyBtaWdodCBqdXN0IGhhdmUgdG8KPiA+IGdpdmUpOgo+ID4KPiA+ICBhKSBTaW5jZSBEZXZp
Y2UgVHJlZSBpcyBkZXNpZ25lZCB0byBkZXNjcmliZSBoYXJkd2FyZSwgaW5zZXJ0aW5nCj4gPiAg
ICAgYXJiaXRyYXJ5IHByb3BlcnRpZXMgaW50byBEVCBpcyBmb3JiaWRkZW4uICBUaGlzIHByZWNs
dWRlcyB0aGluZ3MKPiA+ICAgICB3ZSB3b3VsZCBvcmRpbmFyaWx5IGJlIGFibGUgdG8gbWF0Y2gg
b24sIGxpa2UgJ2lkJyBvciAnbmFtZScuCj4gPiAgYikgQXMgYW4gZXh0ZW5zaW9uIHRvIGEpIERU
cyBzaG91bGQgYWxzbyBiZSBPUyBhZ25vc3RpYywgc28KPiA+ICAgICBwcm9wZXJ0aWVzIGxpa2Ug
J21mZC1kZXZpY2UnLCAnbWZkLW9yZGVyJyBldGMgYXJlIGFsc28gbm90Cj4gPiAgICAgbm90IHN1
aXRhYmxlIGZvciBpbmNsdXNpb24uCj4gPiAgYykgVGhlIGZpbmFsIHNvbHV0aW9uIHNob3VsZCBp
ZGVhbGx5IGJlIGNhcGFibGUgb2Ygc3VwcG9ydGluZyBib3RoCj4gPiAgICAgbmV3bHkgZGVmaW5l
ZCBhbmQgY3VycmVudCB0cmVlcyAod2l0aG91dCByZXRyb2FjdGl2ZSBlZGl0cykKPiA+ICAgICBh
bGlrZS4KPiA+ICBkKSBFeGlzdGluZyBwcm9wZXJ0aWVzIGNvdWxkIGJlIHVzZWQsIGJ1dCBub3Qg
YWJ1c2VkLiAgRm9yIGV4YW1wbGUsCj4gPiAgICAgb25lIG9mIG15IHN1Z2dlc3Rpb25zIChzZWUg
YmVsb3cpIGlzIHRvIHVzZSB0aGUgJ3JlZycgcHJvcGVydHkuCj4gPiAgICAgVGhpcyBpcyBmaW5l
IGluIHByaW5jaXBsZSBidXQgbG9hZGluZyAncmVnJyB3aXRoIGFyYml0cmFyeSB2YWx1ZXMKPiA+
ICAgICAoc3VjaCBhczsgMCwgMSwgMiAuLi4geCkgd2hpY2ggMSkgY2xlYXJseSBkbyBub3QgaGF2
ZSBhbnl0aGluZyB0bwo+ID4gICAgIGRvIHdpdGggcmVnaXN0ZXJzIGFuZCAyKSB3b3VsZCBiZSBt
ZWFuaW5nbGVzcyBpbiBvdGhlciBPU2VzLwo+ID4gICAgIGltcGxlbWVudGF0aW9ucywganVzdCB0
byBzZXJ2ZSBvdXIgcHVycG9zZSwgaXMgdG8gYmUgaW50ZXJwcmV0ZWQKPiA+ICAgICBhcyBhbiBh
YnVzZS4KPiA+Cj4gPiBQcm9wb3NhbCAxOgo+ID4KPiA+IEFzIG1lbnRpb25lZCBhYm92ZSwgbXkg
aW5pdGlhbCB0aG91Z2h0cyB3ZXJlIHRvIHVzZSB0aGUgJ3JlZycgcHJvcGVydHkKPiA+IHRvIG1h
dGNoIGFuIE1GRCBjZWxsIGVudHJ5IHdpdGggdGhlIGNvcnJlY3QgRFQgbm9kZS4gIEhvd2V2ZXIs
IG5vdAo+ID4gYWxsIERldmljZSBUcmVlIG5vZGVzIGhhdmUgJ3JlZycgcHJvcGVydGllcy4gIFBh
cnRpY3VsYXJseSB0cnVlIGluIHRoZQo+ID4gY2FzZSBvZiBNRkQsIHdoZXJlIG1lbW9yeSByZXNv
dXJjZXMgYXJlIHVzdWFsbHkgc2hhcmVkIHdpdGggdGhlIHBhcmVudAo+ID4gdmlhIFJlZ21hcCwg
b3IgKGFzIGluIHRoZSBjYXNlIG9mIHRoZSBhYjg1MDApIHRoZSBNRkQgaGFuZGxlcyBhbGwKPiA+
IHJlZ2lzdGVyIHRyYW5zYWN0aW9ucyB2aWEgaXRzIG93biBBUEkuCj4gPgo+ID4gUHJvcG9zYWwg
MjoKPiA+Cj4gPiBJZiB3ZSBjYW4ndCBndWFyYW50ZWUgdGhhdCBhbGwgRFQgbm9kZXMgd2lsbCBo
YXZlIGF0IGxlYXN0IG9uZQo+ID4gcHJvcGVydHkgaW4gY29tbW9uIHRvIGJlIHVzZWQgZm9yIG1h
dGNoaW5nIGFuZCB3ZSdyZSBwcmV2ZW50ZWQgZnJvbQo+ID4gc3VwcGx5aW5nIGFkZGl0aW9uYWws
IHBvdGVudGlhbGx5IGJlc3Bva2UgcHJvcGVydGllcywgdGhlbiB3ZSBtdXN0Cj4gPiBzZWVrIGFu
IGFsdGVybmF0aXZlIHByb2NlZHVyZS4KPiA+Cj4gPiBJdCBzaG91bGQgYmUgcG9zc2libGUgdG8g
bWF0Y2ggYmFzZWQgb24gb3JkZXIuICBIb3dldmVyLCB0aGUgZGV2ZWxvcGVyCj4gPiB3b3VsZCBo
YXZlIHRvIGd1YXJhbnRlZSB0aGF0IHRoZSBvcmRlciBpbiB3aGljaCB0aGUgY2hpbGQgZGV2aWNl
cyBhcmUKPiA+IHByZXNlbnRlZCB0byB0aGUgTUZEIEFQSSBhcmUgaW4gZXhhY3RseSB0aGUgc2Ft
ZSBvcmRlciBhcyB0aGV5IGFyZQo+ID4gcmVwcmVzZW50ZWQgaW4gdGhlIERldmljZSBUcmVlLiAg
VGhlIG9idmlvdXMgZHJhdy1iYWNrIHRvIHRoaXMKPiA+IHN0cmF0ZWd5IGlzIHRoYXQgaXQncyBw
b3RlbnRpYWxseSB2ZXJ5IGZyYWdpbGUuCj4gPgo+ID4gQ3VycmVudCBQcm9wb3NhbDoKPiA+Cj4g
PiBIb3cgYWJvdXQgYSBjb2xsZWN0aW9uIG9mIFByb3Bvc2FsIDEgYW5kIFByb3Bvc2FsIDI/ICBG
aXJzdCB3ZSBjb3VsZAo+ID4gYXR0ZW1wdCBhIG1hdGNoIG9uIHRoZSAncmVnJyBwcm9wZXJ0eS4g
IFRoZW4sIGlmIHRoYXQgZmFpbHMsIHdlIHdvdWxkCj4gPiB1c2UgdGhlIGZyYWdpbGUtYnV0LWl0
cy1hbGwtd2UtaGF2ZSBQcm9wb3NhbCAyIGFzIHRoZSBmYWxsLWJhY2suCj4gPgo+ID4gVGhvdWdo
dHM/Cj4gCj4gSnVzdCBhIHNpZGUgbm90ZSwgaGF2ZSB5b3UgY29uc2lkZXJlZCBzb2Z0d2FyZSBu
b2RlcyBvbiB0aGUgcGljdHVyZT8KPiBZb3UgY2FuIGFkZCBwcm9wZXJ0aWVzIG9yIGFkZGl0aW9u
YWwgcmVmZXJlbmNlcyB0byB0aGUgZXhpc3RpbmcKPiAoZmlybXdhcmUpIG5vZGVzLgoKSXMgdGhh
dCB0aGUgcHJvcGVydGllcyBmcmFtZXdvcmsgeW91IGFyZSB0cnlpbmcgdG8gcmVwbGFjZT8KCklz
IHRoYXQgZGlmZmVyZW50IHRvIHBsYWNpbmcgYWRkaXRpb25hbCBhdHRyaWJ1dGVzIGludG8gcGRh
dGE/CgpVc2luZyBteSBjbG9jayBleGFtcGxlIGFib3ZlLCBob3cgd291bGQgb25lIGFsbG9jYXRl
IGEgRFQgYmFzZWQgY2xvY2sKdG8gYSBjaGlsZCBkZXZpY2UgdXNpbmcgcHJvcGVydGllcz8KCi0t
IApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVy
IFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29D
cwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
