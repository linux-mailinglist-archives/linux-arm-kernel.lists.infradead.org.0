Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437AA16BB45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69caVr6+ttxn5gopYkrNjJChOHOm/fH+DFRsTiYCvh0=; b=tmMvXjkb3KAwYF
	bVXUSJFXNFPqE+wyoHNFXOZPKGoHBrmaO7nBcmhe1pqv/SR2r0eOg4P8UvZQmqJcOW8LePq5xF3ib
	2ik02tMeoGlRODZ+MW1LD23BLBKwdIVlmxvz9aQms9q7PmY8xRAs8/bDvSSmDJLBIlaJXJW9Xnsj/
	iVKBbJ/6QY+XUC8IC9qqBPZ/3cNwUd6Xa4Uw6j4aI5OtZCNapQ042Z703aoqfCy0qwTdF2PJpngnm
	QZnb6NxIWsDjU2onpHWf8Z+vMcqhcrvFB3rHL820k/PmyBrbHvNq6X5Af02x1JpwHIrghXBOsbmYJ
	c6xWTXL6GdLKWfZZpPlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6V0k-00074n-Kh; Tue, 25 Feb 2020 07:52:10 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6V0Z-00074N-PA; Tue, 25 Feb 2020 07:52:01 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d5so891419pjz.5;
 Mon, 24 Feb 2020 23:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T1LnGLoBaV2TTPUF6toPUaaqUjCR3lePLHm0eYLmXyU=;
 b=iEITAgIl00kyXUWSBKvpCYdnRJXBwyc+KUDYeJYmABzTDgw3gcRNZBbg8LlnJz/oNX
 v8YYzG1FvT8RwvFlEPaC+A1kXJd/owZ7a+ucuUQ6OtLBcpN3As8Clp6EahNILoAjLLYL
 QJdwLi7cthjDRR+Sc+AmJ76XAMdAwNQJHg6Q12G20zFoNhffXATJn4PtI6qlYuIisw20
 fHDE340iO7iweLR3SccBAnIXnD4bG5lWttzj9AE4RlRsqH+6EeznJ6uDGhmOas6WMXIK
 0T99p1wIA1w8NTUrngcs5PxIklGlUbgiXe328C+qNmbbhTW7hZtkkXPAOpnXlA/iajxO
 H0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T1LnGLoBaV2TTPUF6toPUaaqUjCR3lePLHm0eYLmXyU=;
 b=nwV8aGOs6jxcYryM/2x/4cSERbNd1iUR+4D4OJt2Ky6xsPd5oWMFKwMX3Y9ub30C1h
 2m8klten7pVahuBoOgP4Evf4kSW5JL00GD6NqycQMxQ4k41/lUK1ZH8G+Rr2eA0xxaQ7
 5G3g8bcDc6ZEaORa2qoPMNjjzxpIOwWIr0vJaQGG2h/InWx2DcVDq8tEHe26RERMsxCW
 6cG2ZNbEkc9Y5f3h2xNpMPX2V6rtXvs4e3qHFqG2Luk0XY+pSviCHrp21/xwJVrUZ4v2
 rCum9mJCO74L3nVhpmtWLPMtxCkxGa3X7o6nIjTlyTEEPkq1FbNFA31nibLwDr/jsKNe
 QsEw==
X-Gm-Message-State: APjAAAXKwriJRx/B01K9C4/LH0QB4rinrV6/xpJDeaYzWKwhudzoBadd
 SKS0dTDnBewpDNL9aj0VouE=
X-Google-Smtp-Source: APXvYqx+5pXqKxI4ULLR6ATgJX5fTRooYMW74dM+2ZDktjJeVYsoT2ZTDKe76IT+s1v84AUfEpO83g==
X-Received: by 2002:a17:902:7c07:: with SMTP id
 x7mr3617020pll.232.1582617118595; 
 Mon, 24 Feb 2020 23:51:58 -0800 (PST)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id w189sm15983184pfw.157.2020.02.24.23.51.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 23:51:58 -0800 (PST)
Date: Tue, 25 Feb 2020 13:21:55 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v2 16/18] clocksource: Replace setup_irq() by request_irq()
Message-ID: <20200225075155.GA6735@afzalpc>
References: <4e565e7afa2f2a0ed89774d0a1597649173b1746.1582471508.git.afzal.mohd.ma@gmail.com>
 <202002251058.U8V8FHji%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202002251058.U8V8FHji%lkp@intel.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_235159_840579_03D0E207 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Barry Song <baohua@kernel.org>, kbuild-all@lists.01.org,
 Scott Branden <sbranden@broadcom.com>, Enrico Weigelt <info@metux.net>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Feb 25, 2020 at 10:52:55AM +0800, kbuild test robot wrote:

> Thank you for the patch! Yet something to improve:

And thanks for the report, i will try to improve :)

> [auto build test ERROR on tip/timers/core]
> [also build test ERROR on arm-soc/for-next powerpc/next linus/master v5.6-rc3 next-20200221]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

i did use --base option w/ git format-patch, though the output of it
was rigged to indicate a human understandable start point that can be
parsed by the script as well.

In cover letter, there was "base-commit: v5.6-rc1", test robot cannot
make use of that information ?, since my thought was that your script
would create a branch with any valid start point following
"base-commit:"

>    drivers/clocksource/timer-prima2.c: In function 'sirfsoc_prima2_timer_init':
> >> drivers/clocksource/timer-prima2.c:213:2: error: 'sirfsoc_timer_irq' undeclared (first use in this function); did you mean 'sirfsoc_timer_read'?
>      sirfsoc_timer_irq.irq = irq_of_parse_and_map(np, 0);
>      ^~~~~~~~~~~~~~~~~
>      sirfsoc_timer_read
>    drivers/clocksource/timer-prima2.c:213:2: note: each undeclared identifier is reported only once for each function it appears in

Does the robot keep the log of patches that are successfully built ?,
w/ v1, i did not receive similar report, and tried to find if test
robot has successfully built v1, but couldn't find out.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
