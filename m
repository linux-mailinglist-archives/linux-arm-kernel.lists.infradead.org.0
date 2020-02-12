Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18704159FCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 05:12:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06wf/1zl9ReO89hAjMcJYuTqY5Vv6N/3z7cEP2KODOQ=; b=Gma7HvVFfDkgtX
	ltf2162kBFk7UZhpTCoDPGBao6aWfNF+YyD0FMwAyjhIE9YkgWchVNngZYaz/aZ1H8XeflOPmbByr
	MmpUN5/ycE9ixQ2foML8y4/M3WdqYKMvSi23E2g3TgBjixBs42GWDhUW78RFU8W48+LknYcFdRIby
	G2FioW9U3mZfDfHJ5JPq2rASAx3RH13aHLrobQfacJxkYb8jBn/6Dbn/awMJabQjtcJnhZPJ8UR+R
	Et+PA7Z5LIL45DetuNqxNNL74lZtE6Dj2SalgyyFQS1/fvo7OJHnGIZwe44R0ftyoZq/Djzkb03Pz
	AgM0cCqNADF8d6/AhQxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1jNv-0004Ud-AA; Wed, 12 Feb 2020 04:12:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1jNg-0004PJ-TY
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 04:12:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so422457plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 20:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Jy/zB+xOL5nPObGCHxqMcbl36CmX/r8e+AWwdmpg5FA=;
 b=kTdFbduhf+vlbjAtNy5mOMGpJaWXJ1fZIjyBn6yaobdbhxs05n6d7nDN6MsgWc4VLM
 ur/sDHzkl9kxuo1jilgnIf6fSaeSvsscZbjjnT7FwOZiOOaiTuontfitBcC0tsYYFhUT
 oJFe9KfgAqkxKDHEv1Q7/M+g53bU7RVMmFV81hRZtqZ6DVzjKk6L0EN6LocBUYz4Mnz4
 NjA35QToCfTcR88dJsKJ1NMoiQZcTnU5gf6aAOJIs4SBsk+QH5b/pMZ1a/I2GDiFjxSF
 uw17jzm7YcoMVMrt+FxRsMhLYMu6Go6vuUO3mNTYxy/0a84TcnRkNm8y89ym1anldIB3
 zjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jy/zB+xOL5nPObGCHxqMcbl36CmX/r8e+AWwdmpg5FA=;
 b=Voz/G0EP6lyQZDNj1Y09VQbo1fm0TbwT4wV/GaB2FVkgQMwCDNOXP3JmOzZHA4lD7U
 ljeblhkcXAO4SUJ50AZHjv+8QUZdd2Wm6WBvp90GDlsUdXleEXKP7jEvwdYX0p4tKzkx
 LxuI7AHzRZDZ6VH9R6XEQAYU70iSNPz2iP3y4vY0fhi3+YxLO5lBmmA2BJ6wA/4wz7o/
 r9cwWXvmOzi8RR8nXVgUyKWXqd93CiY2/FeBD6mRWCV7vAEru0dqFf1153tymqiuuM4f
 mZswYtYh54pRaD3nWBfQLTI5/hUauUdju5Kgh8jAPK3QzITrcq86oyjso1Lxk0V0z8xb
 gBrQ==
X-Gm-Message-State: APjAAAX2G+aJok3vFC5Rd9RPwpezSlboz8mwjvQUdvwHZno14pXFmtH5
 p4pa9NbNPnnGsXlL0YjbtvNXVA==
X-Google-Smtp-Source: APXvYqyGcMwvogtUbFEudaMZbwu7FFf61xVhx5IVpiLcW7d/mx1vFzolDdo2fp7ipsj7SK+BkHYjog==
X-Received: by 2002:a17:90a:b10a:: with SMTP id
 z10mr7853600pjq.115.1581480725559; 
 Tue, 11 Feb 2020 20:12:05 -0800 (PST)
Received: from localhost ([122.167.210.63])
 by smtp.gmail.com with ESMTPSA id iq22sm4970628pjb.9.2020.02.11.20.12.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Feb 2020 20:12:04 -0800 (PST)
Date: Wed, 12 Feb 2020 09:42:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Subject: Re: [PATCH] cpufreq: imx6q: Fixes unwanted cpu overclocking on
 i.MX6ULL
Message-ID: <20200212041202.32ksqt6hjihkw6kr@vireshk-i7>
References: <20200211115807.57292-1-cniedermaier@dh-electronics.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211115807.57292-1-cniedermaier@dh-electronics.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_201208_951358_8B8311C2 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson.Huang@nxp.com, shawnguo@kernel.org, rjw@rjwysocki.net,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-02-20, 12:58, Christoph Niedermaier wrote:
> imx6ul_opp_check_speed_grading is called for both i.MX6UL and i.MX6ULL.
> Since the i.MX6ULL was introduced to a separate ocotp compatible node
> later, it is possible that the i.MX6ULL has also dtbs with
> "fsl,imx6ull-ocotp". On a system without nvmem-cell speed grade a
> missing check on this node causes a driver fail without considering
> the cpu speed grade.
> 
> This patch prevents unwanted cpu overclocking on i.MX6ULL with compatible
> node "fsl,imx6ull-ocotp" in old dtbs without nvmem-cell speed grade.
> 
> Fixes: 2733fb0d0699 ("cpufreq: imx6q: read OCOTP through nvmem for imx6ul/imx6ull")
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> ---
>  drivers/cpufreq/imx6q-cpufreq.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
> index 648a09a1778a..1fcbbd53a48a 100644
> --- a/drivers/cpufreq/imx6q-cpufreq.c
> +++ b/drivers/cpufreq/imx6q-cpufreq.c
> @@ -281,6 +281,9 @@ static int imx6ul_opp_check_speed_grading(struct device *dev)
>  
>  		np = of_find_compatible_node(NULL, NULL, "fsl,imx6ul-ocotp");
>  		if (!np)
> +			np = of_find_compatible_node(NULL, NULL,
> +						     "fsl,imx6ull-ocotp");
> +		if (!np)
>  			return -ENOENT;
>  
>  		base = of_iomap(np, 0);

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
