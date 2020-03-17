Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1515187EDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EszENBUm0PjFdzMMgIZ2uG/XfOVxyIhEzSs0YXtGpsk=; b=hMl8mgKeBlvaCy
	gLPV07inXDkqg3AoY0E1WDQA5bHmTKvezqwbhtMOPAEzRwuU3brmuloZ/BWVwZ6OY7Q6lZABftTLt
	rubYmA2H6RLKz2czr1TsXDyTd0bJmcCOix3zJmIOleexcqf003QFnsB1hw/rM9Ls2DJmQNnrvGMeU
	JWfBStuVWBo5DJdo7ZS/AHloeHSPjge/bh7lzIyPPeS7TXBp40eF/W2J5lDzY8s/R0ctnDn2hsOeW
	KHOztS5iceaqBpcsKjZ4+Zxru1ekSUy7TtQOGQ4gA/qRuEqxvCZB3vqMIBIw6PUDi1tzSe187uu/5
	nD1LNUy9izLDE3eS0gDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9tm-0003hd-HE; Tue, 17 Mar 2020 10:56:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9tf-0003h1-2P
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:56:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AEE81FB;
 Tue, 17 Mar 2020 03:56:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FEF83F534;
 Tue, 17 Mar 2020 03:56:29 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:56:27 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v4 4/5] arm64: Remove CPU operations dereferencing array
Message-ID: <20200317105626.GF8831@lakrids.cambridge.arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-5-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226002356.86986-5-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_035631_156385_0300B242 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 11:23:55AM +1100, Gavin Shan wrote:
> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
> much memory has been used for this. Also, all CPUs must use same CPU
> operations and we shouldn't bring up the broken CPU, as Lorenzo Pieralisi
> pointed out.

I suspect there might be some pre PSCIv0.2 platforms where the boot CPU
doesn't have PSCI, but others do. On those platforms, this could be
because CPU0 cannot be hotplugged out, and we must avoid doing so.

Can you check the in-kernel DTs to see if any of those exist?

Other than that, I agree that mandating uniformity is the best approach
here.

>  int __init init_cpu_ops(int cpu)
>  {
> -	const char *enable_method = cpu_read_enable_method(cpu);
> -
> -	if (!enable_method)
> -		return -ENODEV;
> +	const struct cpu_operations *ops = get_cpu_method(cpu);
>  
> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
> -	if (!cpu_ops[cpu]) {
> -		pr_warn("Unsupported enable-method: %s\n", enable_method);
> +	if (!ops)
>  		return -EOPNOTSUPP;
> +
> +	/* Update global CPU operations if it's not initialized yet */
> +	if (!cpu_ops) {
> +		cpu_ops = ops;
> +		return 0;
> +	}

As above, I don't think this is quite right. If we're going to mandate
uniformity, we should init the ops from the boot CPU, and then verify
that every other CPU matches that. The initialization of the global ops
should not be conditional.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
