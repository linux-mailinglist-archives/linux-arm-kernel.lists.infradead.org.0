Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D3D1BA9E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaMo9byXuRSFbZEOmSG5jtLUW6CnsbvOC5/WnsR9vls=; b=M64sVPQgncm0gW
	srNoflmIfBowwXo/Tybj0xwyVtHU4c5ntwW9Nauai1PjJ0P6Tlb95C55WpqeI7B0DDO9DW3HmFHpb
	FII4kfINoBIqJEVrnbJsL8sHdFbzpaLH0LKkcESuNhHprMd+h/slMzGxiE6UtiLloz1hT3A0/MADq
	BDCCvqxlMxHtBlulGCnDWgjNhCegHaAVdAaEbG/a6fO01XzHDVFbDJSb98kLfEj0eyhaU1SsrcfRf
	YmcLOb5BNw4QRiAkHxIhBcp3ZkP191mJ+ZRDClpJpV26F7c2clgQKGRZGcgFWd7r0km0FfxQgDECR
	g+7MEWTSodIOmivZDMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6PF-0004r3-JT; Mon, 27 Apr 2020 16:14:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6P2-0004pc-3T
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:14:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so9239034pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NlOHhv3ZvuxKBfmOADzhYZY6MuY/8/b8nTb8cQXvDTg=;
 b=u2TqxdfGH5QOiJu5VXIyBkHKCt8WTxDGffJ8usI2d2Qxl4Edg8yRj7sOGIIMngir+q
 EsnkGAIHgNuMsLgRpAmBFCOjohBBIyuMftTPjyS+IhRv4RIVvmBUOyuLczwYvBHHnXzJ
 HHJ6pWPRTJr+YlbuoZWow9eo+lKy+esvQjzB42295E9ZqlSokzO0LkWcFXYi4+lnCKN/
 YCAgCbnhprzovJF21q8fxJemDPl1xjDSpAxvyV94Jl/x/0XM+YIr23OxxEkV6oxse4g8
 XqN3yt5PeNcrGKZR1fqQjEjoJc7bvsfI5223hLES4X1yQG1QY44G0ztHh0SsidenU9Vs
 xEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NlOHhv3ZvuxKBfmOADzhYZY6MuY/8/b8nTb8cQXvDTg=;
 b=A+6d9THhyg9sCNtcqXQHsXQ8i+sWTWv2NEsPAJs9BUvMeuQXFKBuvlSVpm7X7Ez7YT
 xdbOrt933hap5Ckrx3gVgabLLIb+br2iMtL3R+ZGXP8FtLJxPhfIjwV8ImH1jh2H8Ixv
 r/tgOxRiys/7V0hBI1TCw915EUI3Ok5PtKOB6L3jFy7nE/+1hDxaMJOGZ6X8+pRigPwr
 ZO9bYysDvIdXY4vywsm+on61Buk7QxgTDQiWGgr1ddt0fYVCaSwkQukMvcq6DzU2ruAS
 aYKLwG0SwT3ydjc+tCTFox41lR90esqs92lAI+44ERLYVhEzru65nrdgyAKZagNulpe9
 eRYg==
X-Gm-Message-State: AGi0PuZ3JNLuxvubf49Ga9jLqWWAj/riFYnhsCi8SvbahoixEid6PkBl
 1RJVgBdBdpepGrEqr9QH3Yoa9Ex5+BQ=
X-Google-Smtp-Source: APiQypIeUQY6ZaJfuHprcY9pUc2GUDKRaqkJIiBBuTT1r2iX8l4EyB2XUPeFbTmuErN6+F0niVlgog==
X-Received: by 2002:aa7:979d:: with SMTP id o29mr25856991pfp.90.1588004078641; 
 Mon, 27 Apr 2020 09:14:38 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id u13sm11788124pjb.45.2020.04.27.09.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 09:14:37 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:14:36 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Anurag Koul <anurag.koul@arm.com>
Subject: Re: [PATCH] coresight: etm4x: Add support for Neoverse N1 ETM
Message-ID: <20200427161436.GA10601@xps15>
References: <20200423101141.25280-1-anurag.koul@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423101141.25280-1-anurag.koul@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_091440_672682_20C34BBD 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:11:41AM +0100, Anurag Koul wrote:
> Add PID for Arm Neoverse N1 ETM to the list of supported/known ETMs.
> 
> Signed-off-by: Anurag Koul <anurag.koul@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index 0b2c7c7efacb..7443a2e4528d 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1541,6 +1541,7 @@ static const struct amba_id etm4_ids[] = {
>  	CS_AMBA_ID(0x000bb95a),			/* Cortex-A72 */
>  	CS_AMBA_ID(0x000bb959),			/* Cortex-A73 */
>  	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
> +	CS_AMBA_UCI_ID(0x000bbd0c, uci_id_etm4),/* Neoverse N1 */
>  	CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
>  	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
>  	CS_AMBA_UCI_ID(0x000bb802, uci_id_etm4),/* Qualcomm Kryo 385 Cortex-A55 */

Applied - thanks,
Mathieu

> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
