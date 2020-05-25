Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE861E1277
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 18:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swlZC98cvFHT7lN6ZzTZ9xqccIsygGzyumbXGH+/g20=; b=clJWBIFJTIYTvc
	uaMRQlUoXjDwA9PKGDtCFPr5OJOgw4zH/UCzJkpadPD1usjfYOwrguPmP+nSlgiRLh4472B01n0hg
	MXv46R7giGcAG0pEOXKpzBVZUYpHYvQzqpOtKjZGgc7vxHwlpGgs870bXdD0N1zIqohWVVGp3Ob2G
	WJNRlPxjDT1f15Gkvixo/GV/OUXDy3iWPBCvwpbhFJc75wMSKynHmjhQwLnvvIJvgFRwUTBDBSE81
	Zsm4YfPKSXSFOsnjIr+/u4Z0y0jNWMWjweftZO8WHar4ddDrTSR/6GxqNODTCto7nbSo25tWPv4Q8
	u7DfXpL0ywNXidsDoR4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFln-00035m-Az; Mon, 25 May 2020 16:16:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFlc-00034u-Tr
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 16:15:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id j21so8825520pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 09:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gq7KDxytrwBv3Ee6LFih9/KTjS7vsScQxcda5nNQ+Ms=;
 b=Ojfn8JqqBQKNdvSd4HpjRqRwRnE62A/rHtJxs74MU9uf7cmH1r7hohAX2tdclJ7BXj
 xdPhMSF97utN4AWhwYJAIpwX9YaKuJdWNsEv0OirKVrVWS3gPlLxyPMZVHAOm9v+AoJv
 FBEmR2ClctF/sTe6tSDkzC2LLnoEfpxFHgPPWbNkwE83qPdcPmgPVms84DR+Co1Yw+Wt
 gvvS1hjOfSjAfWC+s7njQ625zkmNisqy0UZ23ceVy0bH0WJioV8r1Dngn17Kgk7dFX0n
 fS9b3YYpaHIUB4RxhdPqtfkW6C8kE/aZGNbXl+3A129MLcAtqpUu0H7HMWC2Q0cqFJNN
 bokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gq7KDxytrwBv3Ee6LFih9/KTjS7vsScQxcda5nNQ+Ms=;
 b=WEIPMbtMJGd/Wz/YNh1LkgOxRk/iaGekWzN90g+SQXlk1l3bJ448qDeHH5YulM8ieh
 dmJBgDV9LsOdnibe/pHQbTGQtQ8SkTtyODkf+msttsseQd+kwMnup1TuXiOYP8eP1xy0
 vy3Tpd9Y2PNg0mMOJX0wM/DckNkXONGnu33EYM0rZv2pJ6MV8G3nkQLZw2BUZ5c5qoc3
 rWoQys8U4OPrVfeLHy1/n0W6Jr0QSQqZps0PXyqGRm5LoxN6QrPvOTFVGo3JjYuJ+4dr
 Yi3iZlf7xeEzlbRYUjEnkt8zv6u/D1S8zkW6flwKJxQtuXgIMZ904eSyJk3y/DaRF39u
 vw7Q==
X-Gm-Message-State: AOAM531YMMadRycjwaqHvhI9Ns+hR9Gr3lzABSefPgUS8oW+T8PKcd+W
 PqUrxavw27UkVAnNfFXX3tJspg==
X-Google-Smtp-Source: ABdhPJx5O26DBjPbD+W02Sji+TfR+vDgK84YFsKmX7EKqaRnHafICtceif3e2vp0vgA6JP89sQ1Zrg==
X-Received: by 2002:a63:e549:: with SMTP id z9mr13461127pgj.213.1590423356161; 
 Mon, 25 May 2020 09:15:56 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i10sm3040188pgq.36.2020.05.25.09.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 09:15:55 -0700 (PDT)
Date: Mon, 25 May 2020 10:15:53 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv3 0/2] Add support for replicators which loses context on
 clock removal
Message-ID: <20200525161553.GA31527@xps15>
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_091556_995384_92AFACA4 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: devicetree@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On Sat, May 23, 2020 at 12:06:50AM +0530, Sai Prakash Ranjan wrote:
> This series is mainly to add support for replicators
> which lose context on removing AMBA clock like on SC7180
> SoC where replicator in AOSS domain loses context.
> 

I am good with this set but need a reviewed-by on the DT binding before I can
add it to my tree.  The same goes for your other set[1].

Thanks,
Mathieu

[1]. "coresight: etm4x: Add support to skip trace unit power up"

> v2 - https://lore.kernel.org/patchwork/cover/1244340/
> More discussion is found here - https://lore.kernel.org/patchwork/patch/1231182/
> 
> Changes since v2:
>  * Added DT maintainers which I missed in v2
>  * Added proper kernel-doc and header as per Mathieu
> 
> Sai Prakash Ranjan (2):
>   coresight: replicator: Reset replicator if context is lost
>   dt-bindings: arm: coresight: Add optional property to replicators
> 
>  .../devicetree/bindings/arm/coresight.txt     |  6 ++
>  .../coresight/coresight-replicator.c          | 55 +++++++++++++------
>  2 files changed, 44 insertions(+), 17 deletions(-)
> 
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
