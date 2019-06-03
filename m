Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60993281A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 07:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8n0XOzx+fidzCLNIgnP+Njg4IYbdMcmgY1b68a0ZxU=; b=IFJqjiOJUIbfmW
	UcLdBDEC4VY+D0WpMrXfPVnchYJAENf5YOFUw7zNcCKwlTqCx82xjXcb8n8NHR4QI1Oly0NumkKGj
	HvaDrodvt8SKbZI7MGhWd7h+ZCYZ/ov/ZfFSZ4hEPrtsUl8IDsvubs9+STBu/a3NMuyR8TjDGT79D
	kst6EDjW63dNXVdBrcb9e5ML93YQyR8BaWcB/HKCNagTVUaVK83b48o4h0nymDbqV8T4D23XVZYJb
	pUcFPDGgFEAdbsRHReZanHDlf6XZH558xyxq2tZwRG6kggCx4YxPlk0JzJ2LSIpAlb4TdzsKwIDjv
	jfgfBpYR9GIZxw7P5KOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXfkQ-0000LH-EC; Mon, 03 Jun 2019 05:43:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXfkI-0000Ks-SY
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 05:43:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id r22so9905169pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 22:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I+cs9eaGYc8ZeuwC+POeS4O6No+gk9upqRJery6C4XM=;
 b=nxMGW1j/fKDIfZvhKeOllR/fg/yOqiZiyS6AzFGZbxPxrEA7ZVT3GEiQ+70VNwXahX
 h/g/Na00WwdBAP0brV8zWVlld76ZJ8EFJhnm4eJh4EF+lFYF8T2oaq2yC4zl/6hNQZ83
 zzw13MvTYT2O3TDW9BuG7IPIoEyXSWhrSrQo3uozlMM4IqNELfTXXhx1pnnqJrG3p7c3
 c6wFeCzRKmbsstcQRhXtaYvWCgz338NMn/va+MbV+w5uJpotB5gKRx+E8xbAB6VDN/nh
 9wWMXaETgM2JPdkfhmebk+H3fRaIPSCQ8Y/tWcs/nu1dZttpwrHLABWpVn14qq0ar39o
 hQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I+cs9eaGYc8ZeuwC+POeS4O6No+gk9upqRJery6C4XM=;
 b=Ee02usBtRxILqd2ZGVNVT5iFYL0gAozT+V75zvUheuwV4S2W7Q+wfDENCqoLt4GGrK
 OPBpH0q4toznaTOUbzcrU4YM7JPJGfDf6obeLz6A/f7YOhMcmIEnYNEbmRhe41mYO2PP
 lx6Ik/d3StLm79LANxsD4MPkPFSyvy2KYnz31gfthgjywXAFLxgXpxQFf2hwdsr/jsK1
 tnXetN2oGE05UknWHXYsXJrgmY861IVOSym/NEPzAPc8O1pKcAL77PZjHpo8i7d8cC+Q
 NX6kzOogQ6ajA7ZZHvRd/Yw69ElKRYNYHwPLf6TNv5JdUb8b6w16RNGacyik3xrx5oUp
 faJg==
X-Gm-Message-State: APjAAAUr3kNqoXpXekhCuuwE0k9GIK5hrFVjAmtLnhIydbeEaSS3vX0T
 3zhbD4lnOVaVGWSo5IifzWC8HQ==
X-Google-Smtp-Source: APXvYqxGTg589i5WZUbOYu57f5zabxQ5xPih4ahJgsa+A/aq9eQGeINiR5EiQKH1BWDVHD4nU/EKyA==
X-Received: by 2002:a63:c744:: with SMTP id v4mr26137288pgg.370.1559540577657; 
 Sun, 02 Jun 2019 22:42:57 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id j64sm6660823pfg.24.2019.06.02.22.42.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 22:42:56 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:12:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] cpufreq: imx-cpufreq-dt: Fix no OPPs available on
 unfused parts
Message-ID: <20190603054254.gfnyfsglo5valg6m@vireshk-i7>
References: <64c450d4ee5119ef21ae744a3ca90d7172f973fd.1559130569.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64c450d4ee5119ef21ae744a3ca90d7172f973fd.1559130569.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_224258_984226_58039900 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-05-19, 11:52, Leonard Crestez wrote:
> Early samples without fuses written report "0 0" which means consumer
> segment and minumum speed grading. According to datasheet the minimum speed
> grade is not supported for consumer parts so all OPPs are disabled
> which results in stack dumps later on.
> 
> Fix by clamping minimum consumer speed grade to 1 on imx8mm and imx8mq.
> 
> Fixes: 4d28ba1d62c4 ("cpufreq: Add imx-cpufreq-dt driver")
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)

Applied with following changes:

s/minumum/minimum/

Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
