Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2659213C9C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9E9kSBhNH+Sx20eUFwiwgtWhmoCRsxYO29S+o/szGw8=; b=owE1W9WidojkJ0
	JjwMfQUTuuGKgFwpVtHY9ra5ZpfoNPo29yKAPJrwRIowYKUh11i5KSI1icd8d3LX2iIaUCze8KWTd
	FQB2GrNEhLE+Gxr6T0E6t89URq0x0mJUZCxZ2VCfUot1zwllGHKDi1Ese6cxwkyV33Zvi/14XezZL
	XsCxERAST9O/Y5jtFpz0aRBiZzF5KrPPUd4Q0RkMeRweKE56FmzORKxbUY1K5BKsQOLedbE1WS8C+
	v7LZf7iDS/9YzkoObncUdQbWe0GG0DNagz//Q3g6guiLlXMHiYJWP8sSeP4YTkboTfICRXrRKb4jx
	SYnJd8bRPDvbL0Og1qIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlkd-0002tr-SS; Wed, 15 Jan 2020 16:42:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlkS-0002tI-7n
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:42:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28E59328;
 Wed, 15 Jan 2020 08:42:27 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6342D3F718; Wed, 15 Jan 2020 08:42:25 -0800 (PST)
Date: Wed, 15 Jan 2020 16:42:23 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 02/16] arm64: rename ptrauth key structures to be
 user-specific
Message-ID: <20200115164223.GG3429@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-3-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-3-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_084228_332442_87C63FF4 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:04PM +0530, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> We currently enable ptrauth for userspace, but do not use it within the
> kernel. We're going to enable it for the kernel, and will need to manage
> a separate set of ptrauth keys for the kernel.
> 
> We currently keep all 5 keys in struct ptrauth_keys. However, as the
> kernel will only need to use 1 key, it is a bit wasteful to allocate a
> whole ptrauth_keys struct for every thread.
> 
> Therefore, a subsequent patch will define a separate struct, with only 1
> key, for the kernel. In preparation for that, rename the existing struct
> (and associated macros and functions) to reflect that they are specific
> to userspace.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> [Amit: Re-positioned the patch to reduce the diff]
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
