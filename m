Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8AEE3699
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rL1EFR1RyTAeh9+jVX/PsOVs20Zh2vOE36/PSxqDXKY=; b=aJ5nQ+zSjEkPyf
	ckQk7dookEBNB4BZFJDO2AvtVrun4WxmQi7dpyxQ+6pZPNSLU53A3nrr/wPTQILtMZf9es2hKS6lV
	mCv+1wdF9+uJx6u0rKxrlNGGfaF9QKeD8pSLs5itCaFFz+Po+2I3xrpBI4vYya1XY0diTEbdPtOfZ
	2pclKbxDurErMIoJmVDxlS4e5w3kVtkO8OPPyS5sC4QBdXq13gr9V//QkPJ4EJDC6glnn4LEiC67T
	U6LyZGTKfH4KgUlivQJVEeIah1WEKFImPJ3VCkYG3b5LtMHqSuRfx6NCs6eeHbJ9WLZeCmWSBBf0H
	BoTJNGJZS1+IhXENM+Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNf0h-0008QO-DB; Thu, 24 Oct 2019 15:26:47 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNf0V-0008Pe-39
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:26:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6950031F;
 Thu, 24 Oct 2019 08:26:24 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 66B193F71F;
 Thu, 24 Oct 2019 08:26:22 -0700 (PDT)
Date: Thu, 24 Oct 2019 16:26:16 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 02/13] dt: psci: Update DT bindings to support
 hierarchical PSCI states
Message-ID: <20191024152504.GA11467@bogus>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-3-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010113937.15962-3-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_082635_178994_BF9F9816 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:39:26PM +0200, Ulf Hansson wrote:
> Update PSCI DT bindings to allow to represent idle states for CPUs and the
> CPU topology, by using a hierarchical layout. Primarily this is done by
> re-using the existing power domain description [1] and the domain idle
> state description [2].
>
> Let's also take the opportunity to update the examples to clarify the
> difference between the currently supported flattened layout vs the new
> hierarchical layout.
>

This looks fine to me. FWIW:

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

But before this gets merged, I would like to add another but "the golden"
example Qcom *always* referred during ACPI LPI discussions. Ofcourse, it
can be addition patch and if I get time, I can write this but no promise
ATM.

Hierarchical Representation:
System
1. SYSTEM_RET
2. SYSTEM_PG

	Cluster#0
	1. CLUSTER_RET
	2. CLUSTER_PG

		Core#0
		1. CORE_CG
		2. CORE_RET
		3. CORE_PG

		Core#1
		1. CORE_CG
		2. CORE_RET
		3. CORE_PG
	Cluster#1 (ditto)

Flattened Representation:

Core#0
	1 CORE_CG
	2 CORE_RET
	3 CORE_RET + CLUSTER_RET
	4 CORE_RET + CLUSTER_RET + SYSTEM_RET
	5 CORE_PG
	6 CORE_PG  + CLUSTER_RET
	7 CORE_PG  + CLUSTER_RET + SYSTEM_RET
	8 CORE_PG  + CLUSTER_PG
	9 CORE_PG  + CLUSTER_PG  + SYSTEM_RET
       10 CORE_PG  + CLUSTER_PG  + SYSTEM_PG

Though we may not implement everything needed to support this, but
we must ensure we don't have to end up in a situation breaking backward
compatibility trying to support the same.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
