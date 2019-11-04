Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C0DED6E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:26:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brp7dcMpoUekZui1QLgnAhUFviNQfx2f+Tp41H2Hr2M=; b=Hst5P30JOL6Bla
	7YyizQsD9jbaJ3KGQ1N1arVII/OXWeh9GbSipJh3Dn8u3OkvL7kZ48OcP0lQRAWeFABetqbWrU73K
	RP9hANg8ehKnWcDCChqeWWtF9WtiL1JbBq2UKdPdXDMjNY1VLpbwRbKoTG3nH0ZhmLHVBTFUEwwNz
	hDtCcAb42iGuDqwcxZ1AUuT1BUN0xCvgwV0rV0TOsboxVq566/Oc264EWTtHXg2XFBUDHHiQBRVrg
	O3UQn+mBUNag35tkdCdcHqqQ2qgaovDt/qcHuEW84S2Q/CUEWV10F7ihu4Bu5rfbzRt+NEk9y3Qcb
	KmurqygevNkKZoRadH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRR8S-0005iQ-UF; Mon, 04 Nov 2019 01:26:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRR8L-0005i6-Gj
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:26:18 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D2BD2190F;
 Mon,  4 Nov 2019 01:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572830777;
 bh=H5b8DNtZ4v0LGBUCSSgXUhNmiD+cxi0RklBJpzPb+C4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lK39a/nlPsnsiKDhW53T+IFhnpsK6NVQ1bn2O5AguqBCM+oelWDor6P8uYZbQlom0
 xczE6ClvfP3gtJllNvhhUFA3w9OnHdZQuzau0Cr7D/iggoCR+T7Cvwromnbxj8j1D9
 yJV0DHXxTyd+OyEZuA6FR6DK+qTvKyX8LsRfWN3E=
Date: Mon, 4 Nov 2019 09:25:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: arm: fsl: add nxp based toradex
 apalis/colibri binding docu
Message-ID: <20191104012550.GG24620@dragon>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-2-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026090403.3057-2-marcel@ziswiler.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_172617_577074_2F18CF98 
X-CRM114-Status: UNSURE (   9.61  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 11:04:00AM +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Document the following NXP SoC based Toradex Apalis and Colibri module
> and carrier board devicetree bindings already supported:
> - toradex,apalis_imx6q            # Apalis iMX6 Module
> - toradex,apalis_imx6q-eval       # Apalis iMX6 Module on Apalisi
> 				    Evaluation Board
> - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
> - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
> 
> - toradex,colibri_imx6dl          # Colibri iMX6 Module
> - toradex,colibri_imx6dl-eval-v3  # Colibri iMX6 Module on Colibri
> 				    Evaluation Board V3
> 
> - toradex,colibri-imx6ull-eval            # Colibri iMX6ULL Module on
> 					    Colibri Evaluation Board
> - toradex,colibri-imx6ull-wifi-eval       # Colibri iMX6ULL Wi-Fi /
> 					    Bluetooth Module on Colibri
> 					    Evaluation Board
> 
> - toradex,colibri-imx7s           # Colibri iMX7 Solo Module
> - toradex,colibri-imx7s-eval-v3   # Colibri iMX7 Solo Module on
> 				    Colibri Evaluation Board V3
> 
> - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
> - toradex,colibri-imx7d-emmc              # Colibri iMX7 Dual 1GB (eMMC)
> 					    Module
> - toradex,colibri-imx7d-emmc-eval-v3      # Colibri iMX7 Dual 1GB (eMMC)
>                                             Module on Colibri Evaluation
> 					    Board V3
> - toradex,colibri-imx7d-eval-v3           # Colibri iMX7 Dual Module on
> 					    Colibri Evaluation Board V3
> - toradex,vf500-colibri_vf50              # Colibri VF50 Module
> - toradex,vf500-colibri_vf50-on-eval      # Colibri VF50 Module on
> 					    Colibri Evaluation Board
> - toradex,vf610-colibri_vf61              # Colibri VF61 Module
> - toradex,vf610-colibri_vf61-on-eval      # Colibri VF61 Module on
> 					    Colibri Evaluation Board
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

I changed the subject a little bit as below.

  dt-bindings: arm: fsl: add nxp based toradex apalis/colibri bindings

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
