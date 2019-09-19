Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B1AB771B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQiIOGgEhQQUiSWrmRKWqQhzB5w83rvT7mxRLhhVQi0=; b=AbIooDHi5Yy8ZS
	Xmf4rEU/vike6GO29meFImjUzoK4iZ3Qv4N1FGqwDxnTlbgl2ar/ETh0M+/TyqJH+SxLC3E1b4m9Y
	aYFhnmkBZ7iAsNbzIzPUw4bTawwIGAGGdnPz8LsqVbJ+dKQqG6GIDG7XT3fcriLJ/GAuqwGOUkzp6
	43c6UQ5ZzILycYAwIoYIjN7GRMnph+OxE8Q/yxSuA94bUh2XK4lCLd5MSaZLNGljlBLtMmzNActU2
	vYWfMDTjUyI7EyCPBFbk83RB/PuQ081YXR86d6K/ipDfACrbtQLwX/TjrJhhEJzT4n32KQYDGzh21
	OG8BxgrHpx/0yXIhkuXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtJ3-00026G-Bo; Thu, 19 Sep 2019 10:04:57 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtIp-00025j-7R
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:04:44 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 7B5A667B344;
 Thu, 19 Sep 2019 12:04:41 +0200 (CEST)
Received: from sntmail14r.snt-is.com (10.203.32.184) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 19 Sep
 2019 12:04:41 +0200
Received: from sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8]) by
 sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8%3]) with mapi id
 15.01.1713.004; Thu, 19 Sep 2019 12:04:40 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Jun Li <jun.li@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: imx8mm: Use correct clock for usdhc's ipg
 clk
Thread-Topic: [PATCH 2/3] arm64: dts: imx8mm: Use correct clock for usdhc's
 ipg clk
Thread-Index: AQHVbqhJada8Xsj3oEetJoKRBs2eSKcyddCAgAAlboCAAAk3AA==
Date: Thu, 19 Sep 2019 10:04:40 +0000
Message-ID: <c1c08d49-3473-b4b1-4ed1-f30276ffbbf1@kontron.de>
References: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
 <1568869559-28611-2-git-send-email-Anson.Huang@nxp.com>
 <c680d114-1c14-6bf8-226c-2fdd98350158@kontron.de>
 <DB3PR0402MB3916B0DE9EBC0B0F6664CE34F5890@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916B0DE9EBC0B0F6664CE34F5890@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <2798A0465DE2B140910482FC94ED1272@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 7B5A667B344.AF6E0
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: abel.vesa@nxp.com, agx@sigxcpu.org,
 andrew.smirnov@gmail.com, angus@akkea.ca, anson.huang@nxp.com,
 ccaione@baylibre.com, daniel.baluta@nxp.com,
 daniel.lezcano@linaro.org, devicetree@vger.kernel.org,
 festevam@gmail.com, jun.li@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, ping.bai@nxp.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_030443_594500_D72E9FC2 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On 19.09.19 11:31, Anson Huang wrote:
> Hi, Schrempf
> 
>> Hi Anson,
>>
>> I have a question, that is not directly related to this patch.
>> I see that for the usdhc1 and usdhc3 nodes, there is an 'assigned-clock'
>> and 'assigned-clock-rates' property but not for usdhc2. The same applies to
>> the mx8mq and mx8mn dtsi file.
>>
>> Is there any reason for this? If not can you fix it?
> 
> This patch series is NOT related to 'assigned-clock' or 'assigned-clock-rates'
> property,

That's exactly what I'm saying. To not cause more confusion, I have sent 
a message in a new thread: 
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/681426.html

> it is just for correcting clock source according to reference manual,
> the 'ipg' clock is from system's IPG_ROOT clock according to reference manual CCM
> chapter, using DUMMY clock is NOT a good option, the 'ipg' clock is supposed
> to be the clock for accessing register, and it should NOT be DUMMY if we know
> what exactly the clock source is used.

That's probably right and I didn't mean to question the patch at all.

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
