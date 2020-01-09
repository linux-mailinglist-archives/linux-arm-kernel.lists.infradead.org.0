Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69802135356
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 07:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLtERtmR65xmfubJPrQt4XGb9cNXETWiWjK6x2TvPC8=; b=Wgahy0y19fGHdR
	vFTMv92yuDYH5voI7q8uhJE7QkZ84YUaFazoZXt1/AU2bAyQ+Kd2UIiukb3gciR91A197qwiOz6uX
	EkwwZ3338l0fVimN2UrtOYfLZs2VLTSVr8t0827BoNpiNIdcSueoo4Qqp5GywPf+wPZ4Lup9/lQiJ
	zxTSUJ+DXWimcOd5s4ZnbHo3e4vEEabMY1KfBD/AOixZVe6aeGJ9B6M4FBgLcPsJhMtvB8t9I+dPF
	XwjEvPwI6La4QZEhtwaVBdU5PXxjcHd6e+8i8h6Z9iMAzmuqW1wO5475saGrrLUK3OMvduu0ou7sX
	WKygxRcn9JEfHf1e38XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipRat-0003AN-C4; Thu, 09 Jan 2020 06:46:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipRal-00039A-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 06:46:52 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BB812053B;
 Thu,  9 Jan 2020 06:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578552411;
 bh=19YcMDA4WBHeH6PCdfHsxSkw/GgWp6s9YFgUGh1ANmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wic+lAvLvj6ykCtZHE98K7NMVGS43v5+N5vXgkoe26heTOIdR2VW7Ve8/dskGy79k
 MpaC/W3UywFFuzNbSkVpke0kuuo8ZlajP2kZytoMi7vxdzu8olFJGIrU0qmBAAKaDH
 JAsMWh4DzZwyyzCCNMU6U4zrzy2ubj6r0Ionq7EE=
Date: Thu, 9 Jan 2020 14:46:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 3/3] ARM: dts: imx6: phycore-som: add pmic onkey device
Message-ID: <20200109064644.GB4456@T480>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <20191129164859.15632-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129164859.15632-3-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_224651_729972_1F51A9A5 
X-CRM114-Status: UNSURE (   8.69  )
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
Cc: s.riedmueller@phytec.de, festevam@gmail.com, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 05:48:59PM +0100, Marco Felsch wrote:
> Without the onkey device it isn't possible to power off the system using
> the X_PMIC_nONKEY signal which is routed to the SoM pin header.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
