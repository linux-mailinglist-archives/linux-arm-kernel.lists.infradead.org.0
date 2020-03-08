Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D56C17D437
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 15:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lYRq35yps/skHS7WwIOUpzAcw32kpJdh37jO0Br5TE=; b=HoZV6ZcMXTlQNV
	ti3WvSq//62yZpQKsdspGXp1ZXiiahY5Vg+gVUZNlS6XT7p4wSSQN3HKTlY5FXaO9MlmKUi1ibeZG
	nVhUZ4DFuS7AYRlO8Zq53+U4ALCVROerqwjRnfOu/smOJgPdrHMIdLfxCRHP+SZTN1TjaSuAeSqux
	Q6IwGxXsfq7+4+EFQ2YxQWBblGg9kZXxPb7iK1d3NyhaZ+1aeQvpwrkROPE1X6lpli6oAiMj6jhfb
	SD5aWlDsjcZ8pPdChAClMFr18oNU3G4eqOnNKEmKGZNo9ga8chpQQHxMNjyEknwAWowhRK5fqBD8x
	g7EasVR65tjETpeqTm4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAwz5-0004Zd-5n; Sun, 08 Mar 2020 14:32:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAwyx-0004ZH-BD
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 14:32:44 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAE9120866;
 Sun,  8 Mar 2020 14:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583677962;
 bh=Qf85Idz1ufAqRaQjq2hevtnMni/ZOoPPn+CtFmEi/Yw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SUHJ8CgMR5wEbdnuLmB7qRnO/OTYO2EaQgorGX7PJMCAiW8p9FkKwUUNE/HrzWf3E
 8VcdijOFz65CnYo40yWVibyzHDbZt0mdF7xIw73RRt0IYtIv13XIBBMjSuRxbktKVC
 vI23yIAtCHnzlynELo37KXAlo9xfoV4rKwerqCyc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jAwyu-00B33t-Vm; Sun, 08 Mar 2020 14:32:41 +0000
Date: Sun, 8 Mar 2020 14:32:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2 0/2] irqchip: xilinx: Switch to generic domain handler
Message-ID: <20200308143239.4428c1ee@why>
In-Reply-To: <20200308140126.51eeebc4@why>
References: <cover.1582545908.git.michal.simek@xilinx.com>
 <20200308140126.51eeebc4@why>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, jason@lakedaemon.net, mubinusm@xilinx.com,
 stefan.asserhall@xilinx.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_073243_413427_48F46644 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>, monstr@monstr.eu,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 git@xilinx.com, Thomas Gleixner <tglx@linutronix.de>,
 Mubin Sayyed <mubinusm@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 8 Mar 2020 14:01:26 +0000
Marc Zyngier <maz@kernel.org> wrote:

> On Mon, 24 Feb 2020 13:05:12 +0100
> Michal Simek <michal.simek@xilinx.com> wrote:
> 
> > Hi,
> > 
> > this series is based on cascade mode patch sent by Mubin
> > (https://lkml.org/lkml/2020/2/11/888 - v3 series).
> > 
> > The first patch is just fixing error patch. The second is converting microblaze
> > do_IRQ() to generic IRQ handler with appropriate changes in xilinx intc driver.
> > 
> > Also removes concurrent_irq global variable which wasn't wired
> > anywhere but it stores number of concurrent IRQs handled by one call. There
> > is option to get it back if needed but I haven't seen it in other archs
> > that's why I have removed it too.  
> 
> Queued for 5.7.

Scratch that, this doesn't apply to mainline because of the above
dependency (and said dependency hasn't been reposted after Thomas'
review). I've now dropped it. Please resubmit a full series that
contains all the pre-requisite to be applied on mainline.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
