Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E17CBEFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLNWerIYc3vZIloqtcU9HJ4RE7/0QfdhY1hsAdMMg9U=; b=SbDW/uUY5Smtfk
	WSTiNZVBdIVS5+wPg/L/2fzCuGZfwHFICu03Qu3HYsyhRReAxj+76iS/EfD6AbsEBLgcotN8G5WVC
	goLoQz1MjKpfklrud61XJbBEztgRpdQ9/UFRBwujP7znsRN1DXxXWci+EVh5e2HujnNarzCLgew9M
	myjtvt9CYunCo/yFgc87rV54+mDd3w3lfCGVHLizd8kWi8VonSCskcGcM3mmdnwFGK1260sb0BI3/
	ojEdPGbgjk90AxI27mTNwjzxRkrPr7n3zIDWnq502GVDNsnJc+8wmyKMEd9Yo21mXtMXD/F0UfoXS
	Av780hlCu1krnf7VHUDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPNT-0002nW-Am; Fri, 04 Oct 2019 15:20:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPNE-0001wf-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:20:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so6230703wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 08:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bDywciZgx2XBGKysVl4djWbACpcmiGhqyGWzjzvget0=;
 b=wG0VPxddvftgOPz6T+sh3Kvv8RV2sb78no+PMklHkJL91sU4fZPTyyaMJ3b31wBzej
 VS5o5TugsO5A4Zgn99Csy0O4H3yFh3IkiDvOl4jyYUXKx8wfkGUO+R6E1ryfnDowdWGb
 5QgUfu5g4roLTjGyhmh/9FLlGNFfzyJKcy5ZlWIEMWnOVotjdnlSw9IhPXCwD3W2mlCh
 B++WBkCAtDVLHGQfARaI9j3d9vp5e2IExBnXFh3eiWWpUrpdnHal7b2VvQ53/IyGZqu2
 xNlMyHy8WfjkwiR3ib0uLFl1PHZNmq6paAbCVWGRvaSTkybjLNiGrG9OshVHYsonJVli
 2SNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bDywciZgx2XBGKysVl4djWbACpcmiGhqyGWzjzvget0=;
 b=qXaemaMJw/QfDdmWFdFTXP7Teq1SWmu0QbR3R23vZNTx/x92ihn08GinVRoqWZxr+9
 GbUHB2xDHVsfseYKuilxF4A14LyQGoptBf8b7J1AF/Ry77+avoLlfDdIFlFsNpoJ6UwT
 oAlqJujZctvp9PTW+3G5fBUDCL8kXZuq5nSsVav+aCRsQUSkN4g/9i1JkatWdLZhBiBk
 Qr12RKGUhVPBL/GJygUFcze4k/YnmEBRhEX/4NJradKpYgpoKtnAwG/+3zT4l4Sb1shZ
 /lOT9kMFf1isiyrXpBJ78J3SX6niK34GbmWS5/jBxQ3aa6AZVkoVMFPSo3Ir2zDCFFxx
 zZ2w==
X-Gm-Message-State: APjAAAVuadG2m09rtCYCSHduSsb55CPj2kNIYjm4ZfiBOW1B7jI0lJko
 kRwArSyPuRvT1oD4R0SXl97+Iw==
X-Google-Smtp-Source: APXvYqxyD6R17KEDZ64D+fBYHZNEsDDN6y+McbrzItzC/6eM7CB0KbH4SCq9b8P2XLWzF4La+9P++A==
X-Received: by 2002:a1c:a853:: with SMTP id r80mr11007913wme.140.1570202402906; 
 Fri, 04 Oct 2019 08:20:02 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id y8sm7689041wrm.64.2019.10.04.08.20.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 08:20:02 -0700 (PDT)
Date: Fri, 4 Oct 2019 16:20:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
Message-ID: <20191004152001.GS18429@dell>
References: <20191003185323.24646-1-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003185323.24646-1-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_082004_841142_4A3E8980 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwMyBPY3QgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gUGFydCAzIGZy
b20gdGhpcyBzZXJpZXMgWzFdIHdhcyBub3QgbWVyZ2VkIGR1ZSB0byB3cm9uZyBzcGxpdHRpbmcK
PiBhbmQgYnJlYWtzIG10NjMyMyBwbWljIG9uIGJhbmFuYXBpLXIyCj4gCj4gZG1lc2cgcHJpbnRz
IHRoaXMgbGluZSBhbmQgYXQgbGVhc3Qgc3dpdGNoIGlzIG5vdCBpbml0aWFsaXplZCBvbiBiYW5h
bmFwaS1yMgo+IAo+IG10NjM5NyAxMDAwZDAwMC5wd3JhcDptdDYzMjM6IHVuc3VwcG9ydGVkIGNo
aXA6IDB4MAo+IAo+IHRoaXMgcGF0Y2ggY29udGFpbnMgb25seSB0aGUgcHJvYmUtY2hhbmdlcyBh
bmQgY2hpcF9kYXRhIHN0cnVjdHMKPiBmcm9tIG9yaWdpbmFsIHBhcnQgMyBieSBIc2luLUhzaXVu
ZyBXYW5nCj4gCj4gRml4ZXM6IGE0ODcyZTgwY2U3ZDJhMTg0NDMyODE3NmRiZjI3OWQwYTJiODli
ZGIgbWZkOiBtdDYzOTc6IEV4dHJhY3QgSVJRIHJlbGF0ZWQgY29kZSBmcm9tIGNvcmUgZHJpdmVy
Cj4gCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1tZWRp
YXRlay9saXN0Lz9zZXJpZXM9MTY0MTU1Cj4gCj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV3VuZGVy
bGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5
Ny1jb3JlLmMgfCA2NCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jIGIvZHJpdmVycy9tZmQvbXQ2Mzk3
LWNvcmUuYwo+IGluZGV4IDMxMGRhZTI2ZGRmZi4uYjJjMzI1ZWFkMWM4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMKPiArKysgYi9kcml2ZXJzL21mZC9tdDYzOTctY29y
ZS5jCj4gQEAgLTEyOSwxMSArMTI5LDI3IEBAIHN0YXRpYyBpbnQgbXQ2Mzk3X2lycV9yZXN1bWUo
c3RydWN0IGRldmljZSAqZGV2KQo+ICBzdGF0aWMgU0lNUExFX0RFVl9QTV9PUFMobXQ2Mzk3X3Bt
X29wcywgbXQ2Mzk3X2lycV9zdXNwZW5kLAo+ICAJCQltdDYzOTdfaXJxX3Jlc3VtZSk7Cj4gIAo+
ICtzdHJ1Y3QgY2hpcF9kYXRhIHsKPiArCXUzMiBjaWRfYWRkcjsKPiArCXUzMiBjaWRfc2hpZnQ7
Cj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNoaXBfZGF0YSBtdDYzMjNfY29yZSA9
IHsKPiArCS5jaWRfYWRkciA9IE1UNjMyM19DSUQsCj4gKwkuY2lkX3NoaWZ0ID0gMCwKPiArfTsK
PiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2hpcF9kYXRhIG10NjM5N19jb3JlID0gewo+ICsJ
LmNpZF9hZGRyID0gTVQ2Mzk3X0NJRCwKPiArCS5jaWRfc2hpZnQgPSAwLAo+ICt9OwoKV2lsbCB0
aGVyZSBiZSBvdGhlciBkZXZpY2VzIHdoaWNoIGhhdmUgYSAhMCBDSUQgc2hpZnQ/CgotLSAKTGVl
IEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
