Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C1412D894
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 13:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2TVK2dIrwyhjSkf6aDl/yGi3uY7Bxfeda4MsP36XZU=; b=fhSr+491jzDwsm
	vJiv+Ts0Ah2eNj0YG74jnbSmBMI5zWyFTj1pFKy1Hu5J0ehGqhmln3Bz7cWFbpGQF7EceA6j3Ad5r
	WA130h702zso2711W+5YvkMBYQ48B6aPIBWHFdb7cGxFy0XtYWhYV2FR8TtlorqhLF9IVcd+PnUNQ
	grT9vzVKvCXGdSRSTz4FMN/idUdn9GVttBMr4Ja7Uuy8sjMNOmboVCAv6rDmSdcpRknOQQRsF8kg9
	iQDyb9mZcIxA6iRVNR2GdHw3mY08ObEYvfee9RGLSwyO6VT9Gy6K5FMF4+haDBAGu3XXAhQ7Htj6x
	PCRxahQvER86gVax/iMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imGYD-0001ib-4d; Tue, 31 Dec 2019 12:23:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imGY4-0001iA-5m
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 12:22:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81DB0328;
 Tue, 31 Dec 2019 04:22:51 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7ED693F703;
 Tue, 31 Dec 2019 04:22:50 -0800 (PST)
Date: Tue, 31 Dec 2019 12:22:45 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20191231122245.GA35523@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <AM0PR04MB44817F7C0FB0E6D417823B4A88260@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44817F7C0FB0E6D417823B4A88260@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_042256_260785_8D48395C 
X-CRM114-Status: GOOD (  13.86  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 02:50:40AM +0000, Peng Fan wrote:
>
> > Subject: [PATCH] firmware: arm_scmi: Make scmi core independent of
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
> > We can now implement more transport protocols to transport SCMI
> > messages.
> >
> > The transport protocols just need to provide struct scmi_transport_ops, with
> > its version of the callbacks to enable exchange of SCMI messages.
>
> Will there be v2? will this be used to replace smc mailbox?
>

There's a requirement for virtio based transport too. I need to do
a thorough review once I am able to gather the details. Feel free to
add SMC based transport based on this patch if you can, you need not
wait for me. I am fine with the approach as such.

Also I was waiting to get some feedback from Arnd or Jassi.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
