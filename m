Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D1E44E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 09:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJCip8UKWe8DdKXdNGkDHJlOzQihg4BnllSC3dPdNbQ=; b=YLJCXIc5poSI06
	5JYx1BfQQD68siwMrhbUPCdgiFO1aaTA7rrIKXWKlasNlnKO+Qs/j/1CX84vm++zx3S81Uzo/GjmB
	mRuvFEoD639wu7ApyfSYqVHdhOhhDGQ8d+K6Ju8xjz9EgTeENm7M0l3qI6m5lURDp9teXQkGXW/uj
	AF1QGOyJ9mf8nA8inodB9YEBFuYxMr+9lfCI9b5D7LWGh4nBQCBvnXxatGZ7JFqB4v/Nqpg+Cp8g3
	Nr050zBasJ37ONRMUtgRtuj564JUL9iWiTD0tISmQAldXBbABbItfgU5WGYEl4wrr0/VMcyEqdQBy
	asnU8kpGWKo08dBNuFmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuNI-0008Tu-62; Fri, 25 Oct 2019 07:51:08 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuN8-0008Sy-AC
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 07:51:00 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id F10A6240013;
 Fri, 25 Oct 2019 07:50:50 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] spi: Fix NULL pointer when setting SPI_CS_HIGH for GPIO CS
In-Reply-To: <20191024193225.GM46373@sirena.co.uk>
References: <20191024141309.22434-1-gregory.clement@bootlin.com>
 <20191024193225.GM46373@sirena.co.uk>
Date: Fri, 25 Oct 2019 09:50:50 +0200
Message-ID: <87woctp8kl.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_005058_489570_319A475D 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "kernelci.org bot" <bot@kernelci.org>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

> On Thu, Oct 24, 2019 at 04:13:09PM +0200, Gregory CLEMENT wrote:
>> Even if the flag use_gpio_descriptors is set, it is possible that
>> cs_gpiods was not allocated, which leads to a kernel crash:
>> 
>> Unable to handle kernel NULL pointer dereference at virtual address 00000000
>> pgd = (ptrval)
>> [00000000] *pgd=00000000
>> Internal error: Oops: 5 [#1] ARM
>> Modules linked in:
>> CPU: 0 PID: 1 Comm: swapper Tainted: G        W         5.4.0-rc3 #1
>> Hardware name: NVIDIA Tegra SoC (Flattened Device Tree)
>> PC is at of_register_spi_device+0x20c/0x38c
>> LR is at __of_find_property+0x3c/0x60
>> pc : [<c09b45dc>]    lr : [<c0c47a98>]    psr: 20000013
>
> Please think hard before including complete backtraces in upstream
> reports, they are very large and contain almost no useful information
> relative to their size so often obscure the relevant content in your
> message. If part of the backtrace is usefully illustrative then it's
> usually better to pull out the relevant sections.

You can remove it while applying it, or I can send a v2.

Actually I thought you would squash it with the initial patch to avoid
the bisectability break.

Gregory


-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
