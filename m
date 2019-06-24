Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471B84FF37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5lwbYknj8IbuUKbGgkye87DhIoy4X2P0qsYkF9HiOw=; b=Tk2zC0rV6OTDwv
	UNKPS2vfQrlIH4V9jW6CMynG6/zI52R21c2x7NSzYbhFaWoX19Ry+z/H1Ui2rVkGrRsciKCV0ReZv
	oaB928neBp3KHwwidfr+/ZAOfmmc07V4UXe8Un7du9EdwqBlsbG4n7avQwYB2pg+eFAOB7qrPzB6/
	SAJbItJNlx3bUJ/rz5wiJjWYnvQ3X78VeaExr6GhDO9BKNAuuNmYqXeTjjspv4kMPz3oDFHTGZ8cz
	8ycf0Q4v6juLx55U0IUP3uRGWLZuyHwAZ3bbqJFlx/XFpts+0L5AiU02S2GjrVO4zlrKSs7Y+WSPZ
	LKyf0uYym66IMQeffV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEZ5-00083i-PM; Mon, 24 Jun 2019 02:18:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEYg-00083L-Ro
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:18:16 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87AB120674;
 Mon, 24 Jun 2019 02:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561342693;
 bh=257F5fxJKWLetwl7yOwDez+PdfcDjnS/2ElB4GNJgGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PJAjRz9lILz/xQ1VLh10zL0/rpq5WmV7WyaW6EtDdSODNn9+GsG9GMRE5PVkDsUEO
 jFnKpHOuquZWgg+hjU9ZKjUlBWlvwC87BAeFWfiA8O6DwbcXunIecKSXdJtnMaWGuX
 M+57Ztvo19r3SI7NUYL9ZqS+58XK1sZTMtVsiDKs=
Date: Mon, 24 Jun 2019 10:18:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as
 module
Message-ID: <20190624021759.GM3800@dragon>
References: <20190621050603.20392-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621050603.20392-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_191814_917525_1A7B835E 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: enric.balletbo@collabora.com, maxime.ripard@bootlin.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, dinguyen@kernel.org, jagan@amarulasolutions.com,
 olof@lixom.net, leonard.crestez@nxp.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 01:06:03PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module to support i.MX8M
> series SoCs' power key.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
