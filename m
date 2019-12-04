Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0942A112A06
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8seEQu/C3552csh8dqhaC3FV3Y0p9Ju8+ilk21FvQE=; b=QmdsvtSTLIrR0C
	WEu2CX5h+BxiD2W4NY3ZMfHapit+oK07/2IvzEw7cmnKjPj1zXozTgQYkUeIAziwbDj2DFIOc09H2
	LyktNEpK3CgqdDM4CeuzdRp/5XUVLcBLnKpNEWKc+mAoB/yBCkW2T1CmAy2GC+WUTzSMpxcyaBRm4
	hqHeZ5pYu/gaPs0sXVSlf3ayYzrwX5jwW6BsGrT9+XSQ2StknPnGKNitHvvR0AstWaWkPIQSXTy1v
	TwnFbViwtlISK29xDzsVyjb+R5V+fuQ/OGsGVtWvBkfLoPxdmapF9i11bDa2XWW5fBz9Eua5/N4KF
	ADBzAO6c2yFjI/9YK73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSjh-00023t-2d; Wed, 04 Dec 2019 11:22:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSja-00022v-CJ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:22:19 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 477B720637;
 Wed,  4 Dec 2019 11:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575458534;
 bh=ijCQMg+I4v9UZfD0SAZVzu/QGpOIi8890Lg3FWPILXs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gZYUif7wX9fDkbQbJPKpEjJq9IOAvAPmHuCMZ7cgMdf8sC8xuONOKcCCJiJq+fahp
 PnvPAPyD6gY4+FCfBSTGLdWOxK83AGTh/NPBxk5Mu0RX9EYxfhGpvh5yW0Zri63buv
 4ZgzCmzxh1ItBUQzn2QBDJ9q59WWz4QwMwWqaPwc=
Date: Wed, 4 Dec 2019 19:22:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8qxp: Remove unnecessary
 "interrupt-parent" property
Message-ID: <20191204112205.GF3365@dragon>
References: <1573097435-19814-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573097435-19814-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032218_434399_D4546D81 
X-CRM114-Status: UNSURE (   7.40  )
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:30:35AM +0800, Anson Huang wrote:
> gic is appointed as default interrupt parent for devices, so no need
> to specify it again in device nodes which use it as interrupt parent.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
