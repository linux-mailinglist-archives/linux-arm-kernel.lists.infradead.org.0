Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3701448D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 01:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcg09FgyUebrJU0+SGWE7gG3ZLwx58sSwtlvY0563Zc=; b=gC6CaLqJER5UHm
	KZN73JGC7SdgNU97vC5QiidRB5+RkaJzyCY3YsbYmwiaxbG5hM4Cy2fFWFifmEyrSRRKWOhgiHl6V
	UaaWnRLVi452bcXM5F0gAcYBhs7kkh5ZG7MyN6saMNxlKtHEtDuO1IxE4PSOGoCoUmtxpsceCVqAh
	jpzfjl+/faMl9esEco209vaqu4xbTMtZwhsEAVnnx94VoFAb2vtQWFDe/0EGFq2VpOx0v1WarobMv
	iNs8A9LXSFeojb2f9+FbCQxi3iI+c/gaUYJRBP0p2DvrILpAooqc4uOuEuxKbKgRMG0DcItFe8Uq0
	BfAQImTYBzXDW6oO12yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu3iT-0008QQ-5c; Wed, 22 Jan 2020 00:17:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu3iD-0008PI-32
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 00:17:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A71BE21734;
 Wed, 22 Jan 2020 00:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579652256;
 bh=sG4VLxMMqjJ/N4Sj4WYyY9dkazSZzty1XYWTKVEGEHI=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=mPqZ/Sw9fiwPJzR5xU3Tss/mC79aiFkKkgdo/FjFpau6CfOF7ABWj1ZpjrE9Kkcuw
 0JgTpKSRW2GA2Czyh6y13AMpz+wvjy7r4s1UEzIXen8FRAkDeOM8V1a4erqE/wNzIZ
 avGq++FPczqhj8TNEdoHNlqQICgJcvL2WTe3ZnsA=
MIME-Version: 1.0
In-Reply-To: <20200115111030.GA29329@T480>
References: <20200115111030.GA29329@T480>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL v2] i.MX clock changes for 5.6
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Tue, 21 Jan 2020 16:17:35 -0800
Message-Id: <20200122001736.A71BE21734@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_161737_147123_6A49BF4E 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2020-01-15 03:10:32)
> Changes for v2:
>  - Drop imx8m_clk_hw_composite_core() change set, which breaks some
>    existing DTB right away.
> 
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.6
> 
> for you to fetch changes up to 9c140d9926761b0f5d329ff6c09a1540f3d5e1d3:
> 
>   clk: imx: Add support for i.MX8MP clock driver (2020-01-12 14:07:36 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
