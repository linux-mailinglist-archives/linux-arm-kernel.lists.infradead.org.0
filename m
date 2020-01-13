Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6547139084
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hyQm9p4P+PKburQSsgiReJu3/VaObLt+CTXGiKHR4U=; b=M5uptyyqL6Ylzp
	t3NKceB5qzYnWz9umgfptF6hyPcUGLrSNcfWieSp2mfcJGG3ZybA4P1lHSio5XJ/BCroMHq87cGp6
	8s+L2heQ4IvYz54TpPzAbVRIyMDPHHUJJkbvrMyqKV58aUuzuHtoXfj8pAzxSrez4OxLxO9SBFR5G
	k2wrO8SldEA2b02ppFeqziuyJ6b0eD/6wtgZbeGpSQRJcArdQtefy8JcYFgRVmPR5BhDDVxsyYASy
	aUFIt/trvkHlpmiIph02kRWxALxn77zoAEHgFX/q/RbkX6EdFqka7CL2dT42DYvM2s5m0BvCvdH/V
	IrDfHLeXz+4XbNhzSSEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyNJ-0006te-Np; Mon, 13 Jan 2020 11:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyN8-0006t1-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:59:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3203207FF;
 Mon, 13 Jan 2020 11:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578916745;
 bh=ZaqittxojRdQpyQTShWcK/P1n0iwYg6vwNYPAdhNK8s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KkBZz/O/aubAJVmPBTfx2RVKN70v2FvnrEzya+UC47yIzfzTY0WkiX34mCkh5fp06
 OEahDttuQwdUq8rCnDfKvDywcj40xvlCe5bF+1uCkijsxGEeKms+YlJRQtr8t55kwu
 BCbqYwq8inCCHbQMWQbrt7IEm6ioKhWzOrTE7FMU=
Date: Mon, 13 Jan 2020 11:59:01 +0000
From: Will Deacon <will@kernel.org>
To: Prabhakar Kushwaha <pkushwaha@marvell.com>
Subject: Re: [PATCH][v2] arm64: Remove __exception_text_start and
 __exception_text_end from asm/section.h
Message-ID: <20200113115900.GB3260@willie-the-truck>
References: <1578890502-13602-1-git-send-email-pkushwaha@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578890502-13602-1-git-send-email-pkushwaha@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_035906_267323_A8993EFE 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "prabhakar.pkin@gmail.com" <prabhakar.pkin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 04:41:52AM +0000, Prabhakar Kushwaha wrote:
> Linux commit b6e43c0e3129 ("arm64: remove __exception annotations") has
> removed __exception_text_start and __exception_text_end sections.
> 
> So removing reference of __exception_text_start and __exception_text_end
> from from asm/section.h.
> 
> Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Acked-by: James Morse <james.morse@arm.com>
> ---
> Chages for v2: 
>  - Added Acked and Reviewed by 
>  - resending with maintainers in CC

I already queued this last week, but somehow I missed James' Ack :(

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/misc&id=4e410ef96ce6c8d2e2b69d09ab5d44dc8d5352e4

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
