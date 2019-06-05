Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1771735899
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbshbgkfmwTSqzdBZ6uRsOp+f/HuMlSgGTvbfIGhSc4=; b=r06gIxAZVxn0vV
	d3dsgP6GHKJk0L2cmJk5d6xs2VhZ95oRisbtf6Lp56ud6OhSocX/fwjM/0fUMJIIF1lGgsUh0em6A
	pZsEf+AABeIam/DOf0mJHKfbF1ZSCy5bL0qGwzQ+E5aral0YwAbJU5g4WPy/HTE89SgFS4hSWKuqs
	rlAfteZ73DrnYi/Gtv1U4Fgk99cVk1U/IZy3y1IaPUhaK+HGS+SYXyN3phm5NrV862VMm36X5YwV5
	/UWCfc9Y/wcRDPiPiyXsg42Bvv/5l5t/2YrTjh+9eUYuLiliR4BGwMf0s4FYzeC+anUZwpvOHF4Ml
	OfRSKpNhUlifPT/tFY3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRNJ-0001xF-9m; Wed, 05 Jun 2019 08:34:25 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRMs-0001Sh-Fc
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:34:15 +0000
Received: by mail-lf1-f66.google.com with SMTP id 136so6900155lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q9tx+jcvIT26cZO2scmHbp4TeAN9yH+3bSlg5LwUoqc=;
 b=LPz/JAAyuSetsr0yJSL6ZgoAMuZqpfabcIo8cMO1P7SUezqM6+MMc3vWg5zV9oNUlq
 UJjUuwWEiO+NMuDoQ2T4Hj93Gr9Xyu07X1eFRZPB3HpR+ToTGcoCtfD1uY4fqeNsveTs
 5OIeMB9E9aA8pTL81zSPcso3oGU7Kavp0g2wO2iF333ndSyrlYxNRvL2iSUViyiBacfR
 uYiZBKyODf0lXHRqh//BoCyAzlBjXIHLLsp25l7RhmSLfJAi1TtLdAeeawm5RpDNi5wU
 +y+ER5t27SBvq7or8B8AGD/1x6qMJX28p7AU22Qq3X+A+dzsfVG7+AxhlqhqC8d2cP6Q
 2Ydg==
X-Gm-Message-State: APjAAAUYqudCZtma8sAJ5dppquFKyQ7O0eNDVn2EspMRaEQaRyJfdgwM
 gcreO2m6fcibhNkD6Bg1HVo=
X-Google-Smtp-Source: APXvYqwtR8QAunhSjQP25Svspbkpa9nCnvW6tu0Kw7GQYZ2RLBSBlFAZRWmfA/bitG0hHGnEsRD1Tw==
X-Received: by 2002:a19:f806:: with SMTP id a6mr15693187lff.102.1559723636153; 
 Wed, 05 Jun 2019 01:33:56 -0700 (PDT)
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.190.116])
 by smtp.gmail.com with ESMTPSA id q2sm1856972lfj.25.2019.06.05.01.33.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 01:33:55 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.91)
 (envelope-from <johan@kernel.org>)
 id 1hYRMn-0006Ie-H7; Wed, 05 Jun 2019 10:33:53 +0200
Date: Wed, 5 Jun 2019 10:33:53 +0200
From: Johan Hovold <johan@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605083353.GD29637@localhost>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost> <20190605082047.GM4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605082047.GM4797@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_013359_171614_16481E6D 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org, balbi@kernel.org,
 david.brown@linaro.org, gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 09:20:47AM +0100, Lee Jones wrote:
> On Wed, 05 Jun 2019, Johan Hovold wrote:

> > No, we don't add noise like this to the logs just because it may be
> > useful while debugging. Even one-liners add up.
> 
> One line per device is should not cause an issue.
> 
> Problems occur when developers try to print all kinds of device
> specifics to the boot log.  A simple, single line for such an
> important device/controller has more benefits than drawbacks.

What about the thousands of probe functions which do not currently spam
the logs? If you want to see all successful probes reliably, you tell
driver core to print it.

> > There are plenty of options for debugging already ranging from adding a
> > temporary dev_info() to the probe function in question to using dynamic
> > debugging to have driver core log every successful probe.
> 
> This is what I ended up doing.  It was time consuming to parse though
> a log of that size when you have no paging or keyboard.

With the right command-line option to enable dynamic debugging you get
one line per successful probe, just like you wanted. Or are you now
saying that one-line per device is too much after all? ;)

> > And in this case you say the driver was in fact already bound; that can
> > easily be verified through sysfs too in case things aren't behaving the
> > way you expect.
> 
> Not in a non-booting system with no keyboard you can't. ;)

Fair enough, but the above would still work.

Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
