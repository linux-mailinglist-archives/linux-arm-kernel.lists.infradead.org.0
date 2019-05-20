Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6E523122
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWfYyRDBfIRjLqaayx7iomF3Vl5Hr9QOWIPRvZmSKGE=; b=PspQdJ6IMErF1r
	v2IhbE/tLejcz/VzaxLaIXx2EfpQUhLncjPI2uroqXXAo8seoZuHT3UjS+1seEhb4UzoRQJFlAnID
	tIWBj9XJyYod+y7NU6tcDuU82Hss4TOCo66+8fR2bmyoMuqQvjmi6HnS/SwTND5rIf+TJt65ZXKjT
	QWxwxTHa/tJz7Z03aQON6k27F3L1gPwaSDW1AmndyMlYHFoiXFYjWQ4e+6FjsfSL+/jL+9ivbkNGR
	eXzJD8xhD4K6icABiwnw10RtveuMNABR8mtVr9Bm9jLQopa7J9kZJuLchmo6w6Z6qjpe7onIYZEC7
	N2ifG4RMiSxn+kv6fVQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfJX-0006Dp-Mi; Mon, 20 May 2019 10:14:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfIp-0005ha-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:14:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id z16so6562877pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gSl0hdak9nrx3AjRA/ypcoIYXLtCzaU4jnEbvPcvNt8=;
 b=JRFd3PDnga0E3LWtPoEqEV/39WriE8SzZ1OaF7n/NU7nJdlpwBoLgwLmjKEJpAvjPX
 XZ1SmHbXXZ193KXruJGSbPsK93YJQfC5wXGkZOU3cIdhtTLLZLncciU/VgFYv4ypoWcA
 UiHM6mh2RtiZrTevU5N3B6/lVDmfAWk6wlP9NRY324hi0FxwNsGhi9wdsu0rHb0Vhx/n
 MGClOrhlg89rFShwBGqLaf99mD6KezVo7RAEdSWVDA5RW2t3yQjpL46CSYkkwWwS81n8
 YTa9BrWd0ZSm0L2gZBK3heWtESBBTKDrSRGtSF/T6+IdbseVqzVpkKLX6PPaHhg3PXvH
 S4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gSl0hdak9nrx3AjRA/ypcoIYXLtCzaU4jnEbvPcvNt8=;
 b=WAkdUYSxrmfvZA3hFJDUicautDva6e3KMW3BMDWbBLWZ3i1gb7w/57QeygQTANAhtW
 v0KRwKR3+10RRD9N9VsPyE2SGXNOZOmHIOrS+3y6fPaW7R1dLrqkp+ArHOqA8h7QD0rf
 ImMa5WF0NJCGyEqeC3kAJGJiG2d7r8PfOvqmU95W2AhOoO21akgASfAF+WvICDIBgMG+
 +UVu9z9auOGT3g/PJFWLPg6W6ZBV4w8Qd5i+/dvyNDL4IfKe2eRdS79f2cCsLXLxtvS4
 +5dwW+DWLgkWd0c/d5o44PD7NZ8fx+kGf4MI1v8DfNttqo9RQrQGDHEv668u5xAjLz1N
 CdWQ==
X-Gm-Message-State: APjAAAUMf31FWCdEjU0IJFGrIS93QvLCsrWT1Fbx/MwyJYc/OVxa3Z4R
 HDaRzlxJOyRV23tT/R9oOaUyZw==
X-Google-Smtp-Source: APXvYqyOW0QZtrH8O3rgAfo54rMSqrN3OZdfxdsodXTr+NokNvxXkGxPwDt1wmWe8pWIuVP0SPHygA==
X-Received: by 2002:a62:1ec3:: with SMTP id
 e186mr33157231pfe.197.1558347234346; 
 Mon, 20 May 2019 03:13:54 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id i17sm22287324pfo.103.2019.05.20.03.13.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 03:13:52 -0700 (PDT)
Date: Mon, 20 May 2019 15:43:51 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v4 0/5] cpufreq: Add imx-cpufreq-dt driver for speed
 grading
Message-ID: <20190520101351.huda4rmpdzaegnj7@vireshk-i7>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
 <20190514071322.avosfk4fzz2hzzx6@vireshk-i7>
 <20190520071417.GU15856@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520071417.GU15856@dragon>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031356_403531_292FB982 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-19, 15:14, Shawn Guo wrote:
> On Tue, May 14, 2019 at 12:43:22PM +0530, Viresh Kumar wrote:
> > On 13-05-19, 11:01, Leonard Crestez wrote:
> > > Right now in upstream imx8m cpufreq support just lists a common subset
> > > of OPPs because the higher ones should only be attempted after checking
> > > speed grading in fuses.
> > > 
> > > Driver reads from nvmem and calls dev_pm_opp_set_supported_hw before
> > > registering cpufreq-dt.
> > 
> > Who will apply patches 3-5 ?
> 
> Me.  Will apply them after the first two get applied.

Applied just now.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
