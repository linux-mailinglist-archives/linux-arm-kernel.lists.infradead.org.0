Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B45EDA10
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39xzcAjqGBRCg8qW64zWemXSrx5rLkCEFrhGxe0b8xk=; b=c51jr2cbKJOJL6
	hinlK3gBfMhzNp62f+PCXesQXatsneLByDCceEzQO2vioMsHPRUGNQYH04lSUHvrq0zlHI/sEiXmg
	/k4ulGFqEda/2N98IMe7STADJCiyYz4rJ9ZRPT1RYbzpvnE2vTpuFQdyumvFBMNX8+QKY1JFZBMrZ
	JV3KHkN/AgOgJX6PwNZBPoRw4pn7WerxAitYD4O9vQ/Pu5bCd2WHmFEzMJZJFdEN9V/0ycPetkj4S
	4gyKAVJuWSKWi78Ybh2YPrameBmwZYnO9BIOBtatU88W6jZ4zDVWtQdJvqZ0JOJouDXXFTPZRQPsv
	FDo0TzDqD+k6MdLMXo2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRX2H-000775-E7; Mon, 04 Nov 2019 07:44:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRX25-00075K-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:44:14 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF09B2190F;
 Mon,  4 Nov 2019 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572853453;
 bh=rqP4SSpNvx234d+AvWoRHCFkLgHT+IVU/z6pCg63G3U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zGPC6D60oP3iEGoEXdXdIB+wDXS1YRB7VcZuICeBUVX6uvWfBcT/JUarHJPTXoqTv
 HKUtalEQ/hfW/KuJVqlgkgCwHWWi1Rdk8KAiuRgGYmctRDU2x51kvQUEqYZocdHqb+
 mTcNAAhkUsObuVD5Bn0YX3fHDw1jx8WntyHmfStI=
Date: Mon, 4 Nov 2019 15:43:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v3 09/11] ARM: dts: imx6ul-kontron-n6x1x-s: Disable the
 snvs-poweroff driver
Message-ID: <20191104074346.GT24620@dragon>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-10-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031142112.12431-10-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_234413_680179_6C07C9DB 
X-CRM114-Status: GOOD (  21.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:24:27PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The snvs-poweroff driver can power off the system by pulling the
> PMIC_ON_REQ signal low, to let the PMIC disable the power.
> The Kontron SoMs do not have this signal connected, so let's remove
> the node.
> 
> This seems to fix a real issue when the signal is asserted at
> poweroff, but not actually causing the power to turn off. It was
> observed, that in this case the system would not shut down properly.

I do not quite follow on this.  How does disabling snvs_poweroff fix the
issue?  The root cause of system not shut down properly seems to be that
PMIC doesn't shut down power.  This looks like a clean-up rather than
bug fix.

> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Fixes: 1ea4b76cdfde ("ARM: dts: imx6ul-kontron-n6310: Add Kontron i.MX6UL N6310 SoM and boards")

If you think this is really a bug fix, it should be applied to the file
before renaming rather than the one after renaming.

Shawn

> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> index e18a8bd239be..4682a79f5b23 100644
> --- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
> @@ -158,10 +158,6 @@
>  	status = "okay";
>  };
>  
> -&snvs_poweroff {
> -	status = "okay";
> -};
> -
>  &uart1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_uart1>;
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
