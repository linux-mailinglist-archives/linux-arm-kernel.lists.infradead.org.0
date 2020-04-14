Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1171A82C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bvyzl0Q0gMB/L/qXpJ0sEGLnRyVkASQI7QmtTtEEmMQ=; b=ImAc/3Ixl4oSMV
	jpEiSoOxS+0wSt7wnMFFqXqiphKEbmRG4kOKmeQrUFda7NHiwNnYb2xX9KmV+jfhNM9yt12/UYGev
	RWePhndkQ/YOfh3hG+xRoI9eqR4ZuTNMushUkiD3cVEqZIErNNQ2yN5PEHYYzDdgJT2LhTlmzNJNM
	3Xuf5ykrJ/7AxucVbmkiRrhKRCZvsGCzxQHDgUDdpKVkD/cHRhs8cO/m1VHByXWJmWFHMI6czvXS3
	IOYFVPWIMZp7YMmUxbzRx7WbPkoAm+0sMDUuCmQB4qkh/oeJvcxsURvoxmMDoPDAb1e7ec6mWrDaz
	TxlBTuKzQ2g+adTdwspg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONWr-0005yh-TC; Tue, 14 Apr 2020 15:31:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONWk-0005y3-DJ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:31:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09153206D5;
 Tue, 14 Apr 2020 15:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586878266;
 bh=FDbXs02yBVwiimfHdd8tYnRnaYhvYHwOhXmf9MUIIHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j4v+Y49GJSWqGWT9u0+1WZaj3blXyMFsXodA8V7yrzDr/aTBtzFNmI5TyCF7zz9rn
 wnXcj9RFYFrMUjTVUxfS7v26Rs5n5DDTrdzFwPdtY23GzeWBud6WoUJKvA/M5jttOF
 isbwMKXEf4hCpKNtKB0Z9SmnrhBsF4nvY/vwqsKA=
Date: Tue, 14 Apr 2020 16:31:01 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: drop duplicate definitions of ID_AA64MMFR0_TGRAN
 constants
Message-ID: <20200414153101.GA30759@willie-the-truck>
References: <20200414134706.8435-1-ardb@kernel.org>
 <20200414135857.GH2486@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414135857.GH2486@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_083106_470223_5DB1A767 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 02:58:57PM +0100, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 03:47:06PM +0200, Ard Biesheuvel wrote:
> > A bunch of ID_AA64MMFR0_TGRAN_* constant definitions appear twice
> > in arch/arm64/include/asm/sysreg.h, so drop the duplicates.
> > 
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> 
> Whoops. Looks like these were added in commit:
> 
> 4bf8b96ed3f7e114 ("arm64: Check for selected granule support")
> 
> ... and then duplicated along with all the other registers in commit:
> 
> 3c739b5710843621 ("arm64: Keep track of CPU feature registers")

Thanks for tracking that down, I was worried we might have messed up a
merge conflict and potentially broken something else at the same time.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
