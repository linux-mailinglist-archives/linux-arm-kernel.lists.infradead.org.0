Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6862A13BB68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaioSGEfCo4VSxSIPhfpldSJ1bG6m5BVLpkLY9XrFA4=; b=aKdB0Vv8LaQeuq
	3+HehxszoB3q3XtaSVwWyrVLWfwV3jyY0dds3sxsyd3OqSDS8c4dduLE8A0IxPL96Vokta0KkMLab
	s1Vb75jI4HIoPikhKRB5AXqFbwBTizUVQi+MlTJVzpKGsIUxXG4z6qlSpAANBsJI4R5WnoMw8uXjA
	RJ8rduyCvYAVLW5bN22dcMknQALLxTjIcAexRTEWaPFszLLn4x200IKyJN9otupmrmCaT5KP6C4mF
	6Bw80JcbFTlWYc9VVkKHXWsDodF5YXFDPIYk0C6RVVpfINayWkbw17aCeRvIfm4C0/ev3JUoC0W3g
	oFZGzj2d3o0KdeMf6weg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireGv-0002xz-R6; Wed, 15 Jan 2020 08:43:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireGL-0002jm-SG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:42:59 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 318281A0BE3;
 Wed, 15 Jan 2020 09:42:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 255AF1A0BD9;
 Wed, 15 Jan 2020 09:42:50 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 75FA520340;
 Wed, 15 Jan 2020 09:42:49 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/3] arm64: dts: imx8mn: add clock for snvs rtc node
Date: Wed, 15 Jan 2020 10:42:25 +0200
Message-Id: <20200115084225.30464-4-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200115084225.30464-1-horia.geanta@nxp.com>
References: <20200115084225.30464-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_004254_051019_BEFD60B2 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
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
