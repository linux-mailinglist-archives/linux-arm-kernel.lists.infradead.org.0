Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D47FE409
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buf9Q+qZ1J9ESVkezhZQuj07sGbdEd/gQPTr9LXsBa8=; b=d4mDBS2Qj7xZhP
	4CNbXuuxFdVzqF9qFTOExddAToyNXsLKtwtl8pK9sIoaBESyqpKK6SM+gbNigvywvhAwsi1NsVRXq
	80URkTD5ijwJ4iDOIo/lw7ALWdf4f++oYTvciR3T3EGEBj5FYBY2RwyPjiZqhY/dg0zZDCb7vGiUc
	FP+p2f5Ly7k1fEMSNPjOLQwRdYTRRqNh/PajyEztfu3quvQicRSxCGC9n68ENYWFoiPVeDLA2MlGq
	HAUfdjYOKSyeWwg2CS3Sa8XYDNA/8S0qfXpS6OVMipCxYl5lwxf8utNoC5nPgF5VQHA4Ro6bY2h4P
	v+2vvkgEQc9F3UpOChuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVfT4-0003j6-KF; Fri, 15 Nov 2019 17:33:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVfSw-0003ii-58
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:33:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FA2C31B;
 Fri, 15 Nov 2019 09:33:01 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78B203F6C4;
 Fri, 15 Nov 2019 09:32:59 -0800 (PST)
Date: Fri, 15 Nov 2019 17:32:57 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 11/13] cpuidle: psci: Manage runtime PM in the idle path
Message-ID: <20191115173257.GF27170@bogus>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-12-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029164438.17012-12-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_093302_238239_ACBCA163 
X-CRM114-Status: GOOD (  12.48  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 05:44:36PM +0100, Ulf Hansson wrote:
> In case we have succeeded to attach a CPU to its PM domain, let's deploy
> runtime PM support for the corresponding attached device, to allow the CPU
> to be powered-managed accordingly.
>
> To set the triggering point for when runtime PM reference counting should
> be done, let's store the index of deepest idle state for the CPU in the per
> CPU struct. Then use this index to compare the selected idle state index
> when entering idle, as to understand whether runtime PM reference counting
> is needed or not.
>
> Note that, from the hierarchical point view, there may be good reasons to
> do runtime PM reference counting even on shallower idle states, but at this
> point this isn't supported, mainly due to limitations set by the generic PM
> domain.
>

Looks much better now with psci_enter_domain_state split as separate.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
