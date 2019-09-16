Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A5CB3BE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xo1BST3bqcqK9H73IHhz5B3/y0/jCydtiTtnRVFG0E=; b=j3AuxqU7kf57/Y
	BnsYSsvvZPwcvpDVKqoSNo9x6z4fnYarHCP7KeBdh26GwwTNzp6GsfmHh6Ssk8A0Eycgx0n4cGMpn
	6ldjIVMPLQwE8sVIN/qE/z7ppJQV7KXlsA7vYkH6J2xny46sWse8TxLJd3/w54arZnnwIJEEsbSJP
	fK+D87pqclRyDxcVlS1hjQtvfX2PMiHqtnAij7SVSMuCQlZKYhviNBRINdIUVRACAU9wrLzeeRlyQ
	j+tEdnEoSuRuNCwPe57OulyZRZSjEndgIkFu7307Wqz9OZ4IQqwr9UqbOQobY45Oup7LjxVMlMUIm
	n1AK43HyjSV6pbVylf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rTe-0006gu-EO; Mon, 16 Sep 2019 13:55:38 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rT9-0006Dh-5U
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:55:09 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id E92B15FAD2;
 Mon, 16 Sep 2019 15:55:04 +0200 (CEST)
Subject: Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
To: Fabio Estevam <festevam@gmail.com>, Robin Gong <yibin.gong@nxp.com>,
 Fugang Duan <fugang.duan@nxp.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <CAOMZO5BKiZGF=iR071DaWLp-_7wTVJKLbOn3ihwPeVVSNF6nCg@mail.gmail.com>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <2613a28d-d363-ee4e-679a-e7442e6fde48@emlix.com>
Date: Mon, 16 Sep 2019 15:55:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOMZO5BKiZGF=iR071DaWLp-_7wTVJKLbOn3ihwPeVVSNF6nCg@mail.gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_065507_368498_32F19EE3 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

Am 12.09.19 um 20:23 schrieb Fabio Estevam:
> Hi Philipp,
> 
> Thanks for submitting these fixes.
> 
> On Wed, Sep 11, 2019 at 11:50 AM Philipp Puschmann
> <philipp.puschmann@emlix.com> wrote:
>>
>> For some years and since many kernel versions there are reports that
>> RX UART DMA channel stops working at one point. So far the usual workaround was
>> to disable RX DMA. This patches try to fix the underlying problem.
>>
>> When a running sdma script does not find any usable destination buffer to put
>> its data into it just leads to stopping the channel being scheduled again. As
>> solution we we manually retrigger the sdma script for this channel and by this
>> dissolve the freeze.
>>
>> While this seems to work fine so far a further patch in this series increases
>> the number of RX DMA periods for UART to reduce use cases running into such
>> a situation.
>>
>> This patch series was tested with the current kernel and backported to
>> kernel 4.15 with a special use case using a WL1837MOD via UART and provoking
>> the hanging of UART RX DMA within seconds after starting a test application.
>> It resulted in well known
>>   "Bluetooth: hci0: command 0x0408 tx timeout"
>> errors and complete stop of UART data reception. Our Bluetooth traffic consists
>> of many independent small packets, mostly only a few bytes, causing high usage
>> of periods.
>>
>>
>> Philipp Puschmann (4):
>>   dmaengine: imx-sdma: fix buffer ownership
>>   dmaengine: imx-sdma: fix dma freezes
>>   serial: imx: adapt rx buffer and dma periods
>>   dmaengine: imx-sdma: drop redundant variable
> 
> I have some suggestions:
> 
> 1. Please split this in two series: one for dmaengine and other one for serial
> 
> 2. Please add Fixes tag when appropriate, so that the fixes can be
> backported to stable kernels.
> 
> 3. Please Cc Robin and Andy
> 
> Thanks
> 

Thanks for the hints. I will apply them if the contentual feedback is positive.

p.s. Did you forget to add Andy? I don't see a Andy in the to- and cc-list.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
