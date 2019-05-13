Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921DF1BD57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2gvu49NaEPHEm8uySQd0QlO0JYO9F02QdKqv557PlU=; b=SYc/B+3zQ4rAL6
	DT/W5oVBdfliwJ8JKK3cdJBXIacqM7Oy60sCGvG5F0Wqejf9oBmGLT4osnCMCIAy8YWkwC4z1m3EX
	baH5ZJ1yduK2Bj3vK62DU9YrSUnywQgxhQv3lWFl4Dy2Qt6exfviRP5tLNzjC5J3w3XbZzaVyOrLr
	CmS+UpOGQMiFFtPKDJDpIqT+R8ecEiMkYSf9nCvFNmyTc/HHSmDsAaxAss+I8t8pMWaT1tVeXt7nI
	H27wb2VzthxPou0IuJF7xAH70+f+dE8F/QQ03YhTtC/tNhC6mBSSb/yNIMMzTfo0K4Tk3qrlrA4Ws
	fQn+VOUsKg9wDmSlBT7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFrL-0001jU-Ok; Mon, 13 May 2019 18:39:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFrE-0001gT-5F
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:39:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id b3so6900195plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OHoX7oCDIxtnl3NxtTVvKViiqkZglgOas/g1Rubunpw=;
 b=ZWZUGjjawgSeblVhgOyDlCAGehMU/Z0twGz6rujUUg+RLiCUzlrAnTLFcPy3TgWvfU
 Fd0UT+okOXosraWP4hGiz8yB04ZmpU2BsxQRd46mO6PNoqx9TsGDiJEtV4lxbPJ36ex/
 undy3vtilTIBNn4Y4yuefGrOfxV+XQhh2dKnvDf9hnscJrHAnjVSeALFFT+AMWCW4Y9h
 Jhu6wF0JwP2e1KmW5KLrnrbFPn19cVSLTD1kKx3wOx8Ofp+KpQZsBdtHK9Ql00vuWihH
 LExnK/hNrae/YOtkyv7dzAx+3QR52XAF+I8RMbJoQndRs6tFofXaU4Z4yETkZJkd1BhX
 e9sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OHoX7oCDIxtnl3NxtTVvKViiqkZglgOas/g1Rubunpw=;
 b=TBiueIQQN775nFMtsQKYHGaDzpAX5d98cmz5Ga3aSc8H4OM4X24gK59kt/D2fB476n
 KwCNt8ie+WlOepJr8H3xPw7h9DwLJkxfu5cN50hSIv4B351YtCo8Fth++tFyB++cxqid
 BapAkC8l0f8sQnq57Mudlqd9DE9VcADEF5EigqjFb4ILrI4oWN1wl5Dn2E100FZcm8oj
 YkjN9/sQ+YW24ttbWuDuMwO4a3Lmn2GITSjwQhH+FZjStcXfzGaHC46yx026J01ZYwKg
 +n+73fKL/mv5NcYa8ndCUIG0ujK6L/biuMcosAYoAHrWZ5w82bOeGKtqxMwbJcAd9PcY
 ZIMg==
X-Gm-Message-State: APjAAAVlFp2Fb1erWGDmf7h/CfdM7gdfx1E/To+itZMJ5JhvcTKu6e16
 jePaWRH+E9XkBUwcFzNipoZ2CQ==
X-Google-Smtp-Source: APXvYqynr2g6ljNTN5TU7b36goVbopwPwI4vVSq9IFQfsOzsCc5jpeiEx5UIY/EXqC5dgrtP7joR6w==
X-Received: by 2002:a17:902:2de4:: with SMTP id
 p91mr16401267plb.300.1557772766932; 
 Mon, 13 May 2019 11:39:26 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b23sm5116335pfi.6.2019.05.13.11.39.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 11:39:26 -0700 (PDT)
Date: Mon, 13 May 2019 11:39:47 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCHv1 1/8] arm64: dts: Fix various entry-method properties to
 reflect documentation
Message-ID: <20190513183947.GJ2085@tuxbook-pro>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
 <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_113928_215686_C703A58B 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 David Brown <david.brown@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 andy.gross@linaro.org, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 10 May 04:29 PDT 2019, Amit Kucheria wrote:

Subject indicates pluralism, but this fixes a specific platform
(board?). I think you should update that.

> The idle-states binding documentation[1] mentions that the
> 'entry-method' property is required on 64-bit platforms and must be set
> to "psci".
> 
> We fixed up all uses of the entry-method property in
> commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to
> reflect documentation"). But a new one has appeared. Fix it up.
> 
> Cc: Sudeep Holla <sudeep.holla@arm.com>

The message looks good though, so with a new subject you have my:

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 2896bbcfa3bb..42e7822a0227 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -51,7 +51,7 @@
>  		 * PSCI node is not added default, U-boot will add missing
>  		 * parts if it determines to use PSCI.
>  		 */
> -		entry-method = "arm,psci";
> +		entry-method = "psci";
>  
>  		CPU_PH20: cpu-ph20 {
>  			compatible = "arm,idle-state";
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
