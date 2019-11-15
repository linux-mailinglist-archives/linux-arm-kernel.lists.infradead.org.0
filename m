Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429CCFE3B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cp9eWbdHrjXuJGGRX0mGFEPATxAxgZ4XOXuXRebInxI=; b=J9FJnHaNEuOWq8
	jMEdeT08E6PNpZrgoiy3wMDRCmpMeV6c3DzKBaT23dISGjXfgCfgPb/HFe2VAH7SYGKvMw+HfFb/u
	jnHKZ3deTo+I5ToYayAf8HGgnLd6QUV1mIHmjeUqgti0ZjSSyFnkngbibGIxp8dV7fTXTJ4oK7FjQ
	B+sdfchRmZjKAVUnz06sJyeEvJ+7RyOAfcIiR8Ar5+ZHbJtGeiOdh0et1U54RGhgt7+jU48Fk422I
	yDh/tFkK5+JId0Kdoh2FYXDXC9n+kk8foG/C94tk0/TqI0SdL9ZK88BKRsv/VsZvcbREIEiqV6/dj
	WR6uFiKRMo8SKkh8POoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVf9u-0001xi-7j; Fri, 15 Nov 2019 17:13:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVf9j-0001x4-Od
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:13:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6640631B;
 Fri, 15 Nov 2019 09:13:10 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 62B5D3F6C4;
 Fri, 15 Nov 2019 09:13:08 -0800 (PST)
Date: Fri, 15 Nov 2019 17:13:06 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 06/13] cpuidle: psci: Simplify OF parsing of CPU idle
 state nodes
Message-ID: <20191115171306.GB27170@bogus>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-7-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029164438.17012-7-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_091311_841641_5F5B3070 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 05:44:31PM +0100, Ulf Hansson wrote:
> Iterating through the idle state nodes in DT, to find out the number of
> states that needs to be allocated is unnecessary, as it has already been
> done from dt_init_idle_driver(). Therefore, drop the iteration and use the
> number we already have at hand.
>

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
