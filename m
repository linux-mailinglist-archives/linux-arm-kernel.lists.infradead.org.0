Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F16FDE2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbWL66U76MKDJFat4iZnNk8VFUu0+VhI2haoA2Ph/FU=; b=Jazb30ForGqKlB
	rncNSZB3dELZJ+bqpKiqH1c9oET3so/dfcy9WlSgFg281NMXMrON8HRvGfCL6+wzWayMmbW+SU3XY
	38rN8sNbmPOQ+s52HDo7GHr1gsT4vvIng+752eOdGfJFb/SfaxJtaBk0/74BE3pkCEdmBLn7K/kCl
	ZldWttJ2QXKULn/gC2q5HK0eKhNGFfWYpcPjg5VpRB1PtsmD7FXppO5YnHhXL5m7GUJXX0/ZKUtVh
	tZTnrrziWqZur/zyVjzPhh5Es16TDjVGwAD9F9uPykn3PszadNR/I6HZBYs+knF6+w0nTrwsHZWos
	SmQmoDH/0/7NMmhNGq/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1s2-0002Oz-Av; Mon, 29 Apr 2019 08:42:42 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1ru-0002O0-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 08:42:36 +0000
X-IronPort-AV: E=Sophos;i="5.60,409,1549954800"; d="scan'208";a="31041155"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES128-SHA;
 29 Apr 2019 01:42:31 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.37) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Mon, 29 Apr 2019 01:42:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W1Hf/m6JqXCxukY7GBQeb16rVXUoQQQYVr4qbViftKs=;
 b=PoCV2oGjS807VUdUxfr3m0z+4jvXz9QMDG0+DAsT0cSUd0FawRcjsLZCh6qS4Oehh/Ewzen8a0T7F6197zpci4sfxdGKK29swktpMqk6Q4H2R7X3GLQcU06ZTTVtRVPIMuLVmqlF6uv9+6x3ElnIf1LzeGVFgPXxnRBjli9KAOk=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1982.namprd11.prod.outlook.com (10.175.54.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 08:42:28 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::65cd:b698:41:54d6]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::65cd:b698:41:54d6%2]) with mapi id 15.20.1835.016; Mon, 29 Apr 2019
 08:42:28 +0000
From: <Nicolas.Ferre@microchip.com>
To: <jonas@norrbonn.se>, <linux-kernel@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <Cristian.Birsan@microchip.com>
Subject: Re: [PATCH 2/3] usb: gadget: atmel: support USB suspend
Thread-Topic: [PATCH 2/3] usb: gadget: atmel: support USB suspend
Thread-Index: AQHU/LZK0J0Tf8l6YU+Jzeqluv+RfqZS1X8A
Date: Mon, 29 Apr 2019 08:42:28 +0000
Message-ID: <42737ffb-17f1-9e55-b08b-af81cd27c2d4@microchip.com>
References: <20190220122001.5713-1-jonas@norrbonn.se>
 <20190220122001.5713-3-jonas@norrbonn.se>
 <eb302fcf-83b1-bed9-f2d3-201dc767a30b@norrbonn.se>
In-Reply-To: <eb302fcf-83b1-bed9-f2d3-201dc767a30b@norrbonn.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR06CA0072.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::49) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Nicolas.Ferre@microchip.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [195.6.168.232]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24ae2d2a-9123-4078-fa54-08d6cc7e9c45
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR11MB1982; 
x-ms-traffictypediagnostic: MWHPR11MB1982:
x-microsoft-antispam-prvs: <MWHPR11MB19828BB35F6551257F56B475E0390@MWHPR11MB1982.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(376002)(346002)(396003)(189003)(199004)(53546011)(66556008)(110136005)(66446008)(66476007)(64756008)(486006)(386003)(316002)(66946007)(2616005)(52116002)(99286004)(3846002)(6506007)(6436002)(5660300002)(6116002)(6486002)(54906003)(73956011)(76176011)(26005)(11346002)(25786009)(186003)(478600001)(6636002)(31686004)(229853002)(446003)(305945005)(6246003)(256004)(97736004)(86362001)(2501003)(81166006)(476003)(8676002)(53936002)(68736007)(15650500001)(14444005)(4326008)(81156014)(36756003)(2201001)(31696002)(6512007)(2906002)(102836004)(7736002)(71190400001)(71200400001)(66066001)(14454004)(72206003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1982;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Z4HrwdITRR8Ccafs6Nnt3PFFSLmdeh8xE0/Sxfv5wWFOxMP0xjGF7IaAEDB2NH3BjMU0DL6tVFpVogzRV9ZpoBrocjRDsdw0Qe5ImFhl0aPjrSEY2h9BxxwDc2bjU4PNqZKSm/0OgQa+nIAfLNpCUGpbDdnraFYxbScud9zwU+FHF78r99VM8oJLVYl4JxbWiF//YezI1DCY8zov8aOfX4e+a5tfrWS47Mv0cWCIOKxhcYxm5YoBvSKO+eGQON7FrhF9mOGzhGFSoVfSWcg4MZr0ubVjZRl+CjPbLzqt/PYYiPgVlyOlvEeR44EGZLbCosSu8SNMlFF77kgl0Nd+gn8vd/2Uc27mSYeoX/GIM1xd1IfmLYiDtFIUyFgZ90HbsVUrQmrkJvF3Rk+ipSFPMUF6RZMiIOI0eZJyaaT4UwM=
Content-ID: <FABAFC110C4A944491B6CC843AD0F5FE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ae2d2a-9123-4078-fa54-08d6cc7e9c45
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 08:42:28.3614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1982
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_014234_485316_A39E0405 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: balbi@kernel.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/04/2019 at 07:01, Jonas Bonn wrote:
> External E-Mail
> 
> 
> Ping.  Any feedback on this at all?  It's been over two months without a
> single comment.

Jonas,

We are working on the case that you describe internally and associated 
behavior on our SoC. We didn't come to a conclusion yet and that is why 
we didn't come back to you. We wanted to understand the situation 
completely before giving you a comment on your patch series.

Sorry for any misunderstanding it could have created.
Cristian will come back to you a little later: but be reassured, your 
patches are absolutely not forgotten.

Best regards,
   Nicolas

> On 20/02/2019 13:20, Jonas Bonn wrote:
>> This patch adds support for USB suspend to the Atmel UDC.
>>
>> When suspended, the UDC clock can be stopped, resulting in some power
>> savings.  The "wake up" interrupt will fire irregardless of whether the
>> clock is running or not, allowing the UDC clock to be restarted when the
>> USB master wants to wake the device again.
>>
>> The IRQ state of this device is somewhat fiddly.  The "wake up" IRQ
>> seems to actually be a "bus activity" indicator; the IRQ is almost
>> continuously asserted so enabling this IRQ should only be done after a
>> suspend when the wake IRQ becomes relevant.  Similarly, the "suspend"
>> IRQ detects "bus inactivity" and may therefore fire together with a
>> "wake" if the two types of activity coincide during the period between
>> two IRQ handler invocations; therefore, it's important to ignore the
>> "suspend" IRQ while waiting for a wake-up.
>>
>> This has been tested on a SAMA5D2 board.
>>
>> Signed-off-by: Jonas Bonn <jonas@norrbonn.se>
>> CC: Cristian Birsan <cristian.birsan@microchip.com>
>> CC: Felipe Balbi <balbi@kernel.org>
>> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> CC: Nicolas Ferre <nicolas.ferre@microchip.com>
>> CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> CC: Ludovic Desroches <ludovic.desroches@microchip.com>
>> CC: linux-arm-kernel@lists.infradead.org
>> CC: linux-usb@vger.kernel.org
>> ---
>>    drivers/usb/gadget/udc/atmel_usba_udc.c | 55 ++++++++++++++++++++++---
>>    drivers/usb/gadget/udc/atmel_usba_udc.h |  1 +
>>    2 files changed, 50 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
>> index 9d18fdddd9b2..740cb9308a86 100644
>> --- a/drivers/usb/gadget/udc/atmel_usba_udc.c
>> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
>> @@ -1703,6 +1703,9 @@ static void usba_dma_irq(struct usba_udc *udc, struct usba_ep *ep)
>>    	}
>>    }
>>    
>> +static int start_clock(struct usba_udc *udc);
>> +static void stop_clock(struct usba_udc *udc);
>> +
>>    static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    {
>>    	struct usba_udc *udc = devid;
>> @@ -1720,10 +1723,13 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    	DBG(DBG_INT, "irq, status=%#08x\n", status);
>>    
>>    	if (status & USBA_DET_SUSPEND) {
>> -		toggle_bias(udc, 0);
>> -		usba_writel(udc, INT_CLR, USBA_DET_SUSPEND);
>> +		usba_writel(udc, INT_CLR, USBA_DET_SUSPEND|USBA_WAKE_UP);
>>    		usba_int_enb_set(udc, USBA_WAKE_UP);
>> +		usba_int_enb_clear(udc, USBA_DET_SUSPEND);
>> +		udc->suspended = true;
>> +		toggle_bias(udc, 0);
>>    		udc->bias_pulse_needed = true;
>> +		stop_clock(udc);
>>    		DBG(DBG_BUS, "Suspend detected\n");
>>    		if (udc->gadget.speed != USB_SPEED_UNKNOWN
>>    				&& udc->driver && udc->driver->suspend) {
>> @@ -1734,14 +1740,17 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    	}
>>    
>>    	if (status & USBA_WAKE_UP) {
>> +		start_clock(udc);
>>    		toggle_bias(udc, 1);
>>    		usba_writel(udc, INT_CLR, USBA_WAKE_UP);
>> -		usba_int_enb_clear(udc, USBA_WAKE_UP);
>>    		DBG(DBG_BUS, "Wake Up CPU detected\n");
>>    	}
>>    
>>    	if (status & USBA_END_OF_RESUME) {
>> +		udc->suspended = false;
>>    		usba_writel(udc, INT_CLR, USBA_END_OF_RESUME);
>> +		usba_int_enb_clear(udc, USBA_WAKE_UP);
>> +		usba_int_enb_set(udc, USBA_DET_SUSPEND);
>>    		generate_bias_pulse(udc);
>>    		DBG(DBG_BUS, "Resume detected\n");
>>    		if (udc->gadget.speed != USB_SPEED_UNKNOWN
>> @@ -1756,6 +1765,8 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    	if (dma_status) {
>>    		int i;
>>    
>> +		usba_int_enb_set(udc, USBA_DET_SUSPEND);
>> +
>>    		for (i = 1; i <= USBA_NR_DMAS; i++)
>>    			if (dma_status & (1 << i))
>>    				usba_dma_irq(udc, &udc->usba_ep[i]);
>> @@ -1765,6 +1776,8 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    	if (ep_status) {
>>    		int i;
>>    
>> +		usba_int_enb_set(udc, USBA_DET_SUSPEND);
>> +
>>    		for (i = 0; i < udc->num_ep; i++)
>>    			if (ep_status & (1 << i)) {
>>    				if (ep_is_control(&udc->usba_ep[i]))
>> @@ -1778,7 +1791,9 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    		struct usba_ep *ep0, *ep;
>>    		int i, n;
>>    
>> -		usba_writel(udc, INT_CLR, USBA_END_OF_RESET);
>> +		usba_writel(udc, INT_CLR,
>> +			USBA_END_OF_RESET|USBA_END_OF_RESUME
>> +			|USBA_DET_SUSPEND|USBA_WAKE_UP);
>>    		generate_bias_pulse(udc);
>>    		reset_all_endpoints(udc);
>>    
>> @@ -1805,6 +1820,11 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
>>    				| USBA_BF(BK_NUMBER, USBA_BK_NUMBER_ONE)));
>>    		usba_ep_writel(ep0, CTL_ENB,
>>    				USBA_EPT_ENABLE | USBA_RX_SETUP);
>> +
>> +		/* If we get reset while suspended... */
>> +		udc->suspended = false;
>> +		usba_int_enb_clear(udc, USBA_WAKE_UP);
>> +
>>    		usba_int_enb_set(udc, USBA_BF(EPT_INT, 1) |
>>    				      USBA_DET_SUSPEND | USBA_END_OF_RESUME);
>>    
>> @@ -1872,9 +1892,19 @@ static int usba_start(struct usba_udc *udc)
>>    	if (ret)
>>    		return ret;
>>    
>> +	if (udc->suspended)
>> +		return 0;
>> +
>>    	spin_lock_irqsave(&udc->lock, flags);
>>    	toggle_bias(udc, 1);
>>    	usba_writel(udc, CTRL, USBA_ENABLE_MASK);
>> +	/* Clear all requested and pending interrupts... */
>> +	usba_writel(udc, INT_ENB, 0);
>> +	udc->int_enb_cache = 0;
>> +	usba_writel(udc, INT_CLR,
>> +		USBA_END_OF_RESET|USBA_END_OF_RESUME
>> +		|USBA_DET_SUSPEND|USBA_WAKE_UP);
>> +	/* ...and enable just 'reset' IRQ to get us started */
>>    	usba_int_enb_set(udc, USBA_END_OF_RESET);
>>    	spin_unlock_irqrestore(&udc->lock, flags);
>>    
>> @@ -1885,6 +1915,9 @@ static void usba_stop(struct usba_udc *udc)
>>    {
>>    	unsigned long flags;
>>    
>> +	if (udc->suspended)
>> +		return;
>> +
>>    	spin_lock_irqsave(&udc->lock, flags);
>>    	udc->gadget.speed = USB_SPEED_UNKNOWN;
>>    	reset_all_endpoints(udc);
>> @@ -1912,6 +1945,7 @@ static irqreturn_t usba_vbus_irq_thread(int irq, void *devid)
>>    		if (vbus) {
>>    			usba_start(udc);
>>    		} else {
>> +			udc->suspended = false;
>>    			usba_stop(udc);
>>    
>>    			if (udc->driver->disconnect)
>> @@ -1975,6 +2009,7 @@ static int atmel_usba_stop(struct usb_gadget *gadget)
>>    	if (fifo_mode == 0)
>>    		udc->configured_ep = 1;
>>    
>> +	udc->suspended = false;
>>    	usba_stop(udc);
>>    
>>    	udc->driver = NULL;
>> @@ -2288,6 +2323,7 @@ static int usba_udc_suspend(struct device *dev)
>>    	mutex_lock(&udc->vbus_mutex);
>>    
>>    	if (!device_may_wakeup(dev)) {
>> +		udc->suspended = false;
>>    		usba_stop(udc);
>>    		goto out;
>>    	}
>> @@ -2297,10 +2333,13 @@ static int usba_udc_suspend(struct device *dev)
>>    	 * to request vbus irq, assuming always on.
>>    	 */
>>    	if (udc->vbus_pin) {
>> +		/* FIXME: right to stop here...??? */
>>    		usba_stop(udc);
>>    		enable_irq_wake(gpiod_to_irq(udc->vbus_pin));
>>    	}
>>    
>> +	enable_irq_wake(udc->irq);
>> +
>>    out:
>>    	mutex_unlock(&udc->vbus_mutex);
>>    	return 0;
>> @@ -2314,8 +2353,12 @@ static int usba_udc_resume(struct device *dev)
>>    	if (!udc->driver)
>>    		return 0;
>>    
>> -	if (device_may_wakeup(dev) && udc->vbus_pin)
>> -		disable_irq_wake(gpiod_to_irq(udc->vbus_pin));
>> +	if (device_may_wakeup(dev)) {
>> +		if (udc->vbus_pin)
>> +			disable_irq_wake(gpiod_to_irq(udc->vbus_pin));
>> +
>> +		disable_irq_wake(udc->irq);
>> +	}
>>    
>>    	/* If Vbus is present, enable the controller and wait for reset */
>>    	mutex_lock(&udc->vbus_mutex);
>> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.h b/drivers/usb/gadget/udc/atmel_usba_udc.h
>> index 58c96730e32e..24e6fbd3bb99 100644
>> --- a/drivers/usb/gadget/udc/atmel_usba_udc.h
>> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.h
>> @@ -331,6 +331,7 @@ struct usba_udc {
>>    	struct usba_ep *usba_ep;
>>    	bool bias_pulse_needed;
>>    	bool clocked;
>> +	bool suspended;
>>    
>>    	u16 devstatus;
>>    
>>


-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
