Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828C9175981
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sPUkdPAs93oyC++2g9lDel+bEGiKvSZLyTJ0OqR1tY=; b=BVcP+Mwg42Dh4/
	Ha4F+bkJkRhM1wnNY7U42dz36uqGnsaXzf1g+XfFqbmKqKj76IrQDZdtXIvixbna9y1ieROG01qEn
	SPQBUS4cr+GVMoztpivKdxpookoF1Rvk4nuLt21bpvOkIGh8A0nTXTNruf8EKN6h2YbsWi8X9xdo8
	HPVQR8p4gmBjYZb2suuUECGnZlEkLS/1HOB29up+phA73YPqGXvt4+IWXjaVfNyhNk+/03Er9jjCU
	Y92qvHYE3Mxdaixl8mWnVT/LaJVDooQQ7kOnbNlDykTqw6wmK12yF1W7/ycokqh4U+9X7BDCkSpYr
	OnxD9OO/O5n7GgZm8cjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jCl-0002Jc-Jz; Mon, 02 Mar 2020 11:25:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jCc-0002JB-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 11:25:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97A192166E;
 Mon,  2 Mar 2020 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583148338;
 bh=nuD3KBqBD7ZZei78ScqbsoMcFuTR7u+yAT296WQqYOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dlc3ocA62aYJetNXeUw1pt7gYQSxKmRZwNu9iTQLGLsUXk4fF4IlAWSBFjZDx94kH
 shxNkk2YVWXXojx1nuQ65hgRUYUM2rj0e8SELGV5l8viqdhD7Cjk8PhrwZUbm8pP5F
 P7HcYXM8m4wF6fF+FLPbei9Uknt/mxZS2wnMQE8w=
Date: Mon, 2 Mar 2020 11:25:34 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 1/2] perf/imx_ddr: Correct the CLEAR bit definition
Message-ID: <20200302112534.GC7995@willie-the-truck>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_032538_963564_9A1CA66F 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robin.murphy@arm.com, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 08:56:43PM +0800, Joakim Zhang wrote:
> ddr_perf_event_stop will firstly call ddr_perf_counter_enable to disable
> the counter, and then call ddr_perf_event_update to read the counter value.
> 
> When disable the counter, it will write 0 into COUNTER_CNTL[CLEAR] bit
> which cause the counter value cleared. Counter value will always be 0
> when update the counter.
> 
> The correct definition of CLEAR bit is that write 0 to clear the counter
> value.

Ok, so the issue is that when disabling the counter we clear the counter
value at the same time. I'll update the text and apply this fix.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
