Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAED717E54C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vX/PA2EfaqJxDh47jFOXnYwtrQRjyvbxQpOPSaVeaWg=; b=BSFl1HlV+tSCc5
	Om3yvHBtXABMyvO2/TnSo+iyoescHUGcco7pNlLOsILaY93KFpFaqGK6+t9NQqQ1ecMcuPMUvMvyV
	h2KLfPIt2QO90DkiJF4wrsDGRq92lOdXzELJJckN3QDhFpMco4/LIGm6XUqsy6KUF2pGoRmGqWXmm
	x/Kme5MlmRJT0wA8mfvcl/N9bWXEIu1al2y1YHsIvylupJgiGy/HwM0TaotJpdicYshDnx1DdXtv5
	XMs4s4OJjYrpO0uvTu6WQjbPlcVByN+bsP4v1QGn6zCSX5d9Ok1oq9dZFVLvh6OcI42zvN+fiL0+b
	fAz7zeV4Rv47DjAeBlYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLqA-0006TB-8D; Mon, 09 Mar 2020 17:05:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLq2-0005Zr-Ot
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:05:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6CDA1FB;
 Mon,  9 Mar 2020 10:05:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0F0363F534; Mon,  9 Mar 2020 10:05:01 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:04:59 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v6 06/18] arm64: ptrauth: Add bootup/runtime flags for
 __cpu_setup
Message-ID: <20200309170459.GC4124965@arrakis.emea.arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-7-git-send-email-amit.kachhap@arm.com>
 <5ea176fe-fe96-34e4-e7ad-0f0b4514b97d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ea176fe-fe96-34e4-e7ad-0f0b4514b97d@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_100510_859185_06438587 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 07:07:19PM +0000, James Morse wrote:
> Hi Amit,
> 
> On 06/03/2020 06:35, Amit Daniel Kachhap wrote:
> > This patch allows __cpu_setup to be invoked with one of these flags,
> > ARM64_CPU_BOOT_PRIMARY, ARM64_CPU_BOOT_SECONDARY or ARM64_CPU_RUNTIME.
> > This is required as some cpufeatures need different handling during
> > different scenarios.
> > 
> > The input parameter in x0 is preserved till the end to be used inside
> > this function.
> > 
> > There should be no functional change with this patch and is useful
> > for the subsequent ptrauth patch which utilizes it. Some upcoming
> > arm cpufeatures can also utilize these flags.
> 
> Reviewed-by: James Morse <james.morse@arm.com>
> 
> (this will conflict with Ionela's AMU series, which will need to not clobber x0 during
> __cpu_setup.)

Thanks for the heads-up. I'll fix it up when merging the series.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
