Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BA815CFA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deF/KrZziOS3IvwD4B4ofWQ89USwurlSGrb9ZfuBy3E=; b=HY75di1357tD5F
	XH3t1O3W8cg6Eui/guPD15ds1aPQdIzBHkoWQqqe0FaWmZB6JrwyBVaoi9yfhIWW9qvA2hSUj5tBy
	dzRe7dTVlGliSxgpHYZd65sGAjKlkXlZ6tUiXMV/6VRObb/dwkYYZdyFcoPWjIt9HrelxdGmmFk5n
	w1nJufOmdq+FO09rPemMEAhSrTyu6SxT5gjHiaiO3onb0RcPOmsSj9PmrJ5nuSl8xT/E/U2l/Cqmp
	wds78aMj1NMc3iNI++++ny275HP5Ujeu1GJMuKI96TnWnf4L2+EIXcm8XpuxZVsoJdWkAn1G92cND
	6kKFZiT9CVYnhNB3X3GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QKX-0003VI-P0; Fri, 14 Feb 2020 02:03:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QKR-0003Uo-Ji
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:03:40 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8913B20848;
 Fri, 14 Feb 2020 02:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581645819;
 bh=PXIEywVAbxMfZAcdMiOuENxyJypjtAebdyybM1EEUHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u/9qYx2vjm0WX87vOdGYm0u1V8gxRo4H2Jnbq8QO1rV0zO4hYh5x1jwbEUK4+hXLy
 RFuktIkmNS71r2hC+FCB03rYBQdD3vZWyS5NR+3xsFLcarucTn4aDQIfoAXmCR8sGB
 dOk5IUFZ4AsZ86IH/K5t2hFX0DWDSyL7WLEkqxY0=
Date: Fri, 14 Feb 2020 10:03:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] soc: imx: gpcv2: include linux/sizes.h
Message-ID: <20200214020332.GB22842@dragon>
References: <9e4549b47f0872a6a670d07b513f452c33f26501.1579524316.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e4549b47f0872a6a670d07b513f452c33f26501.1579524316.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_180339_668769_63DB7F47 
X-CRM114-Status: UNSURE (   8.01  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 02:51:28PM +0200, Leonard Crestez wrote:
> This header is included indirectly on arm/arm64 but not on x86 so
> CONFIG_COMPILE_TEST breaks. Fix by including <linux/sizes.h> directly.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
