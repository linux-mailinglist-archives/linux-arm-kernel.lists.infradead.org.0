Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58287A4E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD+N+9mPVo6mbZmQ2BhFPAR+BbIvs6M3ciX32ItDNs8=; b=SVtPuWHJuiHcjj
	B+2RSyujZDl7HCRmqJDZRQe9E/H4S80mKNOPEG1jkxY0HvvxBWeebeMQosJz+jem3HXFZYfxtgNw5
	VNDVoDPBLJhVlCNwQvleeWaZpxRiFUsnzas1al1O2nDUhhQv9FrzFUPCNTVRnxXkXK9QLVc9TS6AO
	bGtqETknzbUcJB8LHOcCpW1sewa6ymC8YZtyyiTBeOivamM5GSo04lupaofGPCcM7CjpRQFlnFbJh
	71roY0OQxA7fn11oc0fPd5X9X8FtN8NKLVDHpYEyY+d1kC9Pmcuukm3mj4ZQdELs/RoT/qFY5GMcT
	o+yqgJPtCkMM+cEnGglg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOeR-0005GS-Dk; Tue, 30 Jul 2019 09:42:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOZq-0000Du-AM
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:37:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F385920882;
 Tue, 30 Jul 2019 09:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564479469;
 bh=xpK0ZfPmYJ3fWD3eFkqOXdgjBfalS0zMMYn9nNn8F9Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zRQ8Umi6JQtOxbLZ9L2UYOWPniPq7irgZXl8ucJJnpv8ShrBDUiBazonF2iFf9hes
 uuzVcsSAE49t3lFOtISrwhhkQHogbs/ZNQCrG5s0k6h8Co2uwHvMy69hWeIvCq1210
 2KCOiPU12U1KZwYANr2/deL3h+4lz7c6bHqwmL6A=
Date: Tue, 30 Jul 2019 10:37:46 +0100
From: Will Deacon <will@kernel.org>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] arm64: Replace strncmp with str_has_prefix
Message-ID: <20190730093745.nh2wps2iwmrdf6al@willie-the-truck>
References: <20190730024415.17208-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730024415.17208-1-hslester96@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023750_517987_D6B99C45 
X-CRM114-Status: GOOD (  11.40  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:44:15AM +0800, Chuhong Yuan wrote:
> In commit b6b2735514bc
> ("tracing: Use str_has_prefix() instead of using fixed sizes")
> the newly introduced str_has_prefix() was used
> to replace error-prone strncmp(str, const, len).
> Here fix codes with the same pattern.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  arch/arm64/kernel/module-plts.c | 2 +-
>  arch/arm64/mm/numa.c            | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

I can pick this up for 5.4.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
