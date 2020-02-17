Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A54160EC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCka56yE8msqrMHm7XAdQmY6NyR/zyDgry96KAIcbY0=; b=s2PU3X8h29mFdu
	/sNllctms23R1G9+de+F3DK1TEkXPOLfOq7TtGJ+79vMvVQaibggK4l/VYL4kSWQcbRuJwI+Js3RX
	/sQb/Bul5eR9xKjK+xTEE6opVF4A5aogq5Cs2/FVuu7e1msb4cwywRBxr8iDb6IbN1DOJ8ewLK1jA
	/k79Ld9tZ0XqVW7t0Z4V6sM/30NTATyA/9S3lYrNIlQGp6BfjlMa9uYjexTKnLrXl2MExJXNFVag+
	EHEVVhdGbdTcWmp/l+hE49Ub1idPJGcc8bF5Cfaw9ylF0Q8H7rTZEzYBbicu69WtWPBLFYVdGWxus
	KhoG9CBShIF/1efrKr6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cqZ-0006N3-2S; Mon, 17 Feb 2020 09:37:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cq5-0005vQ-7v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:37:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 109281A2B0F;
 Mon, 17 Feb 2020 10:37:16 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 58E571A2B1F;
 Mon, 17 Feb 2020 10:37:10 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B2E5B4029B;
 Mon, 17 Feb 2020 17:37:03 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 4/7] ARM: dts: imx6sx-sabreauto: Use new pin names with
 DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 17:31:23 +0800
Message-Id: <1581931886-12173-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
References: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013717_415861_63DC46DD 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
LS0KTm8gY2hhbmdlLgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1zYWJyZWF1dG8uZHRz
IHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1zYWJyZWF1dG8uZHRzIGIv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNhYnJlYXV0by5kdHMKaW5kZXggMzE1MDQ0Yy4uODI1
OTI0NCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNhYnJlYXV0by5kdHMK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNhYnJlYXV0by5kdHMKQEAgLTIyOSw4ICsy
MjksOCBAQAogCiAJcGluY3RybF91YXJ0MTogdWFydDFncnAgewogCQlmc2wscGlucyA9IDwKLQkJ
CU1YNlNYX1BBRF9HUElPMV9JTzA0X19VQVJUMV9UWAkJMHgxYjBiMQotCQkJTVg2U1hfUEFEX0dQ
SU8xX0lPMDVfX1VBUlQxX1JYCQkweDFiMGIxCisJCQlNWDZTWF9QQURfR1BJTzFfSU8wNF9fVUFS
VDFfRENFX1RYCQkweDFiMGIxCisJCQlNWDZTWF9QQURfR1BJTzFfSU8wNV9fVUFSVDFfRENFX1JY
CQkweDFiMGIxCiAJCT47CiAJfTsKIAotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
