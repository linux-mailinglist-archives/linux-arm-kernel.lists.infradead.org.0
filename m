Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A50114245
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n62a1M6uS+gnMS8/mwP0PH/xSjoIvP6BFJq/K7G7yUg=; b=fOR4TMxDnTQhVt
	DR3NJ5zoBAOJRDqXtMMJMOIUhuc6Auj0jxwnyv08M3KGDgegj5pWbK1j7jawd8UHFmAP62m2ZLZ/e
	jOybnGgfBPeznCFaHjwGE+RPqIp7QngG92IhlUppihlKRUV3CAwSD82TBv134GZnjvtlNVzO6dEeL
	z5AUiv+MAFj0Pmyg42mHXIOcxCGrBJ1IbPYF+caHLx5iZTf1wDmCuSgoIhSG32RGvlkfsTJWBpQLu
	spPViWZltKUWDmg3WO7mSt97B2KAav4kN4PGsTvIDDfJ+EF2H9TaWk+7/c1CisJ2t2K2LXkb10bCf
	mbysFX+yAozV5LJdY5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrks-0004gv-3I; Thu, 05 Dec 2019 14:05:18 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrkj-0004JV-JG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:05:11 +0000
Received: by mail-oi1-x244.google.com with SMTP id d62so2780593oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xeq4HgJBk0tt+S9xudVxwhQMEwHOJwN3jhLi9OPFVKY=;
 b=b09ztlWc8v0Um4ctng63ZDT0E7P0RKXrvR927jOraXHcGtJp+Uf2CHIS+MDhda51Bh
 t/U7WR4cLn1riEonp0c2aWFTbS7B4AKZl2EUZHj5NsL5WDWdHrX8BVO6KWzWJvr2InKS
 NcLiCmBKk1g//LRtR7nDPgmouAT6mLYsA1WLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xeq4HgJBk0tt+S9xudVxwhQMEwHOJwN3jhLi9OPFVKY=;
 b=Dqc1BupYLv35l0UDfn1fZYSSKwbXHJgD4Eb7pBRn6GjmaXFPGoBi/LFKea6Hg8RQoZ
 iOkYVRAmgTrQ6gfBoFUpee1TBDdXveVVokCXRZp8N9fsViN3dYxeswQ23vSBu7DTxTdG
 U7WK18eRANcMjdc2ITBnYWeT9XZYMrNSKpcRbf/RjK44AGFVLANGNMXQJuiMlxeBrwZN
 fsXFNJLDsJAww/YhMvKviohCMzGFjyVF2CnjDIXYYuPV3n/sppw3f0l6fkZm3aPn+Fp6
 BKPEOs1SpnZ/mNlikgrJUGssXZXWosqEw2OXDQgxFDglGwtO1ECdAy8n1YKD4G51/Myt
 4LVQ==
X-Gm-Message-State: APjAAAXFRAG/co8TirGqexc2R225oP5uA/CsyIC1zdq3riX6S3pe5ZiZ
 uJ4F+K3TeS+Hv2/jMXF5I9LwKmlDX33s6gnGjARvag==
X-Google-Smtp-Source: APXvYqzl2QkRicAy9CfAYCw7et3Bgx9YggGL0O1f0fzAsagnw/nPzczyEThdywCyJBZDVTdqDQAUNlpNTbUK5vhRF90=
X-Received: by 2002:aca:b805:: with SMTP id i5mr7462629oif.110.1575554707452; 
 Thu, 05 Dec 2019 06:05:07 -0800 (PST)
MIME-Version: 1.0
References: <0000000000006dff110598d25a9b@google.com>
 <000000000000bcf3bc0598f5090d@google.com>
In-Reply-To: <000000000000bcf3bc0598f5090d@google.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 5 Dec 2019 15:04:55 +0100
Message-ID: <CAKMK7uF4AR_tRxt5wBKxzz6gTPJmub3A=xyuh1HjgvfYy7RCBg@mail.gmail.com>
Subject: Re: INFO: task hung in fb_open
To: syzbot <syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_060509_699319_0B08F069 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 2:38 PM syzbot
<syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com> wrote:
>
> syzbot has bisected this bug to:
>
> commit 979c11ef39cee79d6f556091a357890962be2580
> Author: Ayan Kumar Halder <ayan.halder@arm.com>
> Date:   Tue Jul 17 17:13:46 2018 +0000
>
>      drm/sun4i: Substitute sun4i_backend_format_is_yuv() with format->is_yuv

Pretty sure your GCD machine is not using the sun4i driver. It's also
very far away from the code that's blowing up. bisect gone wrong?
-Daniel

>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15d2f97ee00000
> start commit:   596cf45c Merge branch 'akpm' (patches from Andrew)
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=13d2f97ee00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7d8ab2e0e09c2a82
> dashboard link: https://syzkaller.appspot.com/bug?extid=a4ae1442ccc637162dc1
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14273edae00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15e7677ae00000
>
> Reported-by: syzbot+a4ae1442ccc637162dc1@syzkaller.appspotmail.com
> Fixes: 979c11ef39ce ("drm/sun4i: Substitute sun4i_backend_format_is_yuv()
> with format->is_yuv")
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
