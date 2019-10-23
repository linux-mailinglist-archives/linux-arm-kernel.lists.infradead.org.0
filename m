Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82D1E251B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3y1q9tq991badSzptQvcrgnCJUscbTxpmhQt+N3yjZs=; b=AFwWmQsNYBZnlt
	9Ut4BanfaSvy+8lmILmbNH1m1nFO01ukASUPmcdfuhbYghSWH2oaAPOmMubkb7v4Ak80vPhkfimAE
	BiSKLXh5nxiDfHx3GvXYKVcs7fA8jN5QmgmTpXpQNUF7M5QKdRIskk1BCITRG4Lahf6rVmo3Bbeab
	SSg/b608US6Z+KpMe+SuSJzcSPB3oDQ3jk+8BbpthSBUr0wJfBaz2wJjZImfK/+TrBU+i2hMb9VU6
	pRP3U5m603rE/CKcV1XhSYd5AkFg1Cv32/mhYrXz+H45b43BGl7a8sfls+518Sd0gg59OAqTjOHst
	J+BTtSCOZRiGABJEzbKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNO3C-00069x-DN; Wed, 23 Oct 2019 21:20:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNO2v-000699-Jn
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 21:19:58 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8D41080CF;
 Wed, 23 Oct 2019 21:20:26 +0000 (UTC)
Date: Wed, 23 Oct 2019 14:19:48 -0700
From: Tony Lindgren <tony@atomide.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 1/2] omap2plus_defconfig changes for v5.5
Message-ID: <20191023211948.GS5610@atomide.com>
References: <pull-1571853258-16998@atomide.com>
 <20191023202247.wb2jzwvek7u5korx@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023202247.wb2jzwvek7u5korx@localhost>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_141957_695133_A7956792 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Olof Johansson <olof@lixom.net> [191023 20:28]:
> On Wed, Oct 23, 2019 at 10:54:48AM -0700, Tony Lindgren wrote:
> > From: "Tony Lindgren" <tony@atomide.com>
> > 
> > The following changes since commit 96d49bbfe6c1a6bb43ccd00fb87aca100e32e5e2:
> > 
> >   ARM: omap2plus_defconfig: Fix selected panels after generic panel changes (2019-10-03 09:44:40 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/defconfig-signed
> > 
> > for you to fetch changes up to ec2b31267263cd7d5a7567d315f839796c2a8c87:
> > 
> >   configs: omap2plus: Enable VIDEO_MT9P031 module (2019-10-22 09:11:03 -0700)
> > 
> > ----------------------------------------------------------------
> > Defconfig changes for omap2plus_defconfig for v5.5
> > 
> > A series of changes from Adam Ford to update for removed and moved items,
> > and then enable crypto devices and MT9P031 video as loadable modules.
> > 
> > Looks like I missed unifying the subject line for one commit, but I did
> > not want to mess with the commit after pushing it out.
> > 
> > ----------------------------------------------------------------
> > Adam Ford (4):
> >       ARM: omap2plus_defconfig: Update for removed items
> >       ARM: omap2plus_defconfig: Update for moved item
> >       ARM: omap2plus_defconfig: Enable HW Crypto engine modules
> >       configs: omap2plus: Enable VIDEO_MT9P031 module
> 
> Looks like this branch had a minor conflict with one of your fixes branches.
> Easy to patch up, but feel free to use your fixes as a base for the topics if
> needed.

Oh sorry, I thought I did that. But sounds like I also had
some additional merge resolve in my for-next.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
