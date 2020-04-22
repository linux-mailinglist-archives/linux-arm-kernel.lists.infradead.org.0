Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E151B39E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 10:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3pLe4HNJgAfgMqFK3l/KLWEeorpypWIc5N5QdZ5Vys=; b=kAEgZg0iJiSG6P
	ytFsrYjZFphhS2EV6E/WSdn2JtXZ6v8vwJ/AB9E3LQiSF3RpZPn8PmSbENr/Q9Q1otZaTJqRiaUhQ
	YKNyrHsuAtbVIfxyG/8Hckyi5gNEZEe9X7zhdZx2K+/iXAHlGWovkbOahnro7GIpCxijGtQ0p8Emh
	JFwA9i8SJLYDbsS2zFoO+FaUa1SBP9sPA8EQaxQLZMA9aJe9wP0aVCrQe9ZOAWmzIbzDmkBENu5tA
	XDhanRbEel4bANdhiEBoedZhcPOm5TZ+Tero8A+6nQYyDC/IgQWiJ3005kZwJrW35S6ZAo4w0El5m
	yV5BpPwWcWbP1wWnsYGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAbF-0004ZY-1m; Wed, 22 Apr 2020 08:19:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAb6-0004Yd-33
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 08:19:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so728939pgg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 01:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EekerngQJFduX7Ew7inUaoXZRPxCiQxtmSV8TYCHEcQ=;
 b=qCwO0eD1AZwXFk3sb5mQcCFCpRtFPUmfPK9zYT8T5Ve+YHt9i6UnQMPkY3Aadh6wob
 XGRRa6+gg8IaXAsm9QPZkT+LepaJgJRjo5m5uuFz0bBQHvHetp/ZmOuZq0ki4nLKOjlK
 evfriyWh7Ywq7Z2uJyjSDiE/vazm725b6xVIn4la+5cjFTLEch4ecIdzk21SYMZxDcXu
 d4Z/PMxNMUnCBwYwcdTNIq9u2iv+TX15szgevkd8sk/UR9cVZtrsJaRcY3/0chKgS7A+
 kCgrMjqcvXsuSLrk7kRrm6AmBK4OWWLfwQe8uQvM/4DYYjDH3fIJl8h2uPCrBrqFXjAm
 UZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EekerngQJFduX7Ew7inUaoXZRPxCiQxtmSV8TYCHEcQ=;
 b=V44e/lXukN3Cfs7QRaw3rE85rK6SCnPmZ2834aZIVIgtjtF4g/lY2zif2301WESpAc
 AfFKfxG6ewtQfkaUP+tL1fC27K1fhxsTtiipjaZ7B2IeoDvz6C1awc9d85+n4PnpOuLf
 TIpfOK7FUXLWXwIWsDa9XoD3juIbrM5/9skmmmsaEXtwnkSjS3vZ7bqdTpd2kDbwoJOY
 95sVzON55j7eUKXNLBZQqBDlnRO647LMuWuus6bIUSMhcVDudBLiFY+slbHnb+exC8Hj
 XeQzXY2pKjHP2hRtkE7QZJKpYvnutxe7As0Xt0OGgWeofy6bXUBFU2CATsjE+0VeGBqG
 Jacg==
X-Gm-Message-State: AGi0PuYtlR/W6HrM3+Z+5tOBocUkMW70vOnYZhpS0JqI9TChyuT5HAdK
 pEUWGb6ca273e/fjG0Jb0TuTGA==
X-Google-Smtp-Source: APiQypKPAF045iErsq2ppQZYUssCS2doi5whkj5j7xoi1bp1IpONf49w0ItUKHzbG5D/VjfivgnGcQ==
X-Received: by 2002:a62:1ccb:: with SMTP id
 c194mr14373983pfc.325.1587543546649; 
 Wed, 22 Apr 2020 01:19:06 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id c14sm4335274pgi.54.2020.04.22.01.19.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Apr 2020 01:19:05 -0700 (PDT)
Date: Wed, 22 Apr 2020 13:49:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 0/2] cpufreq: add i.MX7ULP support
Message-ID: <20200422081904.ls6z5yjrcjvow3x4@vireshk-i7>
References: <1587369314-23452-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587369314-23452-1-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_011908_161993_624349C9 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson.Huang@nxp.com, linux-pm@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-04-20, 15:55, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> This is a splited patchset from https://patchwork.kernel.org/cover/11390589/
> patch 11/14 and patch 12/14 posted 2 months ago.
> 
> This is to use cpufreq dt driver target_intermediate to implement
> cpufreq for i.MX7ULP, because i.MX7ULP has some specific requirements
> for core clk changing.
> 
> To make cpufreq on i.MX7ULP full function, there still more patches
> required:
> https://patchwork.kernel.org/cover/11491149/
> https://patchwork.kernel.org/patch/11390559/
> 
> However with this current patchset applied, it not break anything,
> because the cpufreq device has not been registered, and opp table
> not added.
> 
> Peng Fan (2):
>   cpufreq: Add i.MX7ULP to cpufreq-dt-platdev blacklist
>   cpufreq: imx-cpufreq-dt: support i.MX7ULP
> 
>  drivers/cpufreq/cpufreq-dt-platdev.c |  1 +
>  drivers/cpufreq/imx-cpufreq-dt.c     | 84 +++++++++++++++++++++++++++++++++++-
>  2 files changed, 83 insertions(+), 2 deletions(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
