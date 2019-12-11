Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C3F11A320
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 04:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2Ja5cEd6TMetc51H278U9OXwxMDiLft+dgm3z4OMmE=; b=qoT4r4jVX2oH5z
	r+sH3XA/CySKWUe6P3Ciul1oBvdJ2AgLLWhgCbkPm2Nx8i1g4JMouoZlXRo8JsHKuRCDp66eYYq5L
	mKmw6wduE0caZAFL03OEcPrHDLHccoui61RVhiX/3tbPSN+wLIsIpM86tb1MT/HwOwWiq+9UvtZB6
	FpzXN+HV28IAHzwls7IGnuEp4b0uuRq+2ZijgxYk2GJz5Ku7CuOYa+sUFXWbwjac1rCBrx4lGYHmU
	zWn+4X3hIp+eVtTSwU1LcJQv85ZREf6hAkvvMspeEgrXlCYQRWkvNcmYWeN5mEyQ5sBK/T22oMvZE
	Yt1GXlHhhE8H50iH/mUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iesrl-0007Hi-AY; Wed, 11 Dec 2019 03:40:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iesrd-0007HH-MW
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 03:40:38 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 120C7206EC;
 Wed, 11 Dec 2019 03:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576035635;
 bh=7cmhNFa72+Abpr2QRYiJWiDvx2VS9NXXsn7cwvtgUAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jZ8kiR42kraUQ4UyigWOsa4wQ/GI7/5G/OLOd4Y0lFhgAY84c67OgdxABygl9D5Up
 QhAMMCMIjCq929l2JNxhnrdthWzPmS5iNNYJfiC/AbUVl+9XwrchF0SLiRe616CctO
 BlRCt5rG2LX3RHzeGfnidgJcf1O/3pye48WTpOOE=
Date: Wed, 11 Dec 2019 11:40:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and
 i.MX7D
Message-ID: <20191211034024.GI15858@dragon>
References: <1576032816-23373-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576032816-23373-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_194037_756832_05AE6C73 
X-CRM114-Status: UNSURE (   9.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gregkh@linuxfoundation.org, s.hauer@pengutronix.de, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 tglx@linutronix.de, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:53:36AM +0800, Anson Huang wrote:
> ARM_ERRATA_814220 has below description:
> 
> The v7 ARM states that all cache and branch predictor maintenance
> operations that do not specify an address execute, relative to
> each other, in program order.
> However, because of this erratum, an L2 set/way cache maintenance
> operation can overtake an L1 set/way cache maintenance operation.
> This ERRATA only affected the Cortex-A7 and present in r0p2, r0p3,
> r0p4, r0p5.
> 
> i.MX6UL and i.MX7D have Cortex-A7 r0p5 inside, need to enable
> ARM_ERRATA_814220 for proper workaround.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
