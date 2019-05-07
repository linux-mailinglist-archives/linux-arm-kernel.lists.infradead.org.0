Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C679615954
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 07:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEaa8V0viH0CQfVIpCrXEWWzE8t8t/Vnx36AXKTJDRk=; b=q6YH2W77NOxcIj
	xP5jxlBxp7+wnfkzoX1FgYCVNvJg8DvQMF39N7dOJBp0lIN278jxnXoL14nvE1XoR/gVH/1XUJhIf
	2L6RiYzyBMb0gUj2nNkJBZNt1co3fhX/1o43IIjj0jsZqinJ+BY+nLe71uRMQ6TVq/0y1sdoVJDkB
	FwnVtu8GhM2GwPBPhgAIlcboDANnZHqUcySWkzUxeWDtZrsjZFtg/WcByTLay7AY0YIK/Ocv6znBu
	8SrpPITRGyGbftsGQjY2PfckJYQUoCY0ezKirUN8kv41L+ipGcASyT2UBR47r+10MIM7hCKGw4Yvj
	WtQ6TrZT0dG1obFqi9iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsls-000107-Jc; Tue, 07 May 2019 05:36:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsll-0000zH-8e
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 05:36:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id d21so76002plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 22:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VNKbTifGUbZh3N8J6baY/xLBerod0ycXdrW8mFrYBic=;
 b=RJP5OM5e/qylC4xqo8j9urmE6TsYX5ZOKM3NqnTvItYfi2QMaSofkf1+wzeHlH+2xx
 EZ9dVKXwTZhpaJgTB1WsOylNwwBB1Z/X02Z2KIXpb/OSoUVeIxFAjM3iJqGYZ7vIdVxX
 cHAUAWNr+BVH6alNGKX+AY5hSHMubw43q9gnuL4ccrN1QuUk63CrUHTRtEakfj4GGVy1
 a2aEgxTQaO1U4VhEYYC58idOWvzi5qIbe5Kf/4CSmks4+LFQBIC1aQdp3603/0QXevqL
 xlfvwjxxHNGc2IzHSaLxhiVAX0p1O69obOxKwz0eq564LT6UXntkBBr6NEHwg/vtvEVW
 Ijww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VNKbTifGUbZh3N8J6baY/xLBerod0ycXdrW8mFrYBic=;
 b=Se2ZZR+oqIRmYSJilJS6KDmAPtTQvr3oHu5TpGGAWJSRMJxYJjS3X3//kv4uzmJIL0
 wytzWbZkrvlnTrAoZmP8oSlRpW9WVqe4lO/Op1ax6Hz0/nwQPTleL2wTCQEIeZYumdq0
 efjqYTQgb0Z6GaM322tB/N9fH9fN6z550pU+OqyRY8JGWUxk5rJXBrmSl1uG3NCPmZs6
 Dbb/Gv0qqJWAGwo2YpBruIelGtcoCGCAr5y6m50VhaTAa7hqhDJvZ3n/WvEVdysZ5WH/
 BFc1NcxBIqDWkYMc/BKlBpMCSkpRrcPAuIxQOximkp2te3HOE7ph0Ysdju0EwhSF0QDS
 HLBw==
X-Gm-Message-State: APjAAAV43/AODu3gS43nz2y1GXvwIByUaMya7Fpms85jSzxx8zyjyESI
 5VXgHz9orAarj5wxnUF++ok8nw==
X-Google-Smtp-Source: APXvYqwDuFuf7s44xZ0+ugdb0iL0wlHswbYavlc/lX1z/63p4V4zDpqZIrXhkDiB+isPRs5T7shfjg==
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr36065678plo.32.1557207360104; 
 Mon, 06 May 2019 22:36:00 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id k4sm28301976pgh.27.2019.05.06.22.35.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 22:35:57 -0700 (PDT)
Date: Tue, 7 May 2019 11:05:55 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 0/3] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190507053555.tse4q5y6wfbakhth@vireshk-i7>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
 <20190503065026.qwroewhu5lxckqgl@vireshk-i7>
 <AM0PR04MB64343A9439DF8FA943BFE2D4EE350@AM0PR04MB6434.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB64343A9439DF8FA943BFE2D4EE350@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_223601_363407_45180D0F 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-05-19, 11:51, Leonard Crestez wrote:
> On 03.05.2019 09:50, Viresh Kumar wrote:
> > On 02-05-19, 22:44, Leonard Crestez wrote:
> >> Right now in upstream imx8m cpufreq support just lists a common subset
> >> of OPPs because the higher ones should only be attempted after checking
> >> speed grading in fuses.
> >>
> >> Add a small driver which checks speed grading from nvmem cells before
> >> registering cpufreq-dt.
> >>
> >> It seems that cpufreq-dt insists on adding the opp and regulator itself
> >> so can't actually call dev_pm_opp_of_add_table and then
> >> dev_pm_opp_disable
> > 
> > Well we can surely implement it someway if that is what you want, like we can
> > pass postinit() callback in platform data to cpufreq-dt which can get called
> > after OPP table is added, etc.
> > 
> > But disabling OPPs after they are added isn't a great way of handling it as
> > well.
> > 
> >> so implementation was switched to opp-supported-hw.
> > 
> > I will say that this is far better than disabling the OPPs after adding them. So
> > this is a good way of doing it.
> 
> The intention seems to be that dev_pm_opp_disable is used at run-time 
> for stuff like thermal issues while init-time opp selection should be 
> done in other ways.
> 
> Is this what you mean? It's not very obvious from API.

Well there are no hard and fast rules for using the API and what I was
talking about was as to which API makes more sense. I am less in favor
of using dev_pm_opp_disable() here as we will make the OPP available
first on the platform and then disable it. What if the cpufreq core
gets a chance to run in between and program the OPP which isn't
allowed on the SoC ? That may cause problems, right ? And so disable
should be used for things which are getting used just fine and at some
point of time we decide to disable them.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
