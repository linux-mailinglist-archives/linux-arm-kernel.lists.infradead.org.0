Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85205186156
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LdbmjyLdM9jKYZ+GPhD59rqOo6Auue46L6uku0PGf0=; b=OnFz/lsOwcyC5n
	ivMOgwCOjDNC3jIJqZsuDt9NYbHmyktYnk5SnUW5D/jl8vWf3pGQ/U286wyAUP3gwCKSppgsjq+Yt
	NymZKnxFtd6PJMQ5E0pUE5PSrduoIU9Dy+XpW8FYCYoFY//3nvoAEXtYvc+NEZYzXz5cK9/Sn0fBm
	aeB9h6XIFqyRSh6fDClBu+zQScO4v9o0O4/4bvcbBXL8yB3c1gCpTmWoqC2WVbY1LwUhLc7L6YPnW
	JDRe/+K7ONTNw0zJIHmjfM4IfWqZZJznUrVi5H53q+23HFHndsOZy2HVD4M6jYv8hgV8udhrhmJ75
	CzirtXCSap2Cpcovv/qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDedC-00062l-Nt; Mon, 16 Mar 2020 01:33:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDed4-0005uE-J8
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:33:19 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FA1620663;
 Mon, 16 Mar 2020 01:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584322398;
 bh=P3cq495tgq4ifTa5c3/W4DsSgs2FTFImzz2EA50xynQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RbDdyxp8Vw+fAjuRuSXRETN9asPjzSbPamvOhRaCdYDkv1uNJNavCulyvyzGxhxrX
 2FoA7v3UucbIVQuqCgYBDFA2kWKnC3S242PGHi9nFiRgUDeeaMNVEzik8xl1GhGmd2
 m4jN0TNrzroKXpf/A3auRmq0hP4aPYXsC/hj3GQ0=
Date: Mon, 16 Mar 2020 09:33:13 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v2 00/15] Enable drivers for NXP/FSL QorIQ arm64 boards
Message-ID: <20200316013312.GQ17221@dragon>
References: <20200311225317.11198-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311225317.11198-1-leoyang.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_183318_653588_3E3CA51F 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 05:53:02PM -0500, Li Yang wrote:
> The series enables necessary drivers for the QorIQ reference boards
> supported in mainline.
> 
> Li Yang (15):
>   arm64: defconfig: run through savedefconfig for ordering
>   arm64: defconfig: Enable NXP flexcan driver
>   arm64: defconfig: Enable QorIQ DPAA1 drivers
>   arm64: defconfig: Enable QorIQ DPAA2 drivers
>   arm64: defconfig: Enable ENETC Ethernet controller and FELIX switch
>   arm64: defconfig: Enable NXP/FSL SPI controller drivers
>   arm64: defconfig: Enable QorIQ cpufreq driver
>   arm64: defconfig: Enable ARM SBSA watchdog driver
>   arm64: defconfig: Enable QorIQ IFC NAND controller driver
>   arm64: defconfig: Enable QorIQ GPIO driver
>   arm64: defconfig: Enable ARM Mali display driver
>   arm64: defconfig: Enable flash device drivers for QorIQ boards
>   arm64: defconfig: Enable RTC devices for QorIQ boards
>   arm64: defconfig: Enable PHY devices used on QorIQ boards
>   arm64: defconfig: Enable e1000 device

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
