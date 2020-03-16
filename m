Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B044618684B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiMq/o3fp3YJ0mzg3tCBTWBPfeyMBWh6zdjW2pHUz8U=; b=pzv69ZDEsjz/te
	Dxm0SSe2F7cGKd3kdc9O4+GdUqwWUXU/bW4d2IwDe+xG182wsLy6AzZDUhxMTQO1lvXvYXyEUWFwn
	IWUhfmQEY7UnhU9QWSVkiWOvfkHHBwiXyuNxmSthApYr54eL3R2G4K5/w5Z6bKb2+XO8sX/IcStT5
	r7phEnj0ZNgVXHfJVh8wmY4QzQeXw+Rl8t5NDCYbBc5tYDSm/9Xx81F8T8peax4fttzMHbqGbAvCr
	o4AJBQQbZjKuqEOoCBiYyAtW6La8WVNEdtYxDKpBO77v3sZV0CeBgD57Mzknkq/CMplvUPxiRAs/T
	j9LLEGprvhnbmGAR/pMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmT3-00084x-Oz; Mon, 16 Mar 2020 09:55:29 +0000
Received: from mail.sensor-technik.de ([80.150.181.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmSu-00082r-JV
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:55:22 +0000
IronPort-SDR: 6q954WrARo6dWQ0PjBh8BUXTYTXryJz2ZOz9h82I8f3hM9oREbezQFsLllT6272HOq+zcZXN8w
 7BHu2x1TV7tyWR/uDDt1H9bTudAFYgZiAGSo5HI9OYH5GHPRCDPtxyrazmCjze5GVfytzUrlZm
 hBKGtx4P9oCWb+MNK2M2+MDKFtszlvjL2PoKbipZSFRSf2r1Fn6v/09neK7AFQvUCm7lt7qUND
 9EMPmpDoUp4iUF+ofEq6m2qSQAQ0d73lVkXrBnrecBF1SQU7100iVcL8VOGoMz/VsXhEmVH0Fv
 fA4=
Received: from stwz1.stww2k.local (HELO stwz1.sensor-technik.de)
 ([172.25.209.3])
 by mail.sensor-technik.de with ESMTP; 16 Mar 2020 10:55:07 +0100
Received: from stwz1.stww2k.local (localhost [127.0.0.1])
 by stwz1.sensor-technik.de (Postfix) with ESMTP id BF639B5ABC;
 Mon, 16 Mar 2020 10:55:06 +0100 (CET)
Received: from mail.sensor-technik.de (stwex1.stww2k.local [172.25.2.103])
 by stwz1.sensor-technik.de (Postfix) with ESMTP id 02F75B5AAC;
 Mon, 16 Mar 2020 10:55:03 +0100 (CET)
Received: from STWEX1.stww2k.local (172.25.2.103) by STWEX1.stww2k.local
 (172.25.2.103) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 16 Mar
 2020 10:55:02 +0100
Received: from STWEX1.stww2k.local ([172.25.5.24]) by STWEX1.stww2k.local
 ([172.25.5.24]) with mapi id 15.00.1497.000; Mon, 16 Mar 2020 10:55:02 +0100
From: Waibel Georg <Georg.Waibel@wiedemann-group.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: AW: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Thread-Topic: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Thread-Index: AQHV+zKIoQ99JD5nw0OW4Drv9HPHOqhK+ZfH
Date: Mon, 16 Mar 2020 09:55:02 +0000
Message-ID: <1584352502593.54297@wiedemann-group.com>
References: <1583928220724.65021@wiedemann-group.com>,
 <20200316013040.GP17221@dragon>
In-Reply-To: <20200316013040.GP17221@dragon>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.30.230.19]
x-c2processedorg: 71f8fb5e-29e9-40bb-a2d4-613e155b19df
MIME-Version: 1.0
X-TBoneOriginalFrom: Waibel Georg <Georg.Waibel@wiedemann-group.com>
X-TBoneOriginalTo: Shawn Guo <shawnguo@kernel.org>
X-TBoneOriginalCC: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team
 <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Michel Alex
 <Alex.Michel@wiedemann-group.com>, Appelt Andreas
 <Andreas.Appelt@wiedemann-group.com>
X-TBoneDomainSigned: false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_025520_955863_C423C535 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.150.181.156 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Michel Alex <Alex.Michel@wiedemann-group.com>,
 Appelt Andreas <Andreas.Appelt@wiedemann-group.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Mar 2020 at 02:30, Shawn Guo <shawnguo@kernel.org> wrote:
> On Wed, Mar 11, 2020 at 12:03:40PM +0000, Waibel Georg wrote:
> > Setting a CAN bitrate of 800kbit/s fails with a bitrate error of 1.3% if the
> > flexcan module is clocked at 30MHz (CAN_CLK_ROOT). This patch changes the clock
> > frequency from 30MHz to 40MHz which allows to support all bitrates recommended
>
> But code changes IMX6UL_CLK_PLL3_60M to IMX6UL_CLK_PLL3_80M?  Or
> IMX6UL_CLK_CAN_SEL is different from CAN_CLK_ROOT in the context?

Correct. The patch sets CAN_CLK_SEL to 80MHZ. There is a post-divider 
CAN_CLK_PODF which is set  to /2 by default which makes the 40MHz 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
