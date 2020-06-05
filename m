Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BBF1EF57E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwQ/8MtbcgcoYBGsd/4GBouCpw6iiAneq8e6D+GKwwg=; b=jei0WL+HCUC026
	p3MXrawjVyDsHleYQNsX9QLhhX3yIPR8Ii+22/HqAD5cFsOOIng3ySqagxBKTkpQiYtIdzGaHatoD
	LcW+ynROtA5rxNtOMdBb33BsAPcc53AqaKkCzDi+KjYyePESzCD2upN1Kp7CCV/UJQYo2dc+3OOs2
	FQO0prGy/Xq3h580DDGnMoZl6LyPbOaQFQu7q/6/+ty7KeIAboOPwV+1oFUaatEpETWaLKGbTaFci
	wDIpMNIEOumS+OfoCyVaxk0JUsW4pLfp9R5UfF1ZAUZxj1zeNbjnK+8T5fPV/TypJBt+LjiHmMCfI
	dlydRdMjkXVwUpUc+QZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9j3-0003iw-U0; Fri, 05 Jun 2020 10:37:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9iw-0003iF-FX
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:37:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 574262B;
 Fri,  5 Jun 2020 03:37:16 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.11.98])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 880453F52E;
 Fri,  5 Jun 2020 03:37:08 -0700 (PDT)
Date: Fri, 5 Jun 2020 11:37:05 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Wooyeon Kim <wooy88.kim@samsung.com>
Subject: Re: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside
 kernel
Message-ID: <20200605103705.GD85498@C02TD0UTHF1T.local>
References: <CGME20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d@epcas2p1.samsung.com>
 <20200605073052.23044-1-wooy88.kim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605073052.23044-1-wooy88.kim@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_033718_565666_FE7CD17C 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: hk92.kim@samsung.com, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, yb.song@samsung.com, yj.yim@samsung.com,
 Julien Grall <julien.grall@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 jinsoo37.kim@samsung.com, hyewon.ryu@samsung.com, yhwan.joo@samsung.com,
 Anisse Astier <aastier@freebox.fr>, Marc Zyngier <maz@kernel.org>,
 Allison Randal <allison@lohutok.net>, dongww.kim@samsung.com,
 Sanghoon Lee <shoon114.lee@samsung.com>, jihun.kim@samsung.com,
 Dave Martin <Dave.Martin@arm.com>, hyeyeon5.shim@samsung.com,
 Kees Cook <keescook@chromium.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Wooki Min <wooki.min@samsung.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>, junik.lee@samsung.com,
 sgun.bae@samsung.com, Jeongtae Park <jtp.park@samsung.com>,
 kgene.kim@samsung.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 dh.han@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wooyeon,

There are a *lot* of people Cc' here, many of whomo will find this
irrelevant. Please try to keep the Cc list constrained to a reasonable
number of interested parties.

On Fri, Jun 05, 2020 at 04:30:52PM +0900, Wooyeon Kim wrote:
> From: Wooki Min <wooki.min@samsung.com>
> 
>      This is an patch to use FPSIMD register in Kernel space.
>      It need to manage to use FPSIMD register without damaging it
>      of the user task.
>      Following items have been implemented and added.

Please introduce the problem you are trying to solve in more detail. We
already have kernel_neon_{begin,end}() for kernel-mode NEON; why is that
not sufficient for your needs? Please answer this before considering
other details.

What do you want to use this for?

> 
>      1. Using FPSIMD in ISR (in_interrupt)
> 	It can used __efi_fpsimd_begin/__efi_fpsimd_end
> 	which is already implemented.
> 	Save fpsimd state before entering ISR,
> 	and restore fpsimd state after ISR ends.
> 	For use in external kernel module,
> 	it is declared as EXPORT_SYMBOL.

This patch adds no in-tree modular users of this, so per the usual
conventions, NAK to EXPORT_SYMBOL().

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
