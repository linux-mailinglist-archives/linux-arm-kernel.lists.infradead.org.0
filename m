Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D3191F44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2n4IatnXh7kDQKa3P9EkwLcf0GQGXjFTS7TyW51kryI=; b=gntKQqaL4R+k+b
	VhBylJN3G2ssxujDaeFYYL5gidd3297GbtdJybgmtetNU2qDQq4A80as17ztBDGEM04L8Z7sfPeHU
	wvuqoLXR2XMrct4TJ6eWE3rlU8FZGPgUu8YyDPmNhZTCwLUD1PSuGmZL0corzvDfKFE7lKh20l/zZ
	afpX4Ho/BlBGgp9HQ5orE2rPQQwOVJqiYjp4926MsqWFlyM5/2ecFy140MRkshSeC4uJ3/nm72z8o
	KIfC+eWOBzLLkgrZpQi5QBhZMPKL94Msp8O0Nwq8TOrL5jNdOI/kKzxIRs/NS0Ph0TrBFhAkbWPtx
	/3S1uch81tBEVzWXkGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvtO-0006iX-9H; Wed, 25 Mar 2020 02:35:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvsu-00066H-9n
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 02:35:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id z65so295820pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 19:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PCruq4yToUqxgi9otmka3R7GLNMHRYxm71De4g72dIE=;
 b=jx4zznovkVe6XCYL16ne29yitgzvHvZ3wp/VniEpCswbagD3W2AoeE1MOXgpzOx7N8
 XFIk69jjrSVZ4PwdB3sRyk4uCWw6L6xOdXQBCT/luaJa1bAYhaEhLo4iFZM8EPeMDPuS
 EELCJXRdIICqaVkyHduO5Toie/9MNcDWref2p5Hh/JlNMmcm6ezHts2wONoIbJ2gl2U8
 AslSM1Yy/pl6VukIPDvRQvQWKH8FTKGFSkXhkRVRPuMZ4c+CTPeCwU3D3k2HoWPPw0D7
 ttdJk19L8qTikFSi5lYJaJHuBcEK0E9rgDfVH/vvd//b/6Ioubyw5AJUZCMA0Z5tstOo
 vGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PCruq4yToUqxgi9otmka3R7GLNMHRYxm71De4g72dIE=;
 b=M/Pau06lso8VoDaOgJ9zRZgNdD9kFswHM8XO5hZepDIq9CQKW3T1zw2ZyoKddRy69Y
 lYkJfMfzaSXsNcUOkkavX1ntJENv8kR0H0K1LaYpE8n3nQ0AqUCvtf7PErcSGdEzM9MT
 6hBqR+clDT8XOLIoJgwcdSBrEV0SndkGFk1BvQwlMhkotF4u07kGonA0G7kRORckDs+B
 lPcqKZoogisFjvSR1izotVE0KKN0d+rL832RFH3rlzXloHsbjGBXVRLdsiCr7aKOLAEQ
 PESuxrPYIPucjvmyuFmRBXQ56BHW80HgcDrPQyk9zbpPLSDQruf5EXpziPedksH8+9qv
 g0KA==
X-Gm-Message-State: ANhLgQ3l6rR8GnxUU6d4HqaJ8iKv17tVXyWzcTO0yuw+ZFerJMbb5zkp
 twrcJSofh/3lLEG8yV80gx4=
X-Google-Smtp-Source: ADFU+vs7kd3EyY7fKPHuBdrX5g5pI/Ybft6HW4aFtGtcppaEVj9FPnWCiFFs5Fjuo2+92wn9FEcJvA==
X-Received: by 2002:a62:7c15:: with SMTP id x21mr1028465pfc.132.1585103709526; 
 Tue, 24 Mar 2020 19:35:09 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id z17sm17198052pff.12.2020.03.24.19.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 19:35:08 -0700 (PDT)
Date: Wed, 25 Mar 2020 11:35:06 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Zygo Blaxell <uixjjji1@umail.furryterror.org>
Subject: Re: dmesg -w regression in v5.4.22, bisected, was: Re: [PATCH]
 char/random: silence a lockdep splat with printk()
Message-ID: <20200325023506.GB241329@google.com>
References: <1573679785-21068-1-git-send-email-cai@lca.pw>
 <20200324151359.GF2693@hungrycats.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324151359.GF2693@hungrycats.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193512_451209_AB3B52E7 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: pmladek@suse.com, tytso@mit.edu, sergey.senozhatsky.work@gmail.com,
 arnd@arndb.de, peterz@infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, linux-mm@kvack.org,
 Qian Cai <cai@lca.pw>, catalin.marinas@arm.com, longman@redhat.com,
 dan.j.williams@intel.com, will@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (20/03/24 11:13), Zygo Blaxell wrote:
> On Wed, Nov 13, 2019 at 04:16:25PM -0500, Qian Cai wrote:
> > From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
> > 
> > Sergey didn't like the locking order,
> > 
> > uart_port->lock  ->  tty_port->lock
> > 
> > uart_write (uart_port->lock)
> >   __uart_start
> >     pl011_start_tx
> >       pl011_tx_chars
> >         uart_write_wakeup
> >           tty_port_tty_wakeup
> >             tty_port_default
> >               tty_port_tty_get (tty_port->lock)
> > 
> > but those code is so old, and I have no clue how to de-couple it after
> > checking other locks in the splat. There is an onging effort to make all
> > printk() as deferred, so until that happens, workaround it for now as a
> > short-term fix.
> 
> Starting with v5.4.22 I noticed 'dmesg -w' stopped working on some
> machines.  dmesg will follow console output for a few seconds, then it
> stops.  strace indicates dmesg is blocked in read() on the /dev/kmsg fd.
> If a new dmesg process starts, it gives messages for a few seconds,
> then also stops.  rsyslog's kernel logging is similarly affected.
> 
> Bisection points to this patch (now known as
> 1b710b1b10eff9d46666064ea25f079f70bc67a8 upstream).  I can't reproduce
> the problem on a test VM, and some machines are running v5.4.22..v5.4.26
> with no dmesg problems.  It seems there is some magic in the startup
> sequence of affected machines.  This code isn't executed after RNG is
> seeded, so it would have to get its bad stuff done before that happens.
> 
> Reverting commit 1b710b1b10eff9d46666064ea25f079f70bc67a8 fixes the
> dmesg regression on 5.4.26.  It might put the original lockdep bug back,
> but on machines running stable kernels, I prefer randomly broken lockdep
> over repeatably broken dmesg.

This should fix the problem

https://lore.kernel.org/lkml/20200303113002.63089-1-sergey.senozhatsky@gmail.com

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
