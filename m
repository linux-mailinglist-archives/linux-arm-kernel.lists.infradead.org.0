Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CB116BB71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:02:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUbCPcXXYcRCj6VOrrGP7/IrUbN+AwHnmKkhw9DTw4o=; b=dFBD0PQj0eJKqE
	5bnv3i88NuD0QCNrwCSayVZWhAcgqPM3hI6qRlPU38/Cn+StaGqlaM1H5sjDUUmVK7V3GeXabLTgq
	f3QBAoSt8e0yzKGa3ZCWsto+TQXEhJZge9aBSEWV3q9wHOhjBS90wAOrT3HleMhVH+A/ylpUIgGT3
	+eWwOSVJAurinieDw/shWcIfKWjCKvbmv9LIKSnO3OVyfVJ6z0On+KqPxWWw9InZq+oDQZXqoB4HL
	qufbkHp2cbTlkmGLl+WOk20k17J9IFjYEtpVpHocBAVdZ54exzEeNAPrLhdLU1J2KdDW6TpXWmNfq
	vmzl9YOstv7/i9uUFsXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VAI-0004HZ-LI; Tue, 25 Feb 2020 08:02:02 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VA6-0004Fm-6N
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:01:54 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 0370867A7DD;
 Tue, 25 Feb 2020 09:01:47 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 25 Feb
 2020 09:01:46 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.005; Tue, 25 Feb 2020 09:01:46 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] dma: imx-sdma: Fix the event id check to include RX event
 for UART6
Thread-Topic: [PATCH] dma: imx-sdma: Fix the event id check to include RX
 event for UART6
Thread-Index: AQHV6zcHvJnYHLnVJki1UPp7vKjn9agqnVeAgADfHIA=
Date: Tue, 25 Feb 2020 08:01:46 +0000
Message-ID: <109d4a9e-a862-fd81-9562-0a6d1e8406da@kontron.de>
References: <20200224172236.22478-1-frieder.schrempf@kontron.de>
 <CAOMZO5CyYbAZRZrGLJNJXNJiekJXptUTu8tOfVw6y7-n-CXesg@mail.gmail.com>
In-Reply-To: <CAOMZO5CyYbAZRZrGLJNJXNJiekJXptUTu8tOfVw6y7-n-CXesg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <681CD0450FE8924EB5894233DC072D61@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 0370867A7DD.A1711
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
X-CRM114-CacheID: sfid-20200225_000150_560545_7FD38D05 
X-CRM114-Status: GOOD (  16.38  )
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
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On 24.02.20 19:43, Fabio Estevam wrote:
> Hi Frieder,
> 
> On Mon, Feb 24, 2020 at 2:22 PM Schrempf Frieder
> <frieder.schrempf@kontron.de> wrote:
>>
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> On i.MX6 the DMA event for the RX channel of UART6 is '0'. To fix
> 
> I would suggest being a bit more specific than saying i.MX6.
> 
> I see UART6 is present on i.MX6UL/i.MX6SX, but not on i.MX6Q/i.MX6DL,
> so it would be better to specify it in the commit log.
> 
> imx6ul.dtsi does not have dma nodes under uart6, so I guess you fixed
> it for imx6sx.

Sounds reasonable. I will change the commit message to refer to 
i.MX6UL/ULL/SX.

Actually one of our customers has a dts for i.MX6UL, that enables the 
DMA for UART6. The DMA not being enabled in imx6ul.dtsi doesn't mean no 
one is using it. Actually I have no idea why it's enabled by default for 
i.MX6SX and disabled by default for i.MX6UL.

Thanks,
Frieder

> 
>> the broken DMA support for UART6, we change the check for event_id0
>> to include '0' as a valid id.
>>
>> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
