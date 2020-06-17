Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C691FD24D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXT4eKKqcMzZxzjq4lJWWnV+bbStdcIaEjW39edPylc=; b=Cn5YnQM3NGEMYq
	t0KslMpyZRGm9YLlxyLSHJJJrEuf1ay02AqH0mHFziE6CmIZMSJ5wM5FdMzOcprvfTxDMduLCQcjY
	Pc1C7CxGOV+q0iChaU0BmFW+LyzLV+SAYTyL9lfRIFRmrQG+MVO8pq9Ous6+CZctGyj1JSWymPb4f
	j+znlP6UfNHtrcD13mOtzPzgH2EimNgkK1qfT9RSFRjYsSQolVLn3MmWQXQthmDC5Z59giF2eJXpw
	ziKZpN98ARAwPKWWKqWmTjURrdAxEAzsn7T3Xv0aWx4xGW1rmKX/MMBVLsEa73bTlBs05272CFBuj
	tBKCDmrMyfkNEUCn+sew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlb47-0008E8-5l; Wed, 17 Jun 2020 16:37:31 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlb3x-0008DS-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 16:37:23 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a45so2476530pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 09:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WsPDpZNmm/YGoG3o/K3VZur5ACJ6O9MKkUsxzCeOqyQ=;
 b=shQ+iCVFGZlNQ2CiM06oW8yV9KdCYcb4+Nc1v9ptV7xkwxYsWIAWy9FT9A7QfQyXXC
 vgnGrYr1s4KoONzDFGQOIKKKP10fYAJOKUxPrUzX8bWdGQKR/poX1+xMoY/OuJhKS3op
 ZM4OMb6gNAmMw1co/rSZvcCMMkenUvYrHL0nDJWLYE6N+dDHrRElHqzsR/qc+tFD8YDP
 ev9z5vX9ak3QivBoJXCHAv6SAc9SQRVyX/Yhpk0ORYRWBnVCzOXBDv3LH0EWCaotYTVg
 feScMci5uYwy8LkpyDeRfwAMip3tcM9Pe2eZJntaSW/T9Yj5hqdkPDdVz5vod1LW35HR
 Iz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WsPDpZNmm/YGoG3o/K3VZur5ACJ6O9MKkUsxzCeOqyQ=;
 b=SQhXWF7thq3rADcoxCg8FqgyhsIrRCygCImr59vT9eHWnevJSBDhLO+9B1SJU4wOaf
 +pTEWvABKRv4Az/jmELljP/krnQ+bOqfhmS1ZqqBA19SSA2EFjYAI/ZZsHsqzlkReuxb
 ECEQne8FaP/s8VeSb2SMc6iuSHpal26IMOqQU0g0oehqLPOJ4+OJYC9ajRzP3yGaLFja
 ww8ofO/maaixe6A5fD5kYYCTo3JUA5iJ6leWC5MvPuh0daPCC4G7Tg0u/cplrl7WPURO
 StCPXFJOh4GfyTKw0bxjGaFN2Hks+jUpUGt37vjk1gpZtoJs9f4rvfcgQULG97eMkWuy
 3GfQ==
X-Gm-Message-State: AOAM532h1L/LEkag6VtaSVnupZiSH0PRJKJR1O9vJACNnkeSeF5UFEyn
 VZ8pd/rp0NHC2BMLvQT9xu949g==
X-Google-Smtp-Source: ABdhPJyh/wvxpkdrsVHc7ZalFYhEttDqtC9w54X2ohn5DKLCsMtb4fFUGJBOsxHtxyjF9BLSIhZs8g==
X-Received: by 2002:a17:902:ba81:: with SMTP id
 k1mr7511588pls.218.1592411838878; 
 Wed, 17 Jun 2020 09:37:18 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s15sm332888pgv.5.2020.06.17.09.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:37:18 -0700 (PDT)
Date: Wed, 17 Jun 2020 10:37:16 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 0/3] coresight: minor fixes for CoreSight and ETMv4
Message-ID: <20200617163716.GA493096@xps15>
References: <20200616093333.31283-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616093333.31283-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_093721_923771_4A3A2B50 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 10:33:30AM +0100, Mike Leach wrote:
> Set consists of minor fixes discovered during other development work.
> Fixes are stand-alone and not directly part of new work.
> 
> Mike Leach (3):
>   coresight: Fix comment in main header file.
>   coresight: etmv4: Counter values not saved on disable.
>   coresight: etmv4: Fix resource selector constant.
> 
>  drivers/hwtracing/coresight/coresight-etm4x.c | 6 ++++++
>  drivers/hwtracing/coresight/coresight-etm4x.h | 4 ++--
>  include/linux/coresight.h                     | 3 ++-
>  3 files changed, 10 insertions(+), 3 deletions(-)

I have applied all the patches in this set.

Thanks,
Mathieu

> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
