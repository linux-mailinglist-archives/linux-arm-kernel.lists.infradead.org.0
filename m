Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5FE98D6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28g3oNOs2f46bOz/ujZwmFAVNVHW0QvTHp/5ZPV/rbc=; b=STCnApKCWmZPkg
	GA+idVt+FCzfJGVtobhQeGp0Mkj0FnOOaONLP+b2ZOvhYJ729oKPCexbJKiocxdh27rqMMwexbD48
	IBQ0bbvx1R/V4tC13RWOSMsI0zWLnN4AQxh0yA0owY5ZFf/W5xXzzzKs9wd3tz1mEntrDYszRiiW1
	5L9TPKTIwyCiK0OZlqfTLegJmSQm5+aMz84mwSyhAg0wL3eKiLp8H3xaVPw00NM2iFXgAwJxLi6gC
	czO3aB7YuEpaZ/C7HUgNkN8HJQakoA9jjXk92gGZbBKN+vmsRf5+4w1TtbGFyrHebVOqk4PlkUKHe
	zRDPe4wEjJom95v1TiJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iJ0-0000UZ-B5; Thu, 22 Aug 2019 08:18:50 +0000
Received: from mail-dm3nam05on062e.outbound.protection.outlook.com
 ([2a01:111:f400:fe51::62e]
 helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iIm-0000U9-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:18:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RvfFWfDffnNCBi0lBiH7yTwroALkSLJGHbfd6C5sFhLcIPICf1Q+poHMbfKRsDSs8iLCGmczPPmmuD3veUnScIn1XLjYbphtfZrSNN45yhOele98Ul8iZ5ijN+lCRDAIFCJ5aNeIS4KPWlvgy8Gw+dWIBK3Gb7aYTmmbEfEx99r7imjzWsYObgOhi+Jhx1nVaCf7MSjZB4G2F+LfPyQZVTGauK7wpWaz62dgrYmuVUy1kqzzwUCD47tdZ2ljk4ZAbcGs9S5cM2ObNO5LCJ8uatvNmZs85CeHCdZQDWlTQn1XVid+EyiSEe6JTu6Pf8JY9GnZvx1f5gcHmh6sQtc7tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bu7vELTQk1IhUwoDgNE5WLS9pb1I08Z8jEelGuKSKgg=;
 b=Jey7y3RHwIuoc3iicZqynlynMmPp0MDjyD7bQ+4aXFIJYVisAQbOXEu0F4gM2Ywo1SwyVBe7iZXFS9iWzZxjKaBUwLbscq6INoBrA/Iwf3+1cZ5lIkpZaXdWrhvmatuarutmnyO97pRLOMf7WsoJ6n8JC4Bl4+XoSKRwAuKAGjVw2c3+Fx/DQi5olh6YccIzk/OD5CMny9sB6ApnNLrzmjnLkP04DGSG+lKgWI3LRqP3Q+ApMGCT9LeP/WVRshA/sXrjPZ/8dviVsRqkzK5DYGgunVhR8XOmrYgzVQoJb7BTHgvAq1iXXou1YYA0G96LuBM2J2HnnWEHhbdHpfRXVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=oracle.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bu7vELTQk1IhUwoDgNE5WLS9pb1I08Z8jEelGuKSKgg=;
 b=ppDED/UsXSIl0LFbbyMUGQ/1t2Utdd2dVg0WVgouJqR74EqtNSit1mXHjsJEN4gWLubtf4sxRrTb5svanxRWa7Gs/6xIyuaPUWwh8SXIfYBQwVDYrynSDbioAq8dfHAZ+GhTMHSuWrR2b/IWsJsHJnQ4OJjqJYaTaAVvOetJBd8=
Received: from BL0PR02CA0053.namprd02.prod.outlook.com (2603:10b6:207:3d::30)
 by DM6PR02MB4043.namprd02.prod.outlook.com (2603:10b6:5:9f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Thu, 22 Aug
 2019 08:18:34 +0000
Received: from CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by BL0PR02CA0053.outlook.office365.com
 (2603:10b6:207:3d::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16 via Frontend
 Transport; Thu, 22 Aug 2019 08:18:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 CY1NAM02FT057.mail.protection.outlook.com (10.152.75.110) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2178.16
 via Frontend Transport; Thu, 22 Aug 2019 08:18:33 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:49208
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i0iIi-0008Et-Jd; Thu, 22 Aug 2019 01:18:32 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i0iId-0003tT-Gd; Thu, 22 Aug 2019 01:18:27 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7M8IM6j005211; 
 Thu, 22 Aug 2019 01:18:22 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1i0iIY-0003sv-Hz; Thu, 22 Aug 2019 01:18:22 -0700
Subject: Re: [PATCH 3/4] misc: xilinx_sdfec: Prevent a divide by zero in
 xsdfec_reg0_write()
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>
References: <20190821070953.GC26957@mwanda>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <022ae855-828a-9a0e-18fd-73f8c1424dc9@xilinx.com>
Date: Thu, 22 Aug 2019 10:18:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190821070953.GC26957@mwanda>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(2980300002)(199004)(189003)(44832011)(81166006)(230700001)(54906003)(58126008)(110136005)(2616005)(106002)(52146003)(486006)(476003)(446003)(11346002)(126002)(23676004)(316002)(31686004)(2486003)(14444005)(4326008)(6246003)(305945005)(76176011)(70586007)(70206006)(26005)(356004)(186003)(426003)(336012)(65956001)(8936002)(50466002)(36756003)(65806001)(5660300002)(47776003)(8676002)(2906002)(6636002)(81156014)(36386004)(478600001)(229853002)(9786002)(31696002)(42866002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4043; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e189d19-f43b-46d8-6a1d-08d726d952cf
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:DM6PR02MB4043; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB4043:
X-Microsoft-Antispam-PRVS: <DM6PR02MB40435B2B219E7801A18179C1C6A50@DM6PR02MB4043.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 01371B902F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: rFk4518t+alt3y4/uVTD+W4Fb0IIuMXZ0l1dQDYbFRWKZEK6/Y0sMisnbZJJPddDwZk6krIhcwsIDL+c0hBVS47pr5APPYgTNTx7X03x2dqzEMNxjhWXwHqevzky4JisQrDBJSEs3LZ9i9jCZY8BVHXPp4b9hyAZBnhNvgoPSqOJ1J9ue4UGNN0JgCrPmY+Iyq94jC6/rvx6ts7N1xN2IgGOXN7dd09smz+LYhx+clD+uIuayZEmf7gCGjFR26ojJjLphSqYBykx7fq2hkAw6XYmGNw94E+KSF8+L027C5svXCcAXGHzlD8TJ4E1ybFD59vTj/z5nS/kbZsHpyclHOQgBAvI+rUZL+k3JvlytxZop27UWz33YyPEOx/Rtym9EKTR2Hw+D/9xBwltKjVagIsio9xToqXS6fBIdIROs1I=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2019 08:18:33.1514 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e189d19-f43b-46d8-6a1d-08d726d952cf
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011836_883630_6A726533 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On 21. 08. 19 9:09, Dan Carpenter wrote:
> The "psize" value comes from the user so we need to verify that it's
> non-zero before we check if "n % psize" or it will crash.
> 
> Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> The parentheses in this condition are a no-op.  They're just confusing.
> Perhaps something else was intended?
> 
>  drivers/misc/xilinx_sdfec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 813b82c59360..3fc53d20abf3 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -460,7 +460,7 @@ static int xsdfec_reg0_write(struct xsdfec_dev *xsdfec, u32 n, u32 k, u32 psize,
>  {
>  	u32 wdata;
>  
> -	if (n < XSDFEC_REG0_N_MIN || n > XSDFEC_REG0_N_MAX ||
> +	if (n < XSDFEC_REG0_N_MIN || n > XSDFEC_REG0_N_MAX || psize == 0 ||
>  	    (n > XSDFEC_REG0_N_MUL_P * psize) || n <= k || ((n % psize) != 0)) {
>  		dev_dbg(xsdfec->dev, "N value is not in range");
>  		return -EINVAL;
> 

Reviewed-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
