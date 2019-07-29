Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470C0791B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pitWkglSUBor3L8NOgDrU0FA3ZvNBvUdYY0k5G376Gk=; b=WDBKktI9C6q0e1
	0BvXIWqbAQ6QCqaiMzxyHNtVybsU9Rl72xTKYlDVp+SmKvKCDYRr00STqomGd9XcJp0Wpe6+iGtu5
	JgcnOeBP8AgmtM3c8TePXRiWclZpuDG2FeNdqgzUJr8UDpgBXucZjsO0f8lDE4hejmbTpQcnsG0Yn
	4S5SVWUQNN0hVdM0DdL6sbacg2ENjcbNe4V1aCLLTeWA36ghK0OHY2quw154+bgVdyeij4ET9pu9D
	qvagGmOV3J5P/pqmRjhaWKBUW4Sh/LLuZqwQrHaDNUsDz2KQQqL4yGqOVJO3p/oLASdqzn55zPbAV
	U0UmfLWUC5MRQhLOOAEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs912-0000GE-8m; Mon, 29 Jul 2019 17:00:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs90o-0000Fm-Ck
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 17:00:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id i70so17820019pgd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 10:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PKrEdoLtTLRNqO4YrdGH4fuq//C3oqhJ5o7dSbb8lzQ=;
 b=lJCw8GVE7q/ojInWE/TtSdMdwAluKLawjp6IzIhQlG7q6J74d0WwU8fGm4gFHpCEl5
 68vBp2g9bgmATPrla6G3r4sLTKl572CvSrImbPsLL2qbE3KGS+UPSnvU6oSk+dD/ns2T
 kDol813Mpq2Jt/9tZq7GnDnIMvjzZi41LujMFidHK/4NN0cmI5VYfPjywd0fKhpfI7OG
 P7p0NdecthgW4PPSpg1rWTHG/lSWgjmykqknM3i0A5RxT3WhYWlaFQbv8w4cOAO5rACY
 n/qZryhFGfIqEQJAaLP8K29l+9np2BYZP6W9+wAIBSe5dZvpvy7i8Dx3X6vLqO1yEffE
 N7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PKrEdoLtTLRNqO4YrdGH4fuq//C3oqhJ5o7dSbb8lzQ=;
 b=C4da34WI7vymbxMs7KoEvl7SR3zU3GGFUVcaO8o6BiPC7SpbfJ40y04TLQHtFS87pG
 RUWenjqqMHf/dwbE5zeygLNtZwDBltZL3fIwn1Gui0BDnUCr33p44pVDGteNhCTL+PGJ
 dqPmZ3OZ2Mlg+aNSm0U+WfzcbD5nv7+T6ObPpS3AJWn/EGFambX5eWfkTwItZrTOwpmF
 2bYhvVI2kd3QIRhA0OpBJCtDItOu7RGyJddpt8HKJx0I4Bo2mmlRSI3vqBFyNaP8fGiP
 7FbPAXYVOgMrmItuVUixvvekHGG8qbCSQnfAQYUDk9OICPbj9Q46JlFRlZueO/7ZMd2W
 FvMQ==
X-Gm-Message-State: APjAAAUKNKYcAznsrSca+qZnzaLg2y3fRmxROFhNWRDbx5hHPOfbpEFf
 BW7YfLSRHb2wIqjGpMVTv6ZK5X4AI3E=
X-Google-Smtp-Source: APXvYqxZNRAklQcMtscvhvbN8CW7veN1LwuWpQMWUCsAiDaLe1wofpHzB7r4a0m2KOgoCzp/qH5ADQ==
X-Received: by 2002:a62:e716:: with SMTP id s22mr37443919pfh.250.1564419637462; 
 Mon, 29 Jul 2019 10:00:37 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a5sm53859763pjv.21.2019.07.29.10.00.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 10:00:36 -0700 (PDT)
Date: Mon, 29 Jul 2019 11:00:35 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 2/5] coresight: funnel: Convert pr_warn to dev_warn for
 obsolete bindings
Message-ID: <20190729170035.GB26214@xps15>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
 <20190724114312.1024-3-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724114312.1024-3-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_100038_463281_A7BABBFD 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 12:43:09PM +0100, Suzuki K Poulose wrote:
> We warn the users of obsolete bindings in the DT for coresight funnel.
> However we use pr_warn_once() which doesn't give a clue about which device
> it is bound to. Let us use dev_warn_once() to give the context.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index fa97cb9ab4f9..84ca30f4e5ec 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -192,7 +192,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
>  
>  	if (is_of_node(dev_fwnode(dev)) &&
>  	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
> -		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
> +		dev_warn_once(dev, "Uses OBSOLETE CoreSight funnel binding\n");

Please do the same for replicators.

Thanks,
Mathieu

>  
>  	desc.name = coresight_alloc_device_name(&funnel_devs, dev);
>  	if (!desc.name)
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
