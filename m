Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4D318BCFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OaAA9R7IzLuq3Omya0Ko2UDYTlDvLaaSE+ZpoN3fOnQ=; b=m6VjgrEJIEeIZC
	E+sk3bCfhN3VCQdHYzmtfWGClBKbXmroK2V6tvllF8Cvxws71MesB42yY76A6B+wtRTKcvuiLC1m8
	3wwOulxy2959wv5EYYHp0ep4OZ09sHrXGalBMsm9PBTjA1Ies0NlzKC/FcSWoWo0dbC+WgSoalAld
	Xb9iNTEUhPEagRt1FvpDiESIv85tgoxi1Y/q1g5dFu8C/6OzE5eaPhG83j/kGPCJlTpXwPKnEOz3i
	s8DLdxc2vwf68tyAtw6xRrv8NObsCI3lgQg35S0HMVhMx4qK5oECWUI51/Qieq18ofI0aYevCBIOA
	rP4M98OZfaD4MVW5nyvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyJJ-0001Wc-1g; Thu, 19 Mar 2020 16:46:21 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyJA-0001VP-21
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:46:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id B6010FB03;
 Thu, 19 Mar 2020 17:46:03 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bpzGdWj8WUbo; Thu, 19 Mar 2020 17:46:02 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 68B79412BE; Thu, 19 Mar 2020 17:46:02 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Martin Kepplinger <martink@posteo.de>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Date: Thu, 19 Mar 2020 17:46:02 +0100
Message-Id: <d9bfb11e3d66376792089d54d7d52fe3778efa33.1584636213.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_094612_262217_0ED358EF 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBpbXg4bXEgZGF0YSBzaGVldCBydW5uaW5nIFZERF9HUFUgYXQgMC45
ViBpcyBlbm91Z2gKd2hlbiBub3Qgb3ZlcmNsb2NraW5nIHRvIDFHSHogKHdoaWNoIHdlIGN1cnJl
bnRseSBkb24ndCBkbykuCgpTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01
LWRldmtpdC5kdHMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEtbGlicmVtNS1kZXZraXQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OG1xLWxpYnJlbTUtZGV2a2l0LmR0cwppbmRleCBjNDdhMjZjZjhlNDMuLjczNmIyNTBiYzljMiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUt
ZGV2a2l0LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGli
cmVtNS1kZXZraXQuZHRzCkBAIC0zMTgsNyArMzE4LDcgQEAKIAkJCQlyZWd1bGF0b3ItbWluLW1p
Y3Jvdm9sdCA9IDw3MDAwMDA+OwogCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEzMDAw
MDA+OwogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Ci0JCQkJcm9obSxkdnMtcnVuLXZvbHRhZ2Ug
PSA8MTAwMDAwMD47CisJCQkJcm9obSxkdnMtcnVuLXZvbHRhZ2UgPSA8OTAwMDAwPjsKIAkJCX07
CiAKIAkJCWJ1Y2s0X3JlZzogQlVDSzQgewotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
