Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B613C195B23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4akcVhD5vwiQov1qBK4laHttP2WRn35SBTaG5lneiQ0=; b=Z7lHdVHIFjcm4b
	SS2ahDzbiRUf+9YxhZ/06c//4tT9EMDjMS89xcdOkobQ6Dpniz1U0fFeyo1+UoN4X7NfRXkMUTKKF
	DA9iDYZJuxkybrdUU+XKJBfuhYgTXGF/cGIpjlCy0dP4mPs08SBSkG+s+qRLUUEGT8KKnTgZImTZw
	USrXwbIzrO+jIClGs2BUsad8EnmollLO7UzH64mqRRTyv2eaTXei+CrBwSZl0t8Cu2IlbVphoazOI
	Dg74b4rffHZ4/4Xsq+6y/ZKzHOMZadybrRyPGsuAWVq5GgoEw4KsSHzCrMIR77p17oGy7R/yOhbjl
	KgkfDwCd6zozE27KVjIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrv2-0003yp-KE; Fri, 27 Mar 2020 16:33:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrur-0003y8-Em
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:33:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7607D1FB;
 Fri, 27 Mar 2020 09:33:02 -0700 (PDT)
Received: from bogus (unknown [10.37.12.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 65CD83F71F;
 Fri, 27 Mar 2020 09:33:00 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:32:53 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Message-ID: <20200327163253.GA32313@bogus>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_093305_541248_CD415066 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

I applied these patches[1]. I also looked at multi channel support and
I think it should be simple. I have made changes and will post soon.
I would like you to review and if possible test. I don't want to break
the existing single channel, so please do test in your setup for single
channel itself.

--
Regards,
Sudeep

[1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git for-next/scmi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
