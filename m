Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0EA1EED41
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvoGBK0E9koVzhaj2oxZsRi1JEMAqtMvAGcoUC49mUg=; b=Svz/aw8trr3YW1
	urLfYKANDqjcVddV0Bc/Zz5MRnI6scBeaS5CeuWXGPoUchE8ZdhwUFj9cLUxHsaLu8axMYAI374PL
	tPV4J3MzTHAk35N+QsisgOrdrYl3pDvRjOLILthGPUjh7xTFSzneuM4+oGVi5rKdPy5xk6aUaKDiV
	kbv25WdgyVeOpfcujRObYXFcmZi5tRF06VAjt2gXCb5YD9GFe72lB66CMuFInIdwmKBXdy4VKZ059
	g7vVZt9AdvHddX4zZa3hlQGJq/MCEb9vZq6eedFhNFnjcmasHHZgUWIo7McU4vrQ8VHRLBitD9m4N
	5GX+dYEtQPt4MPSDMzZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxJ7-0000j1-QX; Thu, 04 Jun 2020 21:21:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxJ0-0000iV-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:21:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id y18so2717968plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HmkJltUO28NwQuxDZ37g/BlLiFgZijm7NPnKleMlL+A=;
 b=crVfh8S/exP/Ro93kEhQMov5cpjyW13/HCN8lPuDUiXuDLJVKB7KiXGrL0Kxbrbb+R
 y4t/8dy+BjanjMVpsHrU6L92i0ohEB8W54XGWLynF79P/QR4c9eXofPbSea3/ySYUDrn
 YHVNv2RNDzIswlImMsOdEa1HU8zDETqXNqJHEH2Thdb926B9l3G37BYImG1bDxGbihKy
 yXsZFAIHIy2sUCEiA1vFY7mfYaTUWNzh/ikhbECsZ2Ecajhon9XumFqG9MswrzjEmcCc
 Q+dYDB49gOvaxvKUDdJnHB9BRe43DVMDEm5KG34FQNlFkd67VcISZqs2gzCxnWw1gHE/
 Cmjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HmkJltUO28NwQuxDZ37g/BlLiFgZijm7NPnKleMlL+A=;
 b=flN6dZaT5EH8gIgo9ttO9XXmDsb6NFOkC097Z1ZLV+5c5IG8EaZ0FSHGmd1i5lBpE2
 x7xz/4VfU8tPFBDGEK1fxssEFlKRKEDk0GXR1F7gv/tId3y/fcZ/OmVRkNWF+K+4PA9C
 5a8AASEWULbABI4/ApRJOTgTFx8IhcTA40zPAzvt61JI9SSTbRePTjEdFmhKZgnmEiHY
 URnGxF7RbLFpOQGLDvNpRgR7eMNEYhvHj255KpOjE9PdI7xOqAno40zlCKhPUnNvBp1s
 f6PlvjCW4eo1S0LzBQbkTZBubMVWZXcIgqIykgQBsJRWERRP0XgQL9cnwOSgbuZrK+Ef
 +n+w==
X-Gm-Message-State: AOAM533ZhOBdkQ7ySmMFhuGbm4N8mbaAgOKdoEo68mRDRDrcqU0xVlcX
 TubZOchNxzuU28706v5kcrXBJA==
X-Google-Smtp-Source: ABdhPJzNlal1wl8ySxossrsQYPskSXenK/74RyXOG49eZfvl1keSh8yWC4+TJ+ZVyaS83GMbHk9G5g==
X-Received: by 2002:a17:902:ab8b:: with SMTP id
 f11mr6866714plr.145.1591305702081; 
 Thu, 04 Jun 2020 14:21:42 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id y23sm6472519pje.3.2020.06.04.14.21.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 14:21:41 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:21:39 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 1/1] perf: cs-etm: Allow no CoreSight sink to be
 specified on command line
Message-ID: <20200604212139.GE18961@xps15>
References: <20200526105310.9706-1-mike.leach@linaro.org>
 <20200526105310.9706-2-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526105310.9706-2-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_142142_629382_A2DAC9F4 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 11:53:10AM +0100, Mike Leach wrote:
> Adjust the handling of the session sink selection to allow no sink to
> be selected on the command line. This then forwards the sink selection to
> the CoreSight infrastructure which will attempt to select a sink based
> on the default sink select priorities.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  tools/perf/arch/arm/util/cs-etm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 941f814820b8..ed9ea2c60f27 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -242,10 +242,10 @@ static int cs_etm_set_sink_attr(struct perf_pmu *pmu,
>  	}
>  
>  	/*
> -	 * No sink was provided on the command line - for _now_ treat
> -	 * this as an error.
> +	 * No sink was provided on the command line - allow the CoreSight
> +	 * system to look for a default
>  	 */
> -	return ret;
> +	return 0;

Leo added a tested-by for this patch. As I wrote on a previous patch we are
currently in the middle of the merge window and as such this set needs to be
rebased on v5.8-rc1 (when it comes out) and sent again.

Thanks,
Mathieu

>  }
>  
>  static int cs_etm_recording_options(struct auxtrace_record *itr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
