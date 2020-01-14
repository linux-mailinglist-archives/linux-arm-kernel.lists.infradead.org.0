Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E2F13A7D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIYddyrBwGrm8p+WG4yk7+7VHfDPL8TqB1P9EULOMas=; b=BBgFvV0mp2yECG
	O/C3wAn39CPPxuObQ9FwdACY+sPtXM+i5K5ws2RNlxaDIOgoBLM5vK8g64tHeuvJfMdB/cziyZUHu
	FEh2VuaOzQn8X/P2TiX3Th2HV9RLi/GatAdZvRflpiGd6zAficqHAJgZOzIBdwflNaziwHZv4qFaO
	NlElsc/JuGwpDk0u5AOTHd3ojISLX5RHerIDZUpDNJT5nlic+4nrgxI9IBhMDmChgoJmhOb5ArbtR
	aogO4h23lHGL/MMlAXsL5m2Fd5+jwIT6WwAaULVvs625WVgQ4oFLHZ6l06aQL1dDgwU+Grd5Zs0aG
	yqYaNqu/DxJY2svJkTJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJzF-0004Sl-Gp; Tue, 14 Jan 2020 11:03:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJz4-0004S5-0Y
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:03:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F62A142F;
 Tue, 14 Jan 2020 03:03:41 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 566B33F6C4;
 Tue, 14 Jan 2020 03:03:40 -0800 (PST)
Date: Tue, 14 Jan 2020 11:03:34 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200114110223.GA47447@bogus>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
 <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_030342_096763_E2035527 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, Arnd Bergmann <arnd@arndb.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 02:56:15PM +0530, Viresh Kumar wrote:

[...]

> The scmi protocol requires a block of shared memory which is
> represented by struct scmi_shared_mem, and payload is this memory
> block itself. This block of memory is accessed throughout driver.c
> file using ioread/write commands. If payload is transport specific, so
> will be those accesses, isn't it ? Are you suggesting to move all this
> to mailbox.c (the transport specific file) instead ? I am sorry, but I
> am not able to understand how exactly you want me to reorder code here
> :(
>

I don't have complete understanding of the requirements yet, but we may
have to make scmi_shared_mem transport specific vaguely based on virtio
requirements. I must have more info once I have discussion with them
soon. I will reply to this thread after that. More likely by end of this
week. Thanks for your patience, we are still trying to make sure we
have gathered all the requirements.

> @Sudeep: I had a question for you though. Looks like we are doing
> ioremap() of this payload for every channel's tx/rx, why ? Why is the
> same memory area mapped that way ? Can we just map the area once for
> scmi block ?
>

Though it may be part of same block of memory on most of the platforms,
it is not mandatory. It can be scattered. VirtIO based transport might
have something like that.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
