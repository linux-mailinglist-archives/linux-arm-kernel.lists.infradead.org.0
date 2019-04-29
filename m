Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE44EAFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uW/PSkGsQxMRPA70qBWcTmibZ9c75BbLBWTEmQhGYg=; b=HrvOF1FLFUsJzc
	r2GnYoAjTqanABQrNUAVtvt9EQiHJMuAx0WLCnwxXUINxvCfyTcLmWqTvjb9HWwOXQaTBVa1477i+
	pwqUY/FZ2vTbuWU4HQHHEh7nILn5kQVGeVo/UJqQAfipwdTLDb6MHosHrnPasOIKyDv433d6XCmMF
	ohxLgrHN7UV4RCaESUQkQGEqPaHQtIeTA3GdZtVv1hWnndisFUX/LFaWM9hf3GWiBWtRhsBldsVTG
	R9ZeLTSgsBlEDalnu28KGwj9ZkQSgGzceBrz7ip+pU2PeKDEyn+inVZznlSJNS+vHYP4zAvJdL5oA
	n6998e/fVfJg2Lv1FloA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLC9J-0007Cv-UA; Mon, 29 Apr 2019 19:41:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLC9B-0007CA-VS
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:41:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id p6so5640221pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 12:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HzJtRAExAyIJIpll0DdlInVHVh+qcKOa3wHz8C2eEa8=;
 b=JO7QS5Tci8be+0D9TlrsD+ZYjFGdRq0P88jQAW3aKDKfbmTNg1EUxmtG66QnH/8f5W
 UbSqD6hdaczxrfZHxzgKKausQu1R25myBc7wWO3dXhhyePXzPhlW7GYife0YqtH3/qbG
 4YD+kAqgoXci7wAC6DzAuUCS8ALNS2luB/bcBuxjYITruwVfxjAE81H/WNh7jI+3D4wC
 fyXvsVFoVViJqfbkg+tOxy/flM0pKuJ3r6Az3nyUn64FSN9aXEEhuGzroi/tVxIrl9kh
 Tp14UxgBguC+WG7H6IvNzJtlpGBpclrssU2p09mgU1MdI5alR+dtCYj+5WRcjb8SJyx5
 aSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HzJtRAExAyIJIpll0DdlInVHVh+qcKOa3wHz8C2eEa8=;
 b=cf6GnEn1JAoyrn9TeVwRE26gt7qweM9KOALS3oBWJSaiuqRo2MJ+rXGqEdmB7haihv
 FEXrbnGRCF62isZeRkKrcfzaL4cynszSpFgVe1dUbaqw86Mke+8Dpw4uPMTUpjkV0fjF
 g5v4+YA2/RGQx5EnRtkwCWf3bX3tw0RHEw1MbeGmhwj0aGU4MoykhwTFyQVoedsKSPl1
 s/e4fGnvD9PqyV2VFTUMLYEayBgctbruWo1yF58mlgqkpBwwIq+FLUT7KQkCS8cLzSol
 Jsg15LLdOld8n1bb5h2K+kbqzZJ0+ZlSddFS9Dhm0yFbq2/xQUTo6kuVCLrGYmpS6kNm
 2tTg==
X-Gm-Message-State: APjAAAVFaf0MZyzLNcESkoS+Kz7QvvrAvO05mkgMJAh+JAukjJzJpFDl
 fPiCXxx9j36Xmifquz8/3BdC+HVIKiCHHvP+KO4MCg==
X-Google-Smtp-Source: APXvYqwTTYcr+zcBxdoaerowqOSRILD2f0lQzhTtKzig13TLEjbYvMQGE+VKCnhxNR1qT6tui2D/AjT2B4bQrwFt/DU=
X-Received: by 2002:a62:2541:: with SMTP id l62mr43049234pfl.243.1556566864562; 
 Mon, 29 Apr 2019 12:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
 <CAO=notwewAeeLz=LsOcSj=DakLGW0KjeDHALP5Nv2ckgkRqnFA@mail.gmail.com>
 <CAOesGMipoKED=XLg+VtEVG0Os_MUzsPgOfBFJ+qoJs_fNmP+3g@mail.gmail.com>
 <CAO=notwU7LzEiBmzb6AJrgP3RGXE+66OwZVU8CqVE6RSKRvo1w@mail.gmail.com>
In-Reply-To: <CAO=notwU7LzEiBmzb6AJrgP3RGXE+66OwZVU8CqVE6RSKRvo1w@mail.gmail.com>
From: Patrick Venture <venture@google.com>
Date: Mon, 29 Apr 2019 12:40:53 -0700
Message-ID: <CAO=notwK7t+EZBVr1LH2Cgexyi8fH=kpdUUZC1J3DRunPPwXUw@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_124106_039381_AC974666 
X-CRM114-Status: GOOD (  30.32  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 12:35 PM Patrick Venture <venture@google.com> wrote:
>
> On Mon, Apr 29, 2019 at 12:27 PM Olof Johansson <olof@lixom.net> wrote:
> >
> > On Mon, Apr 29, 2019 at 10:12 AM Patrick Venture <venture@google.com> wrote:
> > >
> > > On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
> > > >
> > > > On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > > > > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > > > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > > > > >
> > > > > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > > > > >
> > > > > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > > > > currently present into this folder.  These drivers are not generic part
> > > > > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > > > > >
> > > > > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > > > > >
> > > > > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > > > > >
> > > > > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > > > > Ack this version of the patchset since it changes when the soc/aspeed
> > > > > > Makefile is followed.
> > > > >
> > > > > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > > > > maintainers are free to take this.
> > > > >
> > > > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > >
> > > > I'm totally confused. This is the second "PATCH v2" of this patch that I came
> > > > across, I already applied the first.
> > >
> > > I think the issue here was that I added to the CC list another email
> > > and so you may see the v2  without that mailing list, and a v2 with it
> > > --
> > >
> > > Does this require a v3?  I honestly didn't think so, but this was the
> > > first time I had to add more people without needing other changes.
> >
> > Well, v2 doesn't build. I'll fix it up locally by adding an 'endmenu'
> > to drivers/soc/aspeed/Kconfig. But... brings up questions how this was
> > tested before submitting?

Thanks for fixing this for me, and I apologize for the nuisance of it.

>
> That's a lost change issue. I'll try to be more diligent in the
> future.  My dev workspace  is disconnected from the kernel used for
> upstreaming patches, so if i make a change in one it isn't always
> reflected in the other.  I'm working on rectifying the underlying
> build space issue to let me use the same repo.
>
> >
> > scripts/kconfig/conf  --allnoconfig Kconfig
> > drivers/soc/Kconfig:24: 'menu' in different file than 'menu'
> > drivers/soc/aspeed/Kconfig:1: location of the 'menu'
> > drivers/Kconfig:233: 'menu' in different file than 'menu'
> > drivers/soc/aspeed/Kconfig:1: location of the 'menu'
> > <none>:34: syntax error
> >
> > > >
> > > > Patrick: Follow up with incremental patch in case there's any difference.
> > > > Meanwhile, please keep in mind that you're adding a lot of work for people when
> > > > you respin patches without following up on the previous version. Thanks!
> > >
> > > w.r.t this patch series.  I found an issue with v1, and released a v2
> > > with the detail of what changed.  I thought that was the correct
> > > approach.  I apologize for creating extra work, that's something
> > > nobody needs.
> >
> > It's ok to submit newer versions, but it's convenient when they get
> > threaded also in non-gmail mail readers (by using in-reply-to).
>
> Roger that.
>
> >
> >
> > -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
