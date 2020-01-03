Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C0112FB9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XTif/3TCaAVURNUKj9KOQ7F+a9+XpSmqoG0PlWBKwyY=; b=c1kyMHCW2velH2OxoCypMWDyxa
	DFq3CkTX20a6hE9UcOZc2976lDpAUntiu6x8omwzxtdS82mdGzO2Q/m5D40P+J7GtaNtzx7EAHgE5
	5GGXOkBsCx45g6iLTKSMu4iiZW+psMGuN4Uk4G0XXtSyDyv5FoTQVegsYSkM5fMXITLWPPQP4cOld
	wppeCm1QXhrbqEpcXnq8T4mqIBTzXsyjTlWTSsKieK4WrZK3yQmbZrVU5/zKucknj50somxQ2+waI
	2svVQSkvxaWOsBPY563volhVOf8CWHvArWDNNfizw/BF3pRwf05Ugq5lQ22hB5rMULC9sWHfr7Nk8
	f3eS2r+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQi2-0001jn-Go; Fri, 03 Jan 2020 17:26:02 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQgn-0007w2-HU
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:24:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578072275;
 bh=Ki5Xx495F4YsB6ncXu7kfMIyiYqWsyfQhKXh4uBlEQU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GEZctov4iOwNBeFTSqRZTAQF4JKqhkJagQ1e89tgBXjEgFFN+oWtXJqbYkgsBpZz2
 gtGBaotnXK58d0wE01SGgMjCOcJuYyd2W7zSFFRGtacGg1f6NENPJ3sh+8/hZBFgjD
 Y3lG64Dt4s686/BlvSelQgpd3nGvPvb/p5iZlonU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MRmfi-1jAy5p0hiM-00TGog; Fri, 03 Jan 2020 18:24:35 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V2 4/4] ARM: configs: Build BCM2711 thermal as module
Date: Fri,  3 Jan 2020 18:23:56 +0100
Message-Id: <1578072236-31820-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
References: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:6YiHejA8tz/7oRcej/Y+aw4g3ItMrl44kB/QtEKWQ9VUcM8sLzF
 GraS2XuJy48/Tbe+V+qJojRYmnmXrxp4x1p05vtH/Nlo3cC+rot5nYH+v7iugevRXef/s6d
 k74SGUKH6no2bTAJrWqZJN780NAS95qNtFymhMZX/nnBFJkEqYP5IWJYrsOfWF8rSEit4NB
 efCy1K2tzGNwfxrM/CDVQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jdbFcKc7zF4=:XLFLIi7nawvnlcyUr6+46L
 0SDMsXKCo0dpBTbfncvc/bocSkvxF+lzgryxE9dRixoytn29pcF48aaXp6OeSkGDfzjnVxKJF
 RPeeJPLPrLtlTWZKRinPwPiEd7NU00xgIjQwXHisHMHcGpO/gjqVZk4H5KE8/bSXf5JBpl5Kp
 3UwTS08qBnm1Wef2p3HDgjVvFwfGkwWGGyAqj+Gmxxtq5dsHULTXjDFLgqqvU/3qnIe/KwMSG
 LW5/tbOR+OViQGKktaypu/6Ik4O/fOHTy86wi+uwNq8LLQhc9htGKP6TIg+u1dC/8hVwl11hH
 LWMiBNE88Yn0yvMqpu79DvTSfXmGw1w6LJ9oGeOAarHrIPJeHXCX/WodvXDHiRFTLTRJzWqIj
 grGwhggFT9HSJ3OngwXgrtOt6Fd3KJy3QQdNls/KJHOVcRoUnW4+7voHAXWWLGMkQS773NWQ5
 fx/QJWfT7d/Al3cxxOqDoBepvXuLXJqa8ZIZDkhZcvh8juhx0JMDx2rp5hI4QVj2DFZzrIozK
 WbZYhvp5PqyUJ9ra6KmfaaavlNAGvgU/AQTP8pott4zlBdN3DYHRbs5ywZWf+RtQPPoaUNqAL
 3oBkOFepo+vLzxa/MKNRFD7xxpA1w81aMyVyfC4EuKUxkhqY8uVtPd9zGo6/OY4bD64eua1wr
 /A1EffQcoN+HcNnT6kTdFVvvEctTpq1YCQeMh636jJJd+ooHzWIeOI92fKQdk/LNPXuXdbxbv
 nJFBjh0wAZPalxnpnf9jrae2MIaius6vls7nuHoZM9d2aUC96lDd2/F6tDh9rJ8jTcV/88/AQ
 4RZeNd2VRAzFrWakhLnaexgPb8bpm5H/PdLhSa5xoMH3/olZfHWbPHWrDslAijUklEb7UF8Vs
 0CMa39WkFW4a5YkjBnni/FCWq7xsrvZV2CLYi1NhoCtuM9/loBBMT3Hwdh+WWqCv0joOrmvVK
 Tz8s6qnNenSNTkPkUjeZcx4jFXtKpuheXzhxCPhJpu8j95yLl+ykgyyZIoD58Wi2JD0PDUNkj
 nZFpbfVrbH3WxNOBCozexVF+bO//YEqBfEwWwwuJrmseCr4VRbpDpyIBBGZP2iYBPnCO/K1gP
 3isX6gUnwS9xCgLTWVkUFDhWVPVhM2TEfDk5ohUqLUJYndOOaH4UVo6aMB8BZzGMflgYWq27f
 5j0bu/WqQQ0N55l4pAhO5L54BsaTLr5uxvQ8MLLN0y0QpbGJ/hwMYq5f6ylhCwiA2e9sEtKEF
 NGe3ULhh4Kr0WoPUv7dHadTIjrohwWBCmo38lXg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_092445_898593_A3F109ED 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This builds the BCM2711 thermal driver as module for the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm64/configs/defconfig        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3f1b96d..f5d19cc 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -496,6 +496,7 @@ CONFIG_IMX_THERMAL=y
 CONFIG_ROCKCHIP_THERMAL=y
 CONFIG_RCAR_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
+CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_ST_THERMAL_MEMMAP=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2..b2f6673 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -442,6 +442,7 @@ CONFIG_ROCKCHIP_THERMAL=m
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
