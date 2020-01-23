Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635FA146FCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLrcnr1IqKLKiqrseZWM+JO04gKRGF8WlPXYWn31Zv8=; b=TkGDpD19bYsBOQ
	683VIbwK/Rl0kdHZ92CVKKnPA/Re7ra5KCCaawlFkLhn5oGeEX8xu278EAMRHbbMXt+YRdUBCHLan
	hJ+Jx24VMM1EbT6jGmPdTdMVjtT6KVJ7lbt17FMrzz3g5mm8cFa8Hp13uryag0SHdVxlg9TgsWCo4
	6F6iflXYjvgCZ83V2LVUdl6aq10ut43ShPguQuxLgXWd61zzlz//SwjX0OYOkP+3upIy16HDCEAaC
	rU8q8gKzx9HZMtxjH2dlRv2Ew0Zzr+dmRet1/CEBcUamGcU9Xiipq2Uk8gWDyEJcSQdbhhuME+Kln
	F1l33LYyJlYkz/8JpNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iugNv-0007O8-WC; Thu, 23 Jan 2020 17:35:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iugNg-00074a-T5
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:35:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B97A51FB;
 Thu, 23 Jan 2020 09:34:58 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.199.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A0653F52E;
 Thu, 23 Jan 2020 09:34:58 -0800 (PST)
Date: Thu, 23 Jan 2020 17:34:56 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 2/6] arm64: trap to EL1 accesses to AMU counters from
 EL0
Message-ID: <20200123173456.GA20475@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-3-ionela.voinescu@arm.com>
 <dcecb179-02f1-0608-6a84-5b2dd0bbcdb3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcecb179-02f1-0608-6a84-5b2dd0bbcdb3@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_093500_983228_4846CEB4 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 23 Jan 2020 at 17:04:32 (+0000), Valentin Schneider wrote:
> On 18/12/2019 18:26, Ionela Voinescu wrote:
> > +/*
> > + * reset_amuserenr_el0 - reset AMUSERENR_EL0 if AMUv1 present
> > + */
> > +	.macro	reset_amuserenr_el0, tmpreg
> > +	mrs	\tmpreg, id_aa64pfr0_el1	// Check ID_AA64PFR0_EL1
> > +	ubfx	\tmpreg, \tmpreg, #ID_AA64PFR0_AMU_SHIFT, #4
> > +	cbz	\tmpreg, 9000f			// Skip if no AMU present
> > +	msr_s	SYS_AMUSERENR_EL0, xzr		// Disable AMU access from EL0
> > +9000:
> 
> AIUI you can steer away from the obscure numbering scheme and define the
> label using the macro counter:
> 
> 	cbz \tmpreg, .Lskip_\@
> 	[...]
> .Lskip_\@:
> 	.endm
> 

Cool, good to know! Although calling it "obscure numbering scheme" does
make it more appealing to use.

Thanks, I'll change it in the next version :).

Ionela.

> 
> > +	.endm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
