Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CB41E402F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aIXmvJm730ilxi7GX8fPQtcamXBYCOXZJbL+VWXF6I=; b=Zic/pqvxKt1Ix4
	7KLXxwl3XxlDZp877e0EDFwh0nfAi9eLWVr5Vu57Y0d7fbFQVBzdZBsejro0jBQv/vRupnMajXBDP
	cB5NsJDfGFQFJBolC6vyBqkCMeAOX9tacfyiDmPyQT11e9TbVt268ewKriM0JaG7XAu7BHxxgjopP
	TCbqr4iQu43Ea9BbV6Xp61T/fNijJPOqP53meJfwP8cSjxfwBqlOjBLJPTsPQda6gaaw2ljeWN8m7
	OmsHgWNvhm1HCXlUSRbL5rXJPSFai/jqt3HPdnCpN4ppvIt8+HY+tbk8V4waA2yNRF114D5N7B9bc
	KjATXNc6lkmiTqI4r6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduN3-0002aC-LF; Wed, 27 May 2020 11:37:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduMt-0002ZI-NK
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:37:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F4BE55D;
 Wed, 27 May 2020 04:37:06 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F6CD3F305;
 Wed, 27 May 2020 04:37:05 -0700 (PDT)
Date: Wed, 27 May 2020 12:37:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
Message-ID: <20200527113703.GD28101@gaia>
References: <1590573876-19120-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590573876-19120-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_043707_801522_3793D6B5 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 03:34:36PM +0530, Anshuman Khandual wrote:
> +/*
> + * get_arm64_ftr_reg - Looks up a feature register entry using
> + * its sys_reg() encoding. This calls get_arm64_ftr_reg_nowarn().
> + *
> + * returns - Upon success,  matching ftr_reg entry for id.
> + *         - NULL on failure but with an WARN_ON().
> + */
> +static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
> +{
> +	struct arm64_ftr_reg *reg;
> +
> +	reg = get_arm64_ftr_reg_nowarn(sys_id);
> +
> +	/*
> +	 * Can not really proceed when the search fails here.
> +	 * Requesting for a non existent register search will
> +	 * be an error. Warn but let it continue for now.
> +	 */
> +	WARN_ON(!reg);
> +	return reg;

I find the comment here slightly confusing: cannot proceed but continue.
Maybe something like:

	/*
	 * Requesting a non-existent register search is an error. Warn
	 * and let the caller handle it.
	 */

Otherwise it looks fine:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
