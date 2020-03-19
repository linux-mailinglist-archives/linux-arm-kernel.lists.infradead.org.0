Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B094118AD66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrjhvwCaXN48BLp14XrLRmfI3HkVynM1JBLAyN+EQI4=; b=HXwpC2+HvT2Egi
	hksQTuhcAsG9kPzzL4Xcn67EXoBGs8qVPL9Su4BJsXZjvZ52+ea4XWvPXRuH2dZZCpO3hUAOWgdHS
	5Lm3QTtIkJORC4CVZM73Qtfl113BUzqx+bNPJWZ/A7rerjNmPkggJDHNThImb68bGOolphKWztvUu
	nKZLu/+PqRPnsLs6+cNiZYnc9b/egf1IWWqBXfLzFr+8QgVe20lfl4Yn7HjPvMe1AGI0Kkywen3oM
	414p50wPIhc6rH3JfzSbXpdWyNTG2Fn3kbgqd2Stxf3N8I7fwYASSRbRjpfvjWFkioZ/Xiot4TZiy
	5zYKJM1Drrs6tO54+x5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEpmF-00027n-CM; Thu, 19 Mar 2020 07:39:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEpm6-00026q-P1; Thu, 19 Mar 2020 07:39:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2B2420722;
 Thu, 19 Mar 2020 07:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584603569;
 bh=B+kuIQBeqbL5y1IBvD1kqR+vLTh4kU6kglLn21OfosA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=slBOoSo8jU7XWJNyt9HMs/D7BU5N4d1RWZrIl/AtrtSC/WcoQIO4czzdaSRiPFznN
 jR87nNzz6pcQWRv5f/53sFP9ybja1lCun4m25ZukioZGVcLoZgl07Ri1GbYQraNWtn
 Jy6NBOaOFzZYF0WuHE0s2ki/s3IxdldCRotalTZw=
Date: Thu, 19 Mar 2020 08:39:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v1 0/6] Fix device links functional breakage in 4.19.99
Message-ID: <20200319073927.GA3442166@kroah.com>
References: <20200317065452.236670-1-saravanak@google.com>
 <CAGETcx-uZ3YJHCYqFm3so8-woTvL3SSDY2deNonthTetcE+mXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGETcx-uZ3YJHCYqFm3so8-woTvL3SSDY2deNonthTetcE+mXQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_003930_835829_C483099E 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Len Brown <len.brown@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pavel Machek <pavel@ucw.cz>, Matthias Brugger <matthias.bgg@gmail.com>,
 Android Kernel Team <kernel-team@android.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 12:10:43PM -0700, Saravana Kannan wrote:
> On Mon, Mar 16, 2020 at 11:54 PM Saravana Kannan <saravanak@google.com> wrote:
> >
> > As mentioned in an earlier email thread [1], 4.19.99 broke the ability
> > to create stateful and stateless device links between the same set of
> > devices when it pulled in a valid bug fix [2]. While the fix was valid,
> > it removes a functionality that was present before the bug fix.
> >
> > This patch series attempts to fix that by pulling in more patches from
> > upstream. I've just done compilation testing so far. But wanted to send
> > out a v1 to see if this patch list was acceptable before I fixed up the
> > commit text format to match what's needed for stable mailing list.
> >
> > Some of the patches are new functionality, but for a first pass, it was
> > easier to pull these in than try and fix the conflicts. If these patches
> > are okay to pull into stable, then all I need to do is fix the commit
> > text.
> 
> I took a closer look at all the patches. Everyone of them is a bug fix
> except Patch 4/6. But Patch 4/6 is a fairly minimal change and I think
> it's easier/cleaner to just pick it up too instead of trying to
> resolve merge conflicts in the stable branch.
> 
> 1/6 - Fixes what appears to be a memory leak bug in upstream.
> 2/6 - Fixes error in initial state of the device link if it's created
> under some circumstances.
> 3/6 - Fixes a ref count bug in upstream. Looks like it can lead to memory leaks?
> 4/6 - Adds a minor feature to kick off a probe attempt of a consumer
> 5/6 - Fixes the break in functionality that happened in 4.19.99
> 6/6 - Fixes bug in 5/6 (upstream bug)
> 
> Greg
> 
> Do these patches look okay for you to pull into 4.19 stable? If so,
> please let me know if you need me to send v2 with commit fix up.
> 
> The only fix up needed is to these patches at this point is changing
> "(cherry picked from commit ...)" with "[ Upstream commit ... ]". The
> SHAs themselves are the correct SHAs from upstream.

These all look good to me, now all queued up, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
