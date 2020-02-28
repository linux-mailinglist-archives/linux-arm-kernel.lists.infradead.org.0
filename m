Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D269173762
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4hzVhyH0sn28r9trPAyE4AG7D1K3EVgetZEumz0iuYQ=; b=RERUwwgL0ORKMDN/OKg2NKPdP
	Qy95DCT2fCLpP3Els60fPhPnV9rDBQtdQGr0bd84RQc4sEwwPheNZXOODE4e10akRBee70ZzLqN1d
	AU6ivJWvsFvNib0QJQ1+QTq0UoKmqV7066Q90x3Jja1jrrausesOdA261qSV5TfsWcXUPXwKrNgZ8
	mNN8BB/agUPpU4TGjy5CQGJm0QovQoRBH6c6xNCnDKkaYEtBfBPofTPJuMgUwPfdvOijVdyGSa++v
	refTiiOKBUWV+C77aBRg3Dq5dRlt2xIIGysBineKiLhyX7itsGgE/e2nKHWVjH7Tx6DQokpPsGkxm
	lJ0aqhYFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ez1-0007JM-NW; Fri, 28 Feb 2020 12:43:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eyp-0007Iy-8f; Fri, 28 Feb 2020 12:43:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 66E794B2;
 Fri, 28 Feb 2020 04:42:58 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 229663F7B4;
 Fri, 28 Feb 2020 04:42:57 -0800 (PST)
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <20200228061436.13506-3-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
Date: Fri, 28 Feb 2020 12:42:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228061436.13506-3-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044259_350218_50C548BD 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/02/2020 6:14 am, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
> ['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
> is not valid under any of the given schemas
> 
> Fix this error by adding 'google,rk3399evb-rev2' to the compatible
> property in rockchip.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d303790f5..6c6e8273e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -509,6 +509,7 @@ properties:
>           items:
>             - const: rockchip,rk3399-evb
>             - const: rockchip,rk3399
> +          - const: google,rk3399evb-rev2

This looks wrong - the board can't reasonably be a *more* general match 
than the SoC. If this is supposed to represent a specific variant of the 
basic EVB design then it should come before "rockchip,rk3399-evb" (and 
possibly be optional if other variants also exist).

Robin.

>   
>         - description: Rockchip RK3399 Sapphire standalone
>           items:
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
