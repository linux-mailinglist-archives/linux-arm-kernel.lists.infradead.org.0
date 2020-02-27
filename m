Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C253017236F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFYP6vozNNjXb9Maf/OUl8rNSuCcocBMiNdyqw+fJfg=; b=SZDTWRh6N8l0OC
	SQZvNRPQ1dE9nb86ipcOabSDtCWi+kU3YgLI1+qsQyynRKXvrF4wy7PalPIFciZ64ndmLuVqvF3sl
	idnYZod17tiFIVEamUl73T4dEJt0q9xdr719W05lQ3fODlLwwWrSrxoK9TCZGEt2M3tB1Eb0YhDor
	G2pI6br7OvismJofKbFfUMT837B4u1ESj7qFLV58qLIlvTWiNlzZD89y0lFOTva7VK29/96T/D4Qd
	s3o8esio8r11Fhl7iFh+TmkGpMiEO95n/5/cixjL/UkaphvgFcjKHYetKtwG1Uc6sU1XE5F5/0NzR
	QjiAHyUPJsSsFNZTfZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7M5Z-00010y-3C; Thu, 27 Feb 2020 16:32:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7M5P-00010L-VG
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:32:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 554A21FB;
 Thu, 27 Feb 2020 08:32:31 -0800 (PST)
Received: from [10.0.8.126] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9BD7B3F7B4;
 Thu, 27 Feb 2020 08:32:28 -0800 (PST)
Subject: Re: [PATCH 0/2] sched, arm64: enable CONFIG_SCHED_SMT for arm64
To: Valentin Schneider <valentin.schneider@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200226164118.6405-1-valentin.schneider@arm.com>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <a1e02a5e-4d1a-7b25-b6de-a3cc556a3a1f@arm.com>
Date: Thu, 27 Feb 2020 16:32:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200226164118.6405-1-valentin.schneider@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_083232_051211_F8FE3D6B 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, qperret@google.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, morten.rasmussen@arm.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26.02.20 16:41, Valentin Schneider wrote:
> Hi,
> 
> Strictly speaking those two patches are independent, but I figured it would
> make sense to send them together (since one led to the other).
> 
> Patch 1 adds a sanity check against EAS + SMT.
> Patch 2 enables CONFIG_SCHED_SMT in the arm64 defconfig.
> 
> Cheers,
> Valentin

With those small questions in 1/2 and 2/2:

Reviewed-by: "Dietmar Eggemann <dietmar.eggemann@arm.com>"


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
