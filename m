Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EB5161112
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:21:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vACQ+emyUnxGeUNdPtDTEY84WECQ1N0uac8oevGANE=; b=cjowzyWLhJDHtO
	fQw1WjYL/MVzXh10qcuWkK90iUBXGtMqFkwc4eLmsGLZayY/VSYTSsBi+1hEtqwhJ8bDb2xAi/fRc
	i2/HwqeYFdboe8GTnstwj8m6uwat9WB/eRLIn3j/MeqYLq4LCHjndG9mLdeIP0dLF0/r+4iyRjlxy
	Bi03g43W6HfCsm/CwO1UEfYHYtL13s37EO6M1Hv46+7RQxXNFLO3xsGlEXVFo26/KIHUGjji8T8YB
	miiUnwjga8eVte1kFIki2rkEucZc764KIbSCJcKZUGhXwQ0KLP7GUPVuLQzhYltKCEQ5LDcejmo98
	B89AvTnbPdoczUuDIcGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eTB-0003E4-No; Mon, 17 Feb 2020 11:21:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eR6-00009l-5s
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:19:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E94C41A2CD5;
 Mon, 17 Feb 2020 12:19:34 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E9921A2CD1;
 Mon, 17 Feb 2020 12:19:29 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 308AD402E0;
 Mon, 17 Feb 2020 19:19:22 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 RESEND 7/7] ARM: dts: imx6sx-udoo-neo: Use new pin names
 with DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 19:13:41 +0800
Message-Id: <1581938021-16259-7-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031936_389627_411E670E 
X-CRM114-Status: UNSURE (   7.43  )
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
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQpObyBjaGFuZ2UuCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28tbmVvLmR0c2kg
fCAyOCArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnN4LXVkb28tbmVvLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtdWRvby1u
ZW8uZHRzaQppbmRleCAyNWQ0YWE5Li5lZTY0NTY1IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290
L2R0cy9pbXg2c3gtdWRvby1uZW8uZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gt
dWRvby1uZW8uZHRzaQpAQCAtMjM1LDI4ICsyMzUsMjggQEAKIAogCXBpbmN0cmxfdWFydDE6IHVh
cnQxZ3JwIHsKIAkJZnNsLHBpbnMgPQotCQkJPE1YNlNYX1BBRF9HUElPMV9JTzA0X19VQVJUMV9U
WAkJMHgxYjBiMT4sCi0JCQk8TVg2U1hfUEFEX0dQSU8xX0lPMDVfX1VBUlQxX1JYCQkweDFiMGIx
PjsKKwkJCTxNWDZTWF9QQURfR1BJTzFfSU8wNF9fVUFSVDFfRENFX1RYCTB4MWIwYjE+LAorCQkJ
PE1YNlNYX1BBRF9HUElPMV9JTzA1X19VQVJUMV9EQ0VfUlgJMHgxYjBiMT47CiAJfTsKIAogCXBp
bmN0cmxfdWFydDI6IHVhcnQyZ3JwIHsKIAkJZnNsLHBpbnMgPQotCQkJPE1YNlNYX1BBRF9HUElP
MV9JTzA2X19VQVJUMl9UWAkJMHgxYjBiMT4sCi0JCQk8TVg2U1hfUEFEX0dQSU8xX0lPMDdfX1VB
UlQyX1JYCQkweDFiMGIxPjsKKwkJCTxNWDZTWF9QQURfR1BJTzFfSU8wNl9fVUFSVDJfRENFX1RY
CTB4MWIwYjE+LAorCQkJPE1YNlNYX1BBRF9HUElPMV9JTzA3X19VQVJUMl9EQ0VfUlgJMHgxYjBi
MT47CiAJfTsKIAogCXBpbmN0cmxfdWFydDM6IHVhcnQzZ3JwIHsKIAkJZnNsLHBpbnMgPQotCQkJ
PE1YNlNYX1BBRF9TRDNfREFUQTRfX1VBUlQzX1JYICAgICAgICAgIDB4MTMwNTk+LAotCQkJPE1Y
NlNYX1BBRF9TRDNfREFUQTVfX1VBUlQzX1RYICAgICAgICAgIDB4MTMwNTk+LAotCQkJPE1YNlNY
X1BBRF9TRDNfREFUQTZfX1VBUlQzX1JUU19CICAgICAgIDB4MTMwNTk+LAotCQkJPE1YNlNYX1BB
RF9TRDNfREFUQTdfX1VBUlQzX0NUU19CICAgICAgIDB4MTMwNTk+OworCQkJPE1YNlNYX1BBRF9T
RDNfREFUQTRfX1VBUlQzX0RDRV9SWAkweDEzMDU5PiwKKwkJCTxNWDZTWF9QQURfU0QzX0RBVEE1
X19VQVJUM19EQ0VfVFgJMHgxMzA1OT4sCisJCQk8TVg2U1hfUEFEX1NEM19EQVRBNl9fVUFSVDNf
RENFX1JUUwkweDEzMDU5PiwKKwkJCTxNWDZTWF9QQURfU0QzX0RBVEE3X19VQVJUM19EQ0VfQ1RT
CTB4MTMwNTk+OwogCX07CiAKIAlwaW5jdHJsX3VhcnQ1OiB1YXJ0NWdycCB7CiAJCWZzbCxwaW5z
ID0KLQkJCTxNWDZTWF9QQURfU0Q0X0RBVEE0X19VQVJUNV9SWAkJMHgxYjBiMT4sCi0JCQk8TVg2
U1hfUEFEX1NENF9EQVRBNV9fVUFSVDVfVFgJCTB4MWIwYjE+OworCQkJPE1YNlNYX1BBRF9TRDRf
REFUQTRfX1VBUlQ1X0RDRV9SWAkweDFiMGIxPiwKKwkJCTxNWDZTWF9QQURfU0Q0X0RBVEE1X19V
QVJUNV9EQ0VfVFgJMHgxYjBiMT47CiAJfTsKIAogCXBpbmN0cmxfdWFydDY6IHVhcnQ2Z3JwIHsK
QEAgLTI2NSwxMCArMjY1LDEwIEBACiAJCQk8TVg2U1hfUEFEX0NTSV9EQVRBMDFfX1VBUlQ2X0RT
Ul9CCTB4MWIwYjE+LAogCQkJPE1YNlNYX1BBRF9DU0lfREFUQTAyX19VQVJUNl9EVFJfQgkweDFi
MGIxPiwKIAkJCTxNWDZTWF9QQURfQ1NJX0RBVEEwM19fVUFSVDZfRENEX0IJMHgxYjBiMT4sCi0J
CQk8TVg2U1hfUEFEX0NTSV9EQVRBMDRfX1VBUlQ2X1JYCQkweDFiMGIxPiwKLQkJCTxNWDZTWF9Q
QURfQ1NJX0RBVEEwNV9fVUFSVDZfVFgJCTB4MWIwYjE+LAotCQkJPE1YNlNYX1BBRF9DU0lfREFU
QTA2X19VQVJUNl9SVFNfQgkweDFiMGIxPiwKLQkJCTxNWDZTWF9QQURfQ1NJX0RBVEEwN19fVUFS
VDZfQ1RTX0IJMHgxYjBiMT47CisJCQk8TVg2U1hfUEFEX0NTSV9EQVRBMDRfX1VBUlQ2X0RDRV9S
WAkweDFiMGIxPiwKKwkJCTxNWDZTWF9QQURfQ1NJX0RBVEEwNV9fVUFSVDZfRENFX1RYCTB4MWIw
YjE+LAorCQkJPE1YNlNYX1BBRF9DU0lfREFUQTA2X19VQVJUNl9EQ0VfUlRTCTB4MWIwYjE+LAor
CQkJPE1YNlNYX1BBRF9DU0lfREFUQTA3X19VQVJUNl9EQ0VfQ1RTCTB4MWIwYjE+OwogCX07CiAK
IAlwaW5jdHJsX290ZzFfcmVnOiBvdGcxZ3JwIHsKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
