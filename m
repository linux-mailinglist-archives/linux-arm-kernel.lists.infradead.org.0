Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1554D45F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1tSqahzs/BqQPL/Kepccd1z8lfTovATziPsBgHAlEE=; b=DJa/vBXBuncrhS
	9PtCCtCeTXhl2xZ1CpsnGORPKgQfz7moqrL8kqUs9GoA+Mpgf87AOPEr4d+zfYcZfwrNGyflV8Fqu
	gWC+C5OfxwfElqUM3tXPvSMiMTEuSAnHcBrsPvFpNYzmRzmbwZgitwAdqlQCAHfk8f7I/jVGn97Yd
	ACczv2El6EwMEXcrJFjCjG5qK6uctMfgNaPSX4ZNAsuchoBueHa3+q4v0Ib7jaLFw/HpgiRsbf1vU
	byFQWloR7rBliywisjri4qtB6/1CX+Bz2UxlvtrFZuyjBOVgEg1pKk7cgSSLtfBH7pP8CCDkc2ieH
	uyifyTovIgyN1qS3RYxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0NU-0005NO-0O; Thu, 20 Jun 2019 16:57:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0NG-0005Mv-Id
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:57:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7F3D2B;
 Thu, 20 Jun 2019 09:57:16 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 388493F246;
 Thu, 20 Jun 2019 09:57:16 -0700 (PDT)
Date: Thu, 20 Jun 2019 17:57:14 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 0/5] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
Message-ID: <20190620165714.GI20984@e119886-lin.cambridge.arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <1e4193ca-ebd2-920a-dc88-127ffc279990@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e4193ca-ebd2-920a-dc88-127ffc279990@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_095722_662315_F12764BA 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 05:45:11PM +0100, Suzuki K Poulose wrote:
> 
> 
> On 18/06/2019 13:54, Andrew Murray wrote:
> > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > to hardware that power should not be removed from the trace unit.
> > Let's mitigate against this by saving and restoring the trace
> > unit state when the CPU enters low power states.
> > 
> > To provide a benefit to both self-hosted and external debuggers
> > we save/restore the entire state which includes etmv4_config data
> > and dynamic data such as inflight counter values, sequencer
> > states, etc.
> 
> Andrew,
> 
> Please could you also mention that there is a kernel command line parameter
> to control the save/restore here and in the patch which introduces it ?
> I think this missing information is creating the confusion.

Yes sure.

Thanks,

Andrew Murray

> 
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
