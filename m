Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2750DBB780
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orUcAeDJTYmIrh5bkbYWO4ho1X7YP3dyOi3YP0F5XrE=; b=CUEyZlv8ccaPsY
	P9TSaQq4G8rVs552oWF+ER/w37H3DFK5m13p592xSWHdn6R5ulh+Y+txqLNAJUEwB/nPnnanJ3b3h
	10mDx16equWp3JZ6DJwlbmLt2NNxJKVLi+i5opPNezWabPDYA23rSuNO4ofZ1EmE6o275JzOodkOf
	2M2FqFfS5F7SsNdDyZyZKk4HQDUyeth5kdYYFxwBYiKihpa66ka+RQYTY5D+Dvas7U/6VVUGMt+Ya
	nQRqcA5GBk+lYL5g+wKwYO17FagVjeskazduxrd2GvHYEj1csSi891obQkBP70KfrGTpbX4pLPcKD
	LxhUJwML3sHuc+f4LACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPvP-0008Dz-4Z; Mon, 23 Sep 2019 15:06:51 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPvB-0008D1-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:06:39 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 9141A5FD5D;
 Mon, 23 Sep 2019 17:06:34 +0200 (CEST)
Subject: Re: [PATCH v5 0/3] Fix UART DMA freezes for i.MX SOCs
To: Adam Ford <aford173@gmail.com>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <CAHCN7xJL_x1ryOoNW+R2hOZ9dMFem9wni8Uo8QOA3wxpzKLbqQ@mail.gmail.com>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <2443c553-c593-2f23-4cca-c2f03676adc9@emlix.com>
Date: Mon, 23 Sep 2019 17:06:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHCN7xJL_x1ryOoNW+R2hOZ9dMFem9wni8Uo8QOA3wxpzKLbqQ@mail.gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_080637_792666_57C76809 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: fugang.duan@nxp.com, jlu@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, vkoul@kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Robin Gong <yibin.gong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

Am 23.09.19 um 16:55 schrieb Adam Ford:
> On Mon, Sep 23, 2019 at 8:58 AM Philipp Puschmann
> <philipp.puschmann@emlix.com> wrote:
>>
>> For some years and since many kernel versions there are reports that
>> RX UART DMA channel stops working at one point. So far the usual
>> workaround was to disable RX DMA. This patches fix the underlying
>> problem.
>>
>> When a running sdma script does not find any usable destination buffer
>> to put its data into it just leads to stopping the channel being
>> scheduled again. As solution we manually retrigger the sdma script for
>> this channel and by this dissolve the freeze.
>>
>> While this seems to work fine so far, it may come to buffer overruns
>> when the channel - even temporary - is stopped. This case has to be
>> addressed by device drivers by increasing the number of DMA periods.
>>
>> This patch series was tested with the current kernel and backported to
>> kernel 4.15 with a special use case using a WL1837MOD via UART and
>> provoking the hanging of UART RX DMA within seconds after starting a
>> test application. It resulted in well known
>>   "Bluetooth: hci0: command 0x0408 tx timeout"
>> errors and complete stop of UART data reception. Our Bluetooth traffic
>> consists of many independent small packets, mostly only a few bytes,
>> causing high usage of periods.
>>
> 
> Using the 4.19.y branch, this seems to working just fine for me with an i.MX6Q
> with WL1837MOD Bluetooth connected to UART2.  I am still seeing some
> timeouts with 5.3, but I'm going to continue to run some tests.

Thanks for testing.
With my local setup i still have very few tx timeouts too. But i think they have a different
cause and especially different consequences. When the problem addressed by this series
appear you get a whole bunch of tx timeouts (and maybe errors from Bluetooth
layer) and monitoring received Bluetooth packets with hciconfig shows a
complete freeze of rx counter. Only resetting the hci_uart driver and the wl1837mon then helps.
With these patches applied the rx data shold still coming in even if a single or
multiple tx timeout error happen. I'm not sure where the error comes from and what the
consequences for the Bluetooth layer are.

Regards,
Philipp
> 
> Tested-by: Adam Ford <aford173@gmail.com> #imx6q w/ 4.19 Kernel
> 
>> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
>> Reviewed-by: Fugang Duan <fugang.duan@nxp.com>
>>
>> ---
>>
>> Changelog v5:
>>  - join with patch version from Jan Luebbe
>>  - adapt comments and patch descriptions
>>  - add Reviewed-by
>>
>> Changelog v4:
>>  - fixed the fixes tags
>>
>> Changelog v3:
>>  - fixes typo in dma_wmb
>>  - add fixes tags
>>
>> Changelog v2:
>>  - adapt title (this patches are not only for i.MX6)
>>  - improve some comments and patch descriptions
>>  - add a dma_wb() around BD_DONE flag
>>  - add Reviewed-by tags
>>  - split off  "serial: imx: adapt rx buffer and dma periods"
>>
>> Philipp Puschmann (3):
>>   dmaengine: imx-sdma: fix buffer ownership
>>   dmaengine: imx-sdma: fix dma freezes
>>   dmaengine: imx-sdma: drop redundant variable
>>
>>  drivers/dma/imx-sdma.c | 37 +++++++++++++++++++++++++++----------
>>  1 file changed, 27 insertions(+), 10 deletions(-)
>>
>> --
>> 2.23.0
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
