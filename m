Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E58FA9DCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxv7pjc3fKfLDpO8UuCtEgo2rIHaQFRkx3sP/9g4Qkk=; b=G1DJ66kG7Sfz2J
	8yOX1OaDIvGGGEU15LcHBIqiyDepXmsAG2YDAuFng6GRavznkMWI0tEoGhWahOEe7rAdoYtOxJ5XU
	9ajtYSkqlwzkpoyjlBmr9QU5JNtN5WmaZlOjRfJWAZv4msmwzZDZBauQEmM15Q6oMYc2ykonllU1n
	lmiRTyfB2HApEdQmb0d1YZaZzF++RxkvTMeR5uD3k/OjeRa/CCFEKz2gk8Ur80WRWXNpeVXaoeLbD
	vUxE09pRhH9Pt04r+wA17MYsGxJEQFH7Sm0wXst96bj84eRxfySU0IgcmG6rofDbViQOPpvbAg4zW
	SMid0IWjHKxD1xYXZiiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nl9-0005FY-T9; Thu, 05 Sep 2019 09:08:56 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nkv-0005F4-3t
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:08:42 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 194BF25B753;
 Thu,  5 Sep 2019 19:08:37 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 092FE940AC6; Thu,  5 Sep 2019 11:08:34 +0200 (CEST)
Date: Thu, 5 Sep 2019 11:08:34 +0200
From: Simon Horman <horms@verge.net.au>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Fixes for v5.3
Message-ID: <20190905090834.7pnvnaqovqnwiuik@verge.net.au>
References: <cover.1565962268.git.horms+renesas@verge.net.au>
 <CAK8P3a0rQgEj9gQh-jyPOtoj+QVT2eeXz-vF0v5aKfnzWXP35g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0rQgEj9gQh-jyPOtoj+QVT2eeXz-vF0v5aKfnzWXP35g@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_020841_309229_45BAE93E 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 02:40:36PM +0200, Arnd Bergmann wrote:
> On Fri, Aug 16, 2019 at 3:33 PM Simon Horman <horms+renesas@verge.net.au> wrote:
> >
> > are available in the git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-fixes-for-v5.3
> >
> > for you to fetch changes up to 45f5d5a9e34d3fe4140a9a3b5f7ebe86c252440a:
> >
> >   arm64: dts: renesas: r8a77995: draak: Fix backlight regulator name (2019-08-09 11:58:17 -0700)
> >
> > ----------------------------------------------------------------
> > Renesas ARM Based SoC Fixes for v5.3
> >
> > * R-Car D3 (r8a77995) based Draak Board
> >   - Correct backlight regulator name in device tree
> 
> I just found this pull request in the arm@kernel.org inbox, sorry for missing
> it earlier. The 5.4 pull requests that Geert sent in the meantime are all
> merged as they went to the new soc@kernel.org address.
> 
> Pulled this now into arm/fixes.

Thanks, and sorry for using the old email address.

I do have one more fix which I plan to post later today.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
