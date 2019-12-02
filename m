Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0315710ED44
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 17:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFpYt/gcMFtNo3neoLkB6zdKlaD7j8iZH41bb2LS2M8=; b=eRN5aYjBeIqs5d
	V608wLJIKl6/hppGgV/94dUB2SvOprNsByxEz6wP6SFYAFtEZwXup4kTgwK+9bQSUmU8fUeiHxtjR
	I5zEzM7jJPxU3216r+6KsVH/ZfRSTcKjtl8pmaqVRR9fczY7GWJ4gCe6AyLNMQwx/HTke66y5Ag1V
	1D/KWI7xj07WNa0PLPow7sWGeDdRJ6dot78pam6Ao/ur7SVMWam+D4VhfpTYHVHM2tAcF2Dvboh5K
	XKWp4gYA8X/SZ4qREpXKwqANCTDWyoONvgdhF3smRXFukbKPTgqxegDJ+webpKGnk+pXxOXWa8AG0
	QoKidDyPYxBe9S7yaDuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibogn-0000GW-Mg; Mon, 02 Dec 2019 16:36:45 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iboge-0000Fk-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 16:36:38 +0000
Received: by mail-il1-x143.google.com with SMTP id t17so182155ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 08:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ssAMXH8W+f366ZBx3DAnlgAtvRdBNu89nK7uXXb27YM=;
 b=QRXY4SmeygkXP5YBTkiIx5Q9RAi7VAH6ojPbJhVcnsQkPuLu38Cr3qfdxVzjXNzWkZ
 3ecEELEyuhZnjuYeXR4CihiLLQHfJsRVWghIHMEvjMIwfW/Wi+cH0QSoNo7pho18CMqc
 XQh+Q4tjDWFdnxAHqtCPHrnSNt5Vf0hrbLu1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ssAMXH8W+f366ZBx3DAnlgAtvRdBNu89nK7uXXb27YM=;
 b=bLwOOJ7cC6WUQRtARi3Bvr1tycyy0hW2tJsPHJBkEd8mGRjsLxKsK5PRRLBSbQNut0
 uWBiuHT2xGbZ1vHh9tw017Gk1x46K5znBkoLGH7+SzANR31X6phh/tzHra1Xws0hCA9j
 r6/XfZMXQww75LIsVodoOv3bdE1mOJyBoOVPfJxS2RRe0wAINOABlQS+Ea4l68VzDJZ0
 gT/sPb0WQusLuCNqRIKGqX5ANq2ZmmPO2ZGudIyQdtuYdePrzIO/6vrB9gL+HKv1i1Vg
 Us0JiIlnX0V/3tTsXA57i5gAKKST7/P8z7Q/CUXFORYz6WcK4enoHmw5OwEWIvuIEEIu
 k8wQ==
X-Gm-Message-State: APjAAAVzmMUe4dMDPzehL/EHRg2+sNmeaMGbulZTShoRRjuhrC8bfZLH
 JRQbBGsF82gcdCFLSpgmmhaTKI6ZJnQ=
X-Google-Smtp-Source: APXvYqy6LZu4KcMjlDCOo4HR4l1JT+xIVaam+Q37uo0vw8I4fmRtiz6OJajsliTgPy6C4+jLYiPvvQ==
X-Received: by 2002:a92:6609:: with SMTP id a9mr70645532ilc.131.1575304593536; 
 Mon, 02 Dec 2019 08:36:33 -0800 (PST)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com.
 [209.85.166.171])
 by smtp.gmail.com with ESMTPSA id p143sm5246051iod.21.2019.12.02.08.36.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 08:36:32 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id z12so194702iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 08:36:32 -0800 (PST)
X-Received: by 2002:a92:911b:: with SMTP id t27mr2779332ild.142.1575304591885; 
 Mon, 02 Dec 2019 08:36:31 -0800 (PST)
MIME-Version: 1.0
References: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
 <20191120191813.GD4799@willie-the-truck>
In-Reply-To: <20191120191813.GD4799@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Dec 2019 08:36:19 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wntf0TCwdtNNvPY-CXX1VL_SZK8Y8yw1r=UfeayHfwgw@mail.gmail.com>
Message-ID: <CAD=FV=Wntf0TCwdtNNvPY-CXX1VL_SZK8Y8yw1r=UfeayHfwgw@mail.gmail.com>
Subject: Re: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_083636_667636_2EA7E23D 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Pratyush Anand <panand@redhat.com>,
 Pavel Labath <labath@google.com>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>, Kazuhiro Inaba <kinaba@google.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Nov 20, 2019 at 11:18 AM Will Deacon <will@kernel.org> wrote:
>
> On Sat, Oct 19, 2019 at 11:12:26AM -0700, Douglas Anderson wrote:
> > This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
> > watchpoint addresses") but ported to arm32, which has the same
> > problem.
> >
> > This problem was found by Android CTS tests, notably the
> > "watchpoint_imprecise" test [1].  I tested locally against a copycat
> > (simplified) version of the test though.
> >
> > [1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
> >  1 file changed, 70 insertions(+), 26 deletions(-)
>
> Sorry for taking so long to look at this. After wrapping my head around the
> logic again

Yeah.  It was a little weird and (unfortunately) arbitrarily different
in some places compared to the arm64 code.


> I think it looks fine, so please put it into the patch system
> with my Ack:
>
> Acked-by: Will Deacon <will@kernel.org>

Thanks!  Submitted as:

https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8944/1


> One interesting difference between the implementation here and the arm64
> code is that I think if you have multiple watchpoints, all of which fire
> with a distance != 0, then arm32 will actually report them all whereas
> you'd only get one on arm64.

Are you sure about that?  The "/* No exact match found. */" code is
outside the for loop so it should only be able to trigger for exactly
one breakpoint, no?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
