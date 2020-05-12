Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E681CF694
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhxQqLI1+uSafZvQ2KfoAytJibOWrbvrjsyG73YxbE4=; b=HQnWsMon9IXc/z
	fhRTdtJup8TR58jzWhFk0NHwzb9X4eqfQR60bhH7EOwSl+3d6A2bXZqAmQYU00OmqAcp5KrI/V0Pw
	FMACMFOUWBw8QKAmYfeYW2SK6YErf0AU+EURSjsT5o08Tx9Jgq8ID0lSk3cpwXsGo+2z4Huw2yGXb
	//AwNA5hUKM85SIMURPKmOyTU6DUqD94xfSRjNLVyC4bGOEsJSs9S1NadrScqPLYqNUwLe/Q1OY3R
	Dy9RwXw9JRbP0S3zb8u1C6v97lqlN06wNhMg6PXe29N/jYI7waJTHpE5sM9MXt9EvtZPRLmGxLbdm
	TLBlkhS1Sa1LjbdF5M0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVdv-0007Cs-7S; Tue, 12 May 2020 14:12:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVdd-0007Ag-Pa
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:12:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E1B4206F5;
 Tue, 12 May 2020 14:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589292725;
 bh=CXVcGy0r5V76DjIUep1E6c2r1ywoTMY1xMhHTd3xo7E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nf8pWzxiuwt2dwHad9Lk+gIThZ3yQSFyc76cjfDnA1Y8whchAW5/75evHqGirqsRw
 3x60E+22hbSGx47b2l4A2GB51ea7ZIOeOgaTXnP2dpUm6Vv8roxpOy1jpBdpLQmv23
 7+OZnoznGKW44AyGa64W2szoj1OUD8P7HHrjARoY=
Date: Tue, 12 May 2020 15:12:00 +0100
From: Will Deacon <will@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: cpufeature: Add "or" to mitigations for multiple
 errata
Message-ID: <20200512141200.GD3021@willie-the-truck>
References: <20200512124238.28792-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512124238.28792-1-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_071205_855529_C5233FB2 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, May 12, 2020 at 02:42:38PM +0200, Geert Uytterhoeven wrote:
> Several actions are not mitigations for a single erratum, but for
> multiple errata.  However, printing a line like
> 
>     CPU features: detected: ARM errata 1165522, 1319367, 1530923
> 
> may give the false impression that all three listed errata have been
> detected.  This can confuse the user, who may think his Cortex-A57 is
> suddenly affected by Cortex-A76 and Cortex-A55 errata.
> 
> Add "or" to all descriptions for mitigations for multiple errata, to
> make it clear that only one or more of the errata printed are
> applicable, and not necessarily all of them.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  arch/arm64/kernel/cpu_errata.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This seems to conflict with the other patch you sent to reorder the entries.
Please can you send another version, based on the arm64 for-next/kconfig
branch?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
