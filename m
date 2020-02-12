Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1698715AFBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 19:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jth6K/JDOyJ/lZUWA8sHvcyBXIWWYg9+BlljiTbbTto=; b=C/xz6Wr0SdN/mN
	cVBsfGedFqhjM8UsKQLdaPPxyC8TgCLcHd/vg8RkdBuk69qn4l744aoqCxa1XUb03r8EvtHrvjfb2
	oeHB6CdDTzUdVFoKb1Nk545qvmwEP6EnyXBwwIh3nyxm/hFPz3mRdhx5XYmGX8JZ4u9te1NBmrh1Q
	nCachjSDAr9oRG7PbDJKVEAWnXa1Km069c92OZ1/myrR2hZtb6uT2b/5WnNcyGvkVS2C9Gdl0NUEU
	yESEaoaaTQ6wWubgKZ43O/yTakYbCO3Dgzr2Ye0cQouDaFr9vTxe4U5u/iqU7rdpH6xD0PPtwqooC
	V6nIjLfWmTIroD1LkR6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wjG-0000Db-62; Wed, 12 Feb 2020 18:27:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wj9-0000Cf-Li
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 18:27:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 276DF30E;
 Wed, 12 Feb 2020 10:27:10 -0800 (PST)
Received: from localhost (unknown [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB8D93F68E;
 Wed, 12 Feb 2020 10:27:09 -0800 (PST)
Date: Wed, 12 Feb 2020 18:27:08 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
Message-ID: <20200212182708.GA25105@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-2-ionela.voinescu@arm.com>
 <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
 <20200212161045.GA7475@arm.com>
 <ade32e03-b56b-7c5d-628d-124e52279d34@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ade32e03-b56b-7c5d-628d-124e52279d34@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_102711_753929_1CC80EDC 
X-CRM114-Status: GOOD (  21.50  )
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
Cc: mark.rutland@arm.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 peterz@infradead.org, maz@kernel.org, linux-pm@vger.kernel.org,
 Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, mingo@redhat.com, viresh.kumar@linaro.org,
 lukasz.luba@arm.com, catalin.marinas@arm.com, will@kernel.org,
 valentin.schneider@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 12 Feb 2020 at 16:24:42 (+0000), Vladimir Murzin wrote:
> Hi,
> 
> On 2/12/20 4:10 PM, Ionela Voinescu wrote:
> > Hi Suzuki,
> > 
> > On Wednesday 12 Feb 2020 at 11:30:44 (+0000), Suzuki Kuruppassery Poulose wrote:
> >>> +static int __init set_disable_amu(char *str)
> >>> +{
> >>> +	int value = 0;
> >>> +
> >>> +	disable_amu = get_option(&str, &value) ? !!value : true;
> >> minor nit: You could simply use strtobool(str) here, which accepts:
> >>
> >> disable_amu= [0/1/on/off/y/n]
> >>
> > Yes, this was intentional as I wanted "disable_amu" to be a valid option
> > as well, not only "disable_amu=<option>".
> > 
> > If you don't mind I'd like to keep it like this. Currently the use of
> > AMU is enabled by default, and the most common kernel parameter to
> > disable it would be "disable_amu". Allowing "disable_amu=0" is just in
> > case we change the default in the kernel to not support AMU and we'd
> > like platforms to be able to enable it. 
> > 
> 
> Sorry for jumping into thread, but can we avoid negatives into naming which
> accept values? If is always tricky to get expected effect when both are combined.
> 
> If value doesn't really mater than can it be just "noamu"?
> 
> If value does matter can it be (per Suzuki) amu=[0/1/on/off/y/n]?
> 
> Or can you postpone introduction of "just in case" option till that case happens?
>

No worries, thank you very much for the input. I'll change it to
amu=[0/1/on/off/y/n] for clarity.

Thank you,
Ionela.

> Cheers
> Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
