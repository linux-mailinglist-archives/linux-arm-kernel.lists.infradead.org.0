Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273B21F8D81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxJtYDBA3MFprOiJV4Np3o225x6eViSz07E5WJlj7Zk=; b=oR9k8nQ4jVs3hL
	qyJ/bbnYlRsdFTW+BSHdHanXn03o6bRLkpSt7GwCm3y4rmtlhlUtkKHx7xh6guHLy30Ui5zphkRH6
	W4Grm615yno+5EMwdRxZkCqL/UqQ7Vb+Sp76C9XBwzxWAln8lriqivfQ4WTfcT6zDGOfhKG2QTgOl
	nbA3AxJdNBONXi1H2/4KAab2nRtEapL2GsDt5sajqj7nWjA8XFp1P6QJnSF8f0HtwGWlCBEHFFdhJ
	ea1bTH6z7gsyK1PNRwx6oLJXBVI3qTvcMQNOLYXrNPHHhtTDT10klfBvgevWI08as1tbkYiEtB4iQ
	WSRT5HIAQTvFtmSoq7kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkiFn-0002mo-3q; Mon, 15 Jun 2020 06:05:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiFe-0002mB-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 06:05:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id 35so1027978ple.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 23:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5bLWZytUDahU9Q9Fv7DQgMv65OXHOnlVrBakZLDuOLU=;
 b=UAuaHkfe0wS768I6KfkDZMQ7Vwm9+9PrDtdzupG41ieIJxdIWi+51K9LbclsplhZWz
 zd1RyRwcg3qpWEDPTDraRvRhEBwBErRC1RL9i5y5htRQt05/MvWD2l81QUY+BA6JnqQY
 QXwc7TrAbrD7gDLztoZQx9UlqtuTvt5Rn9s7WDfeTvvVGjydkJbC9fE/K82vE+X5f0kg
 o0E9VuJH2EPGk3orcVSPLeMzJR5VE/pQ+bg+cEoIJoHfZ6v8Wwug2r6gAgYsKScRILzR
 GPTf/QcgtdVGBxjf/e9/OyPC9IUUIK8R7q7MMJfLWqJ1GdtuhJDs7X617bwyOGPuB00O
 /sxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5bLWZytUDahU9Q9Fv7DQgMv65OXHOnlVrBakZLDuOLU=;
 b=jrrC+mCN9g0kwXQJdOIEFi9alFUP8EOewxOILSBRloD8DSDmwpsUOIigggSu1qR3mM
 7vToUvm3mJ/6TbyRqN5WqFt4NSw59UTzdh2yRfRQM8+HfMtrjsmVwuZkRVfO0e6EfUQG
 25Yq6OuzLcWI8NfrKWu04A10xxzKVrTzKH4c2Pc07qQgv+0NP+gagJeFRj0H0o87QtaS
 z8Gqjruo6y45WgfPErhEuDASI2QFNiHelYGacAN88HF1NhqDDDbnMQvHB4EmLDG3qy51
 5EB1A9m/glEiD2zt56dIN8Ec5I4wDz3fU7kY74D2abwgt3XpAdUQEUQhyKYXxGhGm75A
 qwSg==
X-Gm-Message-State: AOAM532M62ggPimYnUVibx1rayHDqp9GXjxD970x8mc4nWOiBcJTT+JY
 6Y20CyAEDX2aLXOldZ/zWc6bMw==
X-Google-Smtp-Source: ABdhPJwBvfb/D2z4n4g+jVVzuvYhCqdDXa+Ze1hTZMevweB3Ou2NJS//V04kvss2kpjQzJ2/vZxMTA==
X-Received: by 2002:a17:902:8bc7:: with SMTP id
 r7mr1198369plo.57.1592201143894; 
 Sun, 14 Jun 2020 23:05:43 -0700 (PDT)
Received: from localhost ([122.172.62.209])
 by smtp.gmail.com with ESMTPSA id o96sm11712703pjo.13.2020.06.14.23.05.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jun 2020 23:05:43 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:35:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Markus Mayer <markus.mayer@broadcom.com>
Subject: Re: [PATCH 1/3] cpufreq: brcmstb-avs-cpufreq: more flexible
 interface for __issue_avs_command()
Message-ID: <20200615060540.tr5bzgeviqajijec@vireshk-i7>
References: <20200528182014.20021-1-mmayer@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528182014.20021-1-mmayer@broadcom.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_230546_099793_D6DBC8A1 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Linux Power Management List <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-05-20, 11:20, Markus Mayer wrote:
> We are changing how parameters are passed to __issue_avs_command(), so we
> can pass input *and* output arguments with the same command, rather than
> just one or the other.
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> ---
>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 30 +++++++++++++--------------
>  1 file changed, 14 insertions(+), 16 deletions(-)

Applied, thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
