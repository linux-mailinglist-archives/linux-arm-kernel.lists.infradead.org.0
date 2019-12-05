Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0670011450B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7buRmWtIFDXudGmeBjX2EGjDSYEK2KVi46ci+/CpTA=; b=ppFZlMQo8+wy56
	tbh8Rh4kue1d82XJYQP0qaxrKnZNXAH7CMRg47I/wyMixSpvlaUXhkZOttldzBh5yWnR01AZdAsIo
	aBQ2LF81M3UMaABq6PbXOiwkvJUiuz1/P5wPfCU8kmouV6yATbLcDGUnSth4lmonYdMUcy7lzlMzY
	pz/XcJLpIdD9D3+4N/mtq/AJK0CWZ/8dqK0mouq2gfRU85ihc/nSeIRNahSBfzUIY0HM9DKOeNKYx
	xyh25wsOwNPTLduCkdrz1PAEVRXwOqEwXUJYoo6eL8KxVg/XkE9qjQkNozzWD9CUw4Xx8+Q8/yIRr
	XG+HoeuhgIKveduinQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuG9-0007Z6-7H; Thu, 05 Dec 2019 16:45:45 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuG1-0007Y8-HT
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:45:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id a10so3873022qko.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VBet/bIZobzEfIAUk75Ti4RAy8XooAiOYVqu+hnKHI4=;
 b=A18pMSgTuR1kAVWLezvNQ+EC+Hs0uA80wcQbNijo7N4Ix/7a1tU7cm7N2rQTw4+UIh
 4iu9LwCetkxoehhPs7t16hTAq9W521UwYRXB7Oghj57ECN6X9Vm4oW/V/63y5P7TFOca
 cdCKN1/ogTkKEMpDrbuQ1kfOdnt/uuSZ8+H6wxmmDpUO4ZHIpj7/dB3e7eA5Er0Rw9i/
 Kri3ArIiSLagbh3J+2/x26uyTcnlse9wn8f2gKYoWac2Geb3AZL7OqZQIag7zXzGzLaH
 jBZY5/CBTf3qF62jLSljdr+O2kMFLf/+AQ4JBm8+zGkBKIQOYwgN538tjP+91dB3/rdY
 nHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VBet/bIZobzEfIAUk75Ti4RAy8XooAiOYVqu+hnKHI4=;
 b=B1i0WGEt60fWyqe63/ATJjBWNS3DVwrez0XhI26XIgFUhRjyb4SHy+cgP82DqZ3X4K
 cdLndlyIQkIt/FI95wueVj2k3qoH4bYiJhRl3PFu0ypxEwddnwzsBJ6So0DGcifalHgg
 Xs4yhjs/I7IaqpSA/RQ57xdSFAc7Lvii3wyjh5zP9/odjoeAbodgyqy0UDk1JZ35uweg
 UdgUiTr+Zfsd57jTgGY+6RxBBPq6lzdpt/e4IFJUMgkn+w5jzBR1gZ3tPrBhAeyXBrc7
 Ozy04L/alCjQBGXtARjmXDICcfK3wiVwFCdC0tAbkb06cXVJzu/MYJJ3W1KdwtUtPNfr
 PqFA==
X-Gm-Message-State: APjAAAWYMGMtmxILcHTfuIclCrTDoVxsSm5JnxdQVUsp+axmlXkGbExa
 vyF1pvOm2+2lSq1bf5Yx3QgBbwoXz7pV2M+75qeAnw==
X-Google-Smtp-Source: APXvYqwerl8XImN73VXaOFe2fMFNwgUDm+1VNfq91ocV1c1p8hyv/IzbQRvKMuNsJzHUygG2fax8WM/w50U/rYGR52g=
X-Received: by 2002:a37:4782:: with SMTP id u124mr9350911qka.8.1575564333504; 
 Thu, 05 Dec 2019 08:45:33 -0800 (PST)
MIME-Version: 1.0
References: <0000000000006dff110598d25a9b@google.com>
 <000000000000bcf3bc0598f5090d@google.com>
 <CAKMK7uF4AR_tRxt5wBKxzz6gTPJmub3A=xyuh1HjgvfYy7RCBg@mail.gmail.com>
In-Reply-To: <CAKMK7uF4AR_tRxt5wBKxzz6gTPJmub3A=xyuh1HjgvfYy7RCBg@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 5 Dec 2019 17:45:22 +0100
Message-ID: <CACT4Y+ZjQSvpZAnLkp6w8erqtraZGkXB2O84BFmcRN_Rm6fs3Q@mail.gmail.com>
Subject: Re: INFO: task hung in fb_open
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_084537_608871_D06FBFC0 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>, "Syrjala,
 Ville" <ville.syrjala@linux.intel.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Dave Airlie <airlied@linux.ie>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Ayan Kumar Halder <ayan.halder@arm.com>,
 Sam Ravnborg <sam@ravnborg.org>, Peter Rosin <peda@axentia.se>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 syzbot <syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 3:05 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> On Thu, Dec 5, 2019 at 2:38 PM syzbot
> <syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com> wrote:
> >
> > syzbot has bisected this bug to:
> >
> > commit 979c11ef39cee79d6f556091a357890962be2580
> > Author: Ayan Kumar Halder <ayan.halder@arm.com>
> > Date:   Tue Jul 17 17:13:46 2018 +0000
> >
> >      drm/sun4i: Substitute sun4i_backend_format_is_yuv() with format->is_yuv
>
> Pretty sure your GCD machine is not using the sun4i driver. It's also
> very far away from the code that's blowing up. bisect gone wrong?
> -Daniel

Yes, this driver is not even enabled in the config.
I see 2 issues with kernel in the bisect log:
1. Unrelated machine hangs get in the way of bisection process (or
that "no output" another manifestation of this bug?).
2. Somehow this change to not compiled file changed vmlinux thus
detection of unrelated changes failed. Non-deterministic kernel builds
issue is tracked here:
https://github.com/google/syzkaller/issues/1271#issuecomment-559093018
but so far I don't have any glues/ideas.


> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15d2f97ee00000
> > start commit:   596cf45c Merge branch 'akpm' (patches from Andrew)
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=13d2f97ee00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=7d8ab2e0e09c2a82
> > dashboard link: https://syzkaller.appspot.com/bug?extid=a4ae1442ccc637162dc1
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14273edae00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15e7677ae00000
> >
> > Reported-by: syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com
> > Fixes: 979c11ef39ce ("drm/sun4i: Substitute sun4i_backend_format_is_yuv()
> > with format->is_yuv")
> >
> > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/CAKMK7uF4AR_tRxt5wBKxzz6gTPJmub3A%3Dxyuh1HjgvfYy7RCBg%40mail.gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
