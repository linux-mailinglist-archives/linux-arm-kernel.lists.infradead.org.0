Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB87D6418
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCptJL6RfqyBE/H7HnPuLzqQzzkDVSyvGeV4ZiGSUDU=; b=Ui6V7cL74NJM1k
	DO80FnZoa9lwmjnaoRvlbvIW6mXY9pGcX1jKzmrCXDt6ERnpYEHoHq1Ffq+jcTOxV8VA2CMNcG8D3
	rUNM4WB17Oo40ZgbE55k4CHFngl1Z2eQjOBLpFJvlQMSd00fd3akOV9aaRtrCZttu5qYBZOt2G789
	r4bUe9tb5X+dqzUdPvI9zEjTKOh8pKAXKJ4VusimWSq9KPeHo0q1Kw26fcZ5XC7/FndDEKcCOVol0
	s+TSASw4x56fjKBgtTMK6ucrs22Yg0bISviKDRfPZkzJ30KdAj34Z7U2SMW7exhkZ20OyBlsIaIIu
	+NwlWwpT/0pDVMPI1gFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0PC-0007UU-Qs; Mon, 14 Oct 2019 13:28:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0Ox-0007Tp-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:28:44 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7060A2089C;
 Mon, 14 Oct 2019 13:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571059722;
 bh=CAm8zW5inzbYaWHEeCfVVgdSVCH5SeXwDQrybfSLhKA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0LsPuoiJakTOMFOIiAD0SBSlgzGP2BbHn1mxoAWD5f8k99wvQyhnOI/fHOIhVkB3o
 BlaNow8ZZMs/SgSqn9QJeZ550LfW4U2n8iTHwQip/P0aKpc0DYvGLcAN7qBR8STrLy
 BVD98LDByuLS809OJNLCVBTtxRtIJ3VDxs8A61rw=
Date: Mon, 14 Oct 2019 21:28:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2]  ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM
Message-ID: <20191014132823.GZ12262@dragon>
References: <20191008173813.24941-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008173813.24941-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_062843_126337_EE695BED 
X-CRM114-Status: UNSURE (   7.65  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, jonathan@marek.ca, cphealy@gmail.com,
 linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 02:38:13PM -0300, Fabio Estevam wrote:
> Since commit 2eba69071b4b ("drm/msm: Remove Kconfig default") the
> CONFIG_DRM_MSM option is no longer selected by default on i.MX5.
> 
> Explicitly select CONFIG_DRM_MSM so that we can get GPU support
> by default on i.MX51 and i.MX53.
> 
> Fixes: 2eba69071b4b ("drm/msm: Remove Kconfig default")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
