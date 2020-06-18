Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D701FEFCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zbsVJGTLuGKM7GtoVBkHMChPXvINq3z9sSJk9Zv5Zw=; b=X6dDr3dyKtVGAX
	BwHh7jq1GRSlo3C462sxb+KfRIfZcjsGrfys/HkofyO9o8IqA/Q60WvFbeNv2fWTPGmb5J/Q0L+32
	6VptmZVtxRkxVBcgDq6gshs4R4hg4xxFFRKXSnIOc5ygY3tMOUFrLpcGzQ7RQgORrkDWQ57A5lZdQ
	R04u36ys9BnyZo5JjqkLffkymY4zP1erN1cyRgLQHsUMDqIqU/bpa4alNJOdOO0Wntha4JtmEgCNS
	yBPsZt0bRzSNT147U3YMxeBXOKUXf97zgUWAWDzJbeg5L9PSMd/AO0m4Ar83GgyXwixH9r03sbk9e
	ujmXaP5cuksui1HHGhIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlryx-0007mY-VH; Thu, 18 Jun 2020 10:41:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrye-0007Ue-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:41:02 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FF432078D;
 Thu, 18 Jun 2020 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592476860;
 bh=d47JNBDZ8HjBsWecMHBNaWgIc0Y2d08em6JOHbbn70w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dvbhEaD338Bux0jtW8vZs1CQenKznloBU9gk1WfzE6BY/OvDUdSQFkoaG7MXg45Oe
 eUWHMMeP7KHvWb9bpr9T9HswneWAolWQQKBMhpZCRXVEc9Rx0dt2LInqYLJbuX3L/I
 mWutvlef6ACRmIOOpuD8P7meyHqJaj+5xBrUVkik=
From: Will Deacon <will@kernel.org>
To: Barry Song <song.bao.hua@hisilicon.com>, nsaenzjulienne@suse.de,
 steve.capper@arm.com, catalin.marinas@arm.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
Subject: Re: [PATCH v3] arm64: mm: reserve hugetlb CMA after numa_init
Date: Thu, 18 Jun 2020 11:40:48 +0100
Message-Id: <159247315562.10407.5629141346603814230.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617215828.25296-1-song.bao.hua@hisilicon.com>
References: <20200617215828.25296-1-song.bao.hua@hisilicon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_034100_941732_D3EC40F4 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Will Deacon <will@kernel.org>, Roman Gushchin <guro@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 18 Jun 2020 09:58:28 +1200, Barry Song wrote:
> hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> done yet. so all reserved memory will be located at node0.

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: mm: reserve hugetlb CMA after numa_init
      https://git.kernel.org/arm64/c/618e07865b74

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
