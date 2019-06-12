Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65D4431B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 00:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpT/LZCH+QS1CzLL2ByQcLb28SoaCLQjraR415uNHCw=; b=IB8kYLsTn+4Yb3
	WZLc6qbtkB+TgmMSw0FOWFaKoUvZpU++J6g9FwJGgxYeRvjW3wuQ2iopcjA5FrIDYde5D0Sq8P8VO
	HZ7tPRKzz6Z36i+l8I/l7TwOsyHFLAe7gSBB0tuQaEhUlWL1TbIMOCShrgrxNXcrHkZYpi3pWwXqQ
	7vXqsSesuNgFcREhJIfjrCc3zLdkn/MbeyBqgcu5Ege+EamAw2np8V7CVk+0Cj+1w4ghtiAlGd+H8
	vWmdkpVyiqTutfSVg6A6Gmw+tV0ToKcHxZrRflfZHhO0GJwEpTFpLi3w9cBkC53nmvYhmhsMIRS1M
	9Eu2dg/ReQeS1QoSX+OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbBtC-0008Pi-Gg; Wed, 12 Jun 2019 22:38:42 +0000
Received: from emh07.mail.saunalahti.fi ([62.142.5.117])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbBt0-0008P2-Lf
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 22:38:32 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-70-161-nat.elisa-mobile.fi
 [85.76.70.161])
 by emh07.mail.saunalahti.fi (Postfix) with ESMTP id 08A28B0010;
 Thu, 13 Jun 2019 01:38:22 +0300 (EEST)
Date: Thu, 13 Jun 2019 01:38:22 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/2] arm64: Implement panic_smp_self_stop()
Message-ID: <20190612223822.GA27145@darkstar.musicnaut.iki.fi>
References: <20190611181050.9647-1-aaro.koskinen@iki.fi>
 <20190611181050.9647-2-aaro.koskinen@iki.fi>
 <a91a65a9-5b49-130d-a824-f719071b4263@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a91a65a9-5b49-130d-a824-f719071b4263@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_153830_879959_F455BE8B 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.117 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 12, 2019 at 04:18:32PM +0100, James Morse wrote:
> On 11/06/2019 19:10, Aaro Koskinen wrote:
> > Currently arm64 uses the default implementation of panic_smp_self_stop()
> > that is simply a cpu_relax() loop. As a result, when two CPUs panic()
> > simultaneously we get "SMP: failed to stop secondary CPUs" warnings and
> > extra delays before a reset.
> 
> > Provide an implementation of panic_smp_self_stop() that offlines the
> > CPU properly.
> 
> This had me looking to the PSCI call that would take the CPU offline, but its just
> conflicting terminology. Its the:
> | set_cpu_online(cpu, false);
> you're referring to here.
> 
> Would 'marks the CPU offline' be clearer?

Yes, I will update the change log. I'll wait and see if there are other
comments as well, and send a new version next week.

> Regardless,
> Reviewed-by: James Morse <james.morse@arm.com>

Thanks,

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
