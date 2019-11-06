Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940BBF1287
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4MkvUm/pBLJvnFV7ptK+qovdRm5YkneoKHNhmKT5RY=; b=AgBzNX5rjGKPMk
	DgF6rN2CYOR9uPb/AHH+vva30T72yTB7aRo15CND+Bfq0bG/ZOgs4aIY5RSkFATV+QogeS9+4fZY5
	9Pys3S7DqGENmh3rLToVTSR/0i9dd3jiJkdeJb7OpdC8SqvYE6jePmhLEG8tIvO/V2RWV4TMdL0Hx
	s8TlyaSK9p2+2UuKiRsWBaMowSZyaoUgApS3CLz8LCB4JRK0OFSpS4Of7NbDvnLVkychtCGFun9qg
	bZ+Kh9MT9vUNZ6qGhEc77tsiosy22Qvy8a12e7C5D2CLReDMjcyEfekZ0UvR0G60H3ixgjS20z+vG
	cKnzaShyZbzlbPIXftiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHo6-0004I9-TA; Wed, 06 Nov 2019 09:40:54 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHnm-0004AE-KN; Wed, 06 Nov 2019 09:40:34 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 280B4300692;
 Wed,  6 Nov 2019 10:39:28 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2881C29ABB5F9; Wed,  6 Nov 2019 10:40:32 +0100 (CET)
Date: Wed, 6 Nov 2019 10:40:32 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
Message-ID: <20191106094032.GV4131@hirez.programming.kicks-ass.net>
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> When PMUs are registered, perf core enables event multiplexing
> support by default. There is no provision for PMUs to disable
> event multiplexing, if PMUs want to disable due to unavoidable
> circumstances like hardware errata etc.
> 
> Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> to allow PMUs to explicitly disable event multiplexing.

This doesn't make sense, multiplexing relies on nothing that normal
event scheduling doesn't also rely on.

Either you can schedule different sets of events, or you cannot.

NAK.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
