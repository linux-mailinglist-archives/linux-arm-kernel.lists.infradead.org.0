Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80774CF2C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 08:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLdnBUrrsaeIr7bKXG9+f3+lPDcAptXuggpj+P9gDLE=; b=BAqkh1cYFsRUb1
	9HIW1l9OCH0V/5fLJMB0UMA/4LYkLKe49fcK/As6lTUxQA/JnXYuIZSCKqaWiFznewbTxIDLPFQcp
	5VcBgHyNCcjscytC9ailW7s/O6CR3EIVupk7ukU+PdbF/rw+zVeY81nUcLGgopcMhr2RmDr01l9qV
	cpVsg0nHMCF21VFzW2yPJzsFflb5wGmJm+IKZZ4dhgULIMKrEcRubbWvWahywI+8RCCmocon29Yzk
	PLXFzA0giTUjeX3vCHKLITyYoMQQCmNjtn9A7M9KX0EA5doNWbH1e9ucAdNlHP0VTPCrvSWOsaN3h
	C36HmmD5BRxq8FrhoEXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHj4z-0004hD-Vw; Tue, 08 Oct 2019 06:34:41 +0000
Received: from mail-eopbgr740083.outbound.protection.outlook.com
 ([40.107.74.83] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHj4r-0004gf-UA
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 06:34:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VcNwQ3ByCJ/DOupyhTdLnsiHW/ADvdBmUFOUv31czCMtfflzpiRgbPcaWDMxxf33/br2n8afIihZU2XJgbfiueT17CRZToq29HGmWy6rg7SAtkQolFcMcQIeYbFiLt7rygJ8a0SePQtmUpiWBA1aXFy9gZOx5CVAp0yfVq5H4GFdpY0dJklo3PK4sEEXxDEiKlkm2KpcRUkm2s+qSNmgyFV6oF5oZNm5DNpjqZsszGMYXVFRNpKfcqtM4b1FGrUMW0TGXr/Cj5vOyOffG64J6tlbHSbq53jnvQF5jNDoZK8P3POP79lIro0h9rOW/5Pv8krkQVOF2GCeqiL9Brs6rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cDsOKJ5OtZouaCOC9d2wsP3uOsrbxoTCaVIXdvAQCjQ=;
 b=MdQAfa6bAViciUhkRLAJhmmH8bO+5B1gXIJ/OQHmAQFtgGer3FMt2eBejYnSpokBn+3VY0VdcBgKwsaTQ1DIlDWV0zmylsMV1CA2GIPn3vZeFy2J4oOgt03Qbjl/uL5sqPixcx0g1NWgDPyBRsA+E+cEDWijhMuWi3oKFmWODYDky8/ISxgM5omMBNnkhch3LRKhg/At2mBmFYla1tfwzsiXPf2fSaHUrVNAEKR4jl3DB7fxGA/tdSYaVFl+BdDCL44ghgu2Vo+bT+ptstptfke6004YV9UROgjvWc1eMeO9gpsLu0Jtr48a3IQjIC83xe+Pd9xpwZiFJuubLe+jkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cDsOKJ5OtZouaCOC9d2wsP3uOsrbxoTCaVIXdvAQCjQ=;
 b=dN0be+FHMY+PXK3PndQN6Wn126wU2ina3gTJVHogOuqctq3q4oAXG/an2ekGX/dClOZzrbxXPL+eJR19YweTj7XalT28UnANXCLDgSbJrea6zBHrQHxPPMH906vpK4ZfOudKi1zCwOjMxc784Hc3ggq7jcUiKt6aH1ZESI5ACEg=
Received: from MN2PR02CA0032.namprd02.prod.outlook.com (2603:10b6:208:fc::45)
 by DM5PR02MB2683.namprd02.prod.outlook.com (2603:10b6:3:10e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.23; Tue, 8 Oct
 2019 06:34:29 +0000
Received: from CY1NAM02FT046.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::205) by MN2PR02CA0032.outlook.office365.com
 (2603:10b6:208:fc::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.25 via Frontend
 Transport; Tue, 8 Oct 2019 06:34:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT046.mail.protection.outlook.com (10.152.74.232) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2327.21
 via Frontend Transport; Tue, 8 Oct 2019 06:34:29 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iHj4m-00063X-CR; Mon, 07 Oct 2019 23:34:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iHj4h-0003tg-95; Mon, 07 Oct 2019 23:34:23 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x986YJLd008545; 
 Mon, 7 Oct 2019 23:34:19 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iHj4d-0003sf-BD; Mon, 07 Oct 2019 23:34:19 -0700
Subject: Re: [PATCH] usb: gadget: udc: Fix assignment of 0/1 to bool variables
To: Saurav Girepunje <saurav.girepunje@gmail.com>, balbi@kernel.org,
 gregkh@linuxfoundation.org, michal.simek@xilinx.com,
 swboyd@chromium.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191007181527.GA6816@saurav>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <cfb871aa-332c-2256-d194-15f8b87de6f8@xilinx.com>
Date: Tue, 8 Oct 2019 08:34:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191007181527.GA6816@saurav>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(136003)(346002)(189003)(199004)(44832011)(229853002)(2486003)(5660300002)(478600001)(230700001)(36386004)(31686004)(23676004)(36756003)(76176011)(486006)(11346002)(26005)(186003)(126002)(476003)(446003)(336012)(2616005)(305945005)(426003)(316002)(31696002)(81156014)(9786002)(81166006)(106002)(8936002)(4326008)(8676002)(65956001)(47776003)(2906002)(50466002)(58126008)(6666004)(6246003)(70586007)(70206006)(356004)(65806001)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2683; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94bbcbfc-1cc6-405c-2cc0-08d74bb99254
X-MS-TrafficTypeDiagnostic: DM5PR02MB2683:
X-Microsoft-Antispam-PRVS: <DM5PR02MB2683A393AFC9812EA569A513C69A0@DM5PR02MB2683.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-Forefront-PRVS: 01842C458A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B0/CgFe9S3ckoQ/KsQxUO7Pnv4FiVZK/09UOM7/eI4w+9HCUt+0KtOFGnV8jBfr1gebhIgLiu5MjNJV5+V4d7mTRJeaV3wj9ePMnHIBpDnPmgdr/75aur/oXunWQVfrk/j4lZUC8T/ODFi+IMnyFYmeCvGYRYdUzcH6U93CYpuUrYXsBQm1lQUU7Sz1XTj5XTMjVy2BOVzZ5BFhctaAM2dqEaVSeiKRjwz4A3lyS+30vvHLqJMAASZOe26jY7O0txmh7WPbQtwHNOVgycID1uNixexLqCO6mjMG2+YYlaXcVKlL5T0y8040MwTduBzVwfuyF2iQizyI+KyVEyMvbBcE7V3vW97MX7IycQThYDKuwkXihEqw8JDPX4YKvP/4B1PQuIzEEDUUJCz7VRMpEDzWFsR9PLbdGNL97EafJHbU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2019 06:34:29.0336 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94bbcbfc-1cc6-405c-2cc0-08d74bb99254
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2683
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_233433_973140_9B4F363C 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.83 listed in list.dnswl.org]
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07. 10. 19 20:15, Saurav Girepunje wrote:
> Use true/false assignment for below bool variables in udc-xilinx.c:
> 
> bool buffer0ready;
> bool buffer1ready;
> bool is_in;
> bool is_iso;
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/usb/gadget/udc/udc-xilinx.c | 36 ++++++++++++++---------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/udc-xilinx.c b/drivers/usb/gadget/udc/udc-xilinx.c
> index 29d8e5f8bb58..b077c5bfd9ae 100644
> --- a/drivers/usb/gadget/udc/udc-xilinx.c
> +++ b/drivers/usb/gadget/udc/udc-xilinx.c
> @@ -392,7 +392,7 @@ static int xudc_dma_send(struct xusb_ep *ep, struct xusb_req *req,
>  			      XUSB_EP_BUF0COUNT_OFFSET, length);
>  		udc->write_fn(udc->addr, XUSB_DMA_CONTROL_OFFSET,
>  			      XUSB_DMA_BRR_CTRL | (1 << ep->epnumber));
> -		ep->buffer0ready = 1;
> +		ep->buffer0ready = true;
>  		ep->curbufnum = 1;
>  	} else if (ep->curbufnum && !ep->buffer1ready) {
>  		/* Get the Buffer address and copy the transmit data.*/
> @@ -404,7 +404,7 @@ static int xudc_dma_send(struct xusb_ep *ep, struct xusb_req *req,
>  		udc->write_fn(udc->addr, XUSB_DMA_CONTROL_OFFSET,
>  			      XUSB_DMA_BRR_CTRL | (1 << (ep->epnumber +
>  			      XUSB_STATUS_EP_BUFF2_SHIFT)));
> -		ep->buffer1ready = 1;
> +		ep->buffer1ready = true;
>  		ep->curbufnum = 0;
>  	} else {
>  		/* None of ping pong buffers are ready currently .*/
> @@ -442,7 +442,7 @@ static int xudc_dma_receive(struct xusb_ep *ep, struct xusb_req *req,
>  		udc->write_fn(udc->addr, XUSB_DMA_CONTROL_OFFSET,
>  			      XUSB_DMA_BRR_CTRL | XUSB_DMA_READ_FROM_DPRAM |
>  			      (1 << ep->epnumber));
> -		ep->buffer0ready = 1;
> +		ep->buffer0ready = true;
>  		ep->curbufnum = 1;
>  	} else if (ep->curbufnum && !ep->buffer1ready) {
>  		/* Get the Buffer address and copy the transmit data */
> @@ -453,7 +453,7 @@ static int xudc_dma_receive(struct xusb_ep *ep, struct xusb_req *req,
>  			      XUSB_DMA_BRR_CTRL | XUSB_DMA_READ_FROM_DPRAM |
>  			      (1 << (ep->epnumber +
>  			      XUSB_STATUS_EP_BUFF2_SHIFT)));
> -		ep->buffer1ready = 1;
> +		ep->buffer1ready = true;
>  		ep->curbufnum = 0;
>  	} else {
>  		/* None of the ping-pong buffers are ready currently */
> @@ -507,7 +507,7 @@ static int xudc_eptxrx(struct xusb_ep *ep, struct xusb_req *req,
>  		 */
>  		udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
>  			      1 << ep->epnumber);
> -		ep->buffer0ready = 1;
> +		ep->buffer0ready = true;
>  		ep->curbufnum = 1;
>  	} else if (ep->curbufnum && !ep->buffer1ready) {
>  		/* Get the Buffer address and copy the transmit data.*/
> @@ -525,7 +525,7 @@ static int xudc_eptxrx(struct xusb_ep *ep, struct xusb_req *req,
>  		 */
>  		udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
>  			      1 << (ep->epnumber + XUSB_STATUS_EP_BUFF2_SHIFT));
> -		ep->buffer1ready = 1;
> +		ep->buffer1ready = true;
>  		ep->curbufnum = 0;
>  	} else {
>  		/* None of the ping-pong buffers are ready currently */
> @@ -818,11 +818,11 @@ static int __xudc_ep_enable(struct xusb_ep *ep,
>  	case USB_ENDPOINT_XFER_CONTROL:
>  		dev_dbg(udc->dev, "only one control endpoint\n");
>  		/* NON- ISO */
> -		ep->is_iso = 0;
> +		ep->is_iso = false;
>  		return -EINVAL;
>  	case USB_ENDPOINT_XFER_INT:
>  		/* NON- ISO */
> -		ep->is_iso = 0;
> +		ep->is_iso = false;
>  		if (maxpacket > 64) {
>  			dev_dbg(udc->dev, "bogus maxpacket %d\n", maxpacket);
>  			return -EINVAL;
> @@ -830,7 +830,7 @@ static int __xudc_ep_enable(struct xusb_ep *ep,
>  		break;
>  	case USB_ENDPOINT_XFER_BULK:
>  		/* NON- ISO */
> -		ep->is_iso = 0;
> +		ep->is_iso = false;
>  		if (!(is_power_of_2(maxpacket) && maxpacket >= 8 &&
>  				maxpacket <= 512)) {
>  			dev_dbg(udc->dev, "bogus maxpacket %d\n", maxpacket);
> @@ -839,12 +839,12 @@ static int __xudc_ep_enable(struct xusb_ep *ep,
>  		break;
>  	case USB_ENDPOINT_XFER_ISOC:
>  		/* ISO */
> -		ep->is_iso = 1;
> +		ep->is_iso = true;
>  		break;
>  	}
>  
> -	ep->buffer0ready = 0;
> -	ep->buffer1ready = 0;
> +	ep->buffer0ready = false;
> +	ep->buffer1ready = false;
>  	ep->curbufnum = 0;
>  	ep->rambase = rambase[ep->epnumber];
>  	xudc_epconfig(ep, udc);
> @@ -868,11 +868,11 @@ static int __xudc_ep_enable(struct xusb_ep *ep,
>  	if (ep->epnumber && !ep->is_in) {
>  		udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
>  			      1 << ep->epnumber);
> -		ep->buffer0ready = 1;
> +		ep->buffer0ready = true;
>  		udc->write_fn(udc->addr, XUSB_BUFFREADY_OFFSET,
>  			     (1 << (ep->epnumber +
>  			      XUSB_STATUS_EP_BUFF2_SHIFT)));
> -		ep->buffer1ready = 1;
> +		ep->buffer1ready = true;
>  	}
>  
>  	return 0;
> @@ -1331,8 +1331,8 @@ static void xudc_eps_init(struct xusb_udc *udc)
>  		 * each endpoint is 0x10.
>  		 */
>  		ep->offset = XUSB_EP0_CONFIG_OFFSET + (ep_number * 0x10);
> -		ep->is_in = 0;
> -		ep->is_iso = 0;
> +		ep->is_in = false;
> +		ep->is_iso = false;
>  		ep->maxpacket = 0;
>  		xudc_epconfig(ep, udc);
>  
> @@ -1952,9 +1952,9 @@ static void xudc_nonctrl_ep_handler(struct xusb_udc *udc, u8 epnum,
>  	ep = &udc->ep[epnum];
>  	/* Process the End point interrupts.*/
>  	if (intrstatus & (XUSB_STATUS_EP0_BUFF1_COMP_MASK << epnum))
> -		ep->buffer0ready = 0;
> +		ep->buffer0ready = false;
>  	if (intrstatus & (XUSB_STATUS_EP0_BUFF2_COMP_MASK << epnum))
> -		ep->buffer1ready = 0;
> +		ep->buffer1ready = false;
>  
>  	if (list_empty(&ep->queue))
>  		return;
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
