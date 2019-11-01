Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB12EC3EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/b5jrH3i3GiJVupvOuNS9I/+ADNELhI/Q/omvvlDyAg=; b=LTwM1baNGt/7a9nZKTacydJfK6
	s0zyIwjJW9NxWoogDuLqBtWwaeMvwrnaa70eJ1To780FW18U+LXdiA5/+8ko/6W3Psl8wzSShNDhy
	2VyMw5/Jo5GK/DQu5ES8bUCx2HkHta7ZWbVyaFYZH/1a6jZ/ezCCw7va9w6wBiN6F345roWgWHzsT
	Sh4DmmVyIBDu54rF6JNl6dggjHoKz2xzVvZTBDISoLOdlAav37tWEl+eYlkXtk+Mrsdjl8vGhHHRj
	u2cB0WIJUNV/bXxbz72dLGw2agaXe/038QZojHUQLdyJiajlPOvi3hLC2CxW/bNnEfCxKOiukRB5d
	4TK4jqeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXD8-0004kH-R2; Fri, 01 Nov 2019 13:43:30 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXD0-0004iT-QV
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:43:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572615792;
 bh=fOvzyTqdzRPJH9OPOKinIdqeCZlBTTjHLrFlxGo7twE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=X9MZO549TJZ3vLpsTN53oZPmrRiVr6QEhE+a8tJ0Vozj/4p8GngNCsMNBWi/HHAQF
 d0u4qpBcTg6lLFDQuuzcz3tdFsHTD1R8t2vxGKcKvBRsDYlZ+m7v6+yHlqt8F60ZMk
 SdZduKccraRWC8etr/ne1T5gzHczUiJDg70n+HXM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MtfNf-1i6fdQ4C7D-00v7fj; Fri, 01 Nov 2019 14:43:12 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Markus Mayer <mmayer@broadcom.com>
Subject: [PATCH 4/4] ARM: configs: Build BCM2711 thermal as module
Date: Fri,  1 Nov 2019 14:42:29 +0100
Message-Id: <1572615749-9524-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:TbKDFSyoLz5kGUMLh2sdMchsMi8B7ywabIQ029/PvKMAKErCJPq
 LaV4eY+9A6wMG6XJAq+AzVhHdeDbWKCIQ2SdpxaHQVJDnPz05KWwr/zYmz4qRItRUAmMueQ
 52bZwE1KDdhZw19Aa3Vn6hRMebJFvpX727zxqEUbD6e5Il680xV+/xuwUvFKrOLUtnTXGr9
 eM4jtb+KLzwTZf5GlyVCA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MkaZ/3lmt58=:nz5UCjGMivPj91VNzCwyFe
 6eTbZupEK6tkHD/UlTaZguPibR6Acl9YFic3AY75LQk2NoG51Ex7boMYU+seMx6ZfqRW6CoKr
 82zvdUtskysVkSwIFg01uXDzcuS75oaF7e2SOArQNIU6sMCgbB1T7UI3M21LqHQw/XikjB5bg
 Q7FLOawvCLmPPc0vGqhtvxOtC/HWrmfORZqcmpVNyU94muqiEX7XutEIIq8LlxBSXUs2Ith+5
 q5YzU1OWw7G/gzg/iSw4hlhWoLvkmkjNAXbTf7GuB8u3EaPtjKTaQWacZ0FoqMVJpQuCy83bR
 tHeOzjRMGwYaGjJ/7NlW6yLsxr+GPypkXEivylBTPBJDKdl9Sl+mDIDYjvt0cG2yBqFJqG44s
 2CbRHr6clzj7fYcOSZgS7AlymGiKuFKVNlFYteTaksqTMoZ+ikGoBared5E/tGt06dxRzHmcG
 J6yAg53kzjL7gwq5087VkC95YdYT1ukWME6yqugRfaOOtZUANg6uIeWGq57ufCRCciYjncoF5
 HR3Ah4IBy/h5HZSx55vtBkX5m6kKrJAzUgcE/UOmMNQZ6qwXZETpwB1G3ghmauLKVsLsMz+OS
 vigD293HSdqK0UJ/QpbAUoVlKTETu616J4lWurFMBaUcrRED3YQCniCMIsPI61yvICXrHP188
 2LnqqwvqvJ+mTxARSP3h7/YAPes5o13PDlG+gUA+2U6AgQfBhoxALznXemfcWAuRxcD0YHMoB
 Z/4cce5K/gaKIBXapRxP41P10j9ZX3TmUhrs93PMlDGGFv60tBJpb3TCnL3/Kfo+0fjnboGkJ
 o9NQ3J6gVe2/05QpLi3BQEvuhyQbE8KHXTrJnKqH7OG8XnePT8LbHza1HkX1ZRRA5XsMo9BiF
 S2eeWhpw35peMp9UiyI7N5jFDyeBOgYtqoO3+uv64HPL9I8qKqTlLlsk3ReNsQGP85331SXAZ
 87IojnVd41AxiBEGU5Qjz4rGCqnJqbQo8S9ox50/0VDxDl2TwF5kaNERTIcL5kRod62nvTSSm
 nP0j/C3mLORpdWUnWkE53uyjSXcpFP7q5gKDPBn3GlIu7409OCcBi4mqPWwGuGqejVGegoR/0
 /aUTIpuslWS/e0MRk2Ilba/FqKbra8O6GpLnyw3V1LaNy54d5X04ge+lWrFGRCt//R9QOCnWt
 fBwFYpy2gNB+0M41/3elbVdwJ6u6roVi12SysrxoTFP+P4PFWPZSGN2ZVaGAJq2k3Pl6eeMQr
 G4ozsyV4gPkFnB+7uOCXTVn7bktCAG7C+pHQRlA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_064323_190072_5D749E54 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This builds the BCM2711 thermal driver as module for the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm64/configs/defconfig        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 13ba532..441b795 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -487,6 +487,7 @@ CONFIG_IMX_THERMAL=y
 CONFIG_ROCKCHIP_THERMAL=y
 CONFIG_RCAR_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_ST_THERMAL_MEMMAP=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39..0a52987 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -444,6 +444,7 @@ CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
