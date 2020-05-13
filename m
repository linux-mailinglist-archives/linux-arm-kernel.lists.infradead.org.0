Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8E81D09E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 09:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73XFm/W1qT5+m5yddDSGHjb+/dz1HILAdIYsdVqIAto=; b=UJllstbE2JYkGU
	Y9zF7P0IYWDCzAWrLlPp7do9yAiBlhxSOLDc+YQqi70hSmK7bLoZlolGszTSp5NcImkEOtEAw8ZhS
	BxSMZsTzGC4LlgQ6dDIR0PqJIIcInd+yt0r0TEBwCXWG2ZTVkpSQj0/96V7+hVVMWNlE+lS+ZAItc
	JMebLGiDeZdrY4ydTUQPLc4ISNLYbyrPL3V1rSrXM/BEiZp9+r4C3wB3w7tM8N7vOR0pfPvuycyA+
	CKKRPQkcXBE+fHysHeJ6btlsvqEWnHMttrNb3sJ0JTpx0SQMKVOm2eMprSlLnW3h+WtOEhw6M5qHI
	I/CMw+08selsZRfbWtkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYllw-0007Ag-W4; Wed, 13 May 2020 07:25:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYllo-0007AK-H9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 07:25:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE215206D6;
 Wed, 13 May 2020 07:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589354736;
 bh=d2t7R4QJrDWoBwJ02LKHn8VL7euf7xXP4+pCOOTGAD4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KgJHmknkg5NaSi773FegHzNdz6RQpQ4pBfqjUQqEa9SlZZwygBreOdfzhDFCQsjp6
 GALb6nuTiK1OewBJERg2ZXQMpF8J8iM+OfjaVAuKZRSCq4tJELrrMmokzn2/DEbaqv
 iTQDmGRFdiPADLM800Ub93PuyyaLPqJkK+aEUyLg=
Date: Wed, 13 May 2020 08:25:31 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 14/14] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200513072530.GA18196@willie-the-truck>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_002536_591841_DF2F90A4 
X-CRM114-Status: GOOD (  14.62  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Tue, May 12, 2020 at 05:36:59PM +0100, Dave Martin wrote:
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index dd16227..7ea60e2 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -950,6 +950,46 @@ behavior.
>  A value of 1 indicates
>  .BR execve (2)
>  will operate in the privilege-restricting mode described above.
> +.\" prctl PR_PAC_RESET_KEYS
> +.\" commit ba830885656414101b2f8ca88786524d4bb5e8c1
> +.TP
> +.BR PR_PAC_RESET_KEYS " (since Linux 5.0, only on arm64)"
> +Securely reset the thread's pointer authentication keys
> +to fresh random values generated by the kernel.
> +.IP
> +The set of keys to be reset is specified by
> +.IR arg2 ,
> +which must be a logical OR of zero or more of the following:
> +.RS
> +.TP
> +.B PR_PAC_APIAKEY
> +instruction authentication key A
> +.TP
> +.B PR_PAC_APIBKEY
> +instruction authentication key B
> +.TP
> +.B PR_PAC_APDAKEY
> +data authentication key A
> +.TP
> +.B PR_PAC_APDBKEY
> +data authentication key B
> +.TP
> +.B PR_PAC_APGAKEY
> +generic authentication \(lqA\(rq key.
> +.IP
> +(Yes folks, there really is no generic B key.)
> +.RE
> +.IP
> +As a special case, if
> +.I arg2
> +is zero then all the keys are reset.
> +Since new keys could be added in future,
> +this is the recommended way to completely wipe the existing keys
> +when creating a new execution context.

I see what you're saying, but the keys are also reset on exec() iirc, so we
don't want to encourage people to issue the prctl() unnecessarily
immediately following an exec().

> +.IP
> +The remaining arguments
> +.IR arg3 ", " arg4 " and " arg5
> +must all be zero.
>  .\" prctl PR_SET_PDEATHSIG
>  .TP
>  .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
> @@ -1920,6 +1960,27 @@ are not 0.
>  .B EINVAL
>  .I option
>  was
> +.B PR_PAC_RESET_KEYS
> +and
> +.I arg2
> +contains non-zero bits other than
> +.BR
> +.BR PR_PAC_APIAKEY ,
> +.BR PR_PAC_APIBKEY ,
> +.BR PR_PAC_APDAKEY ,
> +.B PR_PAC_APDBKEY
> +and
> +.BR PR_PAC_APGAKEY ;
> +or
> +.IR arg3 ,
> +.I arg4
> +and
> +.I arg5
> +were not all zero.

Do we care about other reasons for -EINVAL, such as the system not
supporting pointer authentication?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
