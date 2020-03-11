Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFCC18130E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xF3hCE0cD7aRZzRc7tepspdTPX/riF/J5GDjBXGdovw=; b=L+F/aCMbdx5Enp
	54Y8S82awC+4kpLk2tFPZXzFFhE9cCgxvDYLSgxDT1A+HBr8yRhbGp2VxBDGQiibMCkKqTO7DjLJ4
	ldulWt5nOGICJOCSPA93JTBzLdPJpYGVfHrc8cJOXOycEH6eoh/cHl7nRaa77N/bdACQZ/Sg6wV3Z
	+0xaPens2+iw7xclDh1T9hYpiumZlr++FSorf1SUG8O2t1edpp5uuDIlbJrDxEAzWZ7XwC1Y5EDkj
	FhkLLXKCww8NisO3eKi7iwsy9Q8GdESEZx7AorIq3LLt3S+RTDdFkXBMV6DbzphTB/Y6KT0NsePnv
	foIf2AA7tel8uNdOH6yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwpa-0002Nw-BA; Wed, 11 Mar 2020 08:35:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwpH-0002NQ-90
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:34:52 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E216420828;
 Wed, 11 Mar 2020 08:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583915691;
 bh=MXW2z5LPp0WQucUkJT7tI/HgnXFy6BLbj6K20XcMANg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r8TBtGrwq/ozgqTAaonxpvDixFBdqsY1wNC8Bk1qH6SheUDDFmbU3oHSYgPWjgVjP
 MSWROiFHvc2W+1Rcnq+ClqGiGBoVRv8HPIIPSkK8qiWTkypgNUHMDIEyd3kIDAKnUa
 IfKVPWLEV7xr8WkkdxNmmTX0e1PSQgj6x33ArmUo=
Date: Wed, 11 Mar 2020 16:34:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: lx2160ardb: Update FSPI node properties
Message-ID: <20200311083442.GE29269@dragon>
References: <1583217512-27994-1-git-send-email-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583217512-27994-1-git-send-email-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013451_340918_5D05464A 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 12:08:31PM +0530, Kuldeep Singh wrote:
> Update fspi node compatibles of LX2160A-RDB to "jedec,spi-nor" for
> automatic detection of flash.
> 
> This also helps in fixing below warning:
> spi-nor spi0.0: found mt35xu512aba, expected m25p80
> spi-nor spi0.1: found mt35xu512aba, expected m25p80
> 
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
