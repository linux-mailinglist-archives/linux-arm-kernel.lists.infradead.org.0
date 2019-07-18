Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738F46CCBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 12:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ot1O0jk2jDbj4aiVsTSIWTUBITtpuiDRZRWmeESLGk=; b=pXXJQD7MV/rG5e
	pndX7pXVlK3DRkS9gls6EkFzK2NKl3kSub3gQzOvbiESfquf4L1mTrn4wWQ12cll4bAVb8fx7UrCU
	u7Ew2DOpzqgAw99W3h66BknSJNU9AIh6bzJTkhYV/g5JbvGdMSJw7YYrItcOJJpy15IVI6sV84Jtj
	eJeibA1+uYkSU42SJz0mjkWLeyoUC51cYVMGGoSdiKVPzuufD4adihAD0mdG8wUuWdamzExj4Y9vX
	KtvDjaD2U4MKBQ0zvhFGuqPs6vH4rylnag0RnawXZDN9gladJ/vMUNgMnytB+xDzUPfKnlnfpgU2h
	3cBUw3CBI5aunh+LIhLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho3br-0006Vl-QO; Thu, 18 Jul 2019 10:25:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho3bJ-0006HP-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 10:25:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B7F532000C0;
 Thu, 18 Jul 2019 12:25:22 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AB3B72000AF;
 Thu, 18 Jul 2019 12:25:22 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 22673205C7;
 Thu, 18 Jul 2019 12:25:22 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 1/3] firmware: imx: scu-pd: Rename mu PD range to mu_a
Date: Thu, 18 Jul 2019 13:25:17 +0300
Message-Id: <20190718102519.31855-2-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718102519.31855-1-daniel.baluta@nxp.com>
References: <20190718102519.31855-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_032525_305962_FFEF45CF 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, =kernel@pengutronix.de,
 Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 ulf.hansson@linaro.org, linux-kernel@vger.kernel.org, paul.olaru@nxp.com,
 linux-imx@nxp.com, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIE1lc3NhZ2luZyBVbml0IG1vZHVsZSBlbmFibGVzIHR3byBwcm9jZXNzb3JzIHdpdGhpbiB0
aGUgU29DIHRvCmNvbW11bmljYXRlIGFuZCBjb29yZGluYXRlIGJ5IHBhc3NpbmcgbWVzc2FnZXMg
dGhyb3VnaCB0aGUgTVUgaW50ZXJmYWNlLgoKTVVzIGhhdmUgMiDigJxzaWRlc+KAnSB3aXRoIGlu
ZGVwZW5kZW50IHByb2dyYW1taW5nIGludGVyZmFjZXMuIFJlbmFtZQptdSBQRCByYW5nZSB0byBt
dV9hIGJlY2F1c2UgaXQncyBhY3R1YWxseSBzaWRlIEEgb2YgTVVzLgoKU2lnbmVkLW9mZi1ieTog
RGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPgpSZXZpZXdlZC1ieTogRG9uZyBB
aXNoZW5nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT4KLS0tCiBkcml2ZXJzL2Zpcm13YXJlL2lteC9z
Y3UtcGQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvaW14L3NjdS1wZC5jIGIvZHJpdmVy
cy9maXJtd2FyZS9pbXgvc2N1LXBkLmMKaW5kZXggNDgwY2VjNjllMmM5Li45NTBkMzAyMzgxODYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZmlybXdhcmUvaW14L3NjdS1wZC5jCisrKyBiL2RyaXZlcnMv
ZmlybXdhcmUvaW14L3NjdS1wZC5jCkBAIC05Miw3ICs5Miw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW14X3NjX3BkX3JhbmdlIGlteDhxeHBfc2N1X3BkX3Jhbmdlc1tdID0gewogCXsgImdwdCIs
IElNWF9TQ19SX0dQVF8wLCA1LCB0cnVlLCAwIH0sCiAJeyAia3BwIiwgSU1YX1NDX1JfS1BQLCAx
LCBmYWxzZSwgMCB9LAogCXsgImZzcGkiLCBJTVhfU0NfUl9GU1BJXzAsIDIsIHRydWUsIDAgfSwK
LQl7ICJtdSIsIElNWF9TQ19SX01VXzBBLCAxNCwgdHJ1ZSwgMCB9LAorCXsgIm11X2EiLCBJTVhf
U0NfUl9NVV8wQSwgMTQsIHRydWUsIDAgfSwKIAogCS8qIENPTk4gU1MgKi8KIAl7ICJ1c2IiLCBJ
TVhfU0NfUl9VU0JfMCwgMiwgdHJ1ZSwgMCB9LAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
