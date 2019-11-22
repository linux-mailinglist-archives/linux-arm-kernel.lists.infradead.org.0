Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C60E107181
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zrceaoywll23fmIu6wVf1xB1LRb2baxO6lzugTdEFPU=; b=LboN2LgP/wWMGo
	JcuFUaD063CqGMmO5fjvJ2drSDmX52WH/yTJyjFARMfU2sq3B7rK8fO6ym82uUeL3P4m0Rn+3IM3V
	FDEWAliV0OSMUxAlxsNNw/4lVvd6b3NZiDV3MqfDQ+IdPBLqLDI/hGwnQgwomr5oRxH3gQTtzrAXU
	lARRbZISgA9NtbSj56qzokTwJXfQ8QrCJEn3JjQdylNk0kcYMXHr7+124kk/YGxYVBqUznUnaGJwm
	5pS8MVAZdxpjZcyGz8Yl4cRxmaaokrw2MutOZhu+KvsswGjaxNtIkvpjfz2ElTw8GDPS/jgsoAC9e
	bHuDCOQf32NP/RuP1chA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7EQ-00067t-MK; Fri, 22 Nov 2019 11:36:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY7EI-00067a-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:36:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82058328;
 Fri, 22 Nov 2019 03:36:01 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B71083F703;
 Fri, 22 Nov 2019 03:36:00 -0800 (PST)
Date: Fri, 22 Nov 2019 11:35:53 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: KASAN_INLINE && patchable-function-entry
Message-ID: <20191122113553.GA16287@lakrids.cambridge.arm.com>
References: <20191121183630.GA3668@lakrids.cambridge.arm.com>
 <20191121142737.69978ef9@oasis.local.home>
 <20191122113257.GB15749@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122113257.GB15749@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_033602_249588_3CE1FD58 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
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
Cc: Torsten Duwe <duwe@suse.de>, Ingo Molnar <mingo@redhat.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 11:32:57AM +0000, Mark Rutland wrote:
 
> Another option would be to have arm64's ftrace_adjust_addr() detect this
> case and return NULL, given we don't need to perform any call site
> initialization for the redundant NOPs. I'm just not sure if we have all
> the necessary information at that point, though.

Whoops; I meant ftrace_call_adjust() above.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
