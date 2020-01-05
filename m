Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE4F1306EA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 10:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YORKT0ppVa6n980LzbUQyxbWvw2C6aaW61quKbixVzo=; b=O6up1snkYKYxnd
	fNYUCi8WCI4GBzuVzyA5Kf57C7i70GnEeJWFEXuE5mTJ2lmbs3bPHsQRFVC4lN1bLj0SBV66AYtFr
	GUTu4AO07gJK8aIALWmelFwEBU6vHv0ItGKccJGSVVRj4J7NYLZqAop0WNkNZ/cgv+X39OcxqCNW5
	8Ek1WImOn/n1chA8qD+VBbjvoRmiNCZyuld0z6pUW4VOTf+V6dV7LN6+N2zqhAj+i2P8PrNhOen+u
	xwoxNUo68RoFJmvqnLyAqQimnFpwGmAWJ5Dg4YqZeguydETD0hPdq1uDVGJkGUVri3Dw2SOh2Qi3H
	+lCfc9ZjIIkQfDfVZwEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io21e-0007eg-01; Sun, 05 Jan 2020 09:16:46 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io21Q-0007dA-4G; Sun, 05 Jan 2020 09:16:34 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1io215-0007wK-3N; Sun, 05 Jan 2020 10:16:11 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (p508F34C7.dip0.t-ipconnect.de
 [80.143.52.199]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 0059G9tA005418
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Sun, 5 Jan 2020 10:16:09 +0100
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: Enable mp8859 regulator on
 rk3399-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
 <20200104153321.6584-6-m.reichl@fivetechno.de> <11639547.aalzkRAYeW@phil>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <2dd59b6a-7890-8546-8030-198c6ae8608b@fivetechno.de>
Date: Sun, 5 Jan 2020 10:16:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <11639547.aalzkRAYeW@phil>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578215792;
 ccc61575; 
X-HE-SMSGID: 1io215-0007wK-3N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_011632_308927_4750F86F 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpBbSAwNC4wMS4yMCB1bSAyMjoyMyBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+
IEhpIE1hcmt1cywKPiAKPiBBbSBTYW1zdGFnLCA0LiBKYW51YXIgMjAyMCwgMTY6MzI6NDkgQ0VU
IHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPj4gVGhlIHJrMzM5OS1yb2MtcGMgdXNlcyBhIE1QODg1
OSBEQy9EQyBjb252ZXJ0ZXIgZm9yIDEyViBzdXBwbHkuCj4+IFRoaXMgc3VwcGxpZXMgNVYgb25s
eSBpbiBkZWZhdWx0IHN0YXRlIGFmdGVyIGJvb3RpbmcuCj4gCj4gSnVzdCBmb3IgbXkgdW5kZXJz
dGFuZGluZyAuLi4gYm90aCB0aGUgb2xkIHN0YXRpYyByZWd1bGF0b3IgYmVmb3JlIGFzCj4gd2Vs
bCBhcyB0aGUgbmV3IGkyYyBub2RlIHNhaWQgdG8gc3VwcGx5IDEyViwgYnV0IGFib3ZlIHlvdSBz
YXkgdGhhdAo+IHRoZSBkZWZhdWx0IGlzIDVWIC4uLiBzbyBJJ20gd29uZGVyaW5nIHdobyBjb25m
aWd1cmVkIHRoZSAxMlYgYmVmb3JlLgo+IAo+IE9yIHdhcyBpdCB0aGUgY2FzZSB0aGF0IHRoZSBv
bGQgcmVndWxhdG9yIG5vZGUgd2FzIGp1c3Qgd3JvbmcgYW5kIHdlCj4gaGFkIDVWIHJ1bm5pbmcg
b24gdGhlIGRjXzEydiBsaW5lPwoKWWVzLCB0aGUgZGNfMTJ2IGxpbmUgd2FzIHJ1bm5pbmcgYXQg
NVYgKG1lYXN1cmVkIDQsN1YpIGFzIGl0IGlzIHRoZQpkZWZhdWx0IHBvd2VyIHVwIHZhbHVlIGZv
ciB0aGUgTVA4ODU5LiBUaGlzIGlzIGFzIGRvY3VtZW50ZWQgaW4gdGhlIGRhdGEKc2hlZXQgWzFd
LgoKWzFdIGh0dHBzOi8vd3d3Lm1vbm9saXRoaWNwb3dlci5jb20vZW4vZG9jdW1lbnR2aWV3L3By
b2R1Y3Rkb2N1bWVudC9pbmRleC92ZXJzaW9uLzIvZG9jdW1lbnRfdHlwZS9EYXRhc2hlZXQvbGFu
Zy9lbi9za3UvTVA4ODU5L2RvY3VtZW50X2lkLzQwMzMvCgpHcnXDnwotLQpNYXJrdXMKPiAKPiBU
aGFua3MKPiBIZWlrbwo+IAo+PiBOb3cgd2UgY2FuIGNvbnRyb2wgdGhlIG91dHB1dCB2b2x0YWdl
IHZpYSBJMkMgaW50ZXJmYWNlLgo+PiBBZGQgYSBub2RlIGZvciB0aGUgZHJpdmVyIHRvIHJlYWNo
IDEyVi4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZpdmV0
ZWNobm8uZGU+Cj4+IC0tLQo+PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMu
ZHRzaSAgICAgIHwgMzIgKysrKysrKysrKystLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4gaW5kZXggOGUwMWIwNDE0NGI3
Li45ZjIyNWU5YzNkNTQgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvYy1wYy5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvYy1wYy5kdHNpCj4+IEBAIC0xMTAsMjAgKzExMCw2IEBAIHZjY192YnVzX3R5
cGVjMDogdmNjLXZidXMtdHlwZWMwIHsKPj4gIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
NTAwMDAwMD47Cj4+ICAJfTsKPj4gIAo+PiAtCS8qCj4+IC0JICogc2hvdWxkIGJlIHBsYWNlZCBp
bnNpZGUgbXA4ODU5LCBidXQgbm90IHVudGlsIG1wODg1OSBoYXMKPj4gLQkgKiBpdHMgb3duIGR0
LWJpbmRpbmcuCj4+IC0JICovCj4+IC0JZGNfMTJ2OiBtcDg4NTktZGNkYzEgewo+PiAtCQljb21w
YXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+IC0JCXJlZ3VsYXRvci1uYW1lID0gImRjXzEy
diI7Cj4+IC0JCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+IC0JCXJlZ3VsYXRvci1ib290LW9uOwo+
PiAtCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4+IC0JCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPj4gLQkJdmluLXN1cHBseSA9IDwmdmNjX3Zi
dXNfdHlwZWMwPjsKPj4gLQl9Owo+PiAtCj4+ICAJLyogc3dpdGNoZWQgYnkgcG1pY19zbGVlcCAq
Lwo+PiAgCXZjYzF2OF9zMzogdmNjYTF2OF9zMzogdmNjMXY4LXMzIHsKPj4gIAkJY29tcGF0aWJs
ZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+PiBAQCAtNTQ2LDYgKzUzMiwyNCBAQCBmdXNiMDogdXNi
LXR5cGVjQDIyIHsKPj4gIAkJdmJ1cy1zdXBwbHkgPSA8JnZjY192YnVzX3R5cGVjMD47Cj4+ICAJ
CXN0YXR1cyA9ICJva2F5IjsKPj4gIAl9Owo+PiArCj4+ICsJbXA4ODU5OiByZWd1bGF0b3JANjYg
ewo+PiArCQljb21wYXRpYmxlID0gIm1wcyxtcDg4NTkiOwo+PiArCQlyZWcgPSA8MHg2Nj47Cj4+
ICsJCWRjXzEydjogbXA4ODU5X2RjZGMgewo+PiArCQkJcmVndWxhdG9yLW5hbWUgPSAiZGNfMTJ2
IjsKPj4gKwkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPj4gKwkJCXJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPj4gKwkJCXJlZ3VsYXRvci1hbHdh
eXMtb247Cj4+ICsJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gKwkJCXZpbi1zdXBwbHkgPSA8JnZj
Y192YnVzX3R5cGVjMD47Cj4+ICsKPj4gKwkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiArCQkJ
CXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+PiArCQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jv
dm9sdCA9IDwxMjAwMDAwMD47Cj4+ICsJCQl9Owo+PiArCQl9Owo+PiArCX07Cj4+ICB9Owo+PiAg
Cj4+ICAmaTJzMCB7Cj4+IAo+IAo+IAo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4g
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
