Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464CC9FFF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+7wqPKs9+8TeYKERhOGIIqXFglXLwfUztYQiYCEZPY=; b=S3xzHme8IY8k01
	HP9p67D8zr/XY16V6vBLR6XTXDivqg2YqJpmdkCz9vjyhrASDYwJ9miSf9ugVCxLVZyRLPJpFr1xz
	T8mkGBUJ/PanHQX8sZblWxPst+GuaB3L1y8QFJUBsH03sJ7MPhAm7aSaeiSQ/3WfrgRkkspJKNrfq
	40fqgieti+jgy70eyMHBQ94i6q4VqP6pKo8QLlGVaAsVhSdS934edJDj7Oe3lLOUjvc60m7WaqOPu
	qbTT/xFd/4XnaMM/3yXtv1qGGDVdB5Slg304DTm6K/UEwtw/7yusCV/2xTqvfxbJ1aMHS+eCgNroo
	Ym0MbF1ZZtlRrsJklepA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vFx-00081y-Hj; Wed, 28 Aug 2019 10:32:49 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vFj-00080l-P8
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:32:37 +0000
Received: by mail-ua1-x942.google.com with SMTP id m8so664330uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 03:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oF7a1jbNbbfi/DhdEHpIDQz29C1JdgCAJx5IOgrXi30=;
 b=cp/+56qdxFuDpbtqG8L1bmfC561P9jMlzO5urm8esQqmM2W3gBfNZdp+scUb/KB4iB
 qcXCcj0I8yeqS2BGaoF9CiIPWreZXVneX4W1Luzt07p5wChbYfShdsHS3Osr888EAF4O
 RScUdSCEqK46D6wtZMBAHaY4yiVC8aYfB6mGWVtzG3imiZbLNGysfDNsRb7tFf/GBT6V
 CwlWUrgju0whJHM+pQVqIXg8HYwHqJ6hv87myiJUck4Ad6jQ3fVS8ujj1t1NLvmLwkIt
 KelRcR3YS364Ab3ZM6Cn/7sCdOvHfmtXLeXE5SuqM4gDlsWlwoySuoE7niD/nBoacqZp
 nOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oF7a1jbNbbfi/DhdEHpIDQz29C1JdgCAJx5IOgrXi30=;
 b=ksk6WgyUpiexlw585AfDofzqdby9twdwrIGI+YLxPS85mz4UAxVKrAFbfF8M9E0ljP
 UIAqUF5q192EqHRTyAqYpYxOTbgNhZajaw2dEcAb4CLu0zsDiBXIVmZe0Ds6xCRHGB9K
 SONzxPAT7mIg/C+onSFtpzE6/j4QhU4Ak1RmnbuMkKQRMVSqRE64N6Ii21uakuak/zHf
 LAuSYugEGVHTYEIn1BaSDn7VyY3k/RBDLPzGgvZGBwerkzPs9KJ2f1cI3yaExQWOnVzx
 R/4nIW+8r3qPZ71tHVY5BaV+yi9tjNGHAEsm2itWiSeNlXsdr2SrBw0VkWBFRUNOEw3k
 UpqA==
X-Gm-Message-State: APjAAAUJUsS4E5f79ZQEh+g+jDq3m9uUGArUACgrBvCUsolGrWR5euk4
 D7L81xh0JOOgMdGh7yi5+IbDRIUp73SiMHNik60CcQ==
X-Google-Smtp-Source: APXvYqxu8e7ouZlP59+4Xx/1uo07ZtNJgW3EppKd0LP9dwxPGjEFMRvCUHleqLWo7lXKmtIi0s8NylMLuJFV+YuvBNo=
X-Received: by 2002:ab0:6883:: with SMTP id t3mr1585466uar.104.1566988353183; 
 Wed, 28 Aug 2019 03:32:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190827134337.GK13294@shell.armlinux.org.uk>
 <CAPDyKFp7e2OD_idam3-2sEd0wJU5OcP=H04G1OvHmAUo2Y-bYw@mail.gmail.com>
 <20190827143634.GL13294@shell.armlinux.org.uk>
 <20190827145216.GM13294@shell.armlinux.org.uk>
 <20190827150614.GN13294@shell.armlinux.org.uk>
In-Reply-To: <20190827150614.GN13294@shell.armlinux.org.uk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 28 Aug 2019 12:31:56 +0200
Message-ID: <CAPDyKFoJgT9kRnARcP+snZkqC7rrp3UCd=mA=n3GL_brr2SHBw@mail.gmail.com>
Subject: Re: Continuous SD IO causes hung task messages
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_033235_829712_08135636 
X-CRM114-Status: GOOD (  28.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 17:06, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Aug 27, 2019 at 03:52:17PM +0100, Russell King - ARM Linux admin wrote:
> > On Tue, Aug 27, 2019 at 03:36:34PM +0100, Russell King - ARM Linux admin wrote:
> > > On Tue, Aug 27, 2019 at 03:55:23PM +0200, Ulf Hansson wrote:
> > > > On Tue, 27 Aug 2019 at 15:43, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > While dd'ing the contents of a SD card, I get hung task timeout
> > > > > messages as per below.  However, the dd is making progress.  Any
> > > > > ideas?
> > > > >
> > > > > Presumably, mmc_rescan doesn't get a look-in while IO is progressing
> > > > > for the card?
> > > >
> > > > Is it a regression?
> > > >
> > > > There not much of recent mmc core and mmc block changes, that I can
> > > > think of at this point.
> > >
> > > No idea - I just repaired the SD socket after the D2 line became
> > > disconnected, and decided to run that command as a test.
> > >
> > > > > ARM64 host, Macchiatobin, uSD card.
> > > >
> > > > What mmc host driver is it? mmci?
> > >
> > > sdhci-xenon.
> > >
> > > I'm just trying with one CPU online, then I'll try with two.  My
> > > suspicion is that there's a problem in the ARM64 arch code where
> > > unlocking a mutex doesn't get noticed on other CPUs.
> > >
> > > Hmm, I thought I'd try bringing another CPU online, but it seems
> > > like the ARM64 CPU hotplug code is broken:
> > >
> > > [ 3552.029689] CPU1: shutdown
> > > [ 3552.031099] psci: CPU1 killed.
> > > [ 3949.835212] CPU1: failed to come online
> > > [ 3949.837753] CPU1: failed in unknown state : 0x0
> > >
> > > which means I can only take CPUs down, I can't bring them back
> > > online without rebooting.
> >
> > Okay, running on a single CPU shows no problems.
> >
> > Running on four CPUs (as originally) shows that the kworker thread
> > _never_ gets scheduled, so the warning is not false.
> >
> > With three CPUs, same problem.
> >
> > root@arm-d06300000000:~# ps aux | grep ' D '
> > root        34  0.0  0.0      0     0 ?        D    15:38   0:00 [kworker/1:1+events_freezable]
> > root@arm-d06300000000:~# cat /proc/34/sched
> > kworker/1:1 (34, #threads: 1)
> > -------------------------------------------------------------------
> > se.exec_start                                :        318689.992440
> > se.vruntime                                  :         37750.882357
> > se.sum_exec_runtime                          :             9.421240
> > se.nr_migrations                             :                    0
> > nr_switches                                  :                 1174
> > nr_voluntary_switches                        :                 1171
> > nr_involuntary_switches                      :                    3
> > se.load.weight                               :              1048576
> > se.runnable_weight                           :              1048576
> > se.avg.load_sum                              :                    6
> > se.avg.runnable_load_sum                     :                    6
> > se.avg.util_sum                              :                 5170
> > se.avg.load_avg                              :                    0
> > se.avg.runnable_load_avg                     :                    0
> > se.avg.util_avg                              :                    0
> > se.avg.last_update_time                      :         318689991680
> > se.avg.util_est.ewma                         :                   10
> > se.avg.util_est.enqueued                     :                    0
> > policy                                       :                    0
> > prio                                         :                  120
> > clock-delta                                  :                    0
> >
> > The only thing that changes there is "clock-delta".  When I kill the
> > dd, I get:
> >
> > root@arm-d06300000000:~# cat /proc/34/sched
> > kworker/1:1 (34, #threads: 1)
> > -------------------------------------------------------------------
> > se.exec_start                                :        574025.791680
> > se.vruntime                                  :         79996.657300
> > se.sum_exec_runtime                          :            10.916400
> > se.nr_migrations                             :                    0
> > nr_switches                                  :                 1403
> > nr_voluntary_switches                        :                 1400
> > nr_involuntary_switches                      :                    3
> > se.load.weight                               :              1048576
> > se.runnable_weight                           :              1048576
> > se.avg.load_sum                              :                   15
> > se.avg.runnable_load_sum                     :                   15
> > se.avg.util_sum                              :                15007
> > se.avg.load_avg                              :                    0
> > se.avg.runnable_load_avg                     :                    0
> > se.avg.util_avg                              :                    0
> > se.avg.last_update_time                      :         574025791488
> > se.avg.util_est.ewma                         :                   10
> > se.avg.util_est.enqueued                     :                    0
> > policy                                       :                    0
> > prio                                         :                  120
> > clock-delta                                  :                   40
> >
> > so the thread makes forward progress.
> >
> > Down to two CPUs:
> >
> > root@arm-d06300000000:~# ps aux | grep ' D '
> > root        34  0.0  0.0      0     0 ?        D    15:38   0:00 [kworker/1:1+events_freezable]
> >
> > Same symptoms.  dd and md5sum switch between CPU 0 and CPU1.
>
> Hmm.
>
> static blk_status_t mmc_mq_queue_rq(struct blk_mq_hw_ctx *hctx,
>                                     const struct blk_mq_queue_data *bd)
>
>         mq->in_flight[issue_type] += 1;
>         get_card = (mmc_tot_in_flight(mq) == 1);
>
>         if (get_card)
>                 mmc_get_card(card, &mq->ctx);
>
> mmc_get_card() gets the host lock according to the card.
>
> So, if we always have requests in flight (which is probably the case
> here) we never drop the host lock, and mmc_rescan() never gets a look
> in - hence blocking the kworker.

Ahh, you are right. However, this isn't a new problem I believe.

Even if we did some re-work of the locking mechanism while converting
to blk-mq, I still think the worker could starve the mmc_rescan work
before.

In practice this shouldn't be a problem though, unless I am
overlooking something. This is because it's not until there is an I/O
error, that causes the block worker to release the host, to it makes
sense to let mmc_rescan to claim the host to check for card removal.

>
> So this is a real issue with MMC, and not down to something in the
> arch.

Yep, thanks for running the test and providing more details!

>
> I suspect the reason that single-CPU doesn't show it is because it is
> unable to keep multiple requests in flight.

Yes, most likely.

Now, how to solve this problem I need to think more about....

FYI: The long term goal has been to try to remove the big fat host
lock altogether and slowly we have moved more an more things to be
executed as a part of the block worker, which is one of the needed
steps. Like the mmc ioctls for example...

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
