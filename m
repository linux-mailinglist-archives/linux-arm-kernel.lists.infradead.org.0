Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F5F1390A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 13:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZmEj+W/uDJNzpfNzwLXlqDpSxzoTBdRYxRPfR8yw9A=; b=CbQJHxduamBcBj
	tAq/xgc+iMAJE2IxlXIYk5kdkfDaBl4hRb0eOvRKKaqHF7CPcEVbsu5K9xyXrk0oRTn4pWY/1uWrW
	W6CfFUPKK72hziJj8FWp2ZN2UP1+Buu1cKlWwrbFMs/FY/Nm0npN2AtSb9/ETr9Zt0uOGQHnDgMmk
	hS7Aurq1Zq/LMu79ojLCqGlIIw+ZN/quGxFYWsl1BeP1gt/++oFd77/NuPl+B5NRbhcJoaFsxpB9/
	joSZzGmivvPI7yWJvUdvfkdTWR/dF94E0+NQimhRIKdLwb3Ygxb+hIiazXeGmFJ7ATDKS58gAi0qf
	msV2tDZqNcgPG1V8sW8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyRl-0000i7-US; Mon, 13 Jan 2020 12:03:53 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyRe-0000hS-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 12:03:47 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00DC2xCT066475;
 Mon, 13 Jan 2020 06:02:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578916979;
 bh=rCDlfrd8km2xUmG6bzFw3i5aptxyHAA7AlJkzYZgtyQ=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=cVuC+W4kzuwU4qxTixwv/TGhE6fRZz/ARLeW8MJZAtDXQPZb4HXWQPyB4Nyd+6V6q
 7SELq/VFOVplT8d3W53dtCWrJ8wfaMZBkz19lA4npqPLJ7idhj+U4nFvkH0g5V06Ii
 SC5cgrYR4BPSeeu4khDvOCA79SAKKuoccTORr71Y=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00DC2xu1105405
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 13 Jan 2020 06:02:59 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 13
 Jan 2020 06:02:59 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 13 Jan 2020 06:02:59 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00DC2tJF015538;
 Mon, 13 Jan 2020 06:02:57 -0600
Subject: Re: [PATCH] ARM: davinci: select CONFIG_RESET_CONTROLLER
From: Sekhar Nori <nsekhar@ti.com>
To: Arnd Bergmann <arnd@arndb.de>
References: <20191210195202.622734-1-arnd@arndb.de>
 <ba94531d-1f16-b985-5638-c226bab28d5b@ti.com>
Message-ID: <1513bfee-6623-47fa-1eef-6074ba9ab3b8@ti.com>
Date: Mon, 13 Jan 2020 17:32:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ba94531d-1f16-b985-5638-c226bab28d5b@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_040346_328309_A9D90893 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Lechner <david@lechnology.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 11/12/19 3:42 PM, Sekhar Nori wrote:
> Hi Arnd,
> 
> On 11/12/19 1:21 AM, Arnd Bergmann wrote:
>> Selecting RESET_CONTROLLER is actually required, otherwise we
>> can get a link failure in the clock driver:
>>
>> drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks':
>> psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_register'
>> drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
>> psc-da850.c:(.text+0x24): undefined reference to `reset_controller_add_lookup'
>>
>> Fixes: f962396ce292 ("ARM: davinci: support multiplatform build for ARM v5")
>> Cc: <stable@vger.kernel.org> # v5.4
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Assuming you are going to apply directly to ARM-SoC,
> 
> Acked-by: Sekhar Nori <nsekhar@ti.com>

This is not yet in Linus's master. Let me know if I should collect it
and send a pull request.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
