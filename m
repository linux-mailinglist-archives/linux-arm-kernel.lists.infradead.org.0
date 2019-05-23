Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B838027DF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vKhjWBh1MuRhA5NGoIWxyKHixDPpH/HAZ34wsV2SDXM=; b=LUwgbC7MP9UzbaGFeMbLcdqHq
	10lkNWxQuk31Bt2frMLqwjBEKPRCPAHqUnEQ3b8hZlkhvqU30auOfubkg8QK+DF4EayAOYROdN9wJ
	NyCiiUAyDNnwidUxgWR2RZduy19c6H5VEj/+wljKv5mW7jeBJsZJcQn2AYt06T7xCpvgxldjH8V7h
	5a6Yl0D3toMEGE3VW/pR6vtpkpJRE1E+R8GZAYPZVGvTqvnTu1LNkkbmKA41swdHwTH2JNbTNjzxe
	DvWFAzFJyt5aROSVdhIAUIiA0bLyaRaOpz6kgZbURYgHCMNVIggiKv92H6KKRVAVx6Uq0P14Lh3Ha
	+EMyIOWMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTndf-0005Yt-Ic; Thu, 23 May 2019 13:20:07 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTndT-0005We-QL
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:19:57 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 9471B4E204B; Thu, 23 May 2019 13:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558617594; bh=n39L7RY9rbAsVX1Ob8iz4OslE0sehX1ynhKprKwXAR0=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=rdnOfiHYBFOcEZTml17MHpoVrjh06dt/BaFJXiEL3s5E/spfuE6WB+apgMCixfSu4
 E5LIr9MFPXOsBxQ9nMi6XJum7E6wqcaZ708R7d3onIj6i5ZCdoNe7IgljAeZhFcnnw
 U/lo87je9Rc7mCLxAEec6OC2NW+yPC0vN078N6rA=
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq-zii-ultra: Operate I2C at 100kHz
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Thu, 23 May 2019 06:19:54 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <1557756459.3997.4.camel@pengutronix.de>
References: <20190513140259.17525-1-festevam@gmail.com>
 <1557756459.3997.4.camel@pengutronix.de>
Message-ID: <aea4106a575d0e623442c53cfd50917b@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061955_908147_227B14AA 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Fabio Estevam <festevam@gmail.com>, cphealy@gmail.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVjYXMKCk9uIDIwMTktMDUtMTMgMDc6MDcsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+IEhpIEZh
YmlvLAo+IAo+IEFtIE1vbnRhZywgZGVuIDEzLjA1LjIwMTksIDExOjAyIC0wMzAwIHNjaHJpZWIg
RmFiaW8gRXN0ZXZhbToKPj4gQWNjb3JkaW5nIHRvIHRoZSBpLk1YOE0gZXJyYXRhIGRvY3VtZW50
IFsxXSwgdGhlcmUgaXMgYW4gSTJDIHNwZWMKPj4gdmlvbGF0aW9uIHdoZW4gdGhlIEkyQyBjbG9j
ayBmcmVxdWVuY3kgaXMgNDAwIGtIejoKPj4gCj4+ICJlNzgwNTogSTJDOiBXaGVuIHRoZSBJMkMg
Y2xvY2sgc3BlZWQgaXMgY29uZmlndXJlZCBmb3IgNDAwIGtIeiwgdGhlCj4+IFNDTCBsb3cgcGVy
aW9kIHZpb2xhdGVzIHRoZSBJMkMgc3BlYyBvZiAxLjMgdVMgbWluIgo+IAo+PiBBdm9pZCB0aGlz
IHByb2JsZW0gYnkgcnVubmluZyBJMkMgYXQgMTAwIGtIeiBpbnN0ZWFkLgo+IAo+IERvZXMgdGhp
cyBmaXggYSByZWFsIGJ1Zz8gVGhlIHNhbWUgaXNzdWUgaXMgcHJlc2VudCB3aXRoIHRoZSBpLk1Y
NiBJMkMKPiBjb250cm9sbGVycywgYnV0IHdlIGFyZSBzdGlsbCBydW5uaW5nIGEgbG90IG9mIGky
YyBidXNzZXMgb24gaS5NWDYKPiBiYXNlZCBib2FyZHMgYXQgNDAwa0h6LCB3aXRoIG5vIGlzc3Vl
cyB3aGF0c29ldmVyLgo+IAoKV2UndmUgZGVmaW5pdGVseSBzZWVuIGlzc3VlcyBydW5uaW5nIGF0
IDQwMGtIeiB3aXRoIHRoZSBsaWJyZW01IGRldmtpdCAKYW5kIGl0J3MgdXNpbmcgdGhlIGkuTVg4
TVEuCgpBbmd1cwoKCj4gUmVnYXJkcywKPiBMdWNhcwo+IAo+PiBbMV0gaHR0cHM6Ly93d3cubnhw
LmNvbS9kb2NzL2VuL2VycmF0YS9JTVg4TURRTFFfMU4xNFcucGRmCj4+IAo+PiBTaWduZWQtb2Zm
LWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4+IC0tLQo+PiDCoGFyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS16aWktdWx0cmEuZHRzaSB8IDYgKysrLS0t
Cj4+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4g
Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtemlp
LXVsdHJhLmR0c2kKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtemlp
LXVsdHJhLmR0c2kKPj4gaW5kZXggN2ExNzA2Zjk2OWYwLi44NjAzZmIxYTc4ZDAgMTAwNjQ0Cj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS16aWktdWx0cmEuZHRz
aQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtemlpLXVsdHJh
LmR0c2kKPj4gQEAgLTI1MywxNCArMjUzLDE0IEBACj4+IMKgfTsKPj4gwqAKPj4gwqAmaTJjMSB7
Cj4+IC0JY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47Cj4+ICsJY2xvY2stZnJlcXVlbmN5ID0g
PDEwMDAwMD47Cj4+IMKgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IMKgCXBpbmN0cmwt
MCA9IDwmcGluY3RybF9pMmMxPjsKPj4gwqAJc3RhdHVzID0gIm9rYXkiOwo+PiDCoH07Cj4+IMKg
Cj4+IMKgJmkyYzIgewo+PiAtCWNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+Owo+PiArCWNsb2Nr
LWZyZXF1ZW5jeSA9IDwxMDAwMDA+Owo+PiDCoAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
PiDCoAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfaTJjMj47Cj4+IMKgCXN0YXR1cyA9ICJva2F5IjsK
Pj4gQEAgLTM3Niw3ICszNzYsNyBAQAo+PiDCoH07Cj4+IMKgCj4+IMKgJmkyYzQgewo+PiAtCWNs
b2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+Owo+PiArCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+
Owo+PiDCoAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiDCoAlwaW5jdHJsLTAgPSA8JnBp
bmN0cmxfaTJjND47Cj4+IMKgCXN0YXR1cyA9ICJva2F5IjsKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
