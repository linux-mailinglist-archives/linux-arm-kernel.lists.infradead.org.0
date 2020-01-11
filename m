Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEBA137C90
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 10:10:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7KGiiCdSfdlOOzqqazwaEQGniSMsn2ggunHl665nqk=; b=nVB6Vx31hUntSM
	01V/kmQ3r3XtUcXEN/f3YiSjoCdw6fhhHeUczEJSWFh9i69yVd7JoYz2UlCHVBoJsOTLbjRgwrxwS
	ZhIY83TYKREG71zn2HC9jHO3yiK6JCSPBpZLT/ervdlSuzurliLCPLlr8APP7jPkKkYfXHbP0tnGW
	cfVrijMylR2uZfpQi32o9M9bsMu8pZ8CYEl7QbmErSezSyxCsvDhkV6L3kLbVYiPMdYfCa4l9d5rT
	kg0VrYXldkKEx8rOPFcT8cK+6J2hZV8slTUwgvTz3A496c6FqWkEO+tA5CzCyRW4Vv6LNFEwqlf74
	ourxkrgN8IEliuxh/efg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqCmL-0002m8-B8; Sat, 11 Jan 2020 09:09:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqCmC-0002lc-0n
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 09:09:49 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BA742072E;
 Sat, 11 Jan 2020 09:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578733785;
 bh=/wOYyslEj9NPNKLRD59xFo5JlZfjaoFB/WiqIyPEQXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OMGxJuukYtn3EXTIYccrLVExf1DA6E+F/dX/H3fuf9asRNYmpKV7E1f8blYJTGnvb
 h3/RvR1SpDyocUmHfO6sfSASupm5d3YzJcD8qXwhjWqQfTvPZAxQqA0Qqz31gRK4gv
 enLBHx8fU+JM+Za6/FXczuUlrxeeNvknshQ+08EI=
Date: Sat, 11 Jan 2020 10:09:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.6
Message-ID: <20200111090942.su7j3v3dvfbfhmrr@gilmour.lan>
References: <3b09a9b4-9d46-4f05-9c4d-420b93f0f88b.lettre@localhost>
 <20200111062349.esn2rfeppbt4b5kv@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111062349.esn2rfeppbt4b5kv@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_010948_083954_A7A44EB1 
X-CRM114-Status: GOOD (  17.95  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Fri, Jan 10, 2020 at 10:23:49PM -0800, Olof Johansson wrote:
> On Fri, Jan 10, 2020 at 06:13:57PM +0100, Maxime Ripard wrote:
> > Hi,
> >
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
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.6
> >
> > for you to fetch changes up to cb4132672f76954ddc234aa343b4d2a1f1b8437a:
> >
> >   arm64: defconfig: Enable DRM_SUN6I_DSI (2020-01-02 10:30:35 +0100)
> >
> > ----------------------------------------------------------------
> > Two patches to enable the new thermal sensor driver found on newer
> > Allwinner SoCs and to enable the MIPI-DSI controller.
>
> This adds a SUN8I_THERMAL that I can't find in the tree? (this also goes for
> the 32-bit branch)

This is a new driver that got merged through the thermal tree and
should be in 5.6 as well:
https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/commit/?h=thermal/linux-next&id=730a45ccd9322dd918a5dcaf8ae1482400fa5b23

> Also, is there a reason to have it =y, or would =m suffice? I see that RCAR is
> =y, but we should revisit that as well.

That driver is used for thermal throttling which is pretty critical
for us since the boards can get pretty hot, pretty fast (and they
don't have a pretty wide temperature operating range either), so it
felt natural to have it as y?

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
