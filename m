Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B13920C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqLp05NlebCKIUIpBHgJ0Ys9znxxH+3R2LaMCt284RA=; b=UPKZ8Yp0nqebzf
	sV+PyVxd4gmENKBxe8GS6icyPLO1dOK/jHMiJoq9b2WXWUcZFwa1j7p2iHz+JaORfjX3hUIt1L3kD
	gVYuyqgcorLqnFhN+NFf+qyw+MOZQA8lEyGY76Hf+qXcQl82DtSheHYe8POegoaut9QlaLUwLj3gp
	krteH48Md6yEyoFaxbIoVfQa5/1DBFatKXJKfOHuYnFbY9c7UdrwZxEeVUVEEbuD3UQXIzRpcwhv4
	fjiHG/dhTo89/g0JBgLZ7sm15Fl7gd9X0AO8kQPM/o62Aehw8FxxjR8tqVOJq7E6W6j2/NtSUzuR+
	/fTAA9CthJky/bwjeChw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzeNf-0004YN-Ea; Mon, 19 Aug 2019 09:55:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeKV-0003sG-VN
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:52:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so908306pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 02:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xGqFoegYFFErF3k96plvP+BoToF4gSQapUoW0Zrc4EI=;
 b=tjBog+GFQi8eVR5IFt2HYmaEBLiJLQHxwfxJD321hYhOdjgK5Z3oqNtUNEwz5/DGUM
 CgK2pwBoFXfPXDH/+suP2sgFZzD50XlOsXvAZez4WXG03lgGgRVPxog7eKGf5EjlDzna
 6cIC492iG1do16x4weU/6N/DzEdydwxfFqjgp17sNZsOiNwPlY9dDzaDFb/7KRppt1xh
 5H/dJvmoYdEwLttrr8+OCIrrbNijeXHXIkqoaF7oWUDtXew+OV5iEODi5hhMFjexa2dT
 GAZLnxaJobyzQ8g5eE2mEWeChuuIqMtdY08D8RSuhTxX4hxQUt2qSDTYVxXrPZ7Ml5aF
 wNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xGqFoegYFFErF3k96plvP+BoToF4gSQapUoW0Zrc4EI=;
 b=g6wRtz393D3lilKA4eTd7uN/mVyXjERf2h7tdHoLtwIpa+APNh5o0EIhMd6CrcKW3X
 ueaeZyGxb3OtbIX0AcC5XU6qis6rLXvEWFA6o6hvsV9C7XYSp655+Sa1L55HfKb8gjlM
 79AkabyfpDopj3Xw0Q/C+CVx7VRkJH+o3yFzU8CHWDBNruRK0pEYJBj94vLCIBKhlnEA
 GZtqzd3IwhXPRsK2Vf0JLRkVN6/Z8UYLeYP+HuYBGsbxuE/BLLS5wS6l1jLBXyoKasqr
 f08Xfxs46+jrIU9PKhRgv4jYGBBCgMtPjr0+SpO7+KLJ8C+PXiuk462iI8LWdBDzukRd
 HYzw==
X-Gm-Message-State: APjAAAXuTdgrLYYKnMtr8BT1rSgk21lZjyf/6Bbtqzi0qlQmTAF7y7Js
 8KIpWkMdS1IOGOYr6Wkx5vpVNf3lgiU=
X-Google-Smtp-Source: APXvYqwefojTPrDuHM+2Bz8IW3MPXqRE/59Iakl1TK1LeLtzUvPNSDdCUFmUg0z973E3A07y52xJwg==
X-Received: by 2002:a17:90a:fd8c:: with SMTP id
 cx12mr19976973pjb.95.1566208318998; 
 Mon, 19 Aug 2019 02:51:58 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id b126sm2036018pfb.110.2019.08.19.02.51.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 02:51:58 -0700 (PDT)
Date: Mon, 19 Aug 2019 15:21:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 1/8] cpufreq: mediatek: change to regulator_get_optional
Message-ID: <20190819095156.m3iltf5ni3pprrt7@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-2-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-2-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_025200_292925_65622798 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-08-19, 21:31, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> For new mediatek chip mt8183,
> cci and little cluster share the same buck,
> so need to modify the attribute of regulator from exclusive to optional
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index f14f3a85f2f7..a370577ffc73 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -338,7 +338,7 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  		goto out_free_resources;
>  	}
>  
> -	proc_reg = regulator_get_exclusive(cpu_dev, "proc");
> +	proc_reg = regulator_get_optional(cpu_dev, "proc");
>  	if (IS_ERR(proc_reg)) {
>  		if (PTR_ERR(proc_reg) == -EPROBE_DEFER)
>  			pr_warn("proc regulator for cpu%d not ready, retry.\n",

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
