Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3966F31EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2OB6J+iPvHJ9PUwgEE+Gu0uSozFXRFJu4RuSdosoqw=; b=B9u9a06+vGDs2C
	wccWAZtiNZCRShkWWzYmTCwJINK/cOCD4k5GscBRSG/UgvF7kQKojDaD/XS8nucOt1jdQuNO+vZD/
	d3eb7eMGV6BEGExxPfOrRF89hGKld3yNUJidx4mwr4OzPA3mNVssgAQXjr7Zoh3vG2tu6kmVEMXEA
	cn2wKq8UH0ZuolBHhqV32FRC+S45IqVWMF939y3Fxje9FoL4h0+qsBxqwAIp2lqu0doKXNBwOwAGz
	2I4z/nKcGwPLMHSG+dN/u7v4vVDFyiE2Fe3+kAXXZvaTX49Fvhde7Gl+nPrngRzBVxdAx8EhzVtio
	hTpK+whxTEWa6HNMJVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjL3-0005OQ-93; Thu, 07 Nov 2019 15:04:45 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjKv-0005OF-Pn
 for linux-arm-kernel@bombadil.infradead.org; Thu, 07 Nov 2019 15:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BzPm+y8gqdcfCyLbcdlqhlseD9elHtmAynAOq1Mexo8=; b=rVPgKi1cpg+X6K/+My50HQ1yI
 G82RP+Dxd8ttQcUyfkT/3SehOJI7FpWnjDRDJEkix8VwznbgDAx6+rDa0Wh7PTHOM0bESCzkyzQOQ
 1OJAd57mQPYEZ9LXlxvDf4pikZYwsQmA3sI7YtIu6qfuM0K/Fj42IiubCyI/oSdmXsGqdTgR3Suwk
 fyNb25pcWco+gTpeMUEX+iNMQSrhgBE0beflx+P+hCEj8gmCI3/p45kdW8c5URHGMKXXvPzGPPcMv
 X+3c/MMLrxpJ9rKXAx4OpQC466WAqXOpQNzrFAseHtyFFWdskm+4uI6todiJBjcUQWPaLpERFVvPa
 nv4KsbhXA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjKr-0000Fh-Q5; Thu, 07 Nov 2019 15:04:33 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5A0DF300489;
 Thu,  7 Nov 2019 16:03:27 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BC56D2B219005; Thu,  7 Nov 2019 16:04:31 +0100 (CET)
Date: Thu, 7 Nov 2019 16:04:31 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Ganapatrao Kulkarni <gklkml16@gmail.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Message-ID: <20191107150431.GC4114@hirez.programming.kicks-ass.net>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
 <20191106112810.GA50610@lakrids.cambridge.arm.com>
 <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:28:46PM -0800, Ganapatrao Kulkarni wrote:
> Issue happens when the add and del are called too many times as seen
> with 6 event case.
> The PMU hardware control registers are programmed when add and del
> functions are called.
> For pmu->read no issues since no h/w issue with the data path.
> 
> Please suggest me, how can we fix this in back-end PMU driver without
> any perf core help?

As Mark already said, a (much) better description of the actual hardware
fail is required, but one possible solution would be to add a busy spin
delay when writing to the hardware registers.

Something like:

	u64 now, ts = this_cpu_read(tx2_throttle);

	while ((now = cycle_counter()) <= ts)
		cpu_relax();

	write_register(...);

	this_cpu_write(tx2_throttle, now + delay_ns);

Other known tricks include reading the register back until it contains
what you just wrote to it.

But really, first properly describe how your hardware is buggered.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
