Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449624CD44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rumGXM0aanSIJtNjhLHIsjXcXntmjY0wx24SFjRN3mE=; b=CxDGWZ5DIFp60l
	ERddEzftmw8Fkeb7Qm9VgBuj+UV0/O1NcjOFA42cSW3umzrWFJg0wBbRNmWSEt66nv4HIKAVRaDLM
	Gqqwr0CtEl4B3pVUvg+SFbgjwwSwHAK50mJLmS370AFXV/xrZTLbjdNUDaVTZhsMOW03/U4FyqDt3
	LG0Gp9yNptzO0AmwHJl7ajYbntbNci9GTC7nhUH6AyqvOWrmq2u2FMn9mZNT03rRjaR25aBqC+Vr9
	rNawj7fF5Pf1JUDy2knlVAqFnowgTZv5DCz4Xn0rPXJpnlsLI31s+4sseRAN9Op5QKmVsPsdiHUFK
	4u6ofTBu7k2v28u1x1gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvfm-0006hQ-5R; Thu, 20 Jun 2019 11:56:10 +0000
Received: from mail-eopbgr690040.outbound.protection.outlook.com
 ([40.107.69.40] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdvfa-0006gt-4O
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gsxExkiILYIaMTaFTbJH20TJSTJh+U5yAo31rmWN4k=;
 b=ylZqyjthAD5wqbTGKpC1ViacvDCttagNnn3pL47epZeJ3rz2u+cG/rloGAJM5Da71Y8zcKOOGS+56Gs5E7e1RYC39t0gxCiz/bbvaPx2gaTIAGI60s8i17RGvTPXqfHJOt13KUIin9eWS7DZqJ/a6DPo67iXKatEz3bFlLCAD6o=
Received: from DM6PR02CA0013.namprd02.prod.outlook.com (2603:10b6:5:1c::26) by
 CH2PR02MB6230.namprd02.prod.outlook.com (2603:10b6:610:d::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 11:55:54 +0000
Received: from CY1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by DM6PR02CA0013.outlook.office365.com
 (2603:10b6:5:1c::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17 via Frontend
 Transport; Thu, 20 Jun 2019 11:55:54 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 CY1NAM02FT011.mail.protection.outlook.com (10.152.75.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1987.11
 via Frontend Transport; Thu, 20 Jun 2019 11:55:53 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:45474
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hdvfV-00044z-BS; Thu, 20 Jun 2019 04:55:53 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hdvfQ-0007yz-81; Thu, 20 Jun 2019 04:55:48 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5KBti47001790; 
 Thu, 20 Jun 2019 04:55:44 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hdvfM-0007yj-3f; Thu, 20 Jun 2019 04:55:44 -0700
Subject: Re: [PATCH] can: xilinx_can: clean up indentation issue
To: Colin King <colin.king@canonical.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "David S . Miller" <davem@davemloft.net>,
 Michal Simek <michal.simek@xilinx.com>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190619164518.5683-1-colin.king@canonical.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <71bd82e7-ea1d-89be-c11b-9d79a1655726@xilinx.com>
Date: Thu, 20 Jun 2019 13:55:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619164518.5683-1-colin.king@canonical.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(136003)(376002)(39830400003)(346002)(2980300002)(189003)(199004)(70586007)(4326008)(50466002)(476003)(63266004)(70206006)(47776003)(65956001)(36386004)(77096007)(9786002)(186003)(6666004)(356004)(65806001)(14444005)(26005)(6246003)(31696002)(110136005)(486006)(229853002)(52146003)(446003)(2906002)(426003)(126002)(2486003)(305945005)(8936002)(5660300002)(230700001)(4744005)(478600001)(23676004)(76176011)(36756003)(65826007)(336012)(11346002)(81166006)(106002)(81156014)(64126003)(316002)(2616005)(31686004)(58126008)(8676002)(44832011)(42866002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6230; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; MX:1; A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 79514fc8-6519-47bd-1129-08d6f5763fb5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:CH2PR02MB6230; 
X-MS-TrafficTypeDiagnostic: CH2PR02MB6230:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CH2PR02MB62308515D380EBD0AA2D2D14C6E40@CH2PR02MB6230.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:369;
X-Forefront-PRVS: 0074BBE012
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ZsHtvWemuJyBzkwPJ4DiNZzLtT9Mq22gFfCLQy6LGHfFVVglzukGlG+HLQvvjlbiUqsKbSSWmwLU06Cl/U8U4wfZu9HyTpBFVFvoaCcH1i09SUVZFAIyOQ9QsSwHOprjWgYHuBddVqa2FJ2OYttsp2yW3LhQbquVtGiHAgWt+uGlWG0Xg8AzftADOAWrxmFCMa9n9FaqC/WB/C5UJQLo3wbRYkm76DWZivFqVAIi5NU/Wkd3FKW9Syfs0VQnLbWo4FqFo/K9gpTZVqT3MBV6Db+LVkCEzNpIQPSoEYjTBcL8W2Rk8pRYqxuur74bWrvB6O9ECCqX+yAn4uhFo5o9Mp6i3TlEagfyGKWbLAGUL4uYj7Ofb8LJlYJWWVepy0/QDDqgRCHFGQ/xsfX2E+3kb+qvmte2AF578TLTJaH/YlI=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2019 11:55:53.8036 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 79514fc8-6519-47bd-1129-08d6f5763fb5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_045558_175714_1521EA8E 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19. 06. 19 18:45, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> A statement is indented one level too deep, fix this.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/can/xilinx_can.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
> index 63203ff452b5..a3940141555c 100644
> --- a/drivers/net/can/xilinx_can.c
> +++ b/drivers/net/can/xilinx_can.c
> @@ -924,7 +924,7 @@ static void xcan_err_interrupt(struct net_device *ndev, u32 isr)
>  				cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
>  			}
>  		}
> -			priv->can.can_stats.bus_error++;
> +		priv->can.can_stats.bus_error++;
>  	}
>  
>  	if (skb) {
> 

Reviewed-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
