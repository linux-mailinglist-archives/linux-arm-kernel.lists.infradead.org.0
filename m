Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A650ADF2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8lM1mP/XtSwPJ1WXFWys4IBGMAayJYm4oNwH2N3LjI=; b=TbjVuWOIAWa1Ld
	a/hVGfRQhnSH32IcV8gJlKpuF7g8WcHACHrlUmX4KsIbEMbTBxyBrFhuxYPpoL8qG6UuXRwh779I6
	oEG9NBTQc9fGZxAvz7vPQcBG7rztzuWOdAaYWVOzrIkZy3aN4OhP5SDLlrNGNjpfURUM/JeEVVEaJ
	wel32wklH3lR+lPMnFahs0fOzpruJavSCunvl2u6SGgxqetJZfP/gR+yUdUDd9rNzbfxOAUit06Ez
	TCjZkgRAwbtuCE6z8pw2L3W562ejQ9Q7rUYx7xeEny7jS5LpVh69mOlPHpvBg+Ps1/yKnkfs07xUO
	vU2aHGai2Lbgyq8MRjtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OpU-0003Te-0K; Mon, 09 Sep 2019 18:56:00 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OpK-0003TJ-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:55:51 +0000
Received: by mail-wr1-f67.google.com with SMTP id a11so5500780wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:55:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ra/gV8lPXO5Wh+Vb60+O0aQkihf+QKY6CFPEg3Fy55M=;
 b=FcI9hsaE/q3zpfPPJvqsWWeApQt1xbLk49u01POWlR78dB8mpklPkcWIgJsCjfvm9L
 nLmIIqpfPF/xIbV+y3EZqYVHiDgTN/V2TXNB7SVSLZlx1sb08sLXsjPcic/W6w1iZMiS
 PZlzotcHMCtuUqxmOIy3LQ0eGnm5ORgJJDAPBmjPuuwLAT9d5laQ81lKsneSJ5EGdOvI
 iPHcEgQKfk18TtzbOM2EH6+DdUphFg5fH8HqDO/4G3msgq6dS3OsNPMeHmKKrqSz1qrw
 ghGhw5s4/K5svPOiU0fw1cK9bsOuWKSZ9FXAQHBwh3GV2dG7JCaCt8T/v0thr7RCf2m4
 egtg==
X-Gm-Message-State: APjAAAX1SpzPx01rwnqXVCFqo8yZcKoQF0NjhH4LfOwPxQcM6SyH5mnT
 wN3Kj4fmOR/mIHpiASzbLho=
X-Google-Smtp-Source: APXvYqyxVVDbLBd/lmNb4rlXWNpQ7yGIHb1PMpq6KlcPnN//NYJPYejDZJ4hsW8yo4QfV3ZZexu8Gg==
X-Received: by 2002:a5d:6506:: with SMTP id x6mr836883wru.22.1568055349493;
 Mon, 09 Sep 2019 11:55:49 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id s26sm28793706wrs.63.2019.09.09.11.55.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Sep 2019 11:55:48 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:55:47 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Yao Lihua <ylhuajnu@outlook.com>
Subject: Re: [PATCH] ARM: SAMSUNG: Fix system restart support on s3c6410
Message-ID: <20190909185547.GC10091@kozik-lap>
References: <BY5PR12MB3699F7EF4920F878F3096DE7C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR12MB3699F7EF4920F878F3096DE7C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_115550_808016_C324CC4C 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 03:30:01AM +0000, Yao Lihua wrote:
> From: Lihua Yao <ylhuajnu@outlook.com>
> 
> S3C6410 system restart is triggered by watchdog reset.
> 
> Fixes: 9f55342cc2de ("ARM: dts: s3c64xx: Fix infinite interrupt in soft mode")
> Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
> ---
>  arch/arm/plat-samsung/watchdog-reset.c | 1 +

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
