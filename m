Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB941B7CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dq6o3O0qISF/CmqIKKB2uJi0OZ68VwGxdNhLkh/YP0w=; b=dkA380s0nWrabb
	tK2C6SAWblQqK5aZ872t0olNtL/mpx7/E7EzbUr+AOQppTQVMDycsRBg6w6wOaEs1O7nc5yYvXFBX
	InTd24S3uU5JESNdaB+K5Tp7BGAjzW/0i+46RNdUt4akAZZun1RRqgCWsa5otd+oFA9G70gQAuf7D
	rIBh1X30pFPmDmhqngJty0vxWFnkKIY7Jb73d2h+A4L6cxalKIYiFXWp9UAE80NbricWkBmwgEbUv
	izmrgnycaB0YTZO5hKy6pz+5DDQPeozdQoQp3nSrG6l8xfhzJ9g1Ahg26aqT0N9yRfiztgegzDp1C
	TAF1WUsc32IfMUc7xPMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBcL-0001OG-Nq; Mon, 13 May 2019 14:07:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBcE-0001Nv-It
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:07:44 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hQBcC-00043W-CT; Mon, 13 May 2019 16:07:40 +0200
Message-ID: <1557756459.3997.4.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq-zii-ultra: Operate I2C at 100kHz
From: Lucas Stach <l.stach@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Date: Mon, 13 May 2019 16:07:39 +0200
In-Reply-To: <20190513140259.17525-1-festevam@gmail.com>
References: <20190513140259.17525-1-festevam@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_070742_779533_ECC62400 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@pengutronix.de, cphealy@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFiaW8sCgpBbSBNb250YWcsIGRlbiAxMy4wNS4yMDE5LCAxMTowMiAtMDMwMCBzY2hyaWVi
IEZhYmlvIEVzdGV2YW06Cj4gQWNjb3JkaW5nIHRvIHRoZSBpLk1YOE0gZXJyYXRhIGRvY3VtZW50
IFsxXSwgdGhlcmUgaXMgYW4gSTJDIHNwZWMKPiB2aW9sYXRpb24gd2hlbiB0aGUgSTJDIGNsb2Nr
IGZyZXF1ZW5jeSBpcyA0MDAga0h6Ogo+IAo+ICJlNzgwNTogSTJDOiBXaGVuIHRoZSBJMkMgY2xv
Y2sgc3BlZWQgaXMgY29uZmlndXJlZCBmb3IgNDAwIGtIeiwgdGhlCj4gU0NMIGxvdyBwZXJpb2Qg
dmlvbGF0ZXMgdGhlIEkyQyBzcGVjIG9mIDEuMyB1UyBtaW4iCgo+IEF2b2lkIHRoaXMgcHJvYmxl
bSBieSBydW5uaW5nIEkyQyBhdCAxMDAga0h6IGluc3RlYWQuCgpEb2VzIHRoaXMgZml4IGEgcmVh
bCBidWc/IFRoZSBzYW1lIGlzc3VlIGlzIHByZXNlbnQgd2l0aCB0aGUgaS5NWDYgSTJDCmNvbnRy
b2xsZXJzLCBidXQgd2UgYXJlIHN0aWxsIHJ1bm5pbmcgYSBsb3Qgb2YgaTJjIGJ1c3NlcyBvbiBp
Lk1YNgpiYXNlZCBib2FyZHMgYXQgNDAwa0h6LCB3aXRoIG5vIGlzc3VlcyB3aGF0c29ldmVyLgoK
UmVnYXJkcywKTHVjYXMKCj4gWzFdIGh0dHBzOi8vd3d3Lm54cC5jb20vZG9jcy9lbi9lcnJhdGEv
SU1YOE1EUUxRXzFOMTRXLnBkZgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIEVzdGV2YW0gPGZl
c3RldmFtQGdtYWlsLmNvbT4KPiAtLS0KPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDhtcS16aWktdWx0cmEuZHRzaSB8IDYgKysrLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtemlpLXVsdHJhLmR0c2kKPiBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS16aWktdWx0cmEuZHRzaQo+IGluZGV4IDdhMTcwNmY5
NjlmMC4uODYwM2ZiMWE3OGQwIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtcS16aWktdWx0cmEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2lteDhtcS16aWktdWx0cmEuZHRzaQo+IEBAIC0yNTMsMTQgKzI1MywxNCBAQAo+
IMKgfTsKPiDCoAo+IMKgJmkyYzEgewo+IC0JY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47Cj4g
KwljbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwPjsKPiDCoAlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwo+IMKgCXBpbmN0cmwtMCA9IDwmcGluY3RybF9pMmMxPjsKPiDCoAlzdGF0dXMgPSAib2th
eSI7Cj4gwqB9Owo+IMKgCj4gwqAmaTJjMiB7Cj4gLQljbG9jay1mcmVxdWVuY3kgPSA8NDAwMDAw
PjsKPiArCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+Owo+IMKgCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4gwqAJcGluY3RybC0wID0gPCZwaW5jdHJsX2kyYzI+Owo+IMKgCXN0YXR1cyA9
ICJva2F5IjsKPiBAQCAtMzc2LDcgKzM3Niw3IEBACj4gwqB9Owo+IMKgCj4gwqAmaTJjNCB7Cj4g
LQljbG9jay1mcmVxdWVuY3kgPSA8NDAwMDAwPjsKPiArCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAw
MDA+Owo+IMKgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gwqAJcGluY3RybC0wID0gPCZw
aW5jdHJsX2kyYzQ+Owo+IMKgCXN0YXR1cyA9ICJva2F5IjsKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
