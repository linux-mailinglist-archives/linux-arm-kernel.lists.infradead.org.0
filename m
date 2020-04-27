Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618601BAF98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 22:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJrZDxC6E1ChI++zNu1vhNE/T8z1UnMUDOldaKIXo80=; b=bBRMVp4ChbdPEG
	UMQykmNK3c9RbZLyzTILStqTO5YwwWW9SxQo+B7Pymr82oY1dRyXdIZW9xUcr12M/nwsw1lDLT+rJ
	vsyTmwz+Pfx7apH3txs0S8rsiSjSE6uWtehqDDNqdHjvS3TzFQn9V+0+fQHRfNjlsOiy4Da1cdwUX
	9wtIVwV56hsq1UDjAllUhZH9MIYCZDcnZhZ2WVE6h6gFm//kCBUL/9JCrSHR+nvQ8SzWdeTp1JoiW
	sktf6gmbjBGGEZaYnRbj+x5EO0sMoltlSP1zxH23n0JalNciW5rstiVXlTz6BsE3Q09atorruD2Zp
	fevV/jeFr3lCXHkjKqJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTATV-000506-Qt; Mon, 27 Apr 2020 20:35:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTATN-0004zh-W5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 20:35:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BACBD206D4;
 Mon, 27 Apr 2020 20:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588019725;
 bh=2we4piQm6RXtzc92VmQx9m7gcP/Qwm9tg36B3RR3wKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VMGsl38+oqpUOKOg6Hm+cldt8xXI6t90CF1jFh0dLiQWBWDRa83onKcbYwOHXq4Ie
 NnaIvIArx1rzU7unmQO2CmxYunDV+YCEgwRgxeQYiZ5rA0NVIRbbtKPPrRKKsrJpqP
 egfQSoX1GrMx/3KwjunBGgMi4VWAmkZUNvRZTt8U=
Date: Mon, 27 Apr 2020 21:35:21 +0100
From: Will Deacon <will@kernel.org>
To: Geoff Levand <geoff@infradead.org>
Subject: Re: [PATCH] arm64/vdso: Remove unused makefile variable
Message-ID: <20200427203520.GA23186@willie-the-truck>
References: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_133526_053490_6CD7D87F 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, vincenzo.frascino@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Vincenzo]

On Fri, Apr 24, 2020 at 08:58:49AM -0700, Geoff Levand wrote:
> The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
> so remove it.
> 
> Signed-off-by: Geoff Levand <geoff@infradead.org>
> ---
> 
> Hi,
> 
> This seems to be left over from a code cleanup that missed it.

While I agree that this isn't used, I'm wondering why '-Bsymbolic' is used
to link the compat vDSO but not the native one. It seems weird to differ
in this regard.

Vincenzo? Looks like you added this unused variable in 28b1a824a4f44
("arm64: vdso: Substitute gettimeofday() with C implementation").

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
