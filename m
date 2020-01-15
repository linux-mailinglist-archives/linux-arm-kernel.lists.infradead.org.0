Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ED613C623
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nk1Q4ciIoBKv1eMFvQ8xsekZlbmuApbFPGXzRtITOdg=; b=Ai9M9R4bDc4ERb
	e/sogm94Xxdxda1q+zZyVpjuvSOQaltH508Dr+gAdTuBDJ8Xi+bmwWXKfljn/DJ6LIQZ4uJZUGqzm
	E0qxmmywVs7GN2GHs+hFfgPPpMMaU5PthBMcoW/YS8RQBNXkuDqkYVGsoxTNddoBqCXc8ylpbrcj2
	w8cjxmeNZIsvcmHBYsT1Sx5k0A/saYF79T2gcAQweqosNtHbAvoNgI4fmlrzwONdgL9FxLNdZx8tG
	hvukTyRhACzRk1mmvGnMJt7KwVlPmXiLEt6tLNE1ByLf4FpWmwBdrI5rLNABS3rj2sWUUlZWgaCoj
	JhMSmQDbBl7V9lYAN2zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjkj-0002JR-Js; Wed, 15 Jan 2020 14:34:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjjr-0001WQ-JE
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:33:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF44A31B;
 Wed, 15 Jan 2020 06:33:42 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A16FB3F68E;
 Wed, 15 Jan 2020 06:33:41 -0800 (PST)
Date: Wed, 15 Jan 2020 14:33:25 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200115143325.GA12340@bogus>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <AM0PR04MB4481AA813CB53AC0D2C238C788370@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481AA813CB53AC0D2C238C788370@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063343_738607_FC1F15D7 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "arnd@arndb.de" <arnd@arndb.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "cristian.marussi@arm.com" <cristian.marussi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 08:53:51AM +0000, Peng Fan wrote:
>
> > Subject: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
> > transport type
> >
> > The SCMI specification is fairly independent of the transport protocol, which
> > can be a simple mailbox (already implemented) or anything else.
> > The current Linux implementation however is very much dependent of the
> > mailbox transport layer.
> >
> > This patch makes the SCMI core code (driver.c) independent of the mailbox
> > transport layer and moves all mailbox related code to a new
> > file: mailbox.c.
> >
> > We can now implement more transport protocols to transport SCMI messages,
> > some of the transport protocols getting discussed currently are SMC/HVC,
> > SPCI (built on top of SMC/HVC), OPTEE based mailbox (similar to SPCI), and
> > vitio based transport as alternative to mailbox.
> >
> > The transport protocols just need to provide struct scmi_desc, which also
> > implements the struct scmi_transport_ops.
>
> I need put shmem for each protocol, is this expected?

No, it's optional. If some/all protocols need dedicated channel for whatever
reasons(like DVFS/Perf for polling based transfers), they can specify.
Absence of dedicated channel infers all protocols share the channel(s).

> Sudeep,
> I am able to use smc to directly transport data,
> with adding a new file, just named smc.c including a scmi_smc_desc,

Good.

> But I not find a good way to pass smc id to smc transport file.
>

IMO, we have to deal this in transport specific init. I am thinking of
chan_setup in context of this patch. Does that make sense ?

[...]

> +
> +    scmi_clk: protocol@14 {
> +            reg = <0x14>;
> +            shmem = <&cpu_scp_lpri>;
> +            #clock-cells = <1>;
> +            clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
> +                     <&clk_ext3>, <&clk_ext4>;
> +            clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
> +                          "clk_ext3", "clk_ext4";

This caught my attention, why do we need these clocks phandle list and
clock names above ? Ideally just need scmi_clk phandle and the index to
refer and names need to be provided by the firmware.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
