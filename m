Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A9F161111
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MWeArKjpaImlP0S3ljf7YLNQTcdeM+t+NQC5cB0SwA=; b=WqWns7vyIp56y8
	vAtRfmocJ0uwCbmv443PNilHvgMLoXKx4tXlj6mNIr+u230PklgyhKeaT1NoC+n0i+A03R3I4v26N
	+Da+QGxe5f65ui+Ti5s6+Ktqb/Mvv8phypYbFSSn2dBWD6EROXKHmBPGHjg14PDpYkR+dYypsQ7Fk
	5sNU5ZLaDt5WZKBhsyzIIgR7YeCvXqdzeC22gBzEPgaC2RE4QUKy1myp1lnTh0VUO4bGSiJWDZD5Z
	XfTexlTUR1SnmfxlUM+50I2i9qmwdu5eV/0Y1XI3r0Wadw5vMgo9YDufJORJsvM+erfmW1KANHwPq
	LM5H803o3mb3D9XjZ3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eSp-0002ud-0t; Mon, 17 Feb 2020 11:21:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eR4-00008h-O8
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:19:36 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 92CBF202B92;
 Mon, 17 Feb 2020 12:19:33 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DBEA1202B9B;
 Mon, 17 Feb 2020 12:19:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3370B402ED;
 Mon, 17 Feb 2020 19:19:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 RESEND 6/7] ARM: dts: imx6sx-softing-vining-2000: Use new
 pin names with DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 19:13:40 +0800
Message-Id: <1581938021-16259-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031934_918024_372D7B23 
X-CRM114-Status: UNSURE (   8.09  )
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
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQpObyBjaGFuZ2UuCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNvZnRpbmctdmluaW5n
LTIwMDAuZHRzIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtc29m
dGluZy12aW5pbmctMjAwMC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtc29mdGluZy12
aW5pbmctMjAwMC5kdHMKaW5kZXggMjg1NjNmMi4uNjFjN2U3MiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnN4LXNvZnRpbmctdmluaW5nLTIwMDAuZHRzCisrKyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZzeC1zb2Z0aW5nLXZpbmluZy0yMDAwLmR0cwpAQCAtMzg0LDE1ICszODQs
MTUgQEAKIAogCXBpbmN0cmxfdWFydDE6IHVhcnQxZ3JwIHsKIAkJZnNsLHBpbnMgPSA8Ci0JCQlN
WDZTWF9QQURfR1BJTzFfSU8wNF9fVUFSVDFfVFgJCTB4MWIwYjEKLQkJCU1YNlNYX1BBRF9HUElP
MV9JTzA1X19VQVJUMV9SWAkJMHgxYjBiMQorCQkJTVg2U1hfUEFEX0dQSU8xX0lPMDRfX1VBUlQx
X0RDRV9UWAkweDFiMGIxCisJCQlNWDZTWF9QQURfR1BJTzFfSU8wNV9fVUFSVDFfRENFX1JYCTB4
MWIwYjEKIAkJPjsKIAl9OwogCiAJcGluY3RybF91YXJ0MjogdWFydDJncnAgewogCQlmc2wscGlu
cyA9IDwKLQkJCU1YNlNYX1BBRF9HUElPMV9JTzA2X19VQVJUMl9UWAkJMHgxYjBiMQotCQkJTVg2
U1hfUEFEX0dQSU8xX0lPMDdfX1VBUlQyX1JYCQkweDFiMGIxCisJCQlNWDZTWF9QQURfR1BJTzFf
SU8wNl9fVUFSVDJfRENFX1RYCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9HUElPMV9JTzA3X19VQVJU
Ml9EQ0VfUlgJMHgxYjBiMQogCQk+OwogCX07CiAKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
