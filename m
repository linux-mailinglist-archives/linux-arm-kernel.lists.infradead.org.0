Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB183112A72
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:46:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3JrSahIEqrygoeCB7BQ1yJM4QF64RPrAxpDVYotg4c=; b=XnkVM081q9PauE
	e54HAFn0+Vm28yO3SAHdLrjO+ykZqsaq7CHhDUiPdRiq/xk+YysOCboh41oY5U26ZOW9FYTCW62Hg
	VR2NtFavq9sBaHZ1tS/OGjHdUfjcaQzUIOK+bmjEy/Uhtcig7Tbx7opsTgwZa+ikd6oJZ8qefExcx
	1aj3nYLL2vvVyVxJJKWcsq8bnlgtvBL7UQRVMZlP2/2IhUEcu86qdm4X7kfYqTAed2ySok4K1S4zh
	u8W64gTW6UFjeWbIKyORcCN2LTGuoZn0nzqIiLXWDk3WnPKtbhlHuJj802rTN8V7xl4penEFXR3a4
	S2bbxpkssFw+S8n9SJVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT7G-0004Qp-IN; Wed, 04 Dec 2019 11:46:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT78-0004QV-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:46:39 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 929E520659;
 Wed,  4 Dec 2019 11:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575459998;
 bh=V26k6HsD1nixUB32P4f+4z9XjZdT8aoymMi71o/bVnM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pFhWIgjAPWwELxQU/Q74H4fauAO3rgK4UqB3y28MAbNCXf1PdNqyQ9yPYBLKBMJZv
 s3aOxPLxrNf+q8qvbpyPtWVQntv7Gqn7nM38Tp4BWqmC08bRaSBdzBpHjOAYJaMZQ6
 TYLrCrPqwLvsq0Q2IUwyCQvTWs2h7kkEwyxdvK5M=
Date: Wed, 4 Dec 2019 19:46:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: e60k02: Pass the memory unit address
Message-ID: <20191204114629.GJ3365@dragon>
References: <20191108143936.7746-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108143936.7746-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034638_889075_FF3CB9BA 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andreas@kemnade.info, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 11:39:36AM -0300, Fabio Estevam wrote:
> The following build warning is seen with W=1: 
> 
>   DTC     arch/arm/boot/dts/imx6sll-kobo-clarahd.dtb
> arch/arm/boot/dts/e60k02.dtsi:51.9-53.4: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
> 
> Pass the memory unit address to fix the problem.
> 
> While at it, also pass 'device_type = "memory"', which is recommended
> for memory nodes.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
