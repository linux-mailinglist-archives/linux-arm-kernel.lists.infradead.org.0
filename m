Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D986A1640B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Qu91eLecJ+wbDxkt4P+PhQr/3+5ZQGMQQ+DgrUAuVM=; b=VM7yRUkRgFaHpR
	re4XnI/FERYQFiPy4DK2wvgftktCdPluzKjWGZ++5qC4LgXUPYh6HzTO4Wej4U5QHbC9bm3szkACo
	VbRljTEuTNhCC+e73On/BmdtVNK8CQyXvTIqC+29yMsWF3sZTvsxVK/G0OGiO3FgOEtv/xPrTMepF
	SLWej5VDBBlYfzMwKQ2MKrb3DJ8tdDHJ2BqqomkdqWhUjtitTphRDG+GbZVkIfYucRKWC1hnFzcnw
	T05kQdZSdC1VxJ8epRaZP/2YwXsdTZY7aFTAvv9UpDZEaUy3MARe0EuWU9eVEOfd28TPBjtER54TC
	kOgdtCW0mP619RwoRx7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LvB-0004LL-7n; Wed, 19 Feb 2020 09:45:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Luq-00043D-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:45:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so12226748pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k2sHioBgitIhnFo2YiqI9nwJzMPQopbQYiLEimmzsTw=;
 b=ZmeGzOyRoL/QKZoNhywtSO44lICxNKvYc//LurCRq9js/OnemH0nqVVJHQzSAPouuz
 PFpbfs4nWJirOWL9OuQk0htkEWzskQT0iXypda/eZmZccBW77wNZtP6t3ycSDynpt0rz
 mY8QUfeITpSvNZx5nYhAOhA3q12PKelPQ0f4edZqXN4ZXz6GDgNjB2tEHhBq3e/W+ei+
 iSojJIatqnbBNKw3bJSZ1H+3g23SLU4eGAh6KyEj19kQeu9F709Shn4Qc5NK76gO9hOa
 3Bxjxc4OnyT9FdwP9pU0SqVy5iqzxeMWuG1/cZkJsrkQ9JaCDG5lj/vR+ZqspXkKBPGM
 43BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k2sHioBgitIhnFo2YiqI9nwJzMPQopbQYiLEimmzsTw=;
 b=YBumkUNKFoX1VVnY9KPX2RKJp3MczMWKAIImZ/K7FVF1UB9N3owiLGFubH+B3Q8LRQ
 s2TH4Umk6fU+hXQFpxZ6GGCj3rRVNTwMwSVyVG9k18hqow6Rk0QOOGk/FSfkLdpPh/ac
 6C8fdFZ0gEh+WIjzXdh6qValEIomEOUW6ozGSRBFHgaBV8ZJzLeYsjFpM9HsrDr1zGhy
 d/seXP3v2I9iHXB9oc9fZNr81KIq3dQmFGI1vRhTjgWtlVCWKS8fMA+0KZJmqmxFd/HI
 dXw1CpegAZh39IhrAfd9Dn9FOf4o1hguKjKrqkZWMzDcM36gj/nJThbpddnhbyiKI5x6
 e4dg==
X-Gm-Message-State: APjAAAWcQ9Ee+x1kP8KXhauuy/M0BDakaH2UiHxYuUGH6P6ec2AUx6q9
 WSsSZs5i/2yp4RY6+7mcHcH2TA==
X-Google-Smtp-Source: APXvYqw0pFDneFtW688nh18WrP7X4OhSccbWrIqI7ONYhXzLatnBM/oxLz41sfwbFVhqaoqM6Fx3Ig==
X-Received: by 2002:aa7:9525:: with SMTP id c5mr26040665pfp.133.1582105511258; 
 Wed, 19 Feb 2020 01:45:11 -0800 (PST)
Received: from localhost ([223.226.55.170])
 by smtp.gmail.com with ESMTPSA id z127sm1931611pgb.64.2020.02.19.01.45.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Feb 2020 01:45:10 -0800 (PST)
Date: Wed, 19 Feb 2020 15:15:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Message-ID: <20200219094508.trftyq22rwozzdh2@vireshk-i7>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
 <20200219093526.hexyzhfuirb2lg4m@vireshk-i7>
 <AM0PR04MB4481A321F1881B111D247BEB88100@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481A321F1881B111D247BEB88100@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014512_419324_77C3F0CE 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-02-20, 09:41, Peng Fan wrote:
> In drivers/cpufreq/cpufreq.c, function __target_index. Line 2065, see below:
> 
> 2062         notify = !(cpufreq_driver->flags & CPUFREQ_ASYNC_NOTIFICATION);
> 2063         if (notify) {
> 2064                 /* Handle switching to intermediate frequency */
> 2065                 if (cpufreq_driver->get_intermediate) {
> 2066                         retval = __target_intermediate(policy, &freqs, index);
> 2067                         if (retval)
> 2068                                 return retval;
> 2069
> 2070                         intermediate_freq = freqs.new;
> 2071                         /* Set old freq to intermediate */
> 2072                         if (intermediate_freq)
> 2073                                 freqs.old = freqs.new;
> 2074                 }
> 
> Inspired from tegra20-cpufreq.c, use target_intermediate could handle
> i.MX7ULP cpufreq easier.

Ahh, sorry about that. Completely forgot this stuff existed :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
