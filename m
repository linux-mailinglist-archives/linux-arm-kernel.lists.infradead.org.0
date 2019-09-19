Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046E3B74A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpYpIa93yM4yNzdIbBaItVjigdvPRbgqQ0z+JadCA80=; b=ZFDDvwqdLj8256
	TiKMS69gKav1LjgzjQYlFSdWFo01Qv/sU6EwwrF21PXkXlhSukv16daaChTmR5M85Kl/k1xkodywz
	nr98d9jxDkbfJBUwJvvFcBwme6SJ8rtwlQat6sygf3/rufWJ8tQHCD6Q1YyNv23K9B4oDzi0Lo1X/
	U4MIG6hVFwoIWGbVEzLU27ZrUh0kFEVUaLX5++SIJJaXE7oc1LnGmmETmHc++5bp4pFQkV0QWuzqR
	tGWm0eEW4VrBMeWjIAZh7KL6G57RQuc7vPnZVs6fJM4ZLSXskl6dadLTvtcqJa1UbTck6forIpLKS
	LXEiajJheDFvdhnm3ogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArOB-0005lA-4e; Thu, 19 Sep 2019 08:02:07 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArNh-0005ie-I8
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:01:39 +0000
Received: by mail-wm1-f67.google.com with SMTP id b24so2763533wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 01:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9l/Q4EUeY/MLFd+AQm4TkiqnhshHiOklBHU3BARdFdE=;
 b=aFYNjyi1bpD4zDOo6VWRruxI1piOuLnaTC1t1DUnDGw7AFuKVjuV/D8KFSUsF5DAH2
 hJmgy7mg8IAn8ld85OZXA0OF/39G3uerWOuwQ9MB8KYUYUuBOXFO2/N3kBS7fHv3moAF
 aJldwuDJTolJNNRmziAocZbDDobgviuLPh7YoMFNZh/qQeVwm7555HRINwmx/KpTgUlX
 jmnWD5K1R/ayLp4tSreuhZ7UD7XmDj3Aa5oJty/7BZhlpJv71XuVsLwjhYzvlc8uCTbC
 glxivUrzS0G7TjLkZ9Am1fqxmGXtUEXmPptpMwFowBIfhpZRO89wyy8MvhkpEBqPAA12
 9IxQ==
X-Gm-Message-State: APjAAAXlqYoVMrWafgFfe2zWFmYsDRo53ksLXduuEIzUYJGAtBoU8M3E
 Bn0NCPFEN+mIyrNQ+GYDkJk=
X-Google-Smtp-Source: APXvYqwkmLUV4hPJJcWaqDDccNR6SsgGU7jssMHyEYDdwsyrDM+pO+zL1vqcxlXKfE+aZippLMXTaw==
X-Received: by 2002:a05:600c:291c:: with SMTP id
 i28mr1559297wmd.98.1568880094991; 
 Thu, 19 Sep 2019 01:01:34 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id u10sm15352265wrg.55.2019.09.19.01.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 01:01:33 -0700 (PDT)
Date: Thu, 19 Sep 2019 10:01:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 5/9] ASoC: samsung: arndale: Simplify DAI link
 initialization
Message-ID: <20190919080131.GD13195@pi3>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104702eucas1p213070d06c69c4836d15d071b1926e60d@eucas1p2.samsung.com>
 <20190918104634.15216-6-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-6-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_010137_871419_F672AAC7 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:46:30PM +0200, Sylwester Nawrocki wrote:
> There is only one DAI link so we can drop an unnecessary loop statement.
> Use card->dai_link in place of direct static arndale_rt5631_dai[] array
> dereference as a prerequisite for adding support for other CODECs.
> Unnecessary assignment of dai_link->codecs->name to NULL is removed.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  sound/soc/samsung/arndale_rt5631.c | 42 ++++++++++++------------------
>  1 file changed, 17 insertions(+), 25 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
