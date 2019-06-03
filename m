Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A543395B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkfR0ZQX3thxNrzm7PJW464wsIAfrUDz+qHaWNbzsdw=; b=hnvsHI6hGIzQor
	SmwMOUE075N6TwtQ86wkoHEBzGaCpXeXW6QHOYPcQpHIcpJnyw2uz6Ug0iRCA/IOCJ/92ZYFLQdLo
	Ahs0D1DVFL6IGcy/tRrlc7JrgYfoejBbXsaZErSrg0L8TALp42RmvuTZJwLKvA3dTaT0yte9IjlKJ
	7VfrURrYjrnEG8okkKZoemdKX3rwkDJ8dl0IC5a4h4O/A9Epma1sXuORSszguc284YI13NaVrjdnd
	iR9fco/VEcvneuOLew9+d0mePHs0RjUOSOzuikD/KlBj3XVWj0KqodVp+S/iEeVNB8MqpPbX5kW0U
	sm+ZJAF/Gthdovdkx8ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXt3H-0004kL-1o; Mon, 03 Jun 2019 19:55:27 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXt39-0004jD-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:55:21 +0000
Received: by mail-qt1-x844.google.com with SMTP id z24so3816921qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 12:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1KV1EL2zWlz4BNwMzZsPPlusL/bx0yMiXCoqZlXd458=;
 b=f/VSrUxboXoGFGdWMMd2FDeP8+ypIq64epfnLR1+dKU5NMMKQvoEkLcb1gXkzsU7wz
 Jn/pM2dph432cJm0hpfUrbOa2Iqat6S2Hn2aMVwbuIRid7V89u8IdB8eypsxoOh4PeC4
 rCN8Cqwz/u6w2Yn0EgkhmvpUsMx+j0EiV1hm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1KV1EL2zWlz4BNwMzZsPPlusL/bx0yMiXCoqZlXd458=;
 b=IsveC8y4DOkacvYkb9KJnD5WDaMZp1J7i0SDWNtYf5vQszP62eQcjHgwi9I3P0teYI
 v/gZawiXQMP5QWSOYzEhQt/OdoY2JFcjEKJJ4CBY3kYaWcTiTgb8Oar/M9QZiPHZ8xRY
 SqmPpzPq8SQjyZFiTSRkmxt3VQoHZ2P8PXuKqIqf/U8j6gjI6CxniOIGSCixYcHQrIS2
 RvVBFJZxiqz1IXH1wNsx5pYwj89oUlnrR6LrX7OhpeTRijdhnS57pfVjHUBf8bDskSIW
 sVBBBAk0fjaqKnIxdAd08qbcPPQQshm/heZE96xnxK29wPeqd5N/+8crH0rb/ywH9w3b
 1+GA==
X-Gm-Message-State: APjAAAX8o3APkpF88Nt2QSMOi8fePg9g8y9FmvfSCc8DKEteVQbEiRnY
 gDtCvJu8Zk70As0RcCMyVs2poGFO0Yjj9Y9sX9wqpw==
X-Google-Smtp-Source: APXvYqw9CyjBN9zLt670R7s4Nqh+tF2Uw/nqdK92LwjcIbHrzECu2UzbVydDyKivYV7rqUCst1Zpy0CU03QqWZF+nkw=
X-Received: by 2002:ac8:2906:: with SMTP id y6mr4604304qty.138.1559591717763; 
 Mon, 03 Jun 2019 12:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190522184547.31791-1-f.fainelli@gmail.com>
 <3734641.73qX0VsHyn@kreacher>
 <013ec7c0-0984-cfc9-ea3a-0180719f5ac4@gmail.com>
In-Reply-To: <013ec7c0-0984-cfc9-ea3a-0180719f5ac4@gmail.com>
From: Markus Mayer <mmayer@broadcom.com>
Date: Mon, 3 Jun 2019 12:55:06 -0700
Message-ID: <CAGt4E5tZ1YLbtCDJDXTTZrH5S4Jmw_BVOfz+i-KF=TUjA=yvkQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] cpufreq: brcmstb-avs-cpufreq: Couple fixes
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_125519_669244_3A26C1C9 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "open list:BROADCOM STB AVS CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM STB AVS CPUFREQ DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Markus Mayer <code@mmayer.net>, Brian Norris <computersforpeace@gmail.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 at 10:02, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 5/27/19 3:51 AM, Rafael J. Wysocki wrote:
> > On Wednesday, May 22, 2019 8:45:45 PM CEST Florian Fainelli wrote:
> >> Hi Rafael, Viresh,
> >>
> >> These patch series contains two minor fixes for the brcmstb-avs-cpufreq
> >> driver.
> >>
> >> Florian Fainelli (2):
> >>   cpufreq: brcmstb-avs-cpufreq: Fix initial command check
> >>   cpufreq: brcmstb-avs-cpufreq: Fix types for voltage/frequency

To both of these

Acked-by: Markus Mayer <mmayer@broadcom.com>

My apologies for the delay.

> >>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++------
> >>  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > These look straightforward enough to me, but it would be good to get an ACK from the
> > driver maintainer for them.
>
> Adding Markus' other email address.
> --
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
