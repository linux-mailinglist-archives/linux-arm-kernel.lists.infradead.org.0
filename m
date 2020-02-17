Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15222160EE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNuyTOwNA6W4TQewfNdwpnACT2/fGxqscO4yo1QifQI=; b=ZlSGy1lOrzwnWj
	g4CHi5tSpKW3zQHPEFa2v9yg+kgQLrheDTBM0ukU2XFfzU6VFPPQgLCNuj26FTVbG787MjihbPYDW
	bGp6AhH46dyq7N4rnfzp5D70nHk5EmMhuzuhoczTc1Hw6zL/FIeihaL7n0HvgTj+a0BF+tdDiJmBP
	cGU+/QonJgqVKQkejH4KH7qv/u+1FH3uNQpsmMZTxhkrTds22PdmHOwpWgHKFET89avFiN/xSdbD5
	90pLgk1zEuIVVSVGAb7uNpI2//PDJEdbvP2rOeK7/QNTHgCz3RgjWovy+1M0sra1xuxGIfyqjdWSk
	d8jormSx/Ntl8OCc+iHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3crA-0007D2-49; Mon, 17 Feb 2020 09:38:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cq8-0005xP-L7
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:37:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 69E571A2B0F;
 Mon, 17 Feb 2020 10:37:19 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B1BC51A2B29;
 Mon, 17 Feb 2020 10:37:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A842D4031F;
 Mon, 17 Feb 2020 17:37:06 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 7/7] ARM: dts: imx6sx-udoo-neo: Use new pin names with
 DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 17:31:26 +0800
Message-Id: <1581931886-12173-7-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
References: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013720_851343_0E3208FC 
X-CRM114-Status: UNSURE (   7.74  )
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
LS0KTm8gY2hhbmdlLgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC11ZG9vLW5lby5kdHNp
IHwgMjggKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZzeC11ZG9vLW5lby5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28t
bmVvLmR0c2kKaW5kZXggMjVkNGFhOS4uZWU2NDU2NSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvaW14NnN4LXVkb28tbmVvLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4
LXVkb28tbmVvLmR0c2kKQEAgLTIzNSwyOCArMjM1LDI4IEBACiAKIAlwaW5jdHJsX3VhcnQxOiB1
YXJ0MWdycCB7CiAJCWZzbCxwaW5zID0KLQkJCTxNWDZTWF9QQURfR1BJTzFfSU8wNF9fVUFSVDFf
VFgJCTB4MWIwYjE+LAotCQkJPE1YNlNYX1BBRF9HUElPMV9JTzA1X19VQVJUMV9SWAkJMHgxYjBi
MT47CisJCQk8TVg2U1hfUEFEX0dQSU8xX0lPMDRfX1VBUlQxX0RDRV9UWAkweDFiMGIxPiwKKwkJ
CTxNWDZTWF9QQURfR1BJTzFfSU8wNV9fVUFSVDFfRENFX1JYCTB4MWIwYjE+OwogCX07CiAKIAlw
aW5jdHJsX3VhcnQyOiB1YXJ0MmdycCB7CiAJCWZzbCxwaW5zID0KLQkJCTxNWDZTWF9QQURfR1BJ
TzFfSU8wNl9fVUFSVDJfVFgJCTB4MWIwYjE+LAotCQkJPE1YNlNYX1BBRF9HUElPMV9JTzA3X19V
QVJUMl9SWAkJMHgxYjBiMT47CisJCQk8TVg2U1hfUEFEX0dQSU8xX0lPMDZfX1VBUlQyX0RDRV9U
WAkweDFiMGIxPiwKKwkJCTxNWDZTWF9QQURfR1BJTzFfSU8wN19fVUFSVDJfRENFX1JYCTB4MWIw
YjE+OwogCX07CiAKIAlwaW5jdHJsX3VhcnQzOiB1YXJ0M2dycCB7CiAJCWZzbCxwaW5zID0KLQkJ
CTxNWDZTWF9QQURfU0QzX0RBVEE0X19VQVJUM19SWCAgICAgICAgICAweDEzMDU5PiwKLQkJCTxN
WDZTWF9QQURfU0QzX0RBVEE1X19VQVJUM19UWCAgICAgICAgICAweDEzMDU5PiwKLQkJCTxNWDZT
WF9QQURfU0QzX0RBVEE2X19VQVJUM19SVFNfQiAgICAgICAweDEzMDU5PiwKLQkJCTxNWDZTWF9Q
QURfU0QzX0RBVEE3X19VQVJUM19DVFNfQiAgICAgICAweDEzMDU5PjsKKwkJCTxNWDZTWF9QQURf
U0QzX0RBVEE0X19VQVJUM19EQ0VfUlgJMHgxMzA1OT4sCisJCQk8TVg2U1hfUEFEX1NEM19EQVRB
NV9fVUFSVDNfRENFX1RYCTB4MTMwNTk+LAorCQkJPE1YNlNYX1BBRF9TRDNfREFUQTZfX1VBUlQz
X0RDRV9SVFMJMHgxMzA1OT4sCisJCQk8TVg2U1hfUEFEX1NEM19EQVRBN19fVUFSVDNfRENFX0NU
UwkweDEzMDU5PjsKIAl9OwogCiAJcGluY3RybF91YXJ0NTogdWFydDVncnAgewogCQlmc2wscGlu
cyA9Ci0JCQk8TVg2U1hfUEFEX1NENF9EQVRBNF9fVUFSVDVfUlgJCTB4MWIwYjE+LAotCQkJPE1Y
NlNYX1BBRF9TRDRfREFUQTVfX1VBUlQ1X1RYCQkweDFiMGIxPjsKKwkJCTxNWDZTWF9QQURfU0Q0
X0RBVEE0X19VQVJUNV9EQ0VfUlgJMHgxYjBiMT4sCisJCQk8TVg2U1hfUEFEX1NENF9EQVRBNV9f
VUFSVDVfRENFX1RYCTB4MWIwYjE+OwogCX07CiAKIAlwaW5jdHJsX3VhcnQ2OiB1YXJ0NmdycCB7
CkBAIC0yNjUsMTAgKzI2NSwxMCBAQAogCQkJPE1YNlNYX1BBRF9DU0lfREFUQTAxX19VQVJUNl9E
U1JfQgkweDFiMGIxPiwKIAkJCTxNWDZTWF9QQURfQ1NJX0RBVEEwMl9fVUFSVDZfRFRSX0IJMHgx
YjBiMT4sCiAJCQk8TVg2U1hfUEFEX0NTSV9EQVRBMDNfX1VBUlQ2X0RDRF9CCTB4MWIwYjE+LAot
CQkJPE1YNlNYX1BBRF9DU0lfREFUQTA0X19VQVJUNl9SWAkJMHgxYjBiMT4sCi0JCQk8TVg2U1hf
UEFEX0NTSV9EQVRBMDVfX1VBUlQ2X1RYCQkweDFiMGIxPiwKLQkJCTxNWDZTWF9QQURfQ1NJX0RB
VEEwNl9fVUFSVDZfUlRTX0IJMHgxYjBiMT4sCi0JCQk8TVg2U1hfUEFEX0NTSV9EQVRBMDdfX1VB
UlQ2X0NUU19CCTB4MWIwYjE+OworCQkJPE1YNlNYX1BBRF9DU0lfREFUQTA0X19VQVJUNl9EQ0Vf
UlgJMHgxYjBiMT4sCisJCQk8TVg2U1hfUEFEX0NTSV9EQVRBMDVfX1VBUlQ2X0RDRV9UWAkweDFi
MGIxPiwKKwkJCTxNWDZTWF9QQURfQ1NJX0RBVEEwNl9fVUFSVDZfRENFX1JUUwkweDFiMGIxPiwK
KwkJCTxNWDZTWF9QQURfQ1NJX0RBVEEwN19fVUFSVDZfRENFX0NUUwkweDFiMGIxPjsKIAl9Owog
CiAJcGluY3RybF9vdGcxX3JlZzogb3RnMWdycCB7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
