Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1C31BD1FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZretQFSbT02inJJrwk049N156vEVUBR21IBRy+YhM8=; b=meM/s0K8iX5fyb
	7HcaosOWY4Jrj+jgy5k4rH/rSxAPlVSUmMU6GvEBRnzZM7xpTQ8xKYO2Wk3IEdH2HpFKbkEIakaQk
	Y+CkSpOEEW5I/ZLmngyWLNXBWksJMrybUz63rUQw0MoKyjyMeakQPZZiN52EHapISvBkhxwpxs+yi
	NUW3MtmZtEXsUT3/VfdH82zIxkftDoOLDU8zCWWlwJHFmrGbww/0Xay9CXy7/Ot1haFrYHAu6dX+1
	YS8YHnx4ZmG7ermH6heizC6RgQ9eeUmwlQJ8N4HjxppmDaEmsM6flQFDcYtEnTDxGsqz3fFiuJfpK
	nmWRwkmEvi+vlnDv1ZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTc2k-0006No-IV; Wed, 29 Apr 2020 02:01:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTc2U-0006Mr-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:01:31 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6642520731;
 Wed, 29 Apr 2020 02:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588125689;
 bh=f/1DqKlL9kcH1bIup6JMOAlUdBjFxO2nIQviNagNhPQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=blXgUPFpyDOshjuyyqaPphLfhPHQGWDufL+u0Zws3Y0AX2LY18DEiApJWDICZ4+O+
 cj+Z74GQY2Q8RVKf9LZldyvOMFG7r/P3WyxcQbMgst3Lc12QzHn4567715VZzyZVRb
 garWNUwcTEnVqmWjk2kwkjqGBcKGtuIG12nPGGnY=
Date: Wed, 29 Apr 2020 10:01:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v3 07/13] clk: imx: Add helpers for passing the device as
 argument
Message-ID: <20200429020121.GF32592@dragon>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-8-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586937773-5836-8-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_190130_109045_BF547E10 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:02:47AM +0300, Abel Vesa wrote:
> All the imx clocks that need to be registered by the audiomix need to
> pass on the device so that the runtime PM support could work properly.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
