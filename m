Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06C717F0C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XySATGERiuHjHMey0pS+yFldzslPwbyAgD0bkmAS4y0=; b=qorVfru7kgNBf3
	VIRHrQn9MEstRhF9Vh6ketvWJVArKhr+b3nnR1ktYUIKfT1LtYZa5cTRmPpXmDc1OB9qbYMuGKnbY
	fKW9AacFOnvVrc79CpExkc1LSqNruMwzjUQ3fa6Ey8o+hqi3tzs8zdQmOsfyR/lKcIihv6fzCsZXt
	fC0DyV/v5yQCB6qifw0zWCuRvnq+xETK5PFanIDK3IIWpDkxTM/q4Z9Zsup/CvtiXPGS6rzh6hrUJ
	+S7ubuVEcws8Ot123pKeXeDhGD3yNg5cCfOKshf7t4mqf+iP3eoW7j09pkrp/DWW8lIlz607vp+U3
	V9hsu2l2oLb4uWnvsxnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYno-0001WU-GD; Tue, 10 Mar 2020 06:55:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYnb-0001Qy-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:55:32 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AAE724673;
 Tue, 10 Mar 2020 06:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583823329;
 bh=ZRCNkTGQgwAEDE8s853tkWNNHFMgO9nid8aMskpYkP8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YDBbac6jQ5YBSWONwFuddRv8bO3Yf7NBJGFTJ4fwRnb+KMhEYL8hLp9tKMD9NXcuv
 95UizvXqQuT/PSxN9pQWxeSwiVl/has3oLUDdQvJJWA2XlHcZ95/UR9ZZCSB0kyMzs
 HhVcM4Z69pfcBMln107gs7CbzcWYyIPjbqFXglMg=
Date: Tue, 10 Mar 2020 14:55:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V5 0/2] soc: imx: increase build coverage for imx8 soc
 driver
Message-ID: <20200310065521.GA17772@dragon>
References: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_235531_663420_6DC510AE 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, olof@lixom.net, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:32:17AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V5:
>  Add missed "static inline" in misc.h
> 
> V4:
>  Add dummy functions to fix build issue when soc-imx-scu.c built in,
>  but drivers/firmware/imx/imx-scu.c not built in.
>  No change to Patch 2/2.
> 
> V3:
>  Per Arnd's suggestions, merged Patch 2/3/4/5 into one patch
>  Dropped the defconfig change with a default Kconfig
> 
>  Leonard, I dropped you R-b in V3 since the change.
> 
> V2:
>  Include Leonard's patch to fix build break after enable compile test
>  Add Leonard's R-b tag
> 
> Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family
> Add SOC_IMX8M for build gate soc-imx8m.c
> Increase build coverage for i.MX SoC driver
> 
> Peng Fan (2):
>   firmware: imx: add dummy functions
>   soc: imx: increase build coverage for imx8m soc driver

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
