Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED321DA491
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 00:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E9Apyxt0+n8lrEeLxHurI4EiTMXiVsRZUX78aP3otGo=; b=oL6ijNgUOmkxtX0jkS0oCHLMgT
	gjOVo1TU84T0UV8pbjZMPmEM1kcuYO5cf2gSc9PuLVivRXDSOWJ+R6ksFppboyoIGtu6J7GzOdiJU
	50kOTxrjnTAsIYPOs7ZYhDPPI04AYHQzU4z2bEdqxkPqC97MF3nu78tBWbIsjOG8HFVZy0wY3+at4
	RncLGamVuIqXvvSaP358Pq3A+TLxVwqICq0gUBE8/Epcgm+mtUxgfbSQwz4RnUzW2ZYno5cP0St2s
	SSudCx41isNDexYG6Nvi4u+tNSpGeCdJll/kkhQ9W/HBWg36oZeUmr8SN7EJq/hEiH9/H5jQ8cc8L
	KYL3hOAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAk0-0001X3-Ki; Tue, 19 May 2020 22:29:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAjq-0001WG-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 22:29:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F318030E;
 Tue, 19 May 2020 15:29:28 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A10343F52E;
 Tue, 19 May 2020 15:29:27 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-2-maz@kernel.org> <jhj8shnr28o.mognet@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 01/11] genirq: Add fasteoi IPI flow
In-reply-to: <jhj8shnr28o.mognet@arm.com>
Date: Tue, 19 May 2020 23:29:25 +0100
Message-ID: <jhj7dx7r22i.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_152932_133361_17A80937 
X-CRM114-Status: UNSURE (   7.33  )
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 19/05/20 23:25, Valentin Schneider wrote:
> Tied to the following patch, does that want something like
>
> +	if (!irq_settings_is_no_accounting(desc))
> +		__kstat_incr_irqs_this_cpu(desc);
> +

And ofc after updating my inbox I see this has already been suggested, oh
well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
