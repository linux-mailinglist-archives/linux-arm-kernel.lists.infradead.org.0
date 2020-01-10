Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A6313762B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdrC0myWb9t6dwCKyKgy5SUMQWW2W95Y70l1cN0HjBE=; b=qf2dQbEcOfmPUa
	yNB+w/mcW1N8lXKxK0uEgOmuIdLyHl5d7Ads6C6vNymiR2pAtMSej+xfx04M1emo2OW5aGApr/wIy
	72WScqi0GXb0Y4o1EcBzWhUJUHJ5fO1WWr/Pf4MYJ5Gi6R3Fw0v9qcbjGxkN9MD996vzhdBYhZOhN
	zgH6+4wYnN4rhHH4tpUWdyoE97iv/KF4ebwWlW7wAZXHtxQlK57ENx+yYxQJQkctu8jD6iE8r0SEG
	PnKCACrl5exBZh2Eq1Rr5JNxqF+15w51L/TL2Gz+fhof76b1eo7tEpqJ7QyNz9S1ZjdPrsiA6me8o
	26ui6Ed3karmzVyR7OTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipzBj-0003Uz-1B; Fri, 10 Jan 2020 18:39:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipzBZ-0003Tz-TJ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:39:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D1CB30E;
 Fri, 10 Jan 2020 10:39:03 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFBA83F6C4;
 Fri, 10 Jan 2020 10:39:02 -0800 (PST)
Subject: Re: [PATCH] arm64: Remove __exception_text_start and
 __exception_text_end from asm/section.h
To: Prabhakar Kushwaha <pkushwaha@marvell.com>
References: <1576917150-31678-1-git-send-email-pkushwaha@marvell.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0f509e84-b3f4-6c85-84e9-374a719c1042@arm.com>
Date: Fri, 10 Jan 2020 18:39:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1576917150-31678-1-git-send-email-pkushwaha@marvell.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_103905_983703_9A3B70B7 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kamlakant Patel <kamlakantp@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On 21/12/2019 08:32, Prabhakar Kushwaha wrote:
> Linux commit b6e43c0e3129 ("arm64: remove __exception annotations") has
> removed __exception_text_start and __exception_text_end sections.
> 
> So removing reference of __exception_text_start and __exception_text_end
> from from asm/section.h.

Oops. Thanks for catching this.

(please run get_maintainer.pl, you missed both arm64 maintainers from CC!)


For what its worth:
Acked-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
