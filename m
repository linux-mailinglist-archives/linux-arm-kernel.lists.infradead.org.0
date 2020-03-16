Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CB11863AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u7pXYlzCuMLVwEjhHovTCTrJmVq4FF5RCwmHOi/4NDo=; b=Ur620guhUTdrD4
	VsebSje+mTVSnpNcs8BEhSvyi7QMgvvLSmXNmvIyaZdtlO1aYPg93L5N04dfoRtO4x0XZwxkeVmb/
	eOUtAb6eVl50JQKuLUw/24kU0qb2xeOlPlCv9WWMjJtKDom9IiqcuvobADMS76T7zav7NxMI/zZ95
	mca3KKTW3bOXib2Ih1Q1k6vKEG13BmF/KwNBWRx3RhYiOZ0DZEYS7RdmrnYjcR2pzlp6aHSfeObjS
	dzc5oDrY7d/PvdDVVXJtMldpaZ+VZNvJMXeNbB1rXAeCd0z6rH1ye0CSaZCbuGU6EgbJAhpBS4tfa
	4sxo8+n30ZxRyxu6T3Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgOK-0002rM-7U; Mon, 16 Mar 2020 03:26:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDgOC-0002qy-L4
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:26:05 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E6A920679;
 Mon, 16 Mar 2020 03:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584329164;
 bh=AeDcPIM6fWtG9TfyhkwrAHzpIDKASfisx8eb7lFRGqo=;
 h=Date:From:List-Id:To:Cc:Subject:From;
 b=xdDhpwQNeifYFwD7JQ6LpgCVBlIE6FRjDXIuwvH6lF2U2djNc002AOyyjK3QTCStm
 qdmLGOT8Ac61AUhsSrPSXldZRTCF+m2WfPaRE5jxcV+Mq/9blC3mAaTUm8u7eCfCGA
 281Mbp+SNJmY+JH2szS1p9G3YKFmCEackilvH9Yw=
Date: Mon, 16 Mar 2020 11:25:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.6, round 2
Message-ID: <20200316032555.GD17221@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_202604_710324_DDA6A6A2 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit f10e58a5d20e1cf3a39a842da92c9dd0c3c23849:

  soc: imx-scu: Align imx sc msg structs to 4 (2020-02-24 15:29:43 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.6-2

for you to fetch changes up to 636b45b8efa91db05553840b6c0120d6fa6b94fa:

  ARM: dts: imx6: phycore-som: fix arm and soc minimum voltage (2020-03-11 16:28:33 +0800)

----------------------------------------------------------------
i.MX fixes for 5.6, round 2:

- Fix minimum voltage setting of vdd_arm and vdd_soc on i.MX6
  phycore-som board.

----------------------------------------------------------------
Marco Felsch (1):
      ARM: dts: imx6: phycore-som: fix arm and soc minimum voltage

 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
