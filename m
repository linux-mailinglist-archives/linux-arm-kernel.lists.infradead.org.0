Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F71C347D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNuyWMuryukSXlGA7vPBV9lHL+0ZGN15YHdWDXJObgc=; b=KR4dFdabUZibmJ
	Y2/ByUnOnNY9pMbSHFiRhYseDY+7TXUo/vg5LpuH22Hp2Gt2IsU60/SgTn0Y5D+2XGgIWVo3LTMjz
	pQPYmcs15WiRjRccqWDQFeeg0x+uDo1opVmHq7dxmcENrhdcN/9or+jwriv1X99oRSFgI3abf6bxS
	fbf/PaBN02Q2N/YkRBcxT9O0TKEoc1IR5HEMGStOR0A+nwXwc/ZgsU6PCh1hThXPXAT0QxgpDD2ed
	m0kVwj7s8XO1Dn1JFlYh3S577sBjd01r6mbv+PtMBBzTcMEz8rkftracSJJnpUtOE8ng1PUOJvX98
	KwjJuZdq0nBag9GCaHwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Ic-00021M-FD; Tue, 04 Jun 2019 13:16:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9IV-00020r-Qs
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:16:17 +0000
Received: from oasis.local.home (unknown [146.247.46.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 120BA2484F;
 Tue,  4 Jun 2019 13:16:11 +0000 (UTC)
Date: Tue, 4 Jun 2019 09:16:07 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: KVM Arm Device passthrough and linux-rt
Message-ID: <20190604091607.2e87eb36@oasis.local.home>
In-Reply-To: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
References: <26832850-37ee-ae07-08ca-cc3e90978867@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061615_880874_4E96BADB 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rt-users <linux-rt-users@vger.kernel.org>, julia@ni.com,
 Marc Zyngier <marc.zyngier@arm.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 13:58:51 +0100
Julien Grall <julien.grall@arm.com> wrote:

> This is happening because vgic_v2_fold_lr_state() is expected
> to be called with interrupt disabled. However, some of the path
> (e.g eventfd) will take a spinlock.
> 
> The spinlock is from the waitqueue, so using a raw_spin_lock cannot
> even be considered.
> 
> Do you have any input on how this could be solved?

What's the reason that vgic_v2_fold_lr_state() expects interrupts to be
disabled?

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
