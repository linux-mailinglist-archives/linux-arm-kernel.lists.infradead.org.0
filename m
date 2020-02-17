Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAEE160AA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlkUXhLCi9oUyHex+MnIE6D+tpuhBwvwTRiV7/drhyA=; b=bMbXBeqwMjJXGs
	Hl+jHiBmWtjH1XPjZSQ3S7Mzh9sWFVnLE059T9DuW6CW2DPT+2ZILyKTzJKZolrIna0XxAzLTmmIr
	gKPRsbKWeNeW21zM0uWr5t78FsLmJmYv4cjFB4OKb2Ul7DMInCLlMF9+XO7lmhH9gVIHgfcXl/bdm
	qtgxYgTcZ6yvv/xha7e/SGaQU5WprlH/cWdORdaFD7/99fwxu6mmTiidFA0Fzs8BDpEbin44gxkdD
	1BPNLu9Pmapt7e75oUgMdKfrBnUQJjtgZ2AxudicZocqWosgCZPwx9yBQqthrlABu6Yp3LMnc0d6+
	o2ZPVjarYCQJOCjl7hqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a4u-0003Hd-7M; Mon, 17 Feb 2020 06:40:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a4j-0003Gz-GK
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:40:14 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60CFD20718;
 Mon, 17 Feb 2020 06:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581921613;
 bh=XFbjQAOOfnfE2Onndj27WEPC9SLmDo0RD9R/ZAv1n6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJkD00LqMFzKgk55zcNGVoXFPnVegA9h72nTYmRW2Q44M+Y4NJ8PTH70J6CrFIacj
 wXrgbN9WD2CbDfxc17MKYRmhLsQK1KW+JjPxmNRPM+QPEJy+zfhicWBmPZHXuhuwf+
 /i8/fNHrfBWBuOi3cpb4HkSZoJLmqzT4z2K49F6k=
Date: Mon, 17 Feb 2020 14:40:08 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2] ARM: dts: imx: use generic name bus
Message-ID: <20200217063959.GE6952@dragon>
References: <1581563878-26388-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581563878-26388-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224013_568275_66B8485F 
X-CRM114-Status: UNSURE (   9.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 11:17:58AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per devicetree specification, generic names
> are recommended to be used, such as bus.
> 
> i.MX AIPS is a AHB - IP bridge bus, so
> we could use bus as node name.
> 
> Script:
> sed -i "s/\<aips@/bus@/" arch/arm/boot/dts/imx*.dtsi
> sed -i "s/\<aips@/bus@/" arch/arm/boot/dts/vf*.dtsi
> sed -i "s/\<aips-bus@/bus@/" arch/arm/boot/dts/imx*.dtsi
> sed -i "s/\<aips-bus@/bus@/" arch/arm/boot/dts/vf*.dtsi
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
