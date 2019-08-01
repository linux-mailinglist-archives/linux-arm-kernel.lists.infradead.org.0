Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A37D61C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZygZUnTFfTe+wgKHx1Yo1V2OsyD4LDW3NZrXPFPjFyA=; b=azlztKbL+VUeqt
	2kYynmMbxvrKLGIBY351oWwKvSvtWxNCbz3bxyvBexlat08I2SDIHxX3gkO37g1K6+ggffvinH0R6
	4FzDjAWAuhXvC6T8KRMRNEnvJyhS2ERFJ8baJC9O3nGdbQyV4AUh/9xMgEyxk7HA2lP1U97gxH0xP
	jC39N18XmBmNIrHNC6A/ppv3MQwEqJhMGdTx+L4Dr8vmiH++htDrt1Q/4oixfPieQDDVTPFMfJmj7
	zTop/S9V0ylclI+9EgYTqVoLUxJ+WsBSgfi3BKkpu8f1t6ERjwtt8QAoxeUDI9B3YaC3SdRNrFl+N
	q7gKSN2WbabQwuHTWgqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5Gg-0000fp-IN; Thu, 01 Aug 2019 07:12:54 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5GQ-0000ev-8l
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:12:42 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: KOIO5aPBnyj78kcD+HN+oud5Hl32sOC01iATWdQpiINf+aunYA+T17ybBj6R6SPmU8+RWsXEDu
 CTHM8/wdD9a6tdnC2nox7Exyes0RUqxzW1IlcFaZLcK9pWvHOnrAE6HUXty+yNVE2EJGnQms4V
 vVXFrt7qiWoO3SbmWKY0PKRI2Jy08xwDCiCZs+C+h/VFTXd/e8sR7/6F/7po6fjE8AuOqF1vr7
 WXT8LCzLeNeq750Uk4QtJcPkSQ89LMcBhpuBFZDnVo/ZEPt2n8Xu4UNozSThA54kKoY/rbbbiU
 rSU=
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="42778277"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Aug 2019 00:12:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 00:12:33 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 00:12:32 -0700
Date: Thu, 1 Aug 2019 09:11:36 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] mmc: atmel-mci: Mark expected switch fall-throughs
Message-ID: <20190801071136.37yjjr3kmdhfyxna@M43218.corp.atmel.com>
Mail-Followup-To: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
References: <20190729000123.GA23902@embeddedor>
 <20190731113216.ztxckd54a74g2lw5@M43218.corp.atmel.com>
 <201907310905.B90C6E25@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201907310905.B90C6E25@keescook>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_001238_432871_2F03325C 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:06:07AM -0700, Kees Cook wrote:
> On Wed, Jul 31, 2019 at 01:32:16PM +0200, Ludovic Desroches wrote:
> > > drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall through [-Wimplicit-fallthrough=]
> > >    host->caps.need_notbusy_for_read_ops = 1;
> > >    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> > > drivers/mmc/host/atmel-mci.c:2427:2: note: here
> > >   case 0x100:
> > >   ^~~~
> > > 
> > > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > > Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> > 
> > I don't know if there is a policy in the kernel about the expression to
> > use. As this one does the job
> 
> Yup, documented here:
> https://www.kernel.org/doc/html/latest/process/deprecated.html#implicit-switch-case-fall-through

Thanks for the pointer.

Regards

Ludovic

> 
> > Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> 
> Thanks!
> 
> -- 
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
