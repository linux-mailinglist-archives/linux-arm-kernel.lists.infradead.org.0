Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7684A201D2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6S4NCCSCTLerizR+oxPEoWxXPEffztw/erbE+N5zNw=; b=odIA6B3oCTJUAA
	HkTbZ9A2Uc2vcLnfga6ea4PMR7oT1AnaTlZ59CXDAPvb3bi/03tWGjo0Si8gNyFmK7s7LCjBrPcIN
	CKFArJ6T5o46d/vxt9Ll2JUCvBXKHUbkfZy8fEk2VlE1hMfNSC/TBR66IxLPTx4dnt2LlAyETweLu
	r9EOUvKXW3Q/AXFBblVAObzQmGp9NNadrw9LDrmOoYPDoF0NOJMvwvXMs/vYqF1/GCH1lRgpSn/dA
	1jquofRL5b+hdyZuYhsFdzwdAXkTT246Kkte1e9SYaT9yTwJeX+1caDG+Mqu9RMjnZMvZ9Zy4NPuV
	Sq/90HWuMr/0L14CcceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOez-00026V-GI; Fri, 19 Jun 2020 21:34:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOeX-0001wF-RF
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:34:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 358162011FF;
 Fri, 19 Jun 2020 23:34:21 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 27C8620120A;
 Fri, 19 Jun 2020 23:34:21 +0200 (CEST)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6AB08204B6;
 Fri, 19 Jun 2020 23:34:20 +0200 (CEST)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 1/4] ARM: dts: imx6sl: fix rng node
Date: Sat, 20 Jun 2020 00:33:44 +0300
Message-Id: <20200619213347.27826-2-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619213347.27826-1-horia.geanta@nxp.com>
References: <20200619213347.27826-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_143426_016789_4F1A4DE3 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Franck Lenormand <franck.lenormand@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kaiser <martin@kaiser.cx>, Silvano Di Ninno <silvano.dininno@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cm5nIERUIG5vZGUgd2FzIGFkZGVkIHdpdGhvdXQgYSBjb21wYXRpYmxlIHN0cmluZy4KCmkuTVgg
ZHJpdmVyIGZvciBSTkdDIChkcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2lteC1ybmdjLmMpIGFsc28g
Y2xhaW1zCnN1cHBvcnQgZm9yIFJOR0IsIGFuZCBpcyBjdXJyZW50bHkgdXNlZCBmb3IgaS5NWDI1
LgoKTGV0J3MgdXNlZCB0aGlzIGRyaXZlciBhbHNvIGZvciBSTkdCIGJsb2NrIGluIGkuTVg2U0wu
CgpGaXhlczogZTI5ZmUyMWNmZjk2ICgiQVJNOiBkdHM6IGFkZCBkZXZpY2UgdHJlZSBzb3VyY2Ug
Zm9yIGlteDZzbCBTb0MiKQpTaWduZWQtb2ZmLWJ5OiBIb3JpYSBHZWFudMSDIDxob3JpYS5nZWFu
dGFAbnhwLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg2c2wuZHRzaSB8IDIgKysKIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9pbXg2c2wuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzbC5kdHNpCmluZGV4IDkx
MWQ4Y2Y3N2YyYy4uMWYwZjI1MGVlMTc1IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9p
bXg2c2wuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c2wuZHRzaQpAQCAtOTM5LDgg
KzkzOSwxMCBAQAogCQkJfTsKIAogCQkJcm5nYjogcm5nYkAyMWI0MDAwIHsKKwkJCQljb21wYXRp
YmxlID0gImZzbCxpbXgyNS1ybmdiIjsKIAkJCQlyZWcgPSA8MHgwMjFiNDAwMCAweDQwMDA+Owog
CQkJCWludGVycnVwdHMgPSA8MCA1IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWNsb2NrcyA9
IDwmY2xrcyBJTVg2U0xfQ0xLX0RVTU1ZPjsKIAkJCX07CiAKIAkJCXdlaW06IHdlaW1AMjFiODAw
MCB7Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
