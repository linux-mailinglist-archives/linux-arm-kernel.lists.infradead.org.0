Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2FB13D51F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaioSGEfCo4VSxSIPhfpldSJ1bG6m5BVLpkLY9XrFA4=; b=GDXP6b+J2lMcGo
	PkKGq0Ksw9aR3QEdhz+cwW8KqgQQVGQo7zRE0Xo1EeBjzwoWCCuWjc2tnyehqTOcRWkxES6XKTzJo
	ajet+Gis75XwYJQ70Ky/mjVK4B9qiCwDfy3Nroukp89dzRvHKZwvO9a61e7IDAcsGcalFQGXGFBGK
	EgU0tZoAV56F8LzhKPOpznCWQB0zuzaE0TRCDrnVNEd9g0nzgJe2wh0qa9jR0ADhMw3Wkz39xkAZG
	4RmmoI8jaRmwpg5HnuTFAsBY1iMja3QtXILUAQRXEAevv50GJIIUYcf8KdSjPTfUXVrqcDwFEkQ+A
	XthBH6ZaKc8PPn6dL/2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzjJ-0000Dz-Qg; Thu, 16 Jan 2020 07:38:13 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzic-0008AQ-Rn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:37:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ABB1F2009E1;
 Thu, 16 Jan 2020 08:37:29 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E3BE200659;
 Thu, 16 Jan 2020 08:37:29 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F037F2047A;
 Thu, 16 Jan 2020 08:37:28 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH v2 3/3] arm64: dts: imx8mn: add clock for snvs rtc node
Date: Thu, 16 Jan 2020 09:37:18 +0200
Message-Id: <20200116073718.4475-4-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116073718.4475-1-horia.geanta@nxp.com>
References: <20200116073718.4475-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_233731_030137_C3083B7D 
X-CRM114-Status: UNSURE (   9.51  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5pdGlhbCBjb21taXQgYWRkaW5nIGlteDhtbiBzdXBwb3J0Ogo2YzNkZWJjYmFlNDcgKCJhcm02
NDogZHRzOiBmcmVlc2NhbGU6IEFkZCBpLk1YOE1OIGR0c2kgc3VwcG9ydCIpCmFkZGVkIHRoZSAi
Y2xvY2stbmFtZXMiIHByb3BlcnR5IGZvciB0aGUgc252cyBydGMgbm9kZSwKaG93ZXZlciBpdCBt
aXNzZWQgYWRkaW5nIHRoZSBjbG9jay4KClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhv
cmlhLmdlYW50YUBueHAuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhtbi5kdHNpIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbi5kdHNpCmluZGV4IGE0NGI1NDM4ZTg0Mi4uZDIz
MzQ3YWFlZGRhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bW4uZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaQpA
QCAtMzU4LDYgKzM1OCw3IEBACiAJCQkJCW9mZnNldCA9IDwweDM0PjsKIAkJCQkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDE5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAogCQkJCQkJICAgICA8R0lDX1NQ
SSAyMCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1OX0NM
S19TTlZTX1JPT1Q+OwogCQkJCQljbG9jay1uYW1lcyA9ICJzbnZzLXJ0YyI7CiAJCQkJfTsKIAot
LSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
