Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DAF161061
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLa1osB0wLgclLTDlsfDMi57VrjkDsKdd9FreBCZS+s=; b=nsad2hS/YQrz2O
	tyeZevKra4q8RvkHNryc7aY/Gb4Ewve9LiB7EQtYFS6cuUe1snP/9OSIIUnDL398gbw+e2WtwS2Dk
	IMi47ScWzAtS6GqUa6t6rDkoL8X9zVRmDRYiRq+1ys8hj4/moisMr1m4WYTU6Vm9ANIoUTXNB6RWP
	Fy5EUd7zrtlEAVzDpnObbzHgfdcWsTLPp1nvtw5dcBjD6y00Ymjuzb1RwyIj/M2pLO0GHk2aqrva9
	mVJQZxd/tX0oUjguyd6eOqxWlnOOVWIlbnDuoQAAK4/3jQqveqFQX2QqhCG2RkVvY5nC+SZy+yg0z
	zyVJCB56F35VF4Oa4HOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dun-0002un-NT; Mon, 17 Feb 2020 10:46:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dud-0002uC-Ju
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:46:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id n7so8659189pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 02:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=svQBb2pE2QDQnmXJ2ubumEvy+YYsjoxi5Gck3ouG2Pw=;
 b=VSgxNoy3lGhMfX52oQ6yUxFZlbLuvX1XQGrJ37RVE7JDDtOq0NzfyJMiAndI/obPga
 FRIJ3BH8RMheb1KS0hm431MUigHhUUGG+yFg9AK1bOacl9Q7kHwDxSlI4rVMJ/vB9U7I
 Cu1FCwflCaNV+HHeDqUmzJqnn2xSXHEU8S/RzAj8b3M5Bt2tN8tK//B6VFvXhHvjPWDH
 yXzGIU9Sfwcx92rbolAciLKyx5QhtNHLqz3ngD107WFx/JadZ/5eZ9kRSly8CQTKQYuc
 HaYWqY1ea1mp19t2N8kdC/4n+m+YfQ1ZLfEfLLIPJ+/3+Ai1BpIEv3CYlUKgWBMT9O6+
 t/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=svQBb2pE2QDQnmXJ2ubumEvy+YYsjoxi5Gck3ouG2Pw=;
 b=FzuVBsjMCOCHv4MjGXqyOctBVlUM6K4KwdGSSKAQusINOy10NO0gGijCESOWQnEoaY
 kXP7q1BfpE9R9ur9JkptbUt+KmVEZOw19xCeao6bbsryfUvwW8N3VrZu+7Pit7M1O0MH
 N545YPsUtYS90ingn5ZRMkk3sOHaJgPh5V+U7qv9qoDxI/NPU/7ucZA7sX7IlxVYCfNR
 ePzavojmCSRr4iVr5Tbxo6Ny3BGTgM3/Hh9RvLyKumFnja1d0TwguzqjoMX6OTclsLnG
 LYC0QERdydj2b7xWELqdQSxAPPmNjThih7QljQBduoXzDq+Q2UQ460iR4UOqevfqifPS
 aXfA==
X-Gm-Message-State: APjAAAVGiZquRSgb3dtTmNrdX7/KiTWqG6o70ZfAtmoynJhRTltiuamM
 jyQPkyDBd2V0DI3kQfpe8rme4g==
X-Google-Smtp-Source: APXvYqyXp8U1tk+ME6RA6QMdmXVIxA4ED5Cr/xo6hKDH+QebkM5tx/yuEXLTrJzkQ3LHPLrBblH/nA==
X-Received: by 2002:aa7:9a8b:: with SMTP id w11mr16691847pfi.38.1581936362610; 
 Mon, 17 Feb 2020 02:46:02 -0800 (PST)
Received: from localhost ([223.226.55.170])
 by smtp.gmail.com with ESMTPSA id 199sm16748003pfu.71.2020.02.17.02.46.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Feb 2020 02:46:01 -0800 (PST)
Date: Mon, 17 Feb 2020 16:16:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] cpufreq: imx-cpufreq-dt: Add "cpu-supply" property check
Message-ID: <20200217104600.5hkb6hclglb2x4fk@vireshk-i7>
References: <1581932575-13177-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581932575-13177-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_024603_690997_35C9DE74 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17-02-20, 17:42, Anson Huang wrote:
> The cpufreq-dt driver allows cpufreq driver enabled without valid
> regulator assigned, however, all i.MX platforms using cpufreq-dt
> driver now require valid regulator, add "cpu-supply" property check
> to avoid i.MX platforms' cpufreq enabled without valid regulator
> and lead to system unstable.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index 6cb8193..0e29d88 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -31,6 +31,9 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  	int speed_grade, mkt_segment;
>  	int ret;
>  
> +	if (!of_find_property(cpu_dev->of_node, "cpu-supply", NULL))
> +		return -ENODEV;
> +
>  	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &cell_value);
>  	if (ret)
>  		return ret;

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
