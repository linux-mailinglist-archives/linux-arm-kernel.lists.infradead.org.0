Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC6D3B5BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/B+E7REdgULBtX3Bx4qPWZz+ZB37IbjdhHSC7PgycqM=; b=qyPl9MPj5zuips
	e3QbECUMI+Ndm0v3SJGu1rRIGWBkEDKdhkfRo0CubTVTdswzAlXDzNoGXjmLujj9nTJhme21xgVf2
	m71zwNGpHPHLQTQ03a55SttIgDdq2b7hXoL6dGfiiB4cEWg6GBxs2LmYUS89b+S79S6DETpZyKfXY
	vm1U+87gAk3EJ7cF+WQLjiRuuTVjXY3BC4I/Wkz32B+uY83yEHMUHbGrO6i1FEdXKrEubq0BJgrPK
	sfK180Qcvd5PSG2R4xmA9TMyaqjbZT65TeMp6akfaX9EMiM2HreBnE+NeRpL0oURhFd4RuhQ/h8Ir
	JGnuphTDbwFiG5iUNvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haK0F-0003ZO-Re; Mon, 10 Jun 2019 13:06:24 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haK03-0003Yg-V8
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IXqZ0CamQNSABbN4WKbG4dT+eLIR+6caKei2b9LUxqM=; b=WibeBIkoCwxn6A/navSv/fptTw
 JDCREiicdxXHKkc7HWJFa9VD6c+X0mZaO0NIsW8PmAFxaQC1ZfNGAouGtw3PBCAYWTqSbNn/6Vylh
 yreu1ASYZfLpueT5mRU2FojdHWFvTaHlbrqzLW22e9FRZ8tDpMw2X+WJEseCUakEBjqA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1haJzt-0006Li-5Q; Mon, 10 Jun 2019 15:06:01 +0200
Date: Mon, 10 Jun 2019 15:06:01 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH 1/6] ptp: add QorIQ PTP support for DPAA2
Message-ID: <20190610130601.GD8247@lunn.ch>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
 <20190610032108.5791-2-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610032108.5791-2-yangbo.lu@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_060612_161247_10EDC33D 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 11:21:03AM +0800, Yangbo Lu wrote:
> This patch is to add QorIQ PTP support for DPAA2.
> Although dpaa2-ptp.c driver is a fsl_mc_driver which
> is using MC APIs for register accessing, it's same
> IP block with eTSEC/DPAA/ENETC 1588 timer. We will
> convert to reuse ptp_qoriq driver by using register
> ioremap and dropping related MC APIs.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
>  drivers/ptp/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig
> index 9b8fee5..b1b454f 100644
> --- a/drivers/ptp/Kconfig
> +++ b/drivers/ptp/Kconfig
> @@ -44,7 +44,7 @@ config PTP_1588_CLOCK_DTE
>  
>  config PTP_1588_CLOCK_QORIQ
>  	tristate "Freescale QorIQ 1588 timer as PTP clock"
> -	depends on GIANFAR || FSL_DPAA_ETH || FSL_ENETC || FSL_ENETC_VF
> +	depends on GIANFAR || FSL_DPAA_ETH || FSL_DPAA2_ETH || FSL_ENETC || FSL_ENETC_VF
>  	depends on PTP_1588_CLOCK

Hi Yangbo

Could COMPILE_TEST also be added?

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
