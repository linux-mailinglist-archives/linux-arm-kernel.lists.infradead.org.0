Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C005688E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 14:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58W0a8gi9sIKyWIlnjHsYz9yvKRHM1ydWBHZDH6BCY8=; b=caB+oJgHrbk+VY
	CNK3Wvh85CTcaDwvygbZy1iiSRiavI6NwUsrdESt84Ll38tm9XH8wOcj/wDksNufCqp4XwBwORFoW
	A2zwtbG6woW9fDvPF3QVxoOGMld927UKrs0eTATphlzBerwvSHy64D8GgVRrcOfDwCONgm6B+2fMR
	ClVEPxzW9vI9ZgFEPaM/ANriZYMEoCBjXORem449TZS+DR1GB5m09hk2rkaTybTCTCYpR88KqHIN3
	suCBy5FXpYldRTL6g1kwGFgE6ReaIpTxabtkPnJh7ArDVhKb/CPDIgS+3R9cvymuKZlMbCj5MX5uk
	PYg31wW8bbxLWgKWm8mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6wF-0007As-Ao; Wed, 26 Jun 2019 12:22:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6vl-00079e-Q8
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 12:21:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54F0E20663;
 Wed, 26 Jun 2019 12:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561551701;
 bh=bzzuAsJFpALlF09800RIXkmFifwZs/0LsYp0Xdjf7lA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QG5wNuPmjrSNBSjDiSSCgTZlz/8TXSmjSfBQaTeh2HpKuAucc31EfN0oweUcEWWTz
 UaVUE0sG5oMoB6F/Q9kYiwXqsgOhR5khCwluVydKxhPDnfDZ8gt0iSrFYKL9djGBt9
 HPnxRmX9CVEVhrUeI27SI6mVupT9IPj5JYfKqL2E=
Date: Wed, 26 Jun 2019 13:21:35 +0100
From: Will Deacon <will@kernel.org>
To: jinho lim <jordan.lim@samsung.com>, catalin.marinas@arm.com
Subject: Re: [PATCH v3] arm64: rename dump_instr as dump_kernel_instr
Message-ID: <20190626122134.fg7s6di5o3d3gim4@willie-the-truck>
References: <CGME20190626115016epcas1p455530417de86ea2e72ce1b389ae57a75@epcas1p4.samsung.com>
 <20190626115013.13044-1-jordan.lim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626115013.13044-1-jordan.lim@samsung.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_052141_860411_F3A6F624 
X-CRM114-Status: UNSURE (   9.84  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 andreyknvl@google.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 seroto7@gmail.com, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 08:50:13PM +0900, jinho lim wrote:
> In traps.c, only __die calls dump_instr.
> However, this function has sub-function as __dump_instr.
> 
> dump_kernel_instr can replace those functions.
> By using aarch64_insn_read, it does not have to change fs to KERNEL_DS.
> 
> Signed-off-by: jinho lim <jordan.lim@samsung.com>
> ---
>  arch/arm64/kernel/traps.c | 23 +++++++----------------
>  1 file changed, 7 insertions(+), 16 deletions(-)

Thanks, this looks good to me now:

Acked-by: Will Deacon <will.deacon@arm.com>

Catalin can pick this up for 5.3.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
