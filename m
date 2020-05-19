Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66191D958F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhZ34Z5fnyiIQp4URBzoJC1AEZO8qb51lmwi/m6JQH4=; b=arX5HNZ1QolPiG
	HXN2TsYqiVhbBPPhPSzPSoVzMiFA56UvYpJ/lbwZDJIq+TeyHKGH2bYTacIF+wc2wMLKsqZfxrcCM
	bOXs/xtrXBs+wo4xsQZfyPi8TMBK8SXtBtMpXuLVpGJ9vdyp80qzoRm0vxMvxF1lNibCgoRDw158U
	Vc5TsX5bzIJKq6iyUF34AKBYrMRRqqRH76M55030pZbB2zkd2OEVTkvih8p+eQpQR9AOwM9WjXnYJ
	rEl7TTUcKtlw05GvOis5f9+2fs4fVr1hTSzMoW3+ZEOlt+CkEZRN9Qq2u00WCtrNfs0fwIALkCc8O
	mVcjC7s+XfoacJqCqzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0ix-0003aS-TV; Tue, 19 May 2020 11:47:55 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0ik-0003ZI-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589888862; x=1621424862;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+3WpN5wjU7vPXasZ7bMW3p7RrpJuTGFZkKzGqd78wTU=;
 b=xnWTkhD0NYDfjNFiI5oXijwmClz6KNyVIprD3jFjQcsNoAWje7HJ9ysx
 U9s1dQn9M+3ywnMmTdkKf1EeYajCF4MOdVbej0T8iADsYWf4dpFP4ultO
 M1vtLXHNI2G/JR/nOYK7npg/lqJmuY2MFIdhjWrutNybdv2McGf7okEAC
 Ie8z8na2MpzVpMwEcv+tWOjIS/p7QF5WX/mJjI8kOjDUGsSVfolpCGEz+
 7mAm3T3NxGEr7v7deZEKkU8xXmU110pg6JinOjhWOfEXkNXM6DqY0C+y9
 SHEB8FeClPbghhZopUUAYxUIlp8oA/UdCIWs3cyunqccZvPp1RUlkLXCB w==;
IronPort-SDR: CXyWK6XjctxXloaSFb4QoNtDA6Ry52CMtVFwMWGs+0DsQUOSGUMc6G6B38mC5Es2J/SwA9BvfJ
 u2JGPnUnZlU1uhKCvY/i3hMw2dhY46AVqa3O0DaJyS1gj+DNK1eUoNoWXeNcXmFyZPfF1dlxwn
 cpxOIpB5rzwtywt157EitkEBohV4bwaDje/G7gEQzmpRy/Tqt/JjgMsaEHcBEZvD8q3/miLKAW
 oYUGUXzphVQVVBASFzBdtONiFD9Ojr/BOrWdJ9PRRxnYDB2dVNBnBuTrgtt2NGdPeEkwhhHuup
 ZXg=
X-IronPort-AV: E=Sophos;i="5.73,410,1583218800"; d="scan'208";a="12828132"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 May 2020 04:47:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 04:47:40 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 19 May 2020 04:47:40 -0700
Date: Tue, 19 May 2020 13:47:39 +0200
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
Message-ID: <20200519114739.GD24801@soft-dev15.microsemi.net>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-5-lars.povlsen@microchip.com>
 <20200513145213.GJ4803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513145213.GJ4803@sirena.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_044742_856243_0746F58A 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, Serge Semin <fancer.lancer@gmail.com>,
 linux-spi@vger.kernel.org, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lars Povlsen <lars.povlsen@microchip.com>, Microchip
 Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/20 15:52, Mark Brown wrote:
> Date: Wed, 13 May 2020 15:52:13 +0100
> From: Mark Brown <broonie@kernel.org>
> To: Lars Povlsen <lars.povlsen@microchip.com>
> Cc: SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>, Microchip
>  Linux Driver Support <UNGLinuxDriver@microchip.com>,
>  linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
>  linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
>  Alexandre Belloni <alexandre.belloni@bootlin.com>, Serge Semin
>  <Sergey.Semin@baikalelectronics.ru>, Serge Semin
>  <fancer.lancer@gmail.com>, Andy Shevchenko
>  <andriy.shevchenko@linux.intel.com>, Wan Ahmad Zainie
>  <wan.ahmad.zainie.wan.mohamad@intel.com>
> Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
> User-Agent: Mutt/1.10.1 (2018-07-13)
> 
> On Wed, May 13, 2020 at 04:00:25PM +0200, Lars Povlsen wrote:
> > This add DT bindings for the Microsemi/Microchip SPI controller used
> > in various SoC's. It describes the "mscc,ocelot-spi" and
> > "mscc,jaguar2-spi" bindings.
> 
> > Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> > ---
> >  .../bindings/spi/mscc,ocelot-spi.yaml         | 60 +++++++++++++++++++
> >  .../bindings/spi/snps,dw-apb-ssi.txt          |  7 +--
> 
> That's not what this change does.  It is removing the existing binding
> for Ocelot and Jaguar2 from the free format binding documentation and
> adds some entirely separate YAML bindings for them.  This conflicts with
> competing YAML conversions that both Serge Semin and Wan Ahmad Zainie
> (CCed) have in flight at the minute.  It also doesn't strike me as a
> good idea to fork the bindings, what's the motivation for doing that?

The reason for doing this was due to the fact that I felt adding
Sparx5 support only cluttered the original driver even more.

And since I was adding a new driver, I needed to add bindings for it -
and (re)move the old ones.

I have become aware of Serge and Wan Ahmad's work, and will work out
something on top of that.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
