Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01B6E40E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 03:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JsxBghgiKxsb+rFPIXxHJ5XpbH2My7SMT6f2x1OBG3w=; b=tikxl1MN9QGkAvSGNlKARGYjO
	64FiAi3QxJO4ti6nDcGNV7dguAYQGNrZbpuyyUcaEk8u9VGCJZ1YmMPmq9wT4YiBmIPcUw0mXrIPI
	nKM78rxCF87ZxeDU15f/LTVBEkMX3AVJ9dlIZn7HFiRC3ovkMR1nlg5mrKmmAan3NuNO0SuwZLDy0
	rOla42jeLDACzL4ZxvqsbjvQS9gI1odCIT0weWtlBRHOgmsYnGnTv+9wkNvJk8+ayCp/XainOY5yD
	7kaNavpy9FTzB6p5jyYLVNdm31QhK4g1MbyeU1DTmvF7XaimuG+Q1HUvKB7mlgPDZj/FZw44YINxb
	pcQBjjZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNoBT-0007wK-EI; Fri, 25 Oct 2019 01:14:31 +0000
Received: from anchovy1.45ru.net.au ([203.30.46.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNoBI-0007vL-7F
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 01:14:23 +0000
Received: (qmail 17092 invoked by uid 5089); 25 Oct 2019 01:14:13 -0000
Received: by simscan 1.2.0 ppid: 16948, pid: 16950, t: 0.0537s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
Received: from unknown (HELO ?192.168.0.128?)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy1.45ru.net.au with ESMTPA; 25 Oct 2019 01:14:13 -0000
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
To: Wolfram Sang <wsa@the-dreams.de>, Codrin.Ciubotariu@microchip.com
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191021202044.GB3607@kunai>
 <724d3470-0561-1b3f-c826-bc16c74a8c0a@bootlin.com>
 <1e70ae35-052b-67cc-27c4-1077c211efd0@microchip.com>
 <20191024150726.GA1120@kunai>
From: Phil Reid <preid@electromag.com.au>
Message-ID: <65d83bb0-9a0c-c6e2-1c58-cb421c69816c@electromag.com.au>
Date: Fri, 25 Oct 2019 09:14:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024150726.GA1120@kunai>
Content-Language: en-AU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_181420_679582_597EA7AA 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.30.46.145 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/10/2019 23:07, Wolfram Sang wrote:
> 
>> So at the beginning of a new transfer, we should check if SDA (or SCL?)
>> is low and, if it's true, only then we should try recover the bus.
> 
> Yes, this is the proper time to do it. Remember, I2C does not define a
> timeout.
> 

FYI: Just a single poll at the start of the transfer, for it being low, will cause problems with multi-master buses.
Bus recovery should be attempted after a timeout when trying to communicate, even thou i2c doesn't define a timeout.

I'm trying to fix the designware drivers handling of this at the moment.

-- 
Regards
Phil Reid


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
