Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681D8160EC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRdsQ1HNKf/n7oMgIE+6Jhka6Nn63HZR7JVRX2JpAGM=; b=QpGFOaCm76BlsM
	sU6HPTD83i4jBxWYkAad+2Shgui0Gkp/C4d4C/hRwqf4f8HX/m2vMHk7ODKG6G0wJjvaSvx2WqHRY
	EIJmZGdDG2k7SlSgmC2GjewMfld3PnOrygYGlOlD5ltXVXugWXCIzjsTgWfOhBJWM0KCWMcwkGde2
	uXyWH1LVJ5vw/UlElLJiIgX71BW1ye8TPpIUSE03emrMUe3zKAcwF0+Y3xZE/ski2H97FYPqNwDgW
	m7B55l6OpSIpoZunM1RgeBJV+mU65P2Nai5wVNAF3EpgbdK6GdHlY7xZ+mxPecBpaO/C7VwVYzV6j
	trqAByaRuMM1J+aHD/jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cqi-0006Yi-Hh; Mon, 17 Feb 2020 09:37:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cq6-0005vy-9T
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:37:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 18E331A2B13;
 Mon, 17 Feb 2020 10:37:17 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 627761A2B27;
 Mon, 17 Feb 2020 10:37:11 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AF325402A7;
 Mon, 17 Feb 2020 17:37:04 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 5/7] ARM: dts: imx6sx-sdb: Use new pin names with DCE/DTE
 for UART pins
Date: Mon, 17 Feb 2020 17:31:24 +0800
Message-Id: <1581931886-12173-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
References: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013718_466198_84A6033A 
X-CRM114-Status: UNSURE (   8.09  )
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
LS0KTm8gY2hhbmdlLgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1zZGIuZHRzaSB8IDEy
ICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtc2RiLmR0c2kgYi9h
cmNoL2FybS9ib290L2R0cy9pbXg2c3gtc2RiLmR0c2kKaW5kZXggZjY5NzJkZS4uM2U1ZmI3MiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNkYi5kdHNpCisrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL2lteDZzeC1zZGIuZHRzaQpAQCAtNTY0LDE3ICs1NjQsMTcgQEAKIAogCQlw
aW5jdHJsX3VhcnQxOiB1YXJ0MWdycCB7CiAJCQlmc2wscGlucyA9IDwKLQkJCQlNWDZTWF9QQURf
R1BJTzFfSU8wNF9fVUFSVDFfVFgJCTB4MWIwYjEKLQkJCQlNWDZTWF9QQURfR1BJTzFfSU8wNV9f
VUFSVDFfUlgJCTB4MWIwYjEKKwkJCQlNWDZTWF9QQURfR1BJTzFfSU8wNF9fVUFSVDFfRENFX1RY
CTB4MWIwYjEKKwkJCQlNWDZTWF9QQURfR1BJTzFfSU8wNV9fVUFSVDFfRENFX1JYCTB4MWIwYjEK
IAkJCT47CiAJCX07CiAKIAkJcGluY3RybF91YXJ0NTogdWFydDVncnAgewogCQkJZnNsLHBpbnMg
PSA8Ci0JCQkJTVg2U1hfUEFEX0tFWV9ST1czX19VQVJUNV9SWAkJMHgxYjBiMQotCQkJCU1YNlNY
X1BBRF9LRVlfQ09MM19fVUFSVDVfVFgJCTB4MWIwYjEKLQkJCQlNWDZTWF9QQURfS0VZX1JPVzJf
X1VBUlQ1X0NUU19CCQkweDFiMGIxCi0JCQkJTVg2U1hfUEFEX0tFWV9DT0wyX19VQVJUNV9SVFNf
QgkJMHgxYjBiMQorCQkJCU1YNlNYX1BBRF9LRVlfUk9XM19fVUFSVDVfRENFX1JYCTB4MWIwYjEK
KwkJCQlNWDZTWF9QQURfS0VZX0NPTDNfX1VBUlQ1X0RDRV9UWAkweDFiMGIxCisJCQkJTVg2U1hf
UEFEX0tFWV9ST1cyX19VQVJUNV9EQ0VfQ1RTCTB4MWIwYjEKKwkJCQlNWDZTWF9QQURfS0VZX0NP
TDJfX1VBUlQ1X0RDRV9SVFMJMHgxYjBiMQogCQkJPjsKIAkJfTsKIAotLSAKMi43LjQKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
