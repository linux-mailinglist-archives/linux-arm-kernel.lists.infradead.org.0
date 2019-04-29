Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0C5E7BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXv8BB6uJwS0sS/Ke7jFkREKfrEH2u0YLd+LpE2M39E=; b=Ja5k8sIDkC8gXA
	/vhyNrwcdIwQUl6PVkVMRPzUalRTGvQLKcy4WzUUb+oljzxK27BQ+lPUlCAYmq4i9SHmXx8u9QTa5
	8zBaMZo6M7p+z1DMxGpE6zl4Fo5cNpfu2aOBGlHq3rDAllvtnP+lW0jsPV7qqXi7PkIV7HPDR0GMg
	2kiK/YgdVBtSSe9EC5WUUKI7FBiO9YczYp3XojS0+b24msGfGYzV5lCqlTjRZlHmUOSMRSIR+o821
	ChUwQLIssG8uR5ZI8dLKEI4hI3k8ad2OZsY0idjKemdTwLH14wbyQFMJI2c6gGLvoWDMrK3gGVbRw
	c3QgpSwzq+psWDAMCUkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL992-00053O-0u; Mon, 29 Apr 2019 16:28:44 +0000
Received: from mail-eopbgr770075.outbound.protection.outlook.com
 ([40.107.77.75] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL98u-00052e-DI
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:28:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lC0eLMpx4+gAQbCBdlaCfVj3OMf2yetCZarWPVVfioc=;
 b=HCFKw9zfdW5j/GuIWbNM3tZFL3Hjtn4QYHudrKv7wdahb/g3FpjMVTId9QabAMgucmHy+9Jbkl++A5uNgJN9K4lBO5NMTSau9hM0VMDWNDkrDEQThWUCH7D/m6+sYd7MjOGgi8R5pSDQDzNLofHe7lXLq4lhvBlnHYZ7kNH+uZE=
Received: from SN4PR0201CA0032.namprd02.prod.outlook.com
 (2603:10b6:803:2e::18) by BY2PR02MB153.namprd02.prod.outlook.com
 (2a01:111:e400:2c20::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1835.14; Mon, 29
 Apr 2019 16:28:29 +0000
Received: from CY1NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by SN4PR0201CA0032.outlook.office365.com
 (2603:10b6:803:2e::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Mon, 29 Apr 2019 16:28:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lixom.net; dkim=none (message not signed)
 header.d=none;lixom.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT023.mail.protection.outlook.com (10.152.74.237) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1835.13
 via Frontend Transport; Mon, 29 Apr 2019 16:28:28 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hL98m-0003vP-8c; Mon, 29 Apr 2019 09:28:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hL98h-0006Gp-50; Mon, 29 Apr 2019 09:28:23 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x3TGSDKA005901; 
 Mon, 29 Apr 2019 09:28:13 -0700
Received: from [172.19.20.5] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hL98X-0006FJ-Ef; Mon, 29 Apr 2019 09:28:13 -0700
Subject: Re: [PATCH] spi: zynqmp: Fix build break
To: Olof Johansson <olof@lixom.net>, <linux-spi@vger.kernel.org>
References: <2bb66114-c976-9c44-6db3-33a5dd12edde@monstr.eu>
 <20190429162246.6061-1-olof@lixom.net>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <6d31dc90-7d0a-fc8d-cbc3-331200a01755@xilinx.com>
Date: Mon, 29 Apr 2019 09:28:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429162246.6061-1-olof@lixom.net>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(396003)(39860400002)(2980300002)(189003)(199004)(77096007)(9786002)(26005)(31696002)(478600001)(186003)(230700001)(81156014)(356004)(44832011)(76176011)(6246003)(31686004)(36756003)(107886003)(8676002)(81166006)(8936002)(2906002)(2486003)(23676004)(486006)(64126003)(50466002)(476003)(36386004)(54906003)(65826007)(58126008)(110136005)(446003)(11346002)(2616005)(63266004)(5660300002)(106002)(47776003)(4326008)(305945005)(65806001)(229853002)(336012)(65956001)(316002)(70206006)(70586007)(126002)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR02MB153; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c430d502-812c-4034-9c49-08d6ccbfb665
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BY2PR02MB153; 
X-MS-TrafficTypeDiagnostic: BY2PR02MB153:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BY2PR02MB153EE4CA9673A4B4A187BE3C6390@BY2PR02MB153.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:439;
X-Forefront-PRVS: 0022134A87
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: JhY0kn2iWY9YJxpXQbKzPzws6tdcYtO8bp0wm3lnDdsF4w8oQdNjfCtuK0f9sfRHumgIy42AqKtxTBsLqCfXyuvAaXcBjCw9ycBNVKH2YL2kkDeaDvCDmfT7Oyx1R71f92WTtA4u2Wx6UUViQT/t/CMT72ucKoIv1EIUzFVeF6OuhHT9fwqtDZ+638cFPRLnKscD6Tn9bFEwp3tz5oJJsqSF/3Nq+dz5Z5ibxvd5IfLhCzNOEr4Vgl0rVd0F8i/E3zNXXQyLiQZFTJtmEI6tSMck+A58CEKE12Fu5JawiFw5OetG7VAP1IBvMOc93OM+BMMwnY6CammFfytRjOzgP0Lq7goYQ9m/Nk+lbtvefqIMIkJqE5T+h8AtNoGBMaB0qjBAg0L8AgZc+xmgtxoKnwPSeRJi8TJ31gyVHJoskxA=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2019 16:28:28.7463 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c430d502-812c-4034-9c49-08d6ccbfb665
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR02MB153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_092836_455446_4867C631 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jolly Shah <jollys@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29. 04. 19 9:22, Olof Johansson wrote:
> Missing include:
> drivers/spi/spi-zynqmp-gqspi.c:1025:13: error: implicit declaration of
>   function 'zynqmp_pm_get_eemi_ops'; did you mean
>   'zynqmp_process_dma_irq'? [-Werror=implicit-function-declaration]
> 
> Fixes: 3d0313786470a ('drivers: Defer probe if firmware is not ready')
> Cc: Rajan Vaja <rajan.vaja@xilinx.com>
> Cc: Jolly Shah <jollys@xilinx.com>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> ---
>  drivers/spi/spi-zynqmp-gqspi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/spi/spi-zynqmp-gqspi.c b/drivers/spi/spi-zynqmp-gqspi.c
> index d07b6f940f9f..9850a0efe85a 100644
> --- a/drivers/spi/spi-zynqmp-gqspi.c
> +++ b/drivers/spi/spi-zynqmp-gqspi.c
> @@ -14,6 +14,7 @@
>  #include <linux/delay.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/dmaengine.h>
> +#include <linux/firmware/xlnx-zynqmp.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> 


Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
