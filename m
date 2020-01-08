Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8864013492A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN9GmXEIX/j7BjSRb7u3hEvD2ocEGj3/7/oJhZ6pbDI=; b=QHCchWajjNgPA9
	ch3wH06tm24YrePfNzf1vFu4PDTIEQXEt6aK/qNbihy5IKH2ZV66+15deGZUmrwIwVhc04Uq0DWOi
	b10ncEddiNcvhjJam3nVOLQTfMjqwl6WR9XybmlpJBppqxxD3JkKOpXjkY2E7Mmpl0sLaMZPGktUa
	8nUWS1hjaXfex2OYtY9E5mLy1jEuSLxMpt4i7k4yfrJi5th5LIi+7znkTIocWZAHSHzHZcbCGLEyK
	fzCL5DUXyBbIJPd3fgnbXmtWsAFU/CrWZOAAIlcuG+2Pw0sKNrilnFlhKS9bAve67aMgvRnFJy19F
	Ndf4rt41nfBV6atHaNPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipF18-0001U1-Rw; Wed, 08 Jan 2020 17:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipF0l-0001Kl-GY
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:20:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74E9E20673;
 Wed,  8 Jan 2020 17:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578504050;
 bh=VUJyfEn1oIGV5ncv+GS+aMRdkD4TGPu1zkqDR1v4rbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yZWfWD9quOsNiyIAjRRvw2SSTTkRmzZF3bh01BcTUU3xGwcz+PC5il9yI6tLjIlhr
 YH02L5v9mVg6uQ/j3y1kqVnrrtn/nR9RIUlzlbXOhMrtFh9HS6cJ2gvTpX98mYxkXC
 o5mskfOOwxKIZ1/Luu+Fhjd8407Jm8L7sG8fJFbA=
Date: Wed, 8 Jan 2020 17:20:41 +0000
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, robin.murphy@arm.com
Subject: Re: [PATCH v4] arm64: lib: accelerate do_csum
Message-ID: <20200108172040.GA20541@willie-the-truck>
References: <1573006806-12037-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573006806-12037-1-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_092051_612901_5D8B72A6 
X-CRM114-Status: GOOD (  13.44  )
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
Cc: Lingyan Huang <huanglingyan2@huawei.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 10:20:06AM +0800, Shaokun Zhang wrote:
> From: Lingyan Huang <huanglingyan2@huawei.com>
> 
> Function do_csum() in lib/checksum.c is used to compute checksum,
> which is turned out to be slowly and costs a lot of resources.
> Let's accelerate the checksum computation for arm64.
> 
> While we test its performance on Huawei Kunpeng 920 SoC, as follow:
>  1cycle  general(ns)  csum_128(ns) csum_64(ns)
>   64B:        160            80             50
>  256B:        120            70             60
> 1023B:        350           140            150
> 1024B:        350           130            140
> 1500B:        470           170            180
> 2048B:        630           210            240
> 4095B:       1220           390            430
> 4096B:       1230           390            430
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Originally-from: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Lingyan Huang <huanglingyan2@huawei.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
> Hi,                                                                
> Apologies that we post this version so later, because we want to   
> optimise it better, Lingyan tested it performance which is attached
> in commit log. Both(128 and 64) are much better than the initial   
> code.                                                              
> ChangeLog:
>     based on Robin's code and change strides from 64 to 128.
> 
>  arch/arm64/include/asm/checksum.h |  3 ++
>  arch/arm64/lib/Makefile           |  2 +-
>  arch/arm64/lib/csum.c             | 81 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 85 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/lib/csum.c

Robin -- any chance you could look at this please? If it's based on your
code then hopefully it's straightforward to review ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
