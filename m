Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375B51D0AC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krrLKhNgkNr95iBsmnRTMpWNNn6+S1gzjZ7lPLFAsIM=; b=nS19EJ7PrZXh3U
	UTlTagOzaYj5guztHcy9P85dbigt9wpiHg17XZtCY/WhgB0oJl3MCLUGXj6j6aUdhbzcqCBgvejOA
	yolFzuPwb+tAW5aE8RlE8Vj8gfGTmYPpi+zaa3eQ4lSbKtHiAzhYFPhZYerw20rhAr5PARObIQ1x4
	YpmQ3h0Ps4fxcd3ixk5Xa8NrH3ZM/DNkyKcAcICHibkRrsQWOSvNqSC4U2DTykZ79fkUlQqv2Bo8+
	CcdiC94Nwg+tKSRJSQtqaPVp72i9slECXzgA7l5ju78M0pxQ9aEKDB3dJBCQ0WF4WrHKLkkLMmppx
	u4YgLuP4+qtHg3Gjl8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmfT-0003IV-Vv; Wed, 13 May 2020 08:23:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmfM-0003I8-3i
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:23:01 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A212A205C9;
 Wed, 13 May 2020 08:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589358179;
 bh=CctT1pLBBADQgyCNEVkmnVM28W9cz4iLnP+KEAPjKt4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=flsOcsSlrPoNeOH6DLqibZAHWouNeQZhXc8HRyJSAEntQozpS3UUzQ6212ItfdwNJ
 qHI9IZnP4P/N/zh2obqaJKg9luclyjVpywX/DGUgYxWm84tOuN3cWZMvt4uStCdRYC
 xK48ipz8UjyPS+dWXRz3IBf0FuVO49AQqDtds18E=
Date: Wed, 13 May 2020 16:22:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Message-ID: <20200513082254.GE26997@dragon>
References: <20200427035655.18157-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427035655.18157-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_012300_174185_F1D3D714 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:56:55AM +0800, Yangbo Lu wrote:
> Output PPS signal on FIPER2 (Fixed Period Interval Pulse)
> which is more desired by user.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
>  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
> index 760a68c..b2ff27a 100644
> --- a/arch/arm/boot/dts/ls1021a.dtsi
> +++ b/arch/arm/boot/dts/ls1021a.dtsi
> @@ -772,7 +772,7 @@
>  			fsl,tmr-prsc    = <2>;
>  			fsl,tmr-add     = <0xaaaaaaab>;
>  			fsl,tmr-fiper1  = <999999995>;
> -			fsl,tmr-fiper2  = <99990>;
> +			fsl,tmr-fiper2  = <999999995>;

Not sure code change matches patch subject and commit log.  The change
is about changing fsl,tmr-fiper2 setting from one value to another.

Shawn

>  			fsl,max-adj     = <499999999>;
>  			fsl,extts-fifo;
>  		};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
