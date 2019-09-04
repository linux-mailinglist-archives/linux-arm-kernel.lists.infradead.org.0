Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E20A8585
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpDyiQtNFlew0xKhZWpcahpfGlikJSrpSDixZZtMipY=; b=n5rK0k1m6+1BpN
	aa6Qa9juwNS2bfI1JCKdZYFI1Iqs2/R7aKmMlWSLcvMewwBK92ruonJpFn3Cf9nRSeCmShzKmLNQG
	KpJQ3SGgN+vmR1EXsV73iueY257FokthVXcNSHqtfu00tFcKA03OdPexF5XKt/e505b/SqlWOZ+KN
	Xu264tHeS+vfqBdVIpLs07dU5Ao0z79PJ8eS8lRKqqK6Jf4sw6DjHIO9Kv+MF69UuchFNJUXtiQgF
	2fs7yUQFVtZfaDaObuOfLHW3qmGLOjRDxji4fM5jOqyCFV7ZAbMSdce63/0MhPbDpGzrH/KWdChYT
	4vA7FgSgXtKcuD1Wj3BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5W8G-00017L-4S; Wed, 04 Sep 2019 14:19:36 +0000
Received: from mail-bl2nam02on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::61c]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5W86-00016d-1A
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:19:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vv/hFABNviyd1dz4C7qHNPbsO51MnZT1d0BfD2gEO0zW6o/iG2ZDR3leVVxtczlv094H6F5SoNRY+wuVA1X+/RazgyzhcbRL615yUj7/I1JI3n976cAO2UyD08MXcd6grG6OzDA/oGjwqH+47hDHUaUCntpbSsyAVKl2TYJ21C7r9ctQbU49kUJIFixxFByIXBONsbKIrGadu6YixMIQC7EtW/kMS8S7oBiIRtLYDXya7VUOpgFZl8iO+b7kFC6DF2Dislsvzd+UsFXOf/Y9I6ZU6yJ//TWF+5DEDAifnJDUbX+pnwLOqoOujpvaDxxOywig7bLUcg6bEmiVQcqiLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2pf6EpGqeZJkgLKwXqxGxY/pgdyaDQxi/QQFpZdoxnY=;
 b=g7OHqwC00xfW1GR3pZAXfID0aJlgKXjiWvA5fJaUtQbxJFXWq7klAqIaQVA6D5GRwhEvpgnhD0r/iWpUu6Gg/v0sjy/CGtnuYT9DAauLT7SFpdERbx0w1C0ItRmvswoUGR6RbqrBpBKTatwyaZA1MJJiAqKdQnrD5ubn9WjB0cS7EtogcQNSfbJapUsqGuO4XkgkiokzOvZGNc4PKc2OeIDcnghTxKGeizCLtG7Tzb1ZOzWb01jsguKZadxvK7q6c4b+wUGPNnbn7I5DKcWLo//wU1qsnfGPcb5a1bRORIGYOzJYOuRRFlEGrEGsfohUX7wRwQoYsOZEkhAB2PY6bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=davemloft.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2pf6EpGqeZJkgLKwXqxGxY/pgdyaDQxi/QQFpZdoxnY=;
 b=MovKWRaToChT1rYCZyb7+I2u6rp1c2cX6ipV1HR8j/7diX4+jX1zFDm1sLqKqM4qIXTfriYnu1HzSZzwfkadjvunmBdA7WtLbwYhSrvYvtEDl8RjvfrSvjtYNQTvpwRqHDJTQrDuOha9YMH5HbYQJbb3xZtlV57GuNsybK8BTxY=
Received: from BL0PR02CA0134.namprd02.prod.outlook.com (2603:10b6:208:35::39)
 by DM6PR02MB5322.namprd02.prod.outlook.com (2603:10b6:5:46::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.21; Wed, 4 Sep
 2019 14:19:09 +0000
Received: from BL2NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by BL0PR02CA0134.outlook.office365.com
 (2603:10b6:208:35::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.19 via Frontend
 Transport; Wed, 4 Sep 2019 14:19:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT061.mail.protection.outlook.com (10.152.77.7) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2220.16
 via Frontend Transport; Wed, 4 Sep 2019 14:19:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:49504
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i5W7m-00010B-Oq; Wed, 04 Sep 2019 07:19:06 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i5W7h-00079O-Kd; Wed, 04 Sep 2019 07:19:01 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x84EIq7Y013038; 
 Wed, 4 Sep 2019 07:18:52 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1i5W7X-00077o-Tu; Wed, 04 Sep 2019 07:18:52 -0700
Subject: Re: [PATCH net-next] MAINTAINERS: add myself as maintainer for xilinx
 axiethernet driver
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>, davem@davemloft.net, 
 netdev@vger.kernel.org
References: <1567604658-9335-1-git-send-email-radhey.shyam.pandey@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <ecba0a69-f235-340a-22ba-a97a3944d906@xilinx.com>
Date: Wed, 4 Sep 2019 16:18:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567604658-9335-1-git-send-email-radhey.shyam.pandey@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(396003)(136003)(2980300002)(189003)(199004)(426003)(58126008)(230700001)(446003)(2616005)(476003)(14444005)(11346002)(126002)(316002)(70206006)(36386004)(44832011)(70586007)(9786002)(106002)(356004)(6666004)(50466002)(486006)(52146003)(2486003)(23676004)(36756003)(26005)(229853002)(81166006)(81156014)(47776003)(31696002)(8936002)(8676002)(186003)(5660300002)(478600001)(2906002)(6246003)(305945005)(31686004)(336012)(65806001)(65956001)(76176011)(4326008)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5322; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; MX:1; A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 24386430-352a-44a7-8650-08d73142d937
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:DM6PR02MB5322; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB5322:
X-Microsoft-Antispam-PRVS: <DM6PR02MB532254E47863C000C4B5FB94C6B80@DM6PR02MB5322.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0150F3F97D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: vHM4rdRgVbm0vUAADPG5tIee7quI7D3rOCF0m8VMWHOb8k/ltcGuQrdfhPMVXCkQdnC4eBPiRgcKN4f9459LrM6dhrDUzDSMOS+0n8NVCBUMjrWfVAWo3tN/J0585XYXgiST9sBI2sIF+Smx79U40FzTQPNG1ChdikqdrflB5YRQc+YAsA0J3MqFsER0tTVROnqksKhtWyrjVXJUg1Byw8vXOd0PzJ5BDmGlo9/xAzw3hFPb5OJUdM/FVOHxFh7z4Kwy+U7CYwXqEK/BllY1HclCVezicyy7t6+MrSDczk0MYwthAi0+E3byx7qKvoqAjvrHvp2LkssUK7+7SLxFESL+u/r1tTOWhDijE2ma/PCMBV5CVz2uf4CkTvU4tfxZ+DyxvR1WYi2tGJpdgB/W+O0MXv23NXvKVsj3DCyR03U=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2019 14:19:07.6360 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 24386430-352a-44a7-8650-08d73142d937
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_071926_076468_16843BBC 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, anirudha.sarangi@xilinx.com,
 michal.simek@xilinx.com, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04. 09. 19 15:44, Radhey Shyam Pandey wrote:
> I am maintaining xilinx axiethernet driver in xilinx tree and would like
> to maintain it in the mainline kernel as well. Hence adding myself as a
> maintainer. Also Anirudha and John has moved to new roles, so based on
> request removing them from the maintainer list.
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Acked-by: John Linn <john.linn@xilinx.com>
> ---
>  MAINTAINERS |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a081c47..74d5566 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17714,8 +17714,7 @@ F:	include/uapi/linux/dqblk_xfs.h
>  F:	include/uapi/linux/fsmap.h
>  
>  XILINX AXI ETHERNET DRIVER
> -M:	Anirudha Sarangi <anirudh@xilinx.com>
> -M:	John Linn <John.Linn@xilinx.com>
> +M:	Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
>  S:	Maintained
>  F:	drivers/net/ethernet/xilinx/xilinx_axienet*
>  
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
