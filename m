Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4C2188E1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 20:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0JYbnQUwLi5HCxw5lGAeVwEUfTJbsC0Ox9CsYDigjU=; b=CcQsYQHsQBTsBz
	GKX+ylnFv9J31uFSPBHw4W1VIQL3Fzf5rjMRcUoOlL0QDmy8pNjb6Vfwlg8CzFzStN4u0UAEanRRe
	A8ZMBtAe5p7L1bPc3sh7Uvy9Hu/ChXoPylDQ3njO25N3PCgyygqSwPd2OmeBEt2hUHGmzTIgCHHFd
	pAyhKeB2txnN5M9k4iQYEUrkHnN3HBJ8CeE2wl2+QRuns4FcyNPl9blY7dNGN1avbqRcHKhZRsZHn
	kB9T+Dqn0zLwUnnjxgP2j4dsdaavfadqPEXjWPfvJZRFZ7IQyyLL3j4bF+8DF7js8AYl9uygm5V9P
	l16f8EVaRsRqsZZSuGAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEI0c-0006HG-H3; Tue, 17 Mar 2020 19:36:14 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEI0R-0006Gt-LE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 19:36:05 +0000
Received: by mail-oi1-x241.google.com with SMTP id 13so14183815oiy.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 12:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T7nkObttnyuidFBZaBgW6qJvNI3Jb0umzBOjIUFBrRU=;
 b=HUXvV5KsqGzMSCWZmdrYLdIRrm6Hhp1VF0db1gp21KfjG93cqg7/yVseU3OltAs+vY
 H1chZ03psQOzlE6BtHOKYvX+G5iQ2WaEisA5B20kSY8Sz0VCE5YOZdHYuYEGyN6t8w/b
 hrYkqqLvaNDJ5ywSGehY5nCq6AAh2COKLhc6CirueTqWYVvVuExz4GrCFT4h2MttZizy
 ccAT1Whik8zEbwth0zmUgC4JQqA4E3HVWX/BIlrxSZBN3INgwzGGBas3CIJZhu9w7Kl7
 DMpGzgUksqK24Ja/elzAuC0PIfpHJJzdabWXIIEROq3oPtVmAxy+LBTyV2D7xF3qn0hm
 VdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T7nkObttnyuidFBZaBgW6qJvNI3Jb0umzBOjIUFBrRU=;
 b=ito6juV+H+n8lb2KXZqoHTkviaeZbUbl80BkiiNWeCoOpUOx1OMjoI4DIQyLpqg/uR
 2V0le2r/H3b8rHo4NBroQ0uuVNiaIKw6a8ZSTbuZzaHZKMsdE4OHglt2OM13s+LTvHq4
 YeyT9+k+q8ZHIseJEw6sLWO7RcbF60Awj4mefIsUSBj+Zsqnimxv6LfDVnHKyk8kfm8l
 sAFITLQUcBD824h5Ng+zW2WM5q6BKZwd+Uy11ZDvMEfK6QcJ6uLeTEOXoefURuruBt5d
 HDss39NX/+MMjHEHmgC0Yz0jxghnRqe7eEXTXc06xHqufDoc4lg4Xr+GdP6VB2kd4Fw7
 aJgQ==
X-Gm-Message-State: ANhLgQ1/eo0CP7UaiajJRCY2JoDejkYZIjZ1/VY9VEmHJM9+m7AMQiIi
 9iPyxmrtqLOgwg5OtC0kZIaZDjzxo25Ae0Ar/gQ=
X-Google-Smtp-Source: ADFU+vvfbTzEGODWHuIf7L8hPwGPzN1y0DiI8fQIxiox5aCCqB5RU/kUhZMxAlACRUhWDqBjGsKjSqKRtzal7WsxkTI=
X-Received: by 2002:aca:4bc5:: with SMTP id y188mr419059oia.9.1584473762676;
 Tue, 17 Mar 2020 12:36:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <CAO1O6sccq7c_S8ZMsChBKcVcCn-DDv6awZzNr2BEnh8TH6ZxGg@mail.gmail.com>
 <f96002831730bf262ee61df38642e042@pascalroeleven.nl>
In-Reply-To: <f96002831730bf262ee61df38642e042@pascalroeleven.nl>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Tue, 17 Mar 2020 20:35:51 +0100
Message-ID: <CAO1O6sd=RdopKxun8R-0-MGt_UP=MWFPAd5PQF3DPTCxDYt+ow@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] pwm: sun4i: Properly turn pwm off and fix stuck
 output state
To: Pascal Roeleven <dev@pascalroeleven.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_123603_693934_27E55924 
X-CRM114-Status: GOOD (  32.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.lenngren[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Den tis 17 mars 2020 19:16Pascal Roeleven <dev@pascalroeleven.nl> skrev:
>
> On 2020-03-17 17:45, Emil Lenngren wrote:
> > Hi all,
> >
> > Den tis 17 mars 2020 kl 17:00 skrev Pascal Roeleven
> > <dev@pascalroeleven.nl>:
> >>
> >> Hi all,
> >>
> >> For the last few days I've been debugging a lot to get pwm working
> >> again since
> >> recent changes in 5.6-rc1 broke it for me.
> >>
> >> Testing shows the pwm controller crashes (or the output gets stuck)
> >> when the
> >> period register is written when the channel is disabled while the
> >> clock gate is
> >> still on. Usually after multiple writes, but one write can also lead
> >> to
> >> unpredictable behaviour. Patch 3 and 4 fix this.
> >>
> >> Patch 2 contains a fix which wouldn't completely turn off the pwm if
> >> the
> >> output is disabled. The clock gate needs to stay on for at least one
> >> more
> >> period to ensure the output is properly disabled. This issue has been
> >> around
> >> for a long time but has probably stayed unnoticed because if the
> >> duty_cycle is
> >> also changed to 0, you can't tell the difference.
> >>
> >> Patch 1 removes some leftovers which aren't needed anymore.
> >>
> >> Obviously these patches work for my device, but I'd like to hear your
> >> opinion
> >> if any of these changes make sense. After days, this one is a bit
> >> blurry for me.
> >>
> >> Thanks to Uwe for some help with debugging.
> >>
> >> Pascal.
> >>
> >> Pascal Roeleven (4):
> >>   pwm: sun4i: Remove redundant needs_delay
> >>   pwm: sun4i: Disable pwm before turning off clock gate
> >>   pwm: sun4i: Move delay to function
> >>   pwm: sun4i: Delay after writing the period
> >>
> >>  drivers/pwm/pwm-sun4i.c | 53
> >> ++++++++++++++++++++---------------------
> >>  1 file changed, 26 insertions(+), 27 deletions(-)
> >>
> >> --
> >> 2.20.1
> >>
> >
> > I also worked on sun4i-pwm some time ago, fixing a bunch of issues.
> > One was that disabling the pwm sometimes didn't turn off the signal,
> > because the gate and enable bit were modified in the same clock cycle.
> > Another was that the current code used an unnecessary sleep of a whole
> > period length (or more?) in case of an update to the period, which
> > could be very time-consuming if it's a very long interval, like 2
> > seconds.
> >
> > Note that the behaviour is not unpredictable, if you know how it works
> > ;)
> > I fiddled around a long time with devmem2, an oscilloscope and the
> > prescaler set to max to figure out how works internally.
> >
> > Please try my version I just posted at https://pastebin.com/GWrhWzPJ.
> > It is based on this version from May 28, 2019:
> > https://github.com/torvalds/linux/blob/f50a7f3d9225dd374455f28138f79ae3074a7a3d/drivers/pwm/pwm-sun4i.c.
> > Sorry for not posting it inline, but GMail would break the formatting.
> > It contains quite many comments about how it works internally. I also
> > wrote a section at http://linux-sunxi.org/PWM_Controller, but it might
> > be a bit old (two years), so please rather look at the code and the
> > comments.
> >
> > /Emil
>
> Hi Emil,
>
> Thank you very much, this is helpful. Ah it was your note on the wiki.
> That is indeed where I took the idea of keeping the gate on and
> disabling the panel from. As a scope is still on my wishlist, the rest
> was just trial-and-error. Judging from your code, there are more edge
> cases which might occur. I will test your code and try to integrate it.
> If it's okay with you, I can post it on your behalf?

Sure! I was thinking of sending a patch last year but never got the time :/
The devices I have tested on are Allwinner GR8 (A13) and V3s.

>
> If you ask me, it's really unfortunate Allwinner didn't provide a timing
> diagram for such a picky controller.

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
