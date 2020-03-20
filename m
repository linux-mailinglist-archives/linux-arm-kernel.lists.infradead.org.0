Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4589118C706
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 06:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOF+VhTPVq8dcsBVk2ZpW68ZzT1KXazRCyTgDqjVqwk=; b=nINRF3zoiH85pq
	XwQctc/LXv9GNMr4ImWTUsHXvwR1C3artaODGICmmaSGvXsy+0fFSoCbMlL0rIFfdUWvLl7Fq8dEc
	W9ld3OT6X31QgwncqP9MxP71ZSTT7aN7ZVJITTiV9zWCqvkW9ox3EnjnAzbBWJ191PtlJOVckEp4S
	p1VlN5iXZ201qf8IBR5MHRhw7+5SyQi58M7al7DRFd/RZgUqT7gsJyvObIiiVvKHFCe7ufMf93T10
	xLXrB/rs6AfH1wUOaNGUPeff82SSyI1NzbgQvrL5VRfTx0PtZYD6utD/3MUo4/hKdtp90AQgTHaxo
	34QAVbG1nHiaYBM6FoVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFAEk-0001jm-3v; Fri, 20 Mar 2020 05:30:26 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFAEd-0001iD-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 05:30:20 +0000
Received: by mail-oi1-x241.google.com with SMTP id k21so5324198oij.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 22:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+thAp6yyX7UKE9dtUxDENsQxMtVNf3sefwYHyrkPjH0=;
 b=EZIUuPizsyWJamEo8OnXltTQLT0zbEnN7i0eoveXQdd8aAXB0sTHgk0h0j2aPv3xdl
 PvlcmCU9Qqo6UPCU0YGJjPZHZklXi0mnfTFFSMmLJO2+8XQJhgG2+SrUYGqJLbRUs34w
 MHA/fMaS5ydEyWuSCzaNeVFjEQP3llaZOTs2mjgeihPn7LkbpRz5ycvSOPlzm6gBjn0W
 OaxQcy9AeArJqrxxJWa3gm8Z8TuZZTaY8qlWeFQ/x5EcXXheQhyOAhxkq6P9XBi6DkuI
 q84xSlpwp6t9y/DeFQzUxsQx2V8ge6Z5qW1kL9lgqfzvKq4NqI8zeJih0o6Bvzr7ePwC
 XgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+thAp6yyX7UKE9dtUxDENsQxMtVNf3sefwYHyrkPjH0=;
 b=i7HsySzEp3+UBhkkskGPzSl+bez/SLZhBH7/jJfWnALFa7S4Qtb0FhWAge1brn+7me
 ISbSYeLtoeu/9NVAcFY4hCZg7WsMsj568zUTnHEkCPdE6TN7Xmz8xB50xdRac879eRCw
 8mOb/38s5BxuoV9VSOjIi/+g1WScACBMY7lsJShHAi90sjZBVvpFKMaayiFmohRfbS3/
 XVI2rJOe6Qb0pCEirKtt+hLfFw3++uQd8otZYIcfm16XytlVRCa8iRzhUCQEXZBqb7A2
 k7kwwt8QQQucDxIKCAZsYfWeT80yHOJKPPMTXbTHW9wpilugXTo4cleEb6+3Fzfqj57m
 /iCA==
X-Gm-Message-State: ANhLgQ3Yagx8TUP0KUBa2TjTykbJVxlxaIC4bW99SN9dLWA9GJF0fPK2
 +OSUQFzc28t5dJdhz9IGyxrfQSUtLChRhOcGNgcjCg==
X-Google-Smtp-Source: ADFU+vs9ry2XYsgdK4314uO1jxo2AlhedtLaVepDUfyzcjwnRtJPqD/97uig5eK0Wc99bItxHnujbp8fjRWMCAR3xjM=
X-Received: by 2002:aca:f541:: with SMTP id t62mr5236270oih.172.1584682212108; 
 Thu, 19 Mar 2020 22:30:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200317065452.236670-1-saravanak@google.com>
 <CAGETcx-uZ3YJHCYqFm3so8-woTvL3SSDY2deNonthTetcE+mXQ@mail.gmail.com>
 <20200319073927.GA3442166@kroah.com>
In-Reply-To: <20200319073927.GA3442166@kroah.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 19 Mar 2020 22:29:36 -0700
Message-ID: <CAGETcx-3oeJOvpCYj==RJuBU9HP8F0ZNr0YLvUHGHF52b=F7HA@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Fix device links functional breakage in 4.19.99
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_223019_161825_BD3724E0 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Thu, Mar 19, 2020 at 12:39 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 18, 2020 at 12:10:43PM -0700, Saravana Kannan wrote:
> > On Mon, Mar 16, 2020 at 11:54 PM Saravana Kannan <saravanak@google.com> wrote:
> > >
> > > As mentioned in an earlier email thread [1], 4.19.99 broke the ability
> > > to create stateful and stateless device links between the same set of
> > > devices when it pulled in a valid bug fix [2]. While the fix was valid,
> > > it removes a functionality that was present before the bug fix.
> > >
> > > This patch series attempts to fix that by pulling in more patches from
> > > upstream. I've just done compilation testing so far. But wanted to send
> > > out a v1 to see if this patch list was acceptable before I fixed up the
> > > commit text format to match what's needed for stable mailing list.
> > >
> > > Some of the patches are new functionality, but for a first pass, it was
> > > easier to pull these in than try and fix the conflicts. If these patches
> > > are okay to pull into stable, then all I need to do is fix the commit
> > > text.
> >
> > I took a closer look at all the patches. Everyone of them is a bug fix
> > except Patch 4/6. But Patch 4/6 is a fairly minimal change and I think
> > it's easier/cleaner to just pick it up too instead of trying to
> > resolve merge conflicts in the stable branch.
> >
> > 1/6 - Fixes what appears to be a memory leak bug in upstream.
> > 2/6 - Fixes error in initial state of the device link if it's created
> > under some circumstances.
> > 3/6 - Fixes a ref count bug in upstream. Looks like it can lead to memory leaks?
> > 4/6 - Adds a minor feature to kick off a probe attempt of a consumer
> > 5/6 - Fixes the break in functionality that happened in 4.19.99
> > 6/6 - Fixes bug in 5/6 (upstream bug)
> >
> > Greg
> >
> > Do these patches look okay for you to pull into 4.19 stable? If so,
> > please let me know if you need me to send v2 with commit fix up.
> >
> > The only fix up needed is to these patches at this point is changing
> > "(cherry picked from commit ...)" with "[ Upstream commit ... ]". The
> > SHAs themselves are the correct SHAs from upstream.
>
> These all look good to me, now all queued up, thanks.

Awesome, thanks!

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
