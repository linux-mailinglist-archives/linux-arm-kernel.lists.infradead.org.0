Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD591B5D7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wHJ8vjFSl+jPXXnVPa4AapVgivn4P5G5kcOTiDgDLpg=; b=RfO2K9RMvG2L2ZCWJjcP3kC5K
	3CwsVrMLxQp6j2hCmA7NnkZAY/4xu/hHK1JvzsKwAb1/3dCeWUDpU6CXimrmBJmchrxFxr8kVKOlT
	lImZh9YZDJyDIewHcSt7fesHwrWonW+Pnm++zqqPTdorek23uRa9a0rAzo6dUqv8/eRWtbNPKQ9QM
	sF9mjTz7gV6RUHYovIYq7xkF+oRfxUuiLWmylJLfrMjGAHkLJJ6xoyAjRQebTSd96r/mOadctsFYd
	O6+eyD1bfnyk0FYX6C2SqubKC/AX/fyDXP7GFjjYWb42U8TM+0r1q5ABYyuJWLhwXCgVQjSTrGUe6
	t7PU+0+wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRchT-0007Bb-Jm; Thu, 23 Apr 2020 14:19:35 +0000
Received: from mail-eopbgr60058.outbound.protection.outlook.com ([40.107.6.58]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRchJ-0006zF-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:19:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXpDmR1/rfMCe0mTRLuxaXzhtWt5Ffz1CE80j46P5O8aPmScwE3vRBcRGeG5ssJbUAReE8AGbOH7bFPUkAvmpac5GaH6zzsKVT49bWtLLnGMA9dNlw8ARTxAjuw+QBzT/wsCr7b1yZVT6Ttcx5qMznhk9FpGsani8IYFTd8v4cAT0pqy1J6LCdy0ih4niVh6CbT3HLf4+rENq97yGRWMb0zu1Ljl5KprWPbRX1hjWuHmRPlT0r1y/dZkwTpgDXxlheJSyVRxdhgTth//PZc6GbKdBig860mHtfbgh73y0/+q2YC0/S25ijKRd6By4bBmPkoMRzy9R/xdezOd7WoQIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbNtqdTzONO1szolTXjAYTVXOoKArFZIRQ3VKuG3pe8=;
 b=TtfkuhHsnj8kV0MOGfJ8y8tpIsrEV3sgzgG8jf0+Eh/mUYWqOezWqX11SRa9SJ8xJiMQoe/feK5CMSRZgDpUKmvZX54Y2lnV1cFpFAFDThEfxzrwe7ai4roWZgIXeNXBuY7d/ztVGvkzhvLyY0t+dbYP72Dy/hGkPS39bOSOT9ntDKelXvIsfWvgl1OnA2sA+hqCUFSoAMtjzTpgHMXDlaLtGKi763M/MmknOtPJmJBC9JqUoiKCl11o53kbUERJoWlXoGkBLJwVHDKE30qiwwxORghg1i9s17kG9fSE28qQE57QanZCErTTM6nzm0qY8Wbn9e3WDREDYpzsysdB+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbNtqdTzONO1szolTXjAYTVXOoKArFZIRQ3VKuG3pe8=;
 b=ZT3kSVyXJQWlHgWp2LVegwMXqONL7Q0CZCn4YXC9KsSjHG3wL1etiWtFaAkJWGfBmuCEHHXvFRcDx/bn4gG/pbSUob9yTIPJfONoYjib5bPGFFH6J19V7/zEP8LKbZSY/d9dXKcTPkjJQNXfVHgxjz5GGXCVwBDE88T1ABFcKzc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19) by VI1PR0401MB2366.eurprd04.prod.outlook.com
 (2603:10a6:800:2b::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 14:19:21 +0000
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9858:e485:aaa6:ecc8]) by VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9858:e485:aaa6:ecc8%3]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 14:19:21 +0000
Subject: Re: [PATCH 3/3] thermal: imx_sc: Include rsrc.h instead of types.h
To: Anson Huang <Anson.Huang@nxp.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 rui.zhang@intel.com, daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 robh+dt@kernel.org, leonard.crestez@nxp.com, linux@rempel-privat.de,
 peng.fan@nxp.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org0001-dt-bindings-firmware-imx-Move-system-control-into-dt.patch
References: <1587650382-18586-1-git-send-email-Anson.Huang@nxp.com>
 <1587650382-18586-2-git-send-email-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@nxp.com>
Message-ID: <e13f4012-a022-be83-54e3-5eb010006961@nxp.com>
Date: Thu, 23 Apr 2020 17:19:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <1587650382-18586-2-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0050.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::30) To VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.100] (5.12.61.133) by
 AM0PR10CA0050.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:150::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Thu, 23 Apr 2020 14:19:19 +0000
X-Originating-IP: [5.12.61.133]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9380c634-f70b-43d6-f2a5-08d7e79150d3
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2366:|VI1PR0401MB2366:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2366A1011A5A6CD2DC8E17FFF9D30@VI1PR0401MB2366.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0401MB2287.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(366004)(136003)(7416002)(44832011)(956004)(186003)(4326008)(52116002)(16576012)(16526019)(478600001)(53546011)(26005)(2616005)(86362001)(31696002)(31686004)(2906002)(8936002)(81156014)(8676002)(316002)(36756003)(66946007)(66556008)(66476007)(5660300002)(6486002)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3eRtozwv1Gq20qVLPuLBOL5pRjVD4xY2gPBz9xsZd9Ei9K4Jhm2rCISEFe6mPjw6PVT99j2Q8nE4TffsUVzNnjMDwjK9zY9l86U+YQNC0eUNF1WVvujTFmdIs+abIPO+6AyFJtQOqiSQEq3xiPhHgn3kxsoWUvhNLB/qn8qb5AUIB/NJZgpsML07f4RK2HoHcbIoqx1uTejjADOzDnc05YlAWWz6HCc8yR6MqjY0VHs4bqa3XCeQzQBWDkc97LYgUwfCvC1DbkEVCuKE74pjLxxI9do49ca1OXVDQivKUdLHI7U7xcudwPWLhTdjM9Ae3v9qhYCnCHchgK5atPbMnZnUfYJymqffqAxbry5tyn+5NIpwY5a8EZhL9NgsekOVszI/Yu6JVRD3r+QC9rExkIkATVKR6PtLKbu02tHppqDVwZWb4AIMrxXVF/wQZxTUxKV++9EHZmRPucKIFcv94R7Fo51H8zlUx4A3a8U8Xxs=
X-MS-Exchange-AntiSpam-MessageData: VYD7ETtHyK2v80wGlq8acs0mmwq2tfJZyg/wJbVkGU2saI4AruEw732O1FkDlYXeyuB23eSeA6c23+bnhpb4NSBOdlGLLBaW4mN6MkjgUaym+LA6PdSLG3aEcwS5/NXajkQLD+EtmHsdAh6qxC168St73lbnygtkFYUarq1hCsikCo1MRj5WiuJBKAPLUEVJe+HjC8hufPGKTMJVIEiuogB/Mmd4F7hZFUZQ+r5Gqcvbj73JwvHrThTR16S+4ik9JIIq8czlww4g9XRg/flPDZtYXpDr8kjVIm0Zw1tdcpHBVHxL9UnQrFUjSuF113S8sLs4/sZeqHUto02qp+tpvltLLv/mRzb9nPK+PbYUjTlzPARG674f02SVxB+L6bgMDkS/lmOYt1iMRUeYKgw5J/16wn6mG/TL4gGjI2U+Igs2of/N/skg0R94QiQTHBNbDTbNydFjNw4w6PIy2LlPHNT8GR6vS29Ot38VapgGt44kGBpbFjcDZnc3FiXELAMZYETTakFMmvmHZomDW6MNR44P55DgNDMa9RZ2OFO/TXC0uibOdsL8L8JeehAI/49v/Q1G50JeS5DQnCHUi+LT0cz8YwkYZ7f/flTh66H2O9hyrBiEsSd047y1rt+0MkdtoR0cyveDa1Teb4vw9TyHwXlqZuNJmlIWg0+YL1Nnx15SUSfrawU77wSNiYg2yPBGUqI27tv9qJ7dYbXsiOnqTk/2CrR1JzXYZMInQIBeTFyPfveRTulZwV86sf833rKUnBPndHaOPH45TBmzg1514EJIi01KXu6523hS1U6tVdI=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9380c634-f70b-43d6-f2a5-08d7e79150d3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 14:19:21.2934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vFEqCP4yDASBfGjSl0kuGMghDtMFUOWZX9X4rBtXgsNL++AIE7DGGLoEs8+HCy8HIcKdiSdIQcxivkxzpACdAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2366
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_071925_653402_C3521859 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/23/20 4:59 PM, Anson Huang wrote:
> The linux/firmware/imx/types.h has been merged into
> dt-bindings/firmware/imx/rsrc.h, change the includes
> in imx_sc_thermal.c driver accordingly.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>   drivers/thermal/imx_sc_thermal.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/imx_sc_thermal.c b/drivers/thermal/imx_sc_thermal.c
> index b2b68c9..b01d28e 100644
> --- a/drivers/thermal/imx_sc_thermal.c
> +++ b/drivers/thermal/imx_sc_thermal.c
> @@ -3,9 +3,9 @@
>    * Copyright 2018-2020 NXP.
>    */
>   
> +#include <dt-bindings/firmware/imx/rsrc.h>
>   #include <linux/err.h>
>   #include <linux/firmware/imx/sci.h>
> -#include <linux/firmware/imx/types.h>
>   #include <linux/module.h>
>   #include <linux/of.h>
>   #include <linux/of_device.h>


You should do the operation of removing the header file and updating the 
*.c files in one single patch.

Otherwise, we will break bisection. There will be states of the linux 
kernel tree that do not compile.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
