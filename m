Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B65716BB75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUnCMjnmUrKKpaHpD/tSOZSn6FpW10Lgwfzc4ZJoC28=; b=KifftHq37BkmU9
	nZHA4XUbbLAAol7gS3DGAbsTHt4ychya3a8bMoEOPdjVC3Gem0uo69J48DA74Fp3Y9EZdHYB6B3ZH
	J9v5OapGI/xhoAFNJ4GFSJPObl4lkWEGq7Os6KM9jKOyTjQTiS5Wyey6h5bdNIDXM5Gmv/jUwwqiF
	6atCzCBRySt7ohA1bbPHARnx7cCj0ANRP+aYX3fV1K8lrx4PUQj/g0o+QwPlqWgB7Q464oSE+wfl6
	avIfEl4DNV4r3Cq0xCP8MvxYjL1nUxL4qThGGnkLkQvFfMkpWeZPpVYcDRuARXd+SCm4k7XIBh3RK
	VNsJaA5SaBgHjMM0EQSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VBp-0004tj-Uj; Tue, 25 Feb 2020 08:03:37 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VBg-0004rz-BR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:03:29 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 715CC67A7DD;
 Tue, 25 Feb 2020 09:03:26 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 25 Feb
 2020 09:03:25 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Tue, 25 Feb 2020 09:03:25 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Vinod Koul <vkoul@kernel.org>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] dma: imx-sdma: Fix the event id check to include RX event
 for UART6
Thread-Topic: [PATCH] dma: imx-sdma: Fix the event id check to include RX
 event for UART6
Thread-Index: AQHV6zcHvJnYHLnVJki1UPp7vKjn9agqnVeAgADAigCAAB8JgA==
Date: Tue, 25 Feb 2020 08:03:25 +0000
Message-ID: <3940d827-2886-5507-4a52-d97e572ce0d2@kontron.de>
References: <20200224172236.22478-1-frieder.schrempf@kontron.de>
 <CAOMZO5CyYbAZRZrGLJNJXNJiekJXptUTu8tOfVw6y7-n-CXesg@mail.gmail.com>
 <20200225061220.GK2618@vkoul-mobl>
In-Reply-To: <20200225061220.GK2618@vkoul-mobl>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <76DF38E9541B5747898C65CC4CC71FC9@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 715CC67A7DD.A0FDD
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: dan.j.williams@intel.com, dmaengine@vger.kernel.org,
 festevam@gmail.com, kernel@pengutronix.de,
 linus.ml.walleij@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org, stable@vger.kernel.org,
 vkoul@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_000328_713666_5D7B8A5C 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.ml.walleij@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.02.20 07:12, Vinod Koul wrote:
> On 24-02-20, 15:43, Fabio Estevam wrote:
>> Hi Frieder,
>>
>> On Mon, Feb 24, 2020 at 2:22 PM Schrempf Frieder
>> <frieder.schrempf@kontron.de> wrote:
>>>
>>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>>
>>> On i.MX6 the DMA event for the RX channel of UART6 is '0'. To fix
>>
>> I would suggest being a bit more specific than saying i.MX6.
>>
>> I see UART6 is present on i.MX6UL/i.MX6SX, but not on i.MX6Q/i.MX6DL,
>> so it would be better to specify it in the commit log.
>>
>> imx6ul.dtsi does not have dma nodes under uart6, so I guess you fixed
>> it for imx6sx.
> 
> and use right subsystem tag dmaengine. Git log of the file should tell
> you the right one to use :)

Sorry, my bad. I will fix it.

> 
>>
>>> the broken DMA support for UART6, we change the check for event_id0
>>> to include '0' as a valid id.
>>>
>>> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
