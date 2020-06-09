Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828ED1F3788
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQR7q5BOdYDLs8tr3TX/g3zYadWIzRwQL+n/B/7mn7s=; b=HfoQrXmgZOx8yi
	xg8ziJegf+my/PlAAxdRSbO7b8Hh0qmcESP2RdTZfZmro1+V6FALmDz1lIv3msyX8vy7jqrA0UqBQ
	1iqLR3HwtDCahj6HOZfxtZu+uJyH+9RxwhzBZMSuS1IFDRkhHz5+uoLrsiJEXPD65TxgBE9GzzZZc
	56qht7+t+OEIX06PSY9+HligrkFRvbsPao+UR/rEbntDGsjMcfUGOyQFshpgbS1JW/zYefOWwsZXM
	bHasY0ax0bJCA+KFqhc5zOVPCj9Byya3txpx+/JoaT5lr/nAdisjxfNJvFKVfPG7+IRFTlx9TUvhu
	hbcEOO+nZ4Z6DunQml/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jib5B-000476-Sz; Tue, 09 Jun 2020 10:02:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jib55-00046n-Hn
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:02:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4281207C3;
 Tue,  9 Jun 2020 10:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591696927;
 bh=RWvA/egJNR2+v+decCg83OM5wqAsGNKdFJYEQrto1Ko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XIcI0NI+m3Pjb85pqODykVVez33oYrBxREtDzx9VHafhVBXgYKb5O/aikGDsFfPoc
 zSseZqs9tVcsqIM64LZUeAvqkvNq6sl1xzQ71o7JmNsjFYS/EccVc6dl0m9A0m1H6F
 /mwkx4/Ff5TOtMdku7bDdhvbFRbQJqy95rN53zoo=
Date: Tue, 9 Jun 2020 11:02:03 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 5/6] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200609100202.GB25362@willie-the-truck>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_030207_608049_D01F6C7C 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:17:37PM +0100, Dave Martin wrote:
> Add documentation for the PR_PAC_RESET_KEYS ioctl added in Linux
> 5.0 for arm64.

[...]

> +If the arguments are invalid,
> +and in particular if
> +.I arg2
> +contains set bits that are unrecognized
> +or that correspond to a key not available on this platform,
> +the call fails with error
> +.BR EINVAL .
> +.IP
> +.B Warning:
> +Because the compiler or run-time environment
> +may be using some or all of the keys,
> +a successful
> +.IP
> +For more information, see the kernel source file
> +.I Documentation/arm64/pointer\-authentication.rst
> +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> +(or
> +.I Documentation/arm64/pointer\-authentication.txt
> +before Linux 5.3).
> +.B PR_PAC_RESET_KEYS
> +may crash the calling process.

I might be misreading this, but this looks like the kernel reference appears
mid-sentence. Regardless, I think we should drop the kernel doc reference,
as I mentioned on the SVE patches.

With that:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
