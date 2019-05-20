Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C1723A13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3CKHA+rURFN83QYG5rxGDN/2Sg+cIfG3kvigOCMQ6Y=; b=pTS2d/MPaRYQRQ
	RLk8PT+5d2agyaAZwCJgZOB7pfNefyQNXeW59K27Q30EHgSuV2IER4kXhGPVvVNk40qVAVSvvTato
	BZD4YV8g9GAaIHhErD282/AgOxGIVTlS4lO1VQZwOw6ln3fdEHqQewrnnG0zl4re9G/6dyp3JxcJ1
	AqqfuM2MwZVQ+FIa4ENl7Ra3umCaAj6AFT4nROJleW+Qo5G16drrNtYvw2C84LWuFNxmG3g3QRq4v
	9RjexgCXhYSMb6yY296RwGH/HK4lvR2yJvusXaGMyJuwx2LWz6We/8sjx7PtgSvhcm0xJXsm/bH8/
	UGwhyPa6drKykvVqrKPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjKi-00017E-Du; Mon, 20 May 2019 14:32:08 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjKZ-00013b-Bh; Mon, 20 May 2019 14:32:00 +0000
X-Originating-IP: 90.88.22.185
Received: from xps13 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 3B8801C001A;
 Mon, 20 May 2019 14:31:52 +0000 (UTC)
Date: Mon, 20 May 2019 16:31:51 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH] mtd: rawnand: stm32_fmc2: manage the get_irq error case
Message-ID: <20190520163151.7408b005@xps13>
In-Reply-To: <1556117346-5608-1-git-send-email-fabien.dessenne@st.com>
References: <1556117346-5608-1-git-send-email-fabien.dessenne@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073159_547701_2269D0CD 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFiaWVuLAoKRmFiaWVuIERlc3Nlbm5lIDxmYWJpZW4uZGVzc2VubmVAc3QuY29tPiB3cm90
ZSBvbiBXZWQsIDI0IEFwciAyMDE5CjE2OjQ5OjA2ICswMjAwOgoKPiBEdXJpbmcgcHJvYmUsIGNo
ZWNrIHRoZSAiZ2V0X2lycSIgZXJyb3IgdmFsdWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogRmFiaWVu
IERlc3Nlbm5lIDxmYWJpZW4uZGVzc2VubmVAc3QuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYyB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvc3Rt
MzJfZm1jMl9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYwo+
IGluZGV4IDk5OWNhNmEuLjRhYWJlYTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9y
YXcvc3RtMzJfZm1jMl9uYW5kLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9m
bWMyX25hbmQuYwo+IEBAIC0xOTA5LDYgKzE5MDksMTIgQEAgc3RhdGljIGludCBzdG0zMl9mbWMy
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAl9Cj4gIAo+ICAJaXJxID0g
cGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPiArCWlmIChpcnEgPCAwKSB7Cj4gKwkJaWYgKGly
cSAhPSAtRVBST0JFX0RFRkVSKQo+ICsJCQlkZXZfZXJyKGRldiwgIklSUSBlcnJvciBtaXNzaW5n
IG9yIGludmFsaWRcbiIpOwo+ICsJCXJldHVybiBpcnE7Cj4gKwl9Cj4gKwo+ICAJcmV0ID0gZGV2
bV9yZXF1ZXN0X2lycShkZXYsIGlycSwgc3RtMzJfZm1jMl9pcnEsIDAsCj4gIAkJCSAgICAgICBk
ZXZfbmFtZShkZXYpLCBmbWMyKTsKPiAgCWlmIChyZXQpIHsKCgpBcHBsaWVkIHRvIG5hbmQvbmV4
dC4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
