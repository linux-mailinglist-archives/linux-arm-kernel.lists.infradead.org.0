Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E29EBDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na4krZVADRHLz64Ux57NISO7F7rYdMBMTTfdgffHtXA=; b=G5slDh3jwWurtJ
	jGJ7uNpqPj+F53+dmyRfLCzamAYlpuvXA2z2Y4L251t4qnbJZgusFsgQbLdUG7cOaKabfF9jRafaf
	AMQ0XIFqyMMatvTwmre1jbVGSusLrS3jproGuuGMTi7WBsViiIupWxcXv2OLD5wDX8Kzg3t2pFRLD
	0XkXh0QxBBx6FN3Rqmj/Rlmzaf/TGwW55gqZFVxYruGZrt+NyKLU1XWD2I457v5uYcSEBcz4J+nd9
	pe9hZdHGYizD8Ihshn+mZRB6RIJdJF5HEcBkMNuc0O5GwBermJL4iCOXPOh13ani8pHdRzDexawNM
	c3/EWejPL4sxwNBE0TUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2d3O-000794-SK; Tue, 27 Aug 2019 15:06:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d36-00071m-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:06:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Usqt65qKCjW/SaanMddOsovi4Ansin8CNvgKX8B3UgI=; b=TUGwbzRp9V7EITrN5S0x0Kr1h
 lrjEaPLBpRfSGGvIWY/DanU0uumSNFLQ+DZBNjadjBC5dtkaPpKQDbKx4tDmcEeY4tO7/XgX8Luky
 LNITSD5W7yPZZCwS583g4HvX7RUrqefOSQH0B0WjBPOW0iYfKPI837f61jkbWwdXsMrawP9ZAjWal
 TRJXoD3Ltc62QphcGOMJVGrdWHje9c6QY23nG48l9j8ahEypW29Q8Htops4bei1liVd1Vo6+NcUb/
 qeZKfRcnn65gAExGZc5LqSUDrOhycXc/UrX/yijndaq7BiSDye6rl3a5VMfIC1AznvFvnluy159O7
 IqCh+OMtA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38672)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2d32-00058Q-3K; Tue, 27 Aug 2019 16:06:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2d30-0005q3-Oj; Tue, 27 Aug 2019 16:06:14 +0100
Date: Tue, 27 Aug 2019 16:06:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: Continuous SD IO causes hung task messages
Message-ID: <20190827150614.GN13294@shell.armlinux.org.uk>
References: <20190827134337.GK13294@shell.armlinux.org.uk>
 <CAPDyKFp7e2OD_idam3-2sEd0wJU5OcP=H04G1OvHmAUo2Y-bYw@mail.gmail.com>
 <20190827143634.GL13294@shell.armlinux.org.uk>
 <20190827145216.GM13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827145216.GM13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_080620_849422_4A1B8DD7 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Aug 27, 2019 at 03:52:17PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Aug 27, 2019 at 03:36:34PM +0100, Russell King - ARM Linux admin wrote:
> > On Tue, Aug 27, 2019 at 03:55:23PM +0200, Ulf Hansson wrote:
> > > On Tue, 27 Aug 2019 at 15:43, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > Hi,
> > > >
> > > > While dd'ing the contents of a SD card, I get hung task timeout
> > > > messages as per below.  However, the dd is making progress.  Any
> > > > ideas?
> > > >
> > > > Presumably, mmc_rescan doesn't get a look-in while IO is progressing
> > > > for the card?
> > > 
> > > Is it a regression?
> > > 
> > > There not much of recent mmc core and mmc block changes, that I can
> > > think of at this point.
> > 
> > No idea - I just repaired the SD socket after the D2 line became
> > disconnected, and decided to run that command as a test.
> > 
> > > > ARM64 host, Macchiatobin, uSD card.
> > > 
> > > What mmc host driver is it? mmci?
> > 
> > sdhci-xenon.
> > 
> > I'm just trying with one CPU online, then I'll try with two.  My
> > suspicion is that there's a problem in the ARM64 arch code where
> > unlocking a mutex doesn't get noticed on other CPUs.
> > 
> > Hmm, I thought I'd try bringing another CPU online, but it seems
> > like the ARM64 CPU hotplug code is broken:
> > 
> > [ 3552.029689] CPU1: shutdown
> > [ 3552.031099] psci: CPU1 killed.
> > [ 3949.835212] CPU1: failed to come online
> > [ 3949.837753] CPU1: failed in unknown state : 0x0
> > 
> > which means I can only take CPUs down, I can't bring them back
> > online without rebooting.
> 
> Okay, running on a single CPU shows no problems.
> 
> Running on four CPUs (as originally) shows that the kworker thread
> _never_ gets scheduled, so the warning is not false.
> 
> With three CPUs, same problem.
> 
> root@arm-d06300000000:~# ps aux | grep ' D '
> root        34  0.0  0.0      0     0 ?        D    15:38   0:00 [kworker/1:1+events_freezable]
> root@arm-d06300000000:~# cat /proc/34/sched
> kworker/1:1 (34, #threads: 1)
> -------------------------------------------------------------------
> se.exec_start                                :        318689.992440
> se.vruntime                                  :         37750.882357
> se.sum_exec_runtime                          :             9.421240
> se.nr_migrations                             :                    0
> nr_switches                                  :                 1174
> nr_voluntary_switches                        :                 1171
> nr_involuntary_switches                      :                    3
> se.load.weight                               :              1048576
> se.runnable_weight                           :              1048576
> se.avg.load_sum                              :                    6
> se.avg.runnable_load_sum                     :                    6
> se.avg.util_sum                              :                 5170
> se.avg.load_avg                              :                    0
> se.avg.runnable_load_avg                     :                    0
> se.avg.util_avg                              :                    0
> se.avg.last_update_time                      :         318689991680
> se.avg.util_est.ewma                         :                   10
> se.avg.util_est.enqueued                     :                    0
> policy                                       :                    0
> prio                                         :                  120
> clock-delta                                  :                    0
> 
> The only thing that changes there is "clock-delta".  When I kill the
> dd, I get:
> 
> root@arm-d06300000000:~# cat /proc/34/sched
> kworker/1:1 (34, #threads: 1)
> -------------------------------------------------------------------
> se.exec_start                                :        574025.791680
> se.vruntime                                  :         79996.657300
> se.sum_exec_runtime                          :            10.916400
> se.nr_migrations                             :                    0
> nr_switches                                  :                 1403
> nr_voluntary_switches                        :                 1400
> nr_involuntary_switches                      :                    3
> se.load.weight                               :              1048576
> se.runnable_weight                           :              1048576
> se.avg.load_sum                              :                   15
> se.avg.runnable_load_sum                     :                   15
> se.avg.util_sum                              :                15007
> se.avg.load_avg                              :                    0
> se.avg.runnable_load_avg                     :                    0
> se.avg.util_avg                              :                    0
> se.avg.last_update_time                      :         574025791488
> se.avg.util_est.ewma                         :                   10
> se.avg.util_est.enqueued                     :                    0
> policy                                       :                    0
> prio                                         :                  120
> clock-delta                                  :                   40
> 
> so the thread makes forward progress.
> 
> Down to two CPUs:
> 
> root@arm-d06300000000:~# ps aux | grep ' D '
> root        34  0.0  0.0      0     0 ?        D    15:38   0:00 [kworker/1:1+events_freezable]
> 
> Same symptoms.  dd and md5sum switch between CPU 0 and CPU1.

Hmm.

static blk_status_t mmc_mq_queue_rq(struct blk_mq_hw_ctx *hctx,
                                    const struct blk_mq_queue_data *bd)

        mq->in_flight[issue_type] += 1;
	get_card = (mmc_tot_in_flight(mq) == 1);

        if (get_card)
	        mmc_get_card(card, &mq->ctx);

mmc_get_card() gets the host lock according to the card.

So, if we always have requests in flight (which is probably the case
here) we never drop the host lock, and mmc_rescan() never gets a look
in - hence blocking the kworker.

So this is a real issue with MMC, and not down to something in the
arch.

I suspect the reason that single-CPU doesn't show it is because it is
unable to keep multiple requests in flight.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
