Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD98D552B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 10:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O3SeE1izGNT6g/916TwHe0vWKii12m1vOL2ATy5P6Tc=; b=bFc7DD0F7/7Y0W
	DpnapDjxVVtuOMh4pphb4dD/LWTGhWiW7z1s4HDrkPl4Yyuhbl/q7okB9BATD3LkzDqyqM8rdKwkv
	cn4fIFWRVZBq/pNAEHJ8wLULRcdgbMEjFrzx5aiUQYtO4Ugr6x1V2YKWleJpmCF8nm2OxkVAFjtAd
	po2yhqGUTSHlOVe7fbfiR8hPMpByOIGn0m0b86BmI+nweWiww1eoJeoEfX5N8CfC/6ChtVaebMIJJ
	nsn8Trf9HDK5mnE3+sezhNZHkIe5eI8GCWffn0O1UMnEy22nbt8NDN2DBhNcnfHC+ih+9+LFiUaXl
	n5KKe9t3FqfRvJUOGo/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJYvX-0008KG-Lq; Sun, 13 Oct 2019 08:08:31 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJYvI-0008Ia-G0
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 08:08:19 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id EF29B3E993;
 Sun, 13 Oct 2019 08:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1570954091;
 bh=Q1QTREatWmcWuGTDA0ElcXg0wWej7VbC08GBo5YXAHQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ZaGF8T4vpKrrGUrNyeA8jhpMrE8Jac/Mznd1mgq/5iu9E93q4+or9qbCUNg56fQTH
 LRsBjEtggJ8LKP6wF9jx/lcfICTAs2vtlxecgO/pEC+YJhv7uqqWKraVITbUxduWVU
 1aG3MQBpcKIWHJlxMLOAgoXlcTDN4L1v71+Pn24s=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH 0/5] ARM: qcom: add defconfig items and dts nodes
Date: Sun, 13 Oct 2019 04:07:59 -0400
Message-Id: <20191013080804.10231-1-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_010816_597533_279312F0 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here's a small patch series that adds support for the On Chip MEMory
(OCMEM) and msm8974 interconnect support to qcom_defconfig and to
qcom-msm8974.dtsi. The OCMEM driver is already in linux-next and it
looks like the interconnect support should be merged soon:
https://lore.kernel.org/lkml/20191005114605.5279-1-masneyb@onstation.org/

I have some work in progress patches for the HDMI bridge that's found
on the Nexus 5 and this series adds the necessary driver to
qcom_defconfig.

Brian Masney (5):
  ARM: qcom_defconfig: add ocmem support
  ARM: qcom_defconfig: add msm8974 interconnect support
  ARM: qcom_defconfig: add anx78xx HDMI bridge support
  ARM: dts: qcom: msm8974: add ocmem node
  ARM: dts: qcom: msm8974: add interconnect nodes

 arch/arm/boot/dts/qcom-msm8974.dtsi | 79 +++++++++++++++++++++++++++++
 arch/arm/configs/qcom_defconfig     |  5 ++
 2 files changed, 84 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
