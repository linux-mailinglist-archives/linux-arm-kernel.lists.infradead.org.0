Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0A735987
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRc/SK3srNjvE14xvE/wfIuLnQda7g4jDfNv87fj1wc=; b=I8sf3dgkhXuQZK
	Ke/IDGMIwb+fE+DNwBW7O09HcItLQf2SB9cPn5sYlVqCEvac5tq217ejUb0dtT2+/J+w+qNChCiM3
	cNe5arhNUi5ZGm24iwBCebxrXQM3TlER9WO35bbMOdivuO+iTSX6P8LtbIYFHRIK6ViKyz/TsOwQq
	z+bSp4bLPUH/gKQmIZhiGO6jsfU1yOV2rgNrSe3TGAh4Of32TOTDdWnKQtxVrWeeDSZe7imV9C41B
	RYiwaHgttzfRnqJ7N2ITT9NvXuq5zZRm4YgTdx88YQimUclcT218Iv/ZtXcfCUaKGEHlz6PlWkFMY
	u6AtsHq3nnNuLiv+yUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYS2v-0005Pj-FC; Wed, 05 Jun 2019 09:17:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYS2n-0005P7-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:17:19 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 778E32075B;
 Wed,  5 Jun 2019 09:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559726237;
 bh=cYxElpW0Vlv3r+RPbOHmetHZB85NQhgPvZ9XJjQHp8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q+Tom2tpYqySAyxKs/a5k8md0Kdcvyol+5i29ZMARg92tJkM3PfeCqA+tsVG0skgo
 co5GY8aqSapFhci0wSKc4JAY/mHnqiHy2bgmxvyK1DNQDMtbe72W3QLD8x/r21/OI7
 RZSVzUzgWfJMcNEkxHfoQB+TjMZNSZyB9zAHu05c=
Date: Wed, 5 Jun 2019 17:17:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] ARM: dts: imx7d-sdb: Make SW2's voltage fixed
Message-ID: <20190605091659.GM29853@dragon>
References: <20190529065056.27516-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529065056.27516-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021717_967215_74DB1E58 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 02:50:56PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> On i.MX7D SDB board, SW2 supplies a lot of peripheral devices,
> its voltage should be fixed at 1.8V. The commit 43967d9b5a7c
> ("ARM: dts: imx7d-sdb: Assign corresponding power supply for LDOs")
> assigns SW2 as the supplier of vdd1p0d, and when its comsumers
> pcie-phy/mipi-phy try to set the vdd1p0d to 1.0V, regulator core
> will also set SW2 to its best(min) voltage to 1.5V, and it will
> lead to board reset.
> 
> This patch makes SW2's voltage fixed at 1.8V to avoid this issue.
> 
> Fixes: 43967d9b5a7c ("ARM: dts: imx7d-sdb: Assign corresponding power supply for LDOs")
> Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
