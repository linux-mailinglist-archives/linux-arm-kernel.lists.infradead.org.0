Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C1798D35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1nZ48YuPe4oOc8GpsfYCNpSOexiZ+Y6StbcCYZKyuk=; b=g7s0ITn2mgo1aG
	Y7kUH4M5uyrBgLBeZQ3TzbZPdOJvQ/F0uqJa30h1yhbYPKvl/VbDM2utZdtVMsen0POxqQ8bXE9sz
	wrwB8RsdV0/MD5u73axeBiNpk+4QyyJrhNzOCd6wbfdoNvfGZlHDUJ4eiTMiIOR4l7+N8nlPuA5QW
	s5xbf0OUzkuX3YV5vQJfcLlZDRC2VDTJXNUtnD4fAsbmD9nHCO0Lk5+tAkQnxjdVRYthlinpBgo4M
	NiiL4grVnNyqhdZUF58J93M46TEfHnLgKr8eTHB6b/uMe+tBKvFIhRur+hTkxdSw64R5y+bifsTuy
	W98TSTbEfqBeJiJx+Nfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iFe-0006JQ-Dy; Thu, 22 Aug 2019 08:15:22 +0000
Received: from mail-eopbgr720086.outbound.protection.outlook.com
 ([40.107.72.86] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iEl-00062h-CJ
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:14:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=immjh4BzITEu0cDR/aXHT61oF0WubVTBaOlFDExtZKFFUcz/AD5Yjq63sZ55wvRte1JmCeEeJKHdU8U8XPUmbJKRFssv6rLMRcUQ7jUpyOTqN5vDMFaevtnC9+eC9Rhf3FXRh0LWzE1qiZuKBjO+xjUB3rn/4P5KiGwuNZiSeZFUinbDedKs7LiDZ7lvqDVZSPz3vcHjeA0TifOhbi1LMgaaUpEligcKAEJLyGP+7wzR3jH2lsl6VWgxHlw9+mLTVvtDD7qv0txVNxLcBEiSYxK4iw2TqrZZ3zA9BKY5hyM/KZTbLmgh8sF8sRdC3XlMFDHVfwvNKJDwrv4ZtF1Dyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9uYUZm7yl4ivK9YiUintwxXrH4YgHqYbKvzZ01FyoY=;
 b=KQCdTxtMkm9lw5a5DDGcQ/tH33MmTUXFY+ZfDvwc7Q0hInTNoPzarzpQfCQIcGnxEvafTFE/SgJSMVzeDZsllwM1u+uZo3Nxgjl1CfoosmnOrY083+ybUXeP9FUeQbayTnj1CdfoVDNQM9J6AaO3PUZBDAgavsiCMkU3yHPe6Ulj0E6N8JzVC0mHx4L2SmvDkZlXtL90bMM1i/HbB9Y+prNWJ0jvbRAKI9f8XioX2RAxE8HbO/I4JzCp1t7xffx1dZP2eR2JoknLjD/oQvLSXm1Lut2mYY4kif7raWsdvQaRohEUG8jxDCw8OfQW1T2JU0jJvqODx0Me7q/5nyWCfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=oracle.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9uYUZm7yl4ivK9YiUintwxXrH4YgHqYbKvzZ01FyoY=;
 b=DN7HW8MI3PTkASBCSqGG8d6UeGyvLiBEXvUbPLYbPWyFXmviNKVvqI/SBxNR9W0oCzmN+/eNe602iDVS2WCsXvJoprbQ/tKpQsn0HwzgOI124EvnqFwg7lxKhX7DkKpLkQr52OAVdkjENjn91DzIVra4RWTRuKe/ddcajoXE5Q4=
Received: from DM6PR02CA0086.namprd02.prod.outlook.com (2603:10b6:5:1f4::27)
 by SN6PR02MB4048.namprd02.prod.outlook.com (2603:10b6:805:2c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Thu, 22 Aug
 2019 08:14:22 +0000
Received: from SN1NAM02FT037.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by DM6PR02CA0086.outlook.office365.com
 (2603:10b6:5:1f4::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2178.19 via Frontend
 Transport; Thu, 22 Aug 2019 08:14:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT037.mail.protection.outlook.com (10.152.72.89) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2199.13
 via Frontend Transport; Thu, 22 Aug 2019 08:14:21 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i0iEf-0004jy-Ft; Thu, 22 Aug 2019 01:14:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i0iEa-00038l-Ce; Thu, 22 Aug 2019 01:14:16 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7M8EEwP017653; 
 Thu, 22 Aug 2019 01:14:15 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1i0iEY-00037d-MR; Thu, 22 Aug 2019 01:14:14 -0700
Subject: Re: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information
 leaks
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>
References: <20190821070606.GA26957@mwanda>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <58e9a151-3d92-c730-eea6-5cfde90934a4@xilinx.com>
Date: Thu, 22 Aug 2019 10:14:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821070606.GA26957@mwanda>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(2980300002)(199004)(189003)(230700001)(446003)(36756003)(31696002)(76176011)(54906003)(6636002)(106002)(229853002)(110136005)(58126008)(316002)(65806001)(478600001)(47776003)(65956001)(2486003)(23676004)(52146003)(356004)(26005)(305945005)(186003)(14444005)(336012)(6246003)(126002)(36386004)(31686004)(2906002)(8676002)(2616005)(44832011)(8936002)(50466002)(70586007)(486006)(4326008)(5660300002)(70206006)(426003)(81166006)(81156014)(9786002)(476003)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4048; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 211f146e-3eef-49e4-1841-08d726d8bcfd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:SN6PR02MB4048; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4048:
X-Microsoft-Antispam-PRVS: <SN6PR02MB404849CAC6E2BB2EA370A3CEC6A50@SN6PR02MB4048.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 01371B902F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: wiTX4lK5WGYzgDABmybrepUKaVZFSfMur/6dFD9elxnRCK5ggTLjMk4Tyx26IPPsiDSqQZYz6mmU8yrPiu8q/Mtqbam9R78opHCPUGBul4/fjA8p/rX1ydUSXsx7Dt73UH8dTr2uesPIzAF5IwGJTZlfJNnG3+9HxiDYrwp+VV8wFTV00UtBphCN1pfO/HxBBgky+b114UIa2VtRhDXmyU9V9RBXw1JvjgDGOEFlzp/rWHFk5CvcCkYG5xq4YjSMlsu0CtFXtHISm8tZdWiJ027VceZX5FuFLEAn5KvYjRftCuPijhvfD4l0Qn3K8OUAa2KNHye6n/CXVVe5wuXkplHXsODhybl80voO3IwPtq86wkESo4CeNqKVqpHf8FvfG4iQ050ZpDcy1mT/oO7Hln6CfEPV9+8TyfBIUf9USoQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2019 08:14:21.8957 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 211f146e-3eef-49e4-1841-08d726d8bcfd
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011428_033890_B208DBF5 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

On 21. 08. 19 9:06, Dan Carpenter wrote:
> These structs have holes in them so we end up disclosing a few bytes of
> uninitialized stack data.
> 
> drivers/misc/xilinx_sdfec.c:305 xsdfec_get_status() warn: check that 'status' doesn't leak information (struct has a hole after 'activity')
> drivers/misc/xilinx_sdfec.c:449 xsdfec_get_turbo() warn: check that 'turbo_params' doesn't leak information (struct has a hole after 'scale')

Who is generating these warnings? Is this any new GCC or different tool?
I see that 3byte padding but never seen these warnings.

> We need to zero out the holes with memset().
> 
> Fixes: 6bd6a690c2e7 ("misc: xilinx_sdfec: Add stats & status ioctls")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/misc/xilinx_sdfec.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 912e939dec62..dc1b8b412712 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -295,6 +295,7 @@ static int xsdfec_get_status(struct xsdfec_dev *xsdfec, void __user *arg)
>  	struct xsdfec_status status;
>  	int err;
>  
> +	memset(&status, 0, sizeof(status));
>  	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
>  	status.state = xsdfec->state;
>  	xsdfec->state_updated = false;
> @@ -440,6 +441,7 @@ static int xsdfec_get_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
>  	if (xsdfec->config.code == XSDFEC_LDPC_CODE)
>  		return -EIO;
>  
> +	memset(&turbo_params, 0, sizeof(turbo_params));
>  	reg_value = xsdfec_regread(xsdfec, XSDFEC_TURBO_ADDR);
>  
>  	turbo_params.scale = (reg_value & XSDFEC_TURBO_SCALE_MASK) >>
> 

Reviewed-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
