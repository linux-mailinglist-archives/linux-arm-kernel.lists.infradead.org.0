Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8751C01C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEy7Rj5VYTOri9RPvkOuY1Fptdts3HY/2c1XLmUeq1E=; b=b1ePWSf1Wx2wOO
	VbvfwsdsqevyS/QfgTaz9WzPkeQSJweIzLgwO67g7GaM2nYexd8THJN1nVUQPUuKwCPUi1VdswrBq
	lGqIFEPgHmEMwhMPz4CfZ3a44sPPMxVPs1tAXWc7aOVWZDmLyrzr9o3jTiC4NJhS05+ol9ovjMGCR
	kE3Z5i7M4btVBDj6RGX6VIRVUxGfMIJJMN2V662bnp1aNsy6OQqFqDG7NCA697U7wdL0oszWImdyc
	gYWyV55FL1shTXUDxH1dbNBOK5jYMCqaaUuhoS4vMrlsSOvXd6Wt7XLo0lpc+/QQdgXR72Z//hq8K
	1npGKzet40S4MQmLvr2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBkw-0003ck-2Z; Thu, 30 Apr 2020 16:09:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBkj-0003c9-6z
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:09:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F8C320775;
 Thu, 30 Apr 2020 16:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588262972;
 bh=r/iZ/ACtDDImq1DylZtdIeixMKUgzwer84XJj3ATOII=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aiFJ0XD1fLfjJ9034IuQo29241bs9BEG42V84VnmUDzlMwsR3BujtJ/LAjm+5RJa8
 3ohSoAfHqJwCQOZAzldvBYuftcxLnD6fpByo4gpKL+DscJdlYZxw0bG72qMMIaQE2+
 NdjcY/cKvhJP2AJzGtVfQUNEdOLI52lorPkPaw+w=
Date: Thu, 30 Apr 2020 17:09:29 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200430160928.GD25258@willie-the-truck>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428172433.48830-4-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_090933_274960_07625C9C 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 06:24:33PM +0100, Mark Brown wrote:
> In order to allow probing of PAC and BTI instructions without more
> specialized support recognize them as NOPs.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/kernel/insn.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index fd77cdd87c47..82afc582d29a 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -57,7 +57,27 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
>  	if (!aarch64_insn_is_hint(insn))
>  		return false;
>  
> +	/*
> +	 * The PAC and BTI instructons are not strictly NOPs but until
> +	 * better support is added we can treat them as such.
> +	 */
>  	switch (insn & 0xFE0) {

Are you deliberately omitting XPACLRI? If so, maybe add a comment to say
why, since it looks a bit weird without it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
