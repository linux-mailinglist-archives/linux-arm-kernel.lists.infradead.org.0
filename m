Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7092AB815C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMKLr43Z8wtaLDFimJahrueA46tdsH+deFm+2C3BK00=; b=eYxyaOJng+POzh
	N5ZEU3hBFJu2mR26XbCqXoHgWM4vigvqfzTBODsOfG0teyUGoVZ4bexMlbzuKggJhycV8I9aoptbl
	UQIm+RNjw2MCHn2zfNbZhHvt54uMdtDyBSbkGeAL9mZ+VYFnVQRlvn6S6cF1/KDvLLfKgfWfZ1qCO
	Y/vYx0nS7vDiHOHseIL9hFyhXy9okSqa68j79NB+KAgSR+iu9RKkv6gPiYcBDGu0IPm8ZAqjFDlR2
	s35l5YSF2rl9FXnOCymVchVw2mOMiQx+bjkdKArbmsjGVtR0/sg7ByFrhjciZ6sV+t1Y2gXqR5VNm
	42PRmGcG5RIMM/nmPwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB23U-0008Ru-TJ; Thu, 19 Sep 2019 19:25:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB23D-0008RH-L6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:25:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id g3so860044pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cRUM2Bgk+uo7XLX/Jy2FrsXWAee8Of1P+PViX2GKNZY=;
 b=Wtb8HIE8vSdrRJNHZ2wmfbgGrAtk3ivSxMNFGnSByX+FxJcPGP4rAB6aVWjW89hdFe
 pYYji/ebkFmwElkLjlB5gfhwZshuG6GyHgpQ6OUxqgFbFCH2I40jlTNCFNzbNl1Ikf9u
 xEI7catyJ1zqMSoXBGHLZqRSe/5bskK0AKwiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cRUM2Bgk+uo7XLX/Jy2FrsXWAee8Of1P+PViX2GKNZY=;
 b=qkizTsrQ7W/tEg4MWypUeIhWm1sUNf04M1fMC00Jn1pDqnKdDj8iO1ex/04LGPvNOL
 L+Yng7N624r3V3/OFjDGaDr31gyCCaM9osgWVCxoZuHQBByZQPeHXAKM5s/XklqnjX4T
 EVh9pCNiqSrIXgIRPwtM7vfyVef1A0run7Tpr0CFxu9t9ME4WFUnWNBuqPSDpS1Rhv4b
 0iyn1+dCb+G9q0WY/pSULVoZKZKGvJGfWLy4j9kcW8OqGK6CyILoQ9RIo157PlQMbnQU
 Zeqvhob8oYPt7MmtvcxbIvRDBAi0lGifVppFJQ/f1FyRN4VBB53bNuMw9eYAd9oQcI6X
 VIMg==
X-Gm-Message-State: APjAAAXqAFx896LRB5aC8977VuS3GiAp8cK+7kJQlH1eckxw0VUtsJTi
 B33mO8vPZCYBBBsfQhT0yyU8tg==
X-Google-Smtp-Source: APXvYqwngcFum1vlZgnTY7YySXFB/HJZmBru5y/kt5s7NFfKVBnC1yOjxATiB3VpQrksdB/U2eFy0w==
X-Received: by 2002:a63:515a:: with SMTP id r26mr10663846pgl.121.1568921109183; 
 Thu, 19 Sep 2019 12:25:09 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id g4sm14154791pfo.33.2019.09.19.12.25.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 12:25:08 -0700 (PDT)
Date: Thu, 19 Sep 2019 12:25:07 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 1/8] PM / devfreq: Lock devfreq in trans_stat_show
Message-ID: <20190919192507.GW133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <7d8f4d5c608d45ba19cdd52068fe6ffe30de67c1.1568764439.git.leonard.crestez@nxp.com>
 <20190918212836.GN133864@google.com>
 <VI1PR04MB7023CAC70C08BF3963301A67EE890@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023CAC70C08BF3963301A67EE890@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_122511_731538_4D68074C 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 06:42:22PM +0000, Leonard Crestez wrote:
> On 19.09.2019 00:28, Matthias Kaehlcke wrote:
> > Hi Leonard,
> > 
> > this series doesn't indicate the version, from the change history in
> > the cover letter I suppose it is v5.
> 
> Sorry about that, I forgot --subject-prefix. It is indeed v5
> 
> > On Wed, Sep 18, 2019 at 03:18:20AM +0300, Leonard Crestez wrote:
> >> There is no locking in this sysfs show function so stats printing can
> >> race with a devfreq_update_status called as part of freq switching or
> >> with initialization.
> >>
> >> Also add an assert in devfreq_update_status to make it clear that lock
> >> must be held by caller.
> > 
> > This and some other patches look like generic improvements and not
> > directly related to the series "PM / devfreq: Add dev_pm_qos
> > support". If there are no dependencies I think it is usually better to
> > send the improvements separately, it keeps the series more focussed
> > and might reduce version churn. Just my POV though ;-)
> 
> The locking cleanups are required in order to initialize pm_qos request 
> and notifiers without introducing lockdep warnings.
> 
> pm_qos calls notifiers under dev_pm_qos_mtx and those notifiers needs to 
> take &devfreq->lock. This means initializing pm_qos notifiers and 
> requests must be done outside &devfreq->lock which needs some cleanups 
> in devfreq_add_device.

Thanks for the clarification!

> This particular patch is a more loosely related bugfix. Devfreq 
> maintainers: would it help to post it separately?

If it's just this single patch it probably isn't a problem, I'd be
more concerned about multiple unrelated patches or if the changes are
complex.

> >> @@ -1415,15 +1416,20 @@ static ssize_t trans_stat_show(struct device *dev,
> >>   	struct devfreq *devfreq = to_devfreq(dev);
> >>   	ssize_t len;
> >>   	int i, j;
> >>   	unsigned int max_state = devfreq->profile->max_state;
> >>   
> >> +	mutex_lock(&devfreq->lock);
> >>   	if (!devfreq->stop_polling &&
> >> -			devfreq_update_status(devfreq, devfreq->previous_freq))
> >> -		return 0;
> >> -	if (max_state == 0)
> >> -		return sprintf(buf, "Not Supported.\n");
> >> +			devfreq_update_status(devfreq, devfreq->previous_freq)) {
> >> +		len = 0;
> > 
> > you could assign 'len' in the declaration instead, but it's just
> > another option, it'ss fine as is
> >> +		goto out;
> >> +	}
> >> +	if (max_state == 0) {
> >> +		len = sprintf(buf, "Not Supported.\n");
> >> +		goto out;
> >> +	}
> > 
> > This leaves the general structure of the code as is, which is great,
> > but since you are already touching this part you can consider to
> > improve it: 'max_state' is constant after device creation, hence the
> > check could be done at the beginning, which IMO would be clearer, it
> > could also save an unnecessary devfreq_update_status() call and it
> > wouldn't be necessary to hold the lock (one goto less).
> 
> Now that I look at this more closely &devfreq->lock only really needs to 
> be held during the stats update, it can be released during sprintf.

right, another simplification :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
