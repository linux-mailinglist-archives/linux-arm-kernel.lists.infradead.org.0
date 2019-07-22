Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF33E70B5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri5xEeFzOe3PCsokuiWEHbyDZvdoqVewcEG491B/7qs=; b=S3MXcduS+69dX1
	T6srEHYcKX/ItvanPRhXEsPJg0y6R73ecGkRS6D2+aMJtA66Qjld6mkLivskXXnZ+SlDQw/FKZ2LJ
	fE8CUsvGYTa1U+t+Sc6RsaQP/kyt1Suv1Bf95N5Ot6Hu4iZw6t4a5p9urwi6VJYEQDS60zpRO//0e
	OyfCzKY8zSbvYm2BQogpSjViG5yjTvnN0FyVUXDAPAgcoW7zuljHrLQ45jnGeXVXusj38Eda4FrZ2
	kISGEbXWcWbQqyHiMKBkSRcm4DwWMq2uo+nD/NLG4jhXgosP7L51J/+blxq5m7x0nrvmeAlLp/w47
	PbXf3WvcmcmtiVJ3mGrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpftS-0004N1-8m; Mon, 22 Jul 2019 21:30:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfsp-0003u0-LY
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 21:30:13 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C64421900;
 Mon, 22 Jul 2019 21:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563831011;
 bh=F1h4fbko3GoKghOyB8V2PZNI7J3t6w8bvytUqOh9UCI=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=lKNFptlRtG+jdk5J6/RG/mxeYrChsOZgEG7uWSrdIecM4fgYTLnaNjW1FabV+PB3f
 P/W2bulFx9XZidJ6MqJX97/eJGtsTM14z4p1kAQl0ptKDcUm133f0Ab+5tZe9QTIl3
 vKUZtYRXL7ZiHsd17KAGufwcFQySmMVAk1SF1uQA=
MIME-Version: 1.0
In-Reply-To: <20190708154730.16643-11-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-11-sudeep.holla@arm.com>
Subject: Re: [PATCH 10/11] firmware: arm_scmi: Drop config flag in
 clk_ops->rate_set
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:30:10 -0700
Message-Id: <20190722213011.0C64421900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_143011_853273_051408E5 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sudeep Holla (2019-07-08 08:47:29)
> CLOCK_PROTOCOL_ATTRIBUTES provides attributes to indicate the maximum
> number of pending asynchronous clock rate changes supported by the
> platform. If it's non-zero, then we should be able to use asynchronous
> clock rate set for any clocks until the maximum limit is reached.
> 
> In order to add that support, let's drop the config flag passed to
> clk_ops->rate_set and handle the asynchronous requests dynamically.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
