Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9EB171598
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rjdD7fS8JAJbZfXn2RU7rAl6N0F1SxlN04q4X70954k=; b=u07Xd5fgptrbLF
	dnimKx0+I2/UwnRPY5srAHqBKw3PNg0r/BTMBSdVaBjGqL4DqhSA7t4yGod/niLzKz5DIJz5Vow7q
	yslSYHtRu6HJtTVAcot8y/8QDslWBcFFjyJYNYMjpj3S5QrbIMiB1zAGWkaiZehayJR5dh0q6iwxi
	2qu2bS0CuMXF7Bxh9v9rBgG5rj96baU5OfpWwMTekA8Pdg3XrTd5q4T5pRzmVWr8RoqkI109Tdhm7
	Vss6O9Pi1OEM9nxlILUnD9Doy6ZFCPqnypJ2icEv4I6pve25t9wa+4plDWh95Zmz5BkFbmKX+FqxF
	3dphbL6SK/VsHbaW6AxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gwa-00026b-Jh; Thu, 27 Feb 2020 11:03:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GwR-00025t-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:02:56 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GwL-00068a-Ag; Thu, 27 Feb 2020 12:02:49 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GwK-0002GY-Id; Thu, 27 Feb 2020 12:02:48 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, chf.fritz@googlemail.com,
 s.riedmueller@phytec.de, s.christ@phytec.de, c.hemp@phytec.de,
 contact@stefanchrist.eu
Subject: [PATCH v4] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Date: Thu, 27 Feb 2020 12:02:46 +0100
Message-Id: <20200227110246.8624-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030255_697378_7F183F40 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGN1cnJlbnQgc2V0IG1pbmltdW0gdm9sdGFnZSBvZiA3MzAwMDDCtVYgc2VlbXMgdG8gYmUg
d3JvbmcuIEkgZG9uJ3QKa25vdyB0aGUgZG9jdW1lbnQgd2hpY2ggc3BlY2lmaWVzIHRoYXQgYnV0
IHRoZSBpbXg2cWRsIGRhdGFzaGVldHMgc2F5cwp0aGF0IHRoZSBtaW5pbXVtIHZvbHRhZ2Ugc2hv
dWxkIGJlIDAuOTI1ViBmb3IgVkREX0FSTSAoTERPIGJ5cGFzc2VkLApsb3dlc3Qgb3BwKSBhbmQg
MS4xNVYgZm9yIFZERF9TT0MgKExETyBieXBhc3NlZCwgbG93ZXN0IG9wcCkuCgpGaXhlczogZGRl
YzVkMWMwMDQ3ICgiQVJNOiBkdHM6IGlteDY6IEFkZCBpbml0aWFsIHN1cHBvcnQgZm9yIHBoeUNP
UkUtaS5NWCA2IFNPTSIpClNpZ25lZC1vZmYtYnk6IE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVu
Z3V0cm9uaXguZGU+Ci0tLQp2NDoKLSByZWJhc2VkIG9udG9wIG9mIHY1LjYtcmMxCnYzOgotIGZp
eCBjb21taXQgbWVzc2FnZQp2MjoKLSB1c2UgbGRvIGJ5cGFzc2VkIHZhbHVlcwoKIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaSBiL2FyY2gv
YXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKaW5kZXggNGQxODk1
MjY1OGY4Li43N2Q4NzEzNDBlYjcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZx
ZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFk
bC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaQpAQCAtMTEyLDcgKzExMiw3IEBACiAJCXJlZ3VsYXRv
cnMgewogCQkJdmRkX2FybTogYnVjazEgewogCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9hcm0i
OwotCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDczMDAwMD47CisJCQkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8OTI1MDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9
IDwxMzgwMDAwPjsKIAkJCQlyZWd1bGF0b3ItaW5pdGlhbC1tb2RlID0gPERBOTA2M19CVUNLX01P
REVfU1lOQz47CiAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKQEAgLTEyMCw3ICsxMjAsNyBAQAog
CiAJCQl2ZGRfc29jOiBidWNrMiB7CiAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX3NvYyI7Ci0J
CQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NzMwMDAwPjsKKwkJCQlyZWd1bGF0b3ItbWlu
LW1pY3Jvdm9sdCA9IDwxMTUwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwx
MzgwMDAwPjsKIAkJCQlyZWd1bGF0b3ItaW5pdGlhbC1tb2RlID0gPERBOTA2M19CVUNLX01PREVf
U1lOQz47CiAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
