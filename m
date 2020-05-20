Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687971DA7EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaYXETW/tWmQKyiNAWY9PFdQz4W38LNyHugl4GULCeo=; b=E5Ig1VMJCbbJma
	qMpCOgS06ErA7wq/SnFVbih8xyv7j9YBKx5g0hXo/khs252AsPA78aR5Us9yM+mMLp5O/CWjkwCl8
	nHuUCJSXyeUGC8B5Xm947Zeo6Ex4ypkI6NdZSMhvmOqucZZwWcytssTKMuhIRr4kAWnvEIDg8J7Yq
	fIeQlq1+PsStI+FG/5FeUb/7aKP9U9HATbVRhovNr/FCV/B7OB2V1Qf+nvUvAxop25s7sEhNpvaVu
	jI0psdnIv3ap7NUyXTSIIgG+UcyLYQWyWtLML/W1w5OYpvkt3L3XtQLmAHynl+1g6uZoamdOWT9Ai
	z6mdGxDK7slH+G9p5hTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEMR-0007s9-96; Wed, 20 May 2020 02:21:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEMF-0007rC-G0
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:21:24 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77F1E2075F;
 Wed, 20 May 2020 02:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589941283;
 bh=mAwTctuHf09OxNHi2gNbrD3yitZssxXU6ldaR1VHUTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H+t/vJ9r4Rfa+vyqCdkuBONcR2LEcDmnDS+s8/5DkK1HAbvTo8nbX4oRmVxG26VMW
 sgR3xmNY4y5/0dmHkGdEXC/JWtRJlqQB/DmXbtsTkbqqpBpY+pdTuthH9l4d+e0UMh
 7y/30I4GQ+sQ7h8DNyrlUGIs+PfsxgqOCVeYB8Uc=
Date: Wed, 20 May 2020 10:21:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl: Use nvmem interface to get fuse
 data
Message-ID: <20200520022117.GR11739@dragon>
References: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_192123_559849_7241D61F 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 09:08:47AM +0800, Anson Huang wrote:
> Although ocotp clock is always ON for i.MX6QDL, OCOTP can be
> accessed directly, but since i.MX6QDL nvmem interface is supported,
> and fsl,tempmon-data is deprecated, use it instead of getting fuse
> data by reading ocotp directly, this makes all i.MX6 SoCs aligned.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
