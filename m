Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92061EED3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oMggs+YIUdm/gZqOEGMPiCaMZrDQLmbC/75b6ahjzw=; b=eGKuC/WuHCydAA
	PlVcCK98fg/4t5IiMmEUmPLajYblQx0Cl875wxpu6DCCcRQRCYSd2ZQb96oW26q8JLgH848xQ0Cbk
	4c4YnxTwtHPV2BbfKTtR/9SsVU4H6ocr3P5T9lVd6IA6a8AH+7xnIV4F5QG2MHAdsDUXmSUYDyn01
	+jrDPOZGE2Ruww+TdHzpwWSKTf7kGK4Pc5OMwDRUHK2dzogAI9P9NJTUKms+nNlYxlm5Oiok08yh7
	HVBt74HbNGHHNo4U1TvmGGZ/r7f+ozNkQgw7HhGB0ZEL/9yUp1oJVamPpF6MtSXPvaWXw4Y/6HGyy
	NBsSWKYXSbYWq6uT7xog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxDs-0005HG-1B; Thu, 04 Jun 2020 21:16:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxBy-0001rv-99
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:14:30 +0000
Received: by mail-pg1-x542.google.com with SMTP id r10so4062454pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=teHN5pNrJd73PmnlGgrEifPo8J8IsFHKXgB1ozAR8uE=;
 b=szFroSseI+P4tybkfthjn4BL+yPEEounn5HeCOjBg4x/lBQ3LV2979fBkZaTuYQbRk
 fcD2lr+qLaTaSuWc9rOQffDG+AGrd7kXQqqh0vyOu4AAci3CYgzMePtya+E2qdQkPFxs
 /kBFmPL4KE0oI7epwmgHMm3D9owoHFfx7vM2RmRZG4ESDB5x0pdF3Bs8iHm+GB6Qk62z
 GuC+p9fnJSC7lcdf7r/SibVFisqZwJ6H86SN+J1Uq/VafZjdOZJe2ZmEmT9Uu5oy5Ts/
 pzxXLs6lFml7OP2QryHfO2aRuUyxyc75DeOJe86X/oDCAaDmSBMLhEhNtT9fFUnlWFHK
 pclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=teHN5pNrJd73PmnlGgrEifPo8J8IsFHKXgB1ozAR8uE=;
 b=V9Mnjex6qi7JtOnvMau27UUPKf4AnmgxAwUfO7FjokBkmmmvd0reV0Gtm9gpampKpK
 7QQRf9QRzgY4ZTXlTTrsg+IB84PbHAHojs/n2lXAJYkB0CFPY3n96mRMblfzWMIh3Q4k
 MFC9muLCRVl3svNI5YFuu/wqt2oKMISpdghKIsF+VbhEhhShYNzMPH7jBS71kkF66AQr
 lCYLVlAesnueWr30Nu1v3Zfz4QtN24DvEKPFUwRpNOrC8WHD48jBPFNDrzwN8ZM+rS62
 4AiZtpc2H6MoX/PssMlMH4DrAhExyhDMCDZ6HBzT6xRdr7eOdvj9xEVE8CkJ2zWDsL+W
 hdxw==
X-Gm-Message-State: AOAM530zCyVpM1cf730SGh1SjqnHzf2EW7MfdSOP8lILUESLTV+S23Sb
 JVUfTyUDTkMtC8XkhwP4f7eHmDSAoa4=
X-Google-Smtp-Source: ABdhPJxcDEHNhLui6i/AQX9/vP8U2yhoKPGUw1zQk6CS4OuaipYAiyvQuHVec7K0iZQJoZ1nWGx88w==
X-Received: by 2002:a63:503:: with SMTP id 3mr6366320pgf.15.1591305264765;
 Thu, 04 Jun 2020 14:14:24 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g17sm4832000pgg.43.2020.06.04.14.14.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:14:24 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:14:22 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 1/5] coresight: Fix comment in main header file.
Message-ID: <20200604211422.GA18961@xps15>
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-2-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526104642.9526-2-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141426_343996_6190F1F6 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, acme@kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 11:46:38AM +0100, Mike Leach wrote:
> Comment for an elemnt in the coresight_device structure appears to have
> been corrupted & makes no sense. Fix this before making further changes.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> ---
>  include/linux/coresight.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index e3e9f0e3a878..84dc695e87d4 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -179,7 +179,8 @@ struct coresight_sysfs_link {
>   * @enable:	'true' if component is currently part of an active path.
>   * @activated:	'true' only if a _sink_ has been activated.  A sink can be
>   *		activated but not yet enabled.  Enabling for a _sink_
> - *		appens when a source has been selected for that it.
> + *		happens when a source has been selected and a path is enabled
> + *		from source to that sink.
>   * @ea:		Device attribute for sink representation under PMU directory.
>   * @ect_dev:	Associated cross trigger device. Not part of the trace data
>   *		path or connections.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
