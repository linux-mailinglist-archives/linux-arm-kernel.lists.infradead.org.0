Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B9E149F4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 08:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=32iJd3Ru/cZRjaFtAUpyT5L+bQjQezXw0imTN0MQtuM=; b=HbYEWh3f0ave+W9w9H9QQtGi17
	1JO9FoxLP3KHtVhIFkAax9BfwtUIlJZKFiqslKpcl7vjxENF1s7KHfTQrgDKah5SgnmD0oKrK+md0
	YJ1SPssDpgVkB6O5xHP/0zyfd5149egwuNHUESYHW53b63fAJJ2UHC8WaoZf2fk1IQk/mGKhC+lSO
	XBTnzpbkk2M93A0L94aRwBLBZvbL3yhbZAgU/7n6JQj+l2KcZpoC1TBgwXdSxELEcYsLpDeZTAt84
	0rdePOOsplz4ctfSz/O+zk/RFUtwQQis1yl7zbHWYLh6ZLGnQwHAkKg60pplYKsWQV9aeUTkZwVH6
	OO/WHHCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivz2h-0005cg-3k; Mon, 27 Jan 2020 07:42:43 +0000
Received: from mail-bn7nam10on2068.outbound.protection.outlook.com
 ([40.107.92.68] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz2W-0005c4-82
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 07:42:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6hITAKUUsBqQS098KefpFlAD1NoEfvUnPeF2QHJpu1Q4H7EWbwm0zxRaRtZQLvZel1c2+ApwCf1kfAFXpcnGLPjTvzF22fs8aXewRiMoR+dnRyo2ZkulY3rJGN6Kwy6U8TvntwPR1T7+aLLxNAHmUNC/dH8MD4RlHB+/ibzF56c+c0DXfNCuFfeaZfmIsy2Q5pLTSB7OI6d2eRUCIYbToFHASir3KfyMHsat50PsEfp+WvYcEyvDSGuJTHRQYItytJwvp3Ex4UZKrYCRLU5PMhexRVuFrhG6EZAXN52Bomi0ib94O2kkExz+aulDQSj9sXfpkCIVHBjOS8NYV0IIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0h6EwkwnvKEpVsgL9NU7atbPPBUbH7oBhccScLZvy4=;
 b=jkriWrkxIILOr9B8mTP5Xn3QVjsN1Qdz4Xi1b9ZTDmlLTctqg4ITNgoCHT2UqAjJKIdHQvOoRZXX+Z4Y/07cJCDLzfhMmsnR41VJhnxLGfsOlXOtnO+2/tVQb23wWqOKHdJHZRoQ4erH7NdqvgtK+nyrPYtsiVJIMIKoStffkhz+uj/Ob6FfJBM7RV39el6emvbtTObcThpPfmBjnbfbioBKAlgKjcndz1+He+dU/5PLsO2ktMo3VMKMg2kqUe+6ewf32SwHKwDWGHl0eMwZxSpQQutJzzzMtUgWhXAXSGiKtQnxolVoZlzodfK3SYJ/gyqG2j+9mzd1QlicQ+HGxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v0h6EwkwnvKEpVsgL9NU7atbPPBUbH7oBhccScLZvy4=;
 b=N5r3x4HVYjhi+iErkHEsYuG4WqeXGb6B5ScBFRKW63XSzM9pGCLtng8JL8eKMX+lgE4OXUBvm5HVCZ+yfyZ0boUt8Gw9KlgMv+pifpz7RlqW7e7gdNQFn31xKe9rn3Wirow8aCb22wBTqDJn4wpOJ7a2lXTwsMwM3DVmo2SeY18=
Received: from BL0PR02CA0026.namprd02.prod.outlook.com (2603:10b6:207:3c::39)
 by BN8PR02MB5985.namprd02.prod.outlook.com (2603:10b6:408:bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.23; Mon, 27 Jan
 2020 07:42:28 +0000
Received: from SN1NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BL0PR02CA0026.outlook.office365.com
 (2603:10b6:207:3c::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.20 via Frontend
 Transport; Mon, 27 Jan 2020 07:42:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT042.mail.protection.outlook.com (10.152.73.149) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2665.18
 via Frontend Transport; Mon, 27 Jan 2020 07:42:27 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ivz2R-0007h7-05; Sun, 26 Jan 2020 23:42:27 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ivz2L-0002aO-SY; Sun, 26 Jan 2020 23:42:21 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00R7gKZ7011384; 
 Sun, 26 Jan 2020 23:42:20 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ivz2J-0002aG-RH; Sun, 26 Jan 2020 23:42:20 -0800
Subject: Re: [PATCH] GPIO, Fix bug where the wrong GPIO register is written to
To: Paul Thomas <pthomas8589@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Shubhrajyoti Datta <shubhraj@xilinx.com>
References: <20200125221410.8022-1-pthomas8589@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <68610131-32f9-6ebb-705a-7d9303f21d3a@xilinx.com>
Date: Mon, 27 Jan 2020 08:42:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200125221410.8022-1-pthomas8589@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39850400004)(199004)(189003)(5660300002)(44832011)(426003)(336012)(110136005)(2616005)(6636002)(478600001)(186003)(8936002)(26005)(316002)(81156014)(8676002)(9786002)(36756003)(81166006)(70586007)(70206006)(6666004)(2906002)(31696002)(31686004)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR02MB5985; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb00c5cc-3415-4113-f7e5-08d7a2fc750c
X-MS-TrafficTypeDiagnostic: BN8PR02MB5985:
X-Microsoft-Antispam-PRVS: <BN8PR02MB598548BD7E9CC41F842306BDC60B0@BN8PR02MB5985.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 02951C14DC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TIKiu5aQ6PU9Ewkz+5UorUOp/i8yECCRuSrAM1AgFffYHjVdk+La215foUC+OkJgju1if4W4+BLVUMJ9hKQBc4TUVlDxDDfw5tPe+Z0b469Ecu0FKQiorLcPJcw05nGAyL3E7PW7h/GyoHoDp1bDxWDD96ESBJyZFP+VRy1TmFZxvE38LxwR798uFIkBW6AUJgZlOezNbUDHBG14vZ/sW8qlHQh8UPUykheq1HG8gpolK3HK5Iz+OvLrqCqXl0tbIy6lc3bn8BpKinmW2S5PJkutgiz+VSVq8bXzHpbrQdEU3t8fxXM7c6u2LW+Bd16y89DSP0QGEG0N8RGp1s4DfA32vn4qiU3UPpZvO0tmHZM77c+tXHxUWxbhYCL0G/szq9+mbY7eVWtDN8U4KP+Gc+I4dh4j+gJVEJpc9cizS89Gli6YF0VST5Yl8LEMdNjE
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2020 07:42:27.4326 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bb00c5cc-3415-4113-f7e5-08d7a2fc750c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_234232_292128_0FD2D344 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25. 01. 20 23:14, Paul Thomas wrote:
> Care is taken with "index", however with the current version
> the actual xgpio_writereg is using index for data but
> xgpio_regoffset(chip, i) for the offset. And since i is already
> incremented it is incorrect. This patch fixes it so that index
> is used for the offset too.
> 
> Signed-off-by: Paul Thomas <pthomas8589@gmail.com>
> ---
>  There are many different ways to correct this, I'd just like it to get
>  fixed. I've tested this with a 5.2 kernel, but this patch is against
>  5.5rc7.
> 
>  drivers/gpio/gpio-xilinx.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
> index a9748b5198e6..67f9f82e0db0 100644
> --- a/drivers/gpio/gpio-xilinx.c
> +++ b/drivers/gpio/gpio-xilinx.c
> @@ -147,9 +147,10 @@ static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
>  	for (i = 0; i < gc->ngpio; i++) {
>  		if (*mask == 0)
>  			break;
> +		/* Once finished with an index write it out to the register */
>  		if (index !=  xgpio_index(chip, i)) {
>  			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> -				       xgpio_regoffset(chip, i),
> +				       index * XGPIO_CHANNEL_OFFSET,
>  				       chip->gpio_state[index]);
>  			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
>  			index =  xgpio_index(chip, i);
> @@ -165,7 +166,7 @@ static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
>  	}
>  
>  	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> -		       xgpio_regoffset(chip, i), chip->gpio_state[index]);
> +		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
>  
>  	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
>  }
> 

Shubhrajyoti: Please take a look.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
