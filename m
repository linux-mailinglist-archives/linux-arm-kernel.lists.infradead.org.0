Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D7BE6E78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTe1ZxIKFa/ia7dyL5GJpS1BKyGUq3T5VEJ6LCmi9us=; b=bLiPQ/Vn5Zsrsl
	RbcJtkZcmfMhpMJ4/5662VdIrwMEw4gCMDcE+eOqOihFs5UqymZodsv9E74Yz+PcXfyfrH7jLuxQF
	6w8sjumhSwS5dKfGynPnyzonn4YvmIyuc4lSDbGXe31GqvhqZ3E971sJapARoTEx3/xgiD5eB9gYA
	InSmHz4kwfNHhAsIuEg1cgKLY+fZAxFfmeCGEKePUssVGnknsTdMbO8dwm5KshNyOzupsrYDzH/Gi
	IUjaUPsGL3CVRY0FOqOI0bkvJ3pW9yJ2Mqzmzk9Z00+2s24di6Ov6WC2IgtK/qTjjuPKEkZqe9nhK
	JQhEyBmTbX+ACcnlyLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP0hR-0000Ru-0u; Mon, 28 Oct 2019 08:48:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP0hA-0000RF-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 08:48:13 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1390120873;
 Mon, 28 Oct 2019 08:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572252491;
 bh=0wg1hNqKvSi14ytb5P0C42epPI9MzMnFQY2DntLecQQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RPJk9XEk0iwsnbU46teKcpRIAP4EnQrTYiw1TfybIBb8ZOsaI/EIvxNC71QpXuxV3
 SvR6m9ZfcVK/fRC2ZvvAg3fWQi2cyXsfEqToOU20HcnKu8jb13+lVUo9wyGHX+zhlj
 aymaX+RluggfNLJLA7Gj01TAouLpL2yh2yayljSk=
Date: Mon, 28 Oct 2019 16:47:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Message-ID: <20191028084749.GX16985@dragon>
References: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_014812_294828_5D81FA21 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 02:59:27AM +0000, Peng Fan wrote:
> Peng Fan (3):
>   clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to simplify code
>   clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to simplify code
>   clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to simplify code

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
