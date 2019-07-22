Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BD56F901
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yN/6uN851CRGXvXkB0AhcaYSXlqMuRrxzHibAnCUMCM=; b=iD0RH5ihUHUdhr
	aF8HbxN1dR4muAfM1hlrL7JhqnDA6tSTZ/4oJ61SzTnLZA0mZsFGOP00X3vPrYIh+NtiKMirvjMUd
	klsQ+wq5/v7bkcKTsgoqUTi76rbydlwpk9QGrKmO6Hh2tfJ/k/TuWaACQnnGjmD4tDnZjo3FNMZ0V
	GzFP3kkKWqO5NdCpcbvIy5ZKFgPWcQsiKeK84Q4ufGpw6jyhqr3ylr51CqmO3qN3EwomeeJQYdXJb
	xyhvOgxuh45gHsXj0dHyM69PvJp3GMegvNOZVitZDBo4jrFWq+q8oe6rPcWzuC0QKUGQpsLK0WbTb
	ppUc5BytESBNiv/EF0tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpR7B-0000NR-F0; Mon, 22 Jul 2019 05:44:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpR6x-0000Mt-LP
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:43:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id f5so8281400pgu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 22:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RCQRh8f7Am9Pu3Zrt8ca1tiYCAmgZh8iO4K+Ia+HeDY=;
 b=R6TtVKr6FzRXGzpuk4JA7iix7Rqg/Vj3Jml5vRJxELGIZUOhzNNDE+ORehUvK5+iLl
 34dKdx5dh9Ut0OilqkR3jl7qf3z7nuSnyrxQ8X2g2ylzFyyNI4ARLewsc9mz0zxcRZQM
 FTDztbAtB5f93ji0gTdc2ocUGsq7LyRPCPmvutWPqOMLAk10C9bb2DEfH7e6ues1cx7A
 zDuafqss/khT0E8w7sdPyVOIhJjuI+SmronKkfeqQcxZVefr3Uqhk0RE67MOLgJelL1X
 fa3xSvPr/Ax34q1v2Ns7ZtFNrwZbgdS8LWKdoOy07EMDUdiRuPJWE7SPLKUTucmknMOV
 ZIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RCQRh8f7Am9Pu3Zrt8ca1tiYCAmgZh8iO4K+Ia+HeDY=;
 b=QXMisk+6stGCjiohlpnPlp+s/niTJQLKVaEFC2cu9xdutaPjyrdh+TWhjBkxxM8O5h
 YqrzJi2xxll+QW+1jmWMHBKy5NeV2nV+uX5MQnUsF6+aOWxLmgCUzu/QWkaH/DYxwXs4
 YyRce5syKUnTbjTiR2RewY3/P8AzmbdilWbJ/zxFqEIkTu5csNz+nGTuFODvQ78TsWl7
 xvYYOU/7/SWzo7Qn1+TQPvonWU3JAc1UP9Mf05CowUEPeOvott9eOQBCUXFP/lng/J8D
 zA2UCs406JopSPjmb+RTa11RzHS4MkFNWHKTCQAXtOS6MQqiIUZkzgz0X59cfnOdsL5N
 XBrQ==
X-Gm-Message-State: APjAAAWAXSatKaxV5Rd/+OS/VCyEgcLxcxd23bYPXrGSLgtXjco2r/dQ
 5DevQIRc9qjmtfIY4od0IXIbe5Nntyk=
X-Google-Smtp-Source: APXvYqwGj+0Wjj4RUowbz6W/lmlIStZnbmKiIZOWeUKE5oUz5EPZK0z/QTRB0FLK7EZANdtJypPPLw==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr73019980pjb.138.1563774226648; 
 Sun, 21 Jul 2019 22:43:46 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id i3sm40833413pfo.138.2019.07.21.22.43.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Jul 2019 22:43:46 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:13:44 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] cpufreq: ap806: Add NULL check after kcalloc
Message-ID: <20190722054344.w3vxrxaozd2tuajd@vireshk-i7>
References: <20190721180815.GA12437@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721180815.GA12437@hari-Inspiron-1545>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_224347_709640_4632A790 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-pm@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-07-19, 23:38, Hariprasad Kelam wrote:
> Add NULL check  after kcalloc.
> 
> Fix below issue reported by coccicheck
> ./drivers/cpufreq/armada-8k-cpufreq.c:138:1-12: alloc with no test,
> possible model on line 151
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/cpufreq/armada-8k-cpufreq.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/cpufreq/armada-8k-cpufreq.c b/drivers/cpufreq/armada-8k-cpufreq.c
> index 988ebc3..39e34f50 100644
> --- a/drivers/cpufreq/armada-8k-cpufreq.c
> +++ b/drivers/cpufreq/armada-8k-cpufreq.c
> @@ -136,6 +136,8 @@ static int __init armada_8k_cpufreq_init(void)
>  
>  	nb_cpus = num_possible_cpus();
>  	freq_tables = kcalloc(nb_cpus, sizeof(*freq_tables), GFP_KERNEL);
> +	if (!freq_tables)
> +		return -ENOMEM;
>  	cpumask_copy(&cpus, cpu_possible_mask);
>  
>  	/*

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
