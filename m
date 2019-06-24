Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3024FEFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vzvixTPp4pBmhsuhzgHs+fbbBRiEHf2nMt1beJwpZY=; b=rMT/nbFFUw3UFH
	PvCUP9zUOUmplWuKj26SWlPyVq2a0hOUKeJSEtyFo+mVHOp2mPZI5qY6F2AqVdFQrPfSljRqR/dcV
	I7Zvdr9TEBNtVzU3WMDwcBauXCtZCScE2IblnyeMa3HCP8tFss/F1nSqkbaClmZ1mJtA5LJsRkCFm
	QKRCbSzyk3LRalJ/YAPTABMP5TnaN6wullhGSXV0eaBg5jTIb/3SsVFq8FnRbXBT73GViAy+4/WFG
	yrkLiKjaQKiDsPhWuF+OAssU3DJC8lsg3Xpapvp5MtimXDhLQCxJJO0fsLDWzQpkISKmLAL8DTUro
	5/QZgNs08eKZoOlYGQWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfELQ-0002nl-Jh; Mon, 24 Jun 2019 02:04:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEJN-0001MQ-Qe
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:02:28 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F4202054F;
 Mon, 24 Jun 2019 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561341745;
 bh=Bn7UoFve4cZCWL5q6OYgRzDWd8sX0VxTtUWVf0R+mL8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pmPw7GaoUQCLfl0vL4q9rzC2fFVZE+HRV4JF2i7KXmYVh36zShWtupvNITqmizguE
 0fgT7B+hV4/FC+sRaUfrJg4FW+jRQkDNDsAKK+932DEDsP21Ano+dfKc+j098imGFM
 T8Jnqc7E4sbm8XapSUA24mqoD9G1tcIosDYYSI1g=
Date: Mon, 24 Jun 2019 10:02:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Zhi Li <lznuaa@gmail.com>
Subject: Re: [PATCH V12 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Message-ID: <20190624020210.GJ3800@dragon>
References: <CAHrpEqT_34eNK-EzRgs-ocDD6pfLzD=FU8n83HgSQVsimJRxPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHrpEqT_34eNK-EzRgs-ocDD6pfLzD=FU8n83HgSQVsimJRxPw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_190226_078187_2E98C7E6 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:46:00PM -0500, Zhi Li wrote:
> Add ddr performance monitor
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> ---
> 
> Resent without base64 encode
> 
> Notes:
>     No change from v9 to v12
> 
>     Change from v8 to v9
>     * put ddr-pmu under ddr_subsystem bus
> 
>     Change from v3 to v8
>     * none
> 
>     Change from v2 to v3
>     * ddr_pmu0 -> ddr-pmu
> 
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..a33e08c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -378,6 +378,20 @@
>                 };
>         };
> 
> +       ddr_subsyss: bus@5c000000 {
> +               compatible = "simple-bus";
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
> +
> +               ddr-pmu@5c020000 {
> +                       compatible = "fsl,imx8-ddr-pmu";
> +                       reg = <0x5c020000 0x10000>;
> +                       interrupt-parent = <&gic>;
> +                       interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +               };
> +       };
> +
>         lsio_subsys: bus@5d000000 {
>                 compatible = "simple-bus";
>                 #address-cells = <1>;

The patch format is corrupted.  All tabs are turned into spaces here.  I
manually apply the patch, but please avoid it next time.

Shawn

> --
> 2.5.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
