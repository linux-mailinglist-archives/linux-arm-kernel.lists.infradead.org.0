Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44701BD59F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cToClxJBQUDfd7I5oygIaA6mxa0vc0ZQhIJzb6W3n3E=; b=DRGMZRZt78bzHZ
	po5hxlknFRjk3tSSCy+tmvQcPwobbleUCsxHmq0Pw/+SQN5eq/rufEZlOMViAuaX1qYPGVML7ieAV
	vyhqORSLZSA1CPrlfByTa/CbUi9z1dastHWZJYXwevJp5vhjOHlbkJG0lcnxt8KrF8ay4FWYQ81aL
	GyJv/WVWWUPCuxLXO2+pGtL/yCsJ3hZN9qoVtsBmRkujBamM8Wn4lUPSzeNtObAjrqf9boDiY6hIh
	f7GRCgyy4hnMoYPwkNs00nsl9n4uCeOmkeir5wlsOtzBZh3Qx+MmpAVlgzIl+u5nV9+dWbzOn4HjZ
	p3JB+nQccHr1NCamvqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTh26-0005X0-Ih; Wed, 29 Apr 2020 07:21:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTh1x-0005Vy-9O
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:21:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so765693wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 00:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cCAHFPkV5zKy0lOqNzgFSwfk1faaHM5kTxrOdR4mtV0=;
 b=qfHixOrwUj7Z+T5hUCKAQQvbwoGTrwpUbqxft4Z0FW7cxbhKzWmTTBcrbmTUBD1BCU
 UYUNL8rHAalDR3r/O6paaxcxkjvsqp7P1mGeGALESzQUvh8c5kchThOUHol9+MX9ZYce
 KNZQ6rVy/4tK5R/7/kVurzd47F+eU1zSHEz+Cigo9VwyWeF7gsbfbsLQWz7kZavXHbIk
 30SKz/CXf60CiCh/5zaMuDwmvUWBwyjoytcRoYV/zZoV0F5YfA+1AFyVrjD/jHDMlYgv
 /XN9sVJ/XiKC2VgDHnvYRvYINP7ZhukoeZnh4AN+xJXKZ/fpSKQcSOBBO6lDA9qhTxPC
 Vqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cCAHFPkV5zKy0lOqNzgFSwfk1faaHM5kTxrOdR4mtV0=;
 b=q8oC0N9zKNnfGCA86HDRRIFxxNn+afnhvYbZuDKtTNyK1tezb+X0FMP3jyr6WhESIl
 a+lW3tFwVjaFV1O6QsTR7Y9qCQEJWBeA1B0QHPXWEZteSAz8CVQCbfVRTw/AaMOkeCam
 hwk/IeWKxqfvKIHF3trPvz5djxbEbG9C012GPKXPA6e/huN+6qt7o594z0kzCRmZ9+zO
 H+baR8dSsC8eP+cHBmvtTuhG1n6UI1tp5O2wp2JGp7nKgnce0d909kuEBOe/+9bTGke8
 Q6dr+9TPI5d1ru2W6DfmH1728XUWb+zpfh0E01qMRg/pslylN6Urc5PSg/B+O6RyjMqm
 Wmlw==
X-Gm-Message-State: AGi0PuZzc9kcZgpuTTXRzXMb5vFr82D2wMCHFgYyLnTBfHSYOvLFf2Dr
 CyeQY+HR4xO2K4ENPigQ6i868A==
X-Google-Smtp-Source: APiQypJs+3J3cKxM/LtgKzAvg7qC3vSLpX2ePy1LG0WB6A/JB3tF2dYB0tGSkd5NOoDj8qQAP2sJSw==
X-Received: by 2002:a1c:4ca:: with SMTP id 193mr1629206wme.18.1588144874110;
 Wed, 29 Apr 2020 00:21:14 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id k3sm31836574wru.90.2020.04.29.00.21.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 00:21:13 -0700 (PDT)
Date: Wed, 29 Apr 2020 09:21:04 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Subject: Re: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU
 driver
Message-ID: <20200429072104.GA817954@myrica>
References: <20200421155745.19815-1-jean-philippe@linaro.org>
 <F8C2FB7F-2D21-44AA-B41D-0D4555A63660@amperemail.onmicrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F8C2FB7F-2D21-44AA-B41D-0D4555A63660@amperemail.onmicrosoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_002117_357810_F35448E7 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 11:10:09AM -0700, Tuan Phan wrote:
> I tested this patch on HW, however I need to add one more following change to make it works

Thanks for testing. I don't understand why you need the change below
though, do you know which other region is conflicting with the SMMU?
It should be displayed in the error message and /proc/iomem.

Thanks,
Jean

> @@ -2854,7 +2854,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>         }
>         ioaddr = res->start;
>  
> -       smmu->base = devm_ioremap_resource(dev, res);
> +       smmu->base = devm_ioremap(dev, res->start, resource_size(res));
>         if (IS_ERR(smmu->base))
>                 return PTR_ERR(smmu->base);
> 
> 
> > 	} else {
> > 		smmu_pmu->reloc_base = smmu_pmu->reg_base;
> > 	}
> > -- 
> > 2.26.0
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
