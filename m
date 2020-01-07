Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEF3132924
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeLCL+0/oNoNTKGwt1G/Q2cvALtEV4SLqMdBKVM3K80=; b=I4T8DkC1M/6GsN
	SA30P8EMZBPCXsHDAN5o1CZJY36eIKEi0h8cLZAt760BEc01uLrqiGScaWDLr+SDpliGL6HYj7fPA
	zty6115Uoe7qr1HjZZv6/n/rmsHsrng2e7cfEQ7xaQ2iR/M/CyiC6r43at0AkMGpS3H8EgtN1BrYl
	4wsQFRu9rutmMHXOP6Cf8j8rTqctFwbFCyDh3GAZflpOlc51R6xr/6xHvzFmvUPyy7rBna7DlsuV2
	a+ezcSg0GavVd4jy+rFXtcjR10bm330RKNi8lMdT394mG3Zt0sr/+bbOK/oEVkvW+OkUbrBPgu701
	NIY7B06PRplGRhbhMbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioq5Z-0004pg-Qv; Tue, 07 Jan 2020 14:44:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioq5T-0004pL-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 14:44:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2A7920715;
 Tue,  7 Jan 2020 14:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578408242;
 bh=dp9/K+QZsBXq6qkp/mUHAuYGpZa+7eF8keSYoHbns00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kG9XWdSFa1I1bKvq0nu5aHatHe5IpjQ4GiiqRe5PMz6ciqhSSZInU4UqDfaPAWgnp
 BF4UsbIRu8ctp2t6jkSjHWXcqnMFLgVsq516/DJ0cKnb2pc5hhYPsfTkPLzS+ZUySo
 jZapndYCbQfrd4JpDCwjwWP5w2nz3noWneKoDlls=
Date: Tue, 7 Jan 2020 14:43:58 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 3/3] arm64: mm: Use modern annotations for assembly
 functions
Message-ID: <20200107144357.GA29001@willie-the-truck>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106195818.56351-4-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_064403_792222_D020EEEB 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 07:58:18PM +0000, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the mm code to the
> new macros. Even the functions called from non-standard environments
> like idmap have no special requirements on their environments so can be
> treated like regular functions.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/mm/cache.S | 52 +++++++++++++++++++++----------------------
>  arch/arm64/mm/proc.S  | 24 ++++++++++----------
>  2 files changed, 38 insertions(+), 38 deletions(-)

Can we remove ENDPIPROC after this patch?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
