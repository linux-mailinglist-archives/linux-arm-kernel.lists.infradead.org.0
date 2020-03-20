Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF12118C905
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 09:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PLUZvnRHZac0Jsq/wa+YHK5DxWbhE82ZMY8hq9pa3c=; b=S14BCPB/0qXBUA
	kVlfPo4kJV0SHZdwc4VDY0DTPELBMnOw8KittbuLYq8yN4P8rCy+xNRamGVKzmjupB6LryGnWSXUo
	15GuxhomZ6JJc7aEggeZ5gkDqIYZjeQBDqdrvP+7DN9yNLNjl1nKkUtSnzencEsamZoM/neeB7bCH
	y2CloGMm6KKKvTmaaamIGlGYWu7uO5hSlllNNzdAv03O5vsvoNvj7zU12iU31ruP2u/Cm1onQPuq1
	43Z21/Ot4JyONq4Ve7NyZrZFkUE97AjsZk8ewNkHAapWzVXEubh0xsyHq8OvVhsl1efIne9rogQ7Z
	IjCG05JYBkEydOhMVA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDAc-0003qu-BB; Fri, 20 Mar 2020 08:38:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDAU-0003pw-14
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 08:38:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D9B730E;
 Fri, 20 Mar 2020 01:38:08 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CE2B3F305;
 Fri, 20 Mar 2020 01:42:09 -0700 (PDT)
Date: Fri, 20 Mar 2020 08:37:56 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Message-ID: <20200320083756.GA12067@e107533-lin.cambridge.arm.com>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_013814_114041_C4E4E1C6 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 08:27:47AM +0000, Peng Fan wrote:
> Hi Sudeep,
>
> > Subject: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
>
> Are you fine with this patchset? Or You expect multi channel support?
>
> We have some features depending on this for long time, so hope smc transports
> could be finalized sooner.
>

I have applied these patches as is, yet to push it out. I am waiting for
my v5.7 scmi PR to reach arm-soc next before I update my scmi branch. I will
let you know replying to this thread once that happens.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
