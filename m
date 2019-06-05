Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C6F364CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rM6UP+SQ4jBtA5SaAuT+3enwCI9/HZ7Uc261xEuEmZY=; b=ku2hm+TJxU54ze
	yJUTMA4WBoA0i1SBKOQ6OAwqNsunUQ/bednmAzbdHOzi8O+CJ9NzxVge8Hq0T7dyutCASNF875+WJ
	ZeDA10NCfclpZYDVD7KcyOb1qGUYdeGwjIoZAEUzc+PukTdMmGsFIQYHLzhELrhVetOJKzW1iPWCS
	VNQENFEVsjHsOJdossI9qal2UAaaIUkS+7kVTgj1OOnr2kgle1Z8rLw8nQO1GLCL4PWflu02ah/CA
	XigkEuxUscQvytFBcWz0aX9eaVt0H3AG3euCkPw63gQOH1Z2v6kgoi/FYDc1a1F3wkPD3Y61d+4KG
	Udg5x1YMJuJCocSj25uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbhV-0001Dh-Nx; Wed, 05 Jun 2019 19:35:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbhO-0001D9-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:35:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id d17so48221wmb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 12:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=+XgTLMQHXUHAlRC15H03l3gn1i1407JWZiEl7Nlddc8=;
 b=rxPej+XaD2qUwYl11GzFNqf37sO+gbFXWtcskQgkqqRrdfKXJVNXNWMKUOIhNqFjnH
 sZbnuPbZbo21HKEviDQhbRvQbZn8LburWbITtvsEJE0y8WStht94fUX2bcgyE1Dcm/lf
 k5OsvlayoxvkYJ1AqrJmd7BisXQpEh/PpaWAqM8L8WIAt844ii2QLM0SNMtFcZBZkWhn
 uzfcIIQPdraQpVsk2BLRA95nwTaL4V8rxuU+oKOWJ1HzBIE2Nv0AYF5Hx4puT0WNmK/T
 iiOl87G2kq51FeqFmeOYCg0qMP1lYY6XCF9GnuBHVqQELSUiwfDN0j9gi2dDEg1GG0AL
 lk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=+XgTLMQHXUHAlRC15H03l3gn1i1407JWZiEl7Nlddc8=;
 b=M4ybGoJCkUrN4uHcSe2qxceCrP+m1Srpc7OLjsboRhsXS5/npq8CUOrrG4434V1IMB
 4wZDcq12ZgQ5HHw54VCTdG+5KNwKCBT9ZKmyjfrLy19DjB7d6Ft0g/M/oO8hjDLIe3pe
 sAbzZ9pAgiqqJihtY40prQbNF6hhOFhW4DTnvAtLvHi7fPKs+hzGNKzG/bCoJCt1mIMV
 mN/kWdH6znPWonqCgtOYrgS3SORHim1hGerm7aSf7NAUDZbZRQI+AqC/ooNTBllrOVA8
 mzXWYm33jveAvQAw4xQNZkpMa0nyGd9LjxUnih+mGK6fwzsIeTWw9f5fOevPpglFKbwL
 nUWw==
X-Gm-Message-State: APjAAAVJzKchZXcpGgaPh3N5qr7OooqXCbTQARVGtqp9UG9p/csElDJi
 HtQqjYJ9gheSCN4rPFzF9Genb8sV5H0=
X-Google-Smtp-Source: APXvYqwP7o7VGE+TdqvhZHNouyX2xhkoTgrYZTIp0Ei2POvdABQ8iKlx3+djogE+DbI+YmFupn+u2w==
X-Received: by 2002:a1c:b707:: with SMTP id h7mr11518255wmf.45.1559763347150; 
 Wed, 05 Jun 2019 12:35:47 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id m17sm10523991wrx.12.2019.06.05.12.35.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 12:35:46 -0700 (PDT)
Date: Wed, 5 Jun 2019 20:35:44 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190605193544.GX4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-4-lee.jones@linaro.org>
 <20190605061721.GK22737@tuxbook-pro> <20190605073133.GL4797@dell>
 <20190605190614.GI4814@minitux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605190614.GI4814@minitux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_123550_774142_CCA374AD 
X-CRM114-Status: GOOD (  34.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBXZWQgMDUg
SnVuIDAwOjMxIFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBPbiBUdWUsIDA0IEp1
biAyMDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiAKPiA+ID4gT24gVHVlIDA0IEp1biAw
Mzo0NCBQRFQgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBUaGlzIHBhdGNo
IHByb3ZpZGVzIGJhc2ljIHN1cHBvcnQgZm9yIGJvb3Rpbmcgd2l0aCBBQ1BJIGluc3RlYWQKPiA+
ID4gPiBvZiB0aGUgY3VycmVudGx5IHN1cHBvcnRlZCBEZXZpY2UgVHJlZS4gIFdoZW4gZG9pbmcg
c28gdGhlcmUgYXJlIGEKPiA+ID4gPiBjb3VwbGUgb2YgZGlmZmVyZW5jZXMgd2hpY2ggd2UgbmVl
ZCB0byB0YWtlbiBpbnRvIGNvbnNpZGVyYXRpb24uCj4gPiA+ID4gCj4gPiA+ID4gRmlyc3RseSwg
dGhlIFNETTg1MCBBQ1BJIHRhYmxlcyBvbWl0IGluZm9ybWF0aW9uIHBlcnRhaW5pbmcgdG8gdGhl
Cj4gPiA+ID4gNCByZXNlcnZlZCBHUElPcyBvbiB0aGUgcGxhdGZvcm0uICBJZiBMaW51eCBhdHRl
bXB0cyB0byB0b3VjaC8KPiA+ID4gPiBpbml0aWFsaXNlIGFueSBvZiB0aGVzZSBsaW5lcywgdGhl
IGZpcm13YXJlIHdpbGwgcmVzdGFydCB0aGUKPiA+ID4gPiBwbGF0Zm9ybS4KPiA+ID4gPiAKPiA+
ID4gPiBTZWNvbmRseSwgd2hlbiBib290aW5nIHdpdGggQUNQSSwgaXQgaXMgZXhwZWN0ZWQgdGhh
dCB0aGUgZmlybXdhcmUKPiA+ID4gPiB3aWxsIHNldC11cCB0aGluZ3MgbGlrZTsgUmVndWxhdG9y
cywgQ2xvY2tzLCBQaW4gRnVuY3Rpb25zLCBldGMgaW4KPiA+ID4gPiB0aGVpciBpZGVhbCBjb25m
aWd1cmF0aW9uLiAgVGh1cywgdGhlIHBvc3NpYmxlIFBpbiBGdW5jdGlvbnMKPiA+ID4gPiBhdmFp
bGFibGUgdG8gdGhpcyBwbGF0Zm9ybSBhcmUgbm90IGFkdmVydGlzZWQgd2hlbiBwcm92aWRpbmcg
dGhlCj4gPiA+ID4gaGlnaGVyIEdQSU9EL1BpbmN0cmwgQVBJcyB3aXRoIHBpbiBpbmZvcm1hdGlv
bi4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3BpbmN0cmwvcWNvbS9LY29u
ZmlnICAgICAgICAgIHwgIDIgKy0KPiA+ID4gPiAgZHJpdmVycy9waW5jdHJsL3Fjb20vcGluY3Ry
bC1zZG04NDUuYyB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9xY29tL0tjb25maWcgYi9kcml2ZXJz
L3BpbmN0cmwvcWNvbS9LY29uZmlnCj4gPiA+ID4gaW5kZXggMmU2NmFiNzJjMTBiLi5hYWZiZTkz
MjQyNGYgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9waW5jdHJsL3Fjb20vS2NvbmZpZwo+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9xY29tL0tjb25maWcKPiA+ID4gPiBAQCAtMTY4
LDcgKzE2OCw3IEBAIGNvbmZpZyBQSU5DVFJMX1NETTY2MAo+ID4gPiA+ICAKPiA+ID4gPiAgY29u
ZmlnIFBJTkNUUkxfU0RNODQ1Cj4gPiA+ID4gICAgICAgICB0cmlzdGF0ZSAiUXVhbGNvbW0gVGVj
aG5vbG9naWVzIEluYyBTRE04NDUgcGluIGNvbnRyb2xsZXIgZHJpdmVyIgo+ID4gPiA+IC0gICAg
ICAgZGVwZW5kcyBvbiBHUElPTElCICYmIE9GCj4gPiA+ID4gKyAgICAgICBkZXBlbmRzIG9uIEdQ
SU9MSUIgJiYgKE9GIHx8IEFDUEkpCj4gPiA+ID4gICAgICAgICBzZWxlY3QgUElOQ1RSTF9NU00K
PiA+ID4gPiAgICAgICAgIGhlbHAKPiA+ID4gPiAgICAgICAgICAgVGhpcyBpcyB0aGUgcGluY3Ry
bCwgcGlubXV4LCBwaW5jb25mIGFuZCBncGlvbGliIGRyaXZlciBmb3IgdGhlCj4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9xY29tL3BpbmN0cmwtc2RtODQ1LmMgYi9kcml2ZXJz
L3BpbmN0cmwvcWNvbS9waW5jdHJsLXNkbTg0NS5jCj4gPiA+ID4gaW5kZXggYzk3ZjIwZmNhNWZk
Li43MTg4YmVlM2NmM2UgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9waW5jdHJsL3Fjb20v
cGluY3RybC1zZG04NDUuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9xY29tL3BpbmN0
cmwtc2RtODQ1LmMKPiA+ID4gPiBAQCAtMyw2ICszLDcgQEAKPiA+ID4gPiAgICogQ29weXJpZ2h0
IChjKSAyMDE2LTIwMTgsIFRoZSBMaW51eCBGb3VuZGF0aW9uLiBBbGwgcmlnaHRzIHJlc2VydmVk
Lgo+ID4gPiA+ICAgKi8KPiA+ID4gPiAgCj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9hY3BpLmg+
Cj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGxp
bnV4L29mLmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+
ID4gPiBAQCAtMTI3Nyw2ICsxMjc4LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXNtX3Bpbmdy
b3VwIHNkbTg0NV9ncm91cHNbXSA9IHsKPiA+ID4gPiAgCVVGU19SRVNFVCh1ZnNfcmVzZXQsIDB4
OTlmMDAwKSwKPiA+ID4gPiAgfTsKPiA+ID4gPiAgCj4gPiA+ID4gK3N0YXRpYyBjb25zdCBpbnQg
c2RtODQ1X2FjcGlfcmVzZXJ2ZWRfZ3Bpb3NbXSA9IHsKPiA+ID4gPiArCTAsIDEsIDIsIDMsIDgx
LCA4MiwgODMsIDg0LCAtMQo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4gPiAgc3RhdGljIGNv
bnN0IHN0cnVjdCBtc21fcGluY3RybF9zb2NfZGF0YSBzZG04NDVfcGluY3RybCA9IHsKPiA+ID4g
PiAgCS5waW5zID0gc2RtODQ1X3BpbnMsCj4gPiA+ID4gIAkubnBpbnMgPSBBUlJBWV9TSVpFKHNk
bTg0NV9waW5zKSwKPiA+ID4gPiBAQCAtMTI4NCwxNCArMTI4OSw0MSBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IG1zbV9waW5jdHJsX3NvY19kYXRhIHNkbTg0NV9waW5jdHJsID0gewo+ID4gPiA+ICAJ
Lm5mdW5jdGlvbnMgPSBBUlJBWV9TSVpFKHNkbTg0NV9mdW5jdGlvbnMpLAo+ID4gPiA+ICAJLmdy
b3VwcyA9IHNkbTg0NV9ncm91cHMsCj4gPiA+ID4gIAkubmdyb3VwcyA9IEFSUkFZX1NJWkUoc2Rt
ODQ1X2dyb3VwcyksCj4gPiA+ID4gKwkucmVzZXJ2ZWRfZ3Bpb3MgPSBzZG04NDVfYWNwaV9yZXNl
cnZlZF9ncGlvcywKPiA+ID4gCj4gPiA+IFRoZSByZWFzb24gd2h5IHB1dCB0aGVzZSBpbiBEVCBp
cyBiZWNhdXNlIHRoZSBsaXN0IGlzIGJvYXJkL2Zpcm13YXJlCj4gPiA+IGRlcGVuZGVudC4gRS5n
LiB0aGUgZmlybXdhcmUgb24gZGI4NDVjIGRvZXMgbm90IHN1cHBvcnQgdGhlIHBlcmlwaGVyYWxz
Cj4gPiA+IHRoYXQgc2l0cyBvbiB0aGVzZSA4IHBpbnMgYW5kIGFzIHN1Y2ggdGhlc2UgYXJlIG5v
dCByZXNlcnZlZC4KPiA+IAo+ID4gSWYgd2UgbmVlZCB0byBiZSBtb3JlIHBhcnRpY3VsYXIgYWJv
dXQgd2hpY2ggcGxhdGZvcm0ocykgdGhpcyBhZmZlY3RzLAo+ID4gd2UgY291bGQgYWRkIG1hdGNo
aW5nIGJhc2VkIG9uIHRoZWlyIGRpZmZlcmVuY2VzIChzb21lIEFDUEkgSElEIG9yIEYvVwo+ID4g
dmVyc2lvbi9kZXNjcmlwdG9yLCBldGMpIGFzIGFuZCB3aGVuIHdlIGVuYWJsZSB0aGVtIGZvciBi
b290aW5nIHdpdGgKPiA+IEFDUEkuCj4gPiAKPiAKPiBZb3UncmUgbWFraW5nIGFuIGFzc3VtcHRp
b24gdGhhdCBhbGwgU0RNODQ1ICh0aGUgcGxhdGZvcm0pIGRldmljZXMgdXNpbmcKPiBBQ1BJIHdp
bGwgaGF2ZSB0aGlzIGxpc3Qgb2YgR1BJT3MgcmVzZXJ2ZWQgZm9yIHNlY3VyZSBmaXJtd2FyZSB0
byB1c2UsCj4gdGhpcyBpcyBxdWVzdGlvbmFibGUgYnV0IEkgZG9uJ3QgaGF2ZSBhbnkgYmV0dGVy
IHN1Z2dlc3Rpb24uCgpZZXMsIEkgYW0sIHNpbmNlIHRoaXMgaXMgdGhlIGZpcnN0IGFuZCBjdXJy
ZW50bHkgb25seSBkZXZpY2Ugd2hpY2gKdGlja3MgdGhvc2UgYm94ZXMuICBJZi93aGVuIHRoZXJl
IGFyZSBvdGhlcnMgQU5EIGlmIHRoZXkgcmVxdWlyZSBhCmRpZmZlcmVudCBjb25maWd1cmF0aW9u
LCB3ZSBjYW4gbG9vayBhdCB0aGUgZGlmZmVyZW5jZXMgYW5kIGNvbmR1Y3QKc29tZSBzdWl0YWJs
ZSBtYXRjaGluZyBvbiB0aGVtIGF0IHRoZSB0aW1lLgoKPiBCdXQgeW91IGRvIHRoaXMgYnkgYWRk
aW5nIGEgbmV3IHN0cnVjdCBtc21fcGluY3RybF9zb2NfZGF0YQo+IHNkbTg0NV9hY3BpX3BpbmN0
cmwsIHNwZWNpZmljYWxseSBmb3IgdGhlIEFDUEkgY2FzZS4gQW5kIHRoZW4sIG9uIHRoZQo+IGxp
bmUgSSBvYmplY3QgdG8gaGVyZSwgeW91IGFkZCB0aGlzIGxpc3QgYXMgdGhlIGxpc3Qgb2YgcmVz
ZXJ2ZWQgR1BJT3MKPiBmb3IgdGhlIERUIGNhc2UgYXMgd2VsbC4KCk9oaGhoLCBub3cgSSBzZWUg
d2hhdCB5b3UncmUgZ2V0dGluZyBhdC4gIFllcywgdGhhdCdzIGEgbWlzdGFrZSBsZWZ0Cm92ZXIg
ZnJvbSB0ZXN0aW5nLiAgVGhhdCBuZWVkcyByZW1vdmluZyAtLSBnb29kIHNwb3QuCgo+ID4gPiBC
dXQgZ2l2ZW4gdGhhdCB0aGUgdHdvIHN0cnVjdHMgbG9va3MgaWRlbnRpY2FsIG5vdywgZGlkIHlv
dSBwZXJoYXBzIG5vdAo+ID4gPiBpbnRlbmQgdG8gYWRkLnJlc2VydmVkX2dwaW9zIGZvciB0aGUg
bm9uLUFDUEkgY2FzZT8KPiA+IAo+ID4gR2l2ZW4geW91ciBleGFtcGxlIGFib3ZlLCBJIHRoaW5r
IGl0J3MgYmVzdCB0aGF0IHdlIGxldCB0aGUKPiA+IGNvbmZpZ3VyYXRpb24gdGFibGVzIGFkdmVy
dGlzZSB0aGVzZSBpbiB0aGUgZmlyc3QgaW5zdGFuY2UuICBJIG9ubHkKPiA+IGFkZCB0aGVtIGhl
cmUgYmVjYXVzZSBpdCBpcyBub3QgcG9zc2libGUgdG8gb2J0YWluIHRoZW0gZnJvbQo+ID4gZWxz
ZXdoZXJlLgo+ID4gCj4gCj4gVGhlbiBhZGQgaXQgZm9yIEFDUEkgb25seSAtIHdoaWNoIEkgc3Rp
bGwgcHJlc3VtZSB5b3UgaW50ZW5kZWQgdG8gZG8gYnkKPiBhZGRpbmcgc2RtODQ1X2FjcGlfcGlu
Y3RybCAod2hpY2ggaXMgbm93IGlkZW50aWNhbCB0byBzZG04NDVfcGluY3RybCkuCgpXZSdyZSBh
cmd1aW5nIGFib3V0IHRoZSBzYW1lIHRoaW5nIC0gc29ycnkgZm9yIHRoZSBjb25mdXNpb24uCgpJ
IHdpbGwgZml4IHRoaXMuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
