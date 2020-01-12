Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297AE1386B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 14:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4sQ+Xa4YlAmzTZXC79ky7oNB+8bvZC4PSX5sHUQxbQ=; b=N8YHv3PIsvqPs8
	tlsyU74H+tPXf0YhEDtiScUclqJ3afHyKgtD6dNmcM9k/nfGarUIens6P2Bq4r98eRUUh9GQPKiws
	5dw3zT7La1ac1QLPqBNxQqaf2jz2XKMHy1SYTtSBiE/36WdoBv1RbIxeU21EYqTxxjErbrPgpUAae
	KfAk/mY/4ZxTW1VbqE50HOH0dxIB4AAF4S2pK/euWt+1fTs006fp4uQiCYgddkmFGEfkzuDR/gP52
	wNpCgUkzJVnpkzQ9bQ73J0KnzJhHti1lD3boGz3rMX4tnbioWoyRCIrhogB/PFknBYVoBBYTpPENP
	Omhknn61Fy4AXIwN3lMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqdcg-0003wO-GS; Sun, 12 Jan 2020 13:49:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqdcZ-0003vp-Fx
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 13:49:40 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 368172084D;
 Sun, 12 Jan 2020 13:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578836976;
 bh=K3Vo35Kf7+AP/4vxEC6yHGgvRCYubXR6aby7mhvgehg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2uhjsMPHSwKbux+c5zI2wA/+6VUhci8s7KMcBa2ShsAuM++Zt4ZUFs6N5TUX5UpHU
 dWCuJV43Z/JgIfGaLYNotq7xPiHcBtPufD4LZDJpG+gneCkZp0rzLNDEYLSnzUii+7
 wRci9jCmd+I0Xxaiw/vnzDxIeFv6cGKfOA6qkQRI=
Date: Sun, 12 Jan 2020 14:49:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.6
Message-ID: <20200112134933.sq7njjxdm5gxtmek@gilmour.lan>
References: <18b6a136-9198-4d4c-878c-e6962e3a833e.lettre@localhost>
 <20200111225938.hp6xxr4k7jp7yvv2@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111225938.hp6xxr4k7jp7yvv2@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_054939_568118_80C6E901 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, Jan 11, 2020 at 02:59:38PM -0800, Olof Johansson wrote:
> On Fri, Jan 10, 2020 at 06:14:51PM +0100, Maxime Ripard wrote:
> > Please pull the following changes for the next release.
> >
> > Thanks!
> > Maxime
> >
> > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> >
> >   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.6
> >
> > for you to fetch changes up to 6163ce8467052cdfe42581036bc71fe4aac09eab:
> >
> >   arm64: dts: allwinner: a64: enable DVFS (2020-01-09 17:31:39 +0100)
> >
> > ----------------------------------------------------------------
> > This is our usual set of DT patches for the Allwinner SoCs.
> >
> > It's fairly big this time, but the highlights are:
> >   - Enable cpufreq and CPU thermal throttling on the A64
> >   - CSI0 support on the R40
> >   - CSI1 support on the A10 and A20
> >   - SPI support on the R40
> >   - PMU support on the H3, H5, H6 and R40
> >   - MIPI-DSI support on the A64
> >   - PWM support on the H6
> >   - Thermal sensor on the A64, A83t, H3, H5, H6 and R40
> >   - More DT schemas fixes and conversions
> >   - New boards: LibreComputer ALL-H5-CC H5, LibreComputer ALL-H3-IT H5,
> >                 Pine64 H64 Model B, Neutis N5H3
>
> This doesn't build for arm64 defconfig. What happened at your end
> that made this slip through your testing? :(

The patch in question is using a define that was merged into a
separate branch, and I only tested the result of the merge between the
two branches... Sorry.

> I've had to rebase arm/dt to drop this branch. Please send a new tested/fixed
> version.

Ok, I will, thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
