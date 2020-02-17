Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0572160EE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1eVJc8SSPziSFdQIX1SHtyqZhKgECe+ySrPfzaVL/2c=; b=iuycxqEOAwXitm
	teE9NTAzUvqtR/luga2O8DZ6x4OYeYRcviQctmINRJp4Ky3K5tzaZCQQC+jMiGdTu5cAE1BFguJgk
	5xBC7bPvpxGJxxbtUii+Ook57HLyqsUULsrWaNThKjsv3Q+PQOMiiBMjvbITsefu3huae8bE1BoEX
	Z188FUwfsYplDNwpGa8987lhUd8wdn5Kqpj3+Nju9NvODHiGeWxRtsOZa3KiGd8r6Ds1StQcLLJDT
	vHFUbzx3LxL4jEUSln0S53dQYGzRNUUXYzHpwRMjkFQPmwh0fyCa/KUjILG9nZflR9UybrBWxa/g1
	vUnb2THztRYILPm5S3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cqz-00070d-Od; Mon, 17 Feb 2020 09:38:13 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cq8-0005wY-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:37:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 758E020296E;
 Mon, 17 Feb 2020 10:37:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BE1CC200F35;
 Mon, 17 Feb 2020 10:37:12 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id ABB674030D;
 Mon, 17 Feb 2020 17:37:05 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 6/7] ARM: dts: imx6sx-softing-vining-2000: Use new pin
 names with DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 17:31:25 +0800
Message-Id: <1581931886-12173-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
References: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013720_372358_67C574E2 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIG5ldyBwaW4gbmFtZXMgY29udGFpbmluZyBEQ0UvRFRFIGZvciBVQVJUIFJYL1RYL1JUUy9D
VFMgcGlucywgdGhpcwppcyB0byBkaXN0aW5ndWlzaCB0aGUgRENFL0RURSBmdW5jdGlvbnMuCgpT
aWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KUmV2aWV3ZWQt
Ynk6IFV3ZSBLbGVpbmUtS+aemm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgot
LS0KTm8gY2hhbmdlLgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1zb2Z0aW5nLXZpbmlu
Zy0yMDAwLmR0cyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNv
ZnRpbmctdmluaW5nLTIwMDAuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNvZnRpbmct
dmluaW5nLTIwMDAuZHRzCmluZGV4IDI4NTYzZjIuLjYxYzdlNzIgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL2lteDZzeC1zb2Z0aW5nLXZpbmluZy0yMDAwLmR0cworKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2c3gtc29mdGluZy12aW5pbmctMjAwMC5kdHMKQEAgLTM4NCwxNSArMzg0
LDE1IEBACiAKIAlwaW5jdHJsX3VhcnQxOiB1YXJ0MWdycCB7CiAJCWZzbCxwaW5zID0gPAotCQkJ
TVg2U1hfUEFEX0dQSU8xX0lPMDRfX1VBUlQxX1RYCQkweDFiMGIxCi0JCQlNWDZTWF9QQURfR1BJ
TzFfSU8wNV9fVUFSVDFfUlgJCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9HUElPMV9JTzA0X19VQVJU
MV9EQ0VfVFgJMHgxYjBiMQorCQkJTVg2U1hfUEFEX0dQSU8xX0lPMDVfX1VBUlQxX0RDRV9SWAkw
eDFiMGIxCiAJCT47CiAJfTsKIAogCXBpbmN0cmxfdWFydDI6IHVhcnQyZ3JwIHsKIAkJZnNsLHBp
bnMgPSA8Ci0JCQlNWDZTWF9QQURfR1BJTzFfSU8wNl9fVUFSVDJfVFgJCTB4MWIwYjEKLQkJCU1Y
NlNYX1BBRF9HUElPMV9JTzA3X19VQVJUMl9SWAkJMHgxYjBiMQorCQkJTVg2U1hfUEFEX0dQSU8x
X0lPMDZfX1VBUlQyX0RDRV9UWAkweDFiMGIxCisJCQlNWDZTWF9QQURfR1BJTzFfSU8wN19fVUFS
VDJfRENFX1JYCTB4MWIwYjEKIAkJPjsKIAl9OwogCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
