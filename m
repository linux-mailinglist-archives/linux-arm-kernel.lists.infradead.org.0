Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FD6BCBBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X2IV1jilnyPnDxuKjxn/Y1XGTx6eJrayxvR4omRFEg=; b=uIGSMzv3lN/jKV
	l8bSnY43Wihm8YWFvFM4AkWELiJES7iyOnI17Xp9UXxAf+H89/8fZhHTIXQ8rJaEyhVxkr1uN8OgK
	pYxQdP+ppQ/8Rg23a0JPW6vi6Qqr7MEF0jvqbbjZW7rydezwUtQv/lMhzXF/hpdtNVOeGmX+oaZFJ
	Y92KMorfcuDzRMQqnEISX0tOIek5Ikgx+PyHzW7gGE1uBXLaJvS7JhxjB7cUJ2TD337HSXZ3oIvhK
	1IiEeOP8PFPmUv5qT9RdZ5VIt8HFtx+MGkE58dEM9/6AM/3QlJXbjhT1xYl+wsU27vvdmMQ90uz+L
	A/km25AlvKxDCRHeFPgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmzb-0005nc-Cf; Tue, 24 Sep 2019 15:44:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmzO-0005mw-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:44:31 +0000
Received: by mail-pf1-x443.google.com with SMTP id a2so1591806pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 08:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FRqhU1AihYJ2QqMEDa4hoNnJ00l/92NY2n3WTvQE51k=;
 b=N59VSQNOtKoruFGih+9OfLHlJDZghgi0SHzvbDJnCjmSJNCbKIz4xT3qDUWkkpVZuO
 ur7WnjtgGzFrGmmpJRPHZwLXT4NhVxGKX3IkxFpKapUI/PEIpDJaXgVZz4Px4iE8fDDh
 dOcpxkfz0wQxC/P5g5kJaBwjLMrBhJMwany9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FRqhU1AihYJ2QqMEDa4hoNnJ00l/92NY2n3WTvQE51k=;
 b=Fu5h1iJMo1gfApH4iynaAdlSFP1xpnKVxW/t5Z2ywu7EGrlIseE+2LJ0qfEphGljvk
 qlbrYVEMRM2AbtqhVm4e7b8fMubbHJ63P72W+JZYuY7yQcjfVVrC9u0x+Ehr3NmVpOfL
 BSbrVuBw8tdIHy3/EFNyOfH9wad4tggO6kMG/0+zH8zaj63A0g6nIFp0v6A6YfLs6F02
 ftEeBAuPU+ir1l7h6hbz4jWKkCGYN5WOdNS2JphSGpQ+Q7Ezq/RVFsxg5Gd6BZiJUmke
 8XFirrdXZ+NWjx6oT+uaErPBGh8/EnBB+/OjNvd38j0qAUclPSnRLHT5BuHSy+iJDBRo
 ihKQ==
X-Gm-Message-State: APjAAAXpzCKhAHzyFMnU77d84vGigmtKW9+uN5qG6SdUT+69JEpBIPYZ
 8Q7YwYwE5vc5Wr2/DofMTY+Q+Q==
X-Google-Smtp-Source: APXvYqyy/dekHqlB0kdPWKwq8sUxNkiNic4QkQj9ZSqM6+zm9tsd2AmEmoeo9mAVn3VjMCVJaICECQ==
X-Received: by 2002:a63:531d:: with SMTP id h29mr3906627pgb.52.1569339868740; 
 Tue, 24 Sep 2019 08:44:28 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id q13sm321184pjq.0.2019.09.24.08.44.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Sep 2019 08:44:26 -0700 (PDT)
Date: Tue, 24 Sep 2019 08:44:24 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] PM / devfreq: Lock devfreq in trans_stat_show
Message-ID: <20190924154424.GI133864@google.com>
References: <CGME20190923162736epcas3p2c1db3bf767a07f17b609bc91fbbd9648@epcas3p2.samsung.com>
 <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
 <979d107f-0a52-3aa4-a397-acb0ff754a3c@samsung.com>
 <VI1PR04MB7023BF1AD2C61C8A5ABAD5FEEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023BF1AD2C61C8A5ABAD5FEEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_084430_398343_204B3A84 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 07:44:16AM +0000, Leonard Crestez wrote:
> On 2019-09-24 5:07 AM, Chanwoo Choi wrote:

> >> @@ -1507,16 +1508,22 @@ static ssize_t trans_stat_show(struct device *dev,
> >>   	struct devfreq *devfreq = to_devfreq(dev);
> >>   	ssize_t len;
> >>   	int i, j;
> >>   	unsigned int max_state = devfreq->profile->max_state;
> >>   
> >> -	if (!devfreq->stop_polling &&
> >> -			devfreq_update_status(devfreq, devfreq->previous_freq))
> >> -		return 0;
> >>   	if (max_state == 0)
> >>   		return sprintf(buf, "Not Supported.\n");
> >>   
> >> +	/* lock and update */
> > 
> > It is not necessary. Anyone can know that this code is related to mutex lock/unlock.
> 
> OK. You're the second person to mention this but it's quite strange to 
> see objections raised against comments.

Comments are great if they add value, in this case the comment is
stating the obvious, which IMO just adds noise to the code.

The coding style guidelines also briefly touch this topic:

  8) Commenting
  -------------

  Comments are good, but there is also a danger of over-commenting.

Documentation/process/coding-style.rst

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
