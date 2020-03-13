Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B5618468D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gWjBpauhrk3mW3k6OJmJ5oCi4JFtbW4m+uqL21JtaQ=; b=Scs9i090YaSOXa
	TfR3qk3bjC6WEiwGrxVeME1hasfZNBpwIH/8ldsiGtJUIZRUuyaCx3Mh8aoLGGkogLhEO0vOACtSk
	+EW5e2xKyHUa5DJCYD6DDR+BATN6E04QhXP49qiQcjjuA7d2cxRY3Wx5npXvcjQZtd4h4FKB10kMv
	s55vdzCdxIqgk0WYCyArXVC+WfMeEryirWnt52+kdP/4aMc2Kx4XzAv20STGxQbxDsYZ9OH4lx8KA
	L1X9msJX0JW3d+bFw8lN4J8i6gjL5TKq2BdLBPiZTcLvvp/IGkq8qm6uB4WBh0HfIpNEFzIOXhexE
	TtqPf4m4mXgwaMqDuciw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjAP-0005fM-Bo; Fri, 13 Mar 2020 12:11:53 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjAD-0005f3-QR
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:11:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id a32so4049992pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 05:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6pLOYM/wMftQVvIWBklYCx0bBHtmwvN52ahcTq9SXzM=;
 b=QtVBy8T48g1pj7JzZyGaclO9dhcLzRY7Xi2RHei3fL1mJZ+FRUjNj62H2cAzhlasXt
 wA8lEpV8VITfq7KWRV/4pyQjsmiPTeqRywQSa+ZpipY4/js79ZWsF8Cgto2ZBejyQi1w
 WkOmNEeQ2JI2EqL7IRxuEOVx8dQBwXpBspAOIWGRe1ab4GiDcfWbLbfkhdY2Fgveg5LX
 rfCLk6qz2ixcK3mhqh5XfMG2rXCAryb2xtluJO14lVHUFb6mFKgRPQmy4R82Yz3GRwlh
 hK5uSrxVOLuc/++mh9H2l4VFlK9i1McjApEz9khl9TYxEkuun1wNcTOrDqFlcJQ8TK6v
 KxJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6pLOYM/wMftQVvIWBklYCx0bBHtmwvN52ahcTq9SXzM=;
 b=bErorF8PBNP/fm6xi2G8DIClkO41KXDnVujTvLe0OjeBtdsmPYDzUuuyDsUuNNuVqe
 MTGSGUGMRUteadTHDVM+PYM7bCS4I7G/o2Ht/6NaynnYR4HoHB+oByugc/GURQRDr8Vh
 0/eEHepV1Xzt7FQSBOKht4Q9lEfAHNu3maM8DZLgRSxlHLlpWVkwfetmd/i+jki/3uqB
 1gNPCftXw9X1XQHKpMW7dGTDoPFhdnOGHw9HjytUN2E7aQiRsSMOAHFhxJhr3hdHMq1o
 lMGViilKJiMr3/xcMxazpNrXRwbZGsj6ZKGh7jdvSkEf77XNERZV704/bIMw33PSD0kA
 WVzg==
X-Gm-Message-State: ANhLgQ26ujy/hgw4pGPQuOMA4TKz+kLNZTxTi8AGAhn63cmmrO9cTQ1L
 6e9MgBjZ6W5FxRQrg248RLCG1qNX
X-Google-Smtp-Source: ADFU+vuI3AZc29TPjoDNG9AKhYUD8KrpBf3iaqjAYWCzJytkiNPe7Uk51hL1KEI1JJXwEXqdDXFnOA==
X-Received: by 2002:a63:e053:: with SMTP id n19mr13222973pgj.64.1584101501300; 
 Fri, 13 Mar 2020 05:11:41 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id nl7sm2991587pjb.36.2020.03.13.05.11.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 05:11:40 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:41:38 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200313121138.GA5985@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
 <20200311131210.GA5115@afzalpc>
 <20200311160307.GA15464@alpha.franken.de>
 <20200311163249.GA4984@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311163249.GA4984@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_051141_883229_D8BEBE68 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Wed, Mar 11, 2020 at 10:02:49PM +0530, afzal mohammed wrote:
> On Wed, Mar 11, 2020 at 05:03:07PM +0100, Thomas Bogendoerfer wrote:

> > case ? I guess using handler as dev_id does a better job here.

> > And before doing that, lets clean up some of the IRQF_SHARED usage first.
> > All sni IRQF_SHARED can go away, the interrupt lines are exclusive there. 
> > 
> > loongson2ef/lemote-2f/irq.c: looks like the only user of
> > LOONGSON_NORTH_BRIDGE_IRQ, so IRQF_SHARED could go as well.
> > Could someone confirm that ?
> > 
> > All other need to stay, IMHO.

i am thinking of sending a new patch, with,

1) IRQF_SHARED removed from sni/{a20r.c,pcit.c,rm200.c}
2) IRQF_SHARED kept in,
        kernel/cevt-r4k.c
        dec/setup.c
        pmcs-msp71xx/msp-time.c
        loongson2ef/lemote-2f/irq.c
    and use handler as dev_id in those

Let me know if you have any other thoughts.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
