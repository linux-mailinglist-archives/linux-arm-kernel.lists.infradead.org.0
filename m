Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F244F36F0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7m95k9cO7zt27+f2O1ijzHFOpQt4PymZscBzV77H3k=; b=WEHBt9bV9ttLKi
	dQJNL4PX2DOsClFhn2zeWmaRd/gUmz8OHQnwfLvbeR3eYOEUkDJdt0TV9rWohM+0D9RnfAoL+EqAg
	q9XozFZfBWDWsP4yB1fm0kipN0o7Ar1APsaGJTaa990bkbC6jGxq3eRf+0vpSdYsiwcsPRhlEBBNs
	HbtdJ6A7MwVLhnfTLdS/WAikGMFdTZz+Oin+poUfnEG79APxRC6gGEX4rhuW7xqj+cOzSTPOr/xzI
	NAmdBkCBCRTRJ9Ckw6s/8QAeRVjcawLOr67uW+RNYTIZYejVrA2qxTOY2o75ZSkl+yKvo5STViFK3
	eii2YdP46QeFwykQYJKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYo3x-0004PR-3k; Thu, 06 Jun 2019 08:47:57 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYo3n-0004MF-Qg
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:47:51 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,558,1557212400"; d="scan'208";a="36407845"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2019 01:47:44 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 01:47:41 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Jun 2019 01:47:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sRYRWqNzRt7RZlVdD3goChalYmPE57C7upY/ss/Rkpc=;
 b=BHpJcq9M+g4x58Oe5rSoXtEGJbhpetLwTg2tPEDxvdiCAWD82BhKUblUikO3pAbxmcCl4Ti4DLQXbDYk6VNg1Po01VAm4Bu8MjmOPc8ac+e5Ey3xVOe2ECZGN/hEQtS23UPZLflEI7aZl8sbvsioniEkMXELmibzS48TajgRUPE=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1962.namprd11.prod.outlook.com (10.175.88.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Thu, 6 Jun 2019 08:47:38 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::2807:f606:3b7c:cce9%9]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 08:47:38 +0000
From: <Eugen.Hristev@microchip.com>
To: <sakari.ailus@iki.fi>
Subject: Re: [PATCH v3 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Topic: [PATCH v3 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Thread-Index: AQHVHDuT5UCMUNFMLE2y7UE951xen6aOTL6AgAACmwA=
Date: Thu, 6 Jun 2019 08:47:38 +0000
Message-ID: <e251dfc2-f646-fd61-ec6a-adbc984b4e18@microchip.com>
References: <1559806756-16683-1-git-send-email-eugen.hristev@microchip.com>
 <1559806756-16683-2-git-send-email-eugen.hristev@microchip.com>
 <20190606083407.av2ifw4lr5w3pdxi@valkosipuli.retiisi.org.uk>
In-Reply-To: <20190606083407.av2ifw4lr5w3pdxi@valkosipuli.retiisi.org.uk>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0073.eurprd03.prod.outlook.com
 (2603:10a6:803:50::44) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190606114326204
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3756d70-5126-40aa-de6e-08d6ea5ba0ea
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR11MB1962; 
x-ms-traffictypediagnostic: DM5PR11MB1962:
x-microsoft-antispam-prvs: <DM5PR11MB19625D0E36897BC721769A7BE8170@DM5PR11MB1962.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(396003)(366004)(39860400002)(189003)(51234002)(199004)(71200400001)(71190400001)(66066001)(4326008)(36756003)(186003)(53936002)(6246003)(81156014)(31696002)(3846002)(7736002)(54906003)(478600001)(6116002)(305945005)(2906002)(86362001)(25786009)(81166006)(8676002)(72206003)(446003)(8936002)(14444005)(64756008)(102836004)(229853002)(99286004)(6512007)(14454004)(26005)(66946007)(73956011)(5660300002)(66556008)(66476007)(6486002)(68736007)(31686004)(6436002)(52116002)(6916009)(316002)(53546011)(6506007)(386003)(2616005)(476003)(11346002)(66446008)(76176011)(256004)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1962;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +8CJYGsE46SgshbjnpGHuNwSK7epa8CYB5zEHF4c6b6Ssw5FqascErDoQ4hVx3uK8Ep5YQu/fPdpPZEDNFZN4k4NeKScFiOkSmnLSo3T/5QstVluYLXA//aU3AVgRGbYkW50Baf0QYKq3ENFRtnNOFx4J8tXFOH1Nom/4Ctk4WZVNReWhcYq7bChaoWgfa7G55UmBW88ONgZQwVcAzsa99O1l199NFFRmxmhNyyuPpgMM6SfGxUKDJjZ/IlxScBzYj0a8QosNavOPY1QnHilkblJRQP5ZWnN6HOeiMkEr4wIYLJK5a+MgZVFsZw4Byl2vYaqGl6G7SkWkqFw61vO83EM6afrXCGdrczE9j+5Cb0MDiemXcaEMN3x+Ia53OxOuWY2SR11nst3A9D74l5nRmgnUKAaLWy4Pp7x9lYb6DA=
Content-ID: <E3C8BA26E91D034B8E14F6AC0DD9DD8C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c3756d70-5126-40aa-de6e-08d6ea5ba0ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 08:47:38.4346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eugen.hristev@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_014748_062377_5587FEDB 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: hverkuil@xs4all.nl, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06.06.2019 11:34, Sakari Ailus wrote:

> Hi Eugen,
> 
> On Thu, Jun 06, 2019 at 07:43:47AM +0000, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Checkpatch complaining that locks do not have comments,
>> unaligned code and macro reuse of same argument in to_isc_clk.
>> Fixed them by renaming, realigning and adding struct comments
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>> Changes in v3:
>> - new patch, addresses the checkpatch issues that Hans asked to fix
>>
>>   drivers/media/platform/atmel/atmel-isc.h         | 51 +++++++++++++++++++++---
>>   drivers/media/platform/atmel/atmel-sama5d2-isc.c |  4 +-
>>   2 files changed, 48 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
>> index 0bd5dff..6ff9fa8 100644
>> --- a/drivers/media/platform/atmel/atmel-isc.h
>> +++ b/drivers/media/platform/atmel/atmel-isc.h
>> @@ -24,14 +24,14 @@ struct isc_clk {
>>   	struct clk_hw   hw;
>>   	struct clk      *clk;
>>   	struct regmap   *regmap;
>> -	spinlock_t	lock;
>> +	spinlock_t	lock;	/* synchronize access to clock registers */
> 
> You probably want to serialise the access, not synchronise it (i.e. happen
> at the same time). So, s/synchronise/serialise/ ?

Hello Sakari,

For sure, what I meant is to use access synchronization : do not access 
in the same time (synchronize one with another to avoid corruption of 
data, etc.)

You believe serialize is a better term ? I considered 'synchronization' 
to be more generic : this definition which I found online :
Data synchronization is the process of maintaining the consistency and 
uniformity of data instances across all consuming applications and 
storing devices. It ensures that the same copy or version of data is 
used in all devices - from source to destination.

If you think serialize is better I can change it

Eugen
> 
> Same on the isc_device fields below.
> 
> With that,
> 
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> 
>>   	u8		id;
>>   	u8		parent_id;
>>   	u32		div;
>>   	struct device	*dev;
>>   };
>>   
>> -#define to_isc_clk(hw) container_of(hw, struct isc_clk, hw)
>> +#define to_isc_clk(v) container_of(v, struct isc_clk, hw)
>>   
>>   struct isc_buffer {
>>   	struct vb2_v4l2_buffer  vb;
>> @@ -146,6 +146,47 @@ struct isc_ctrls {
>>   
>>   #define ISC_PIPE_LINE_NODE_NUM	11
>>   
>> +/*
>> + * struct isc_device - ISC device driver data/config struct
>> + * @regmap:		Register map
>> + * @hclock:		Hclock clock input (refer datasheet)
>> + * @ispck:		iscpck clock (refer datasheet)
>> + * @isc_clks:		ISC clocks
>> + *
>> + * @dev:		Registered device driver
>> + * @v4l2_dev:		v4l2 registered device
>> + * @video_dev:		registered video device
>> + *
>> + * @vb2_vidq:		video buffer 2 video queue
>> + * @dma_queue_lock:	lock to synchronize the dma buffer queue
>> + * @dma_queue:		the queue for dma buffers
>> + * @cur_frm:		current isc frame/buffer
>> + * @sequence:		current frame number
>> + * @stop:		true if isc is not streaming, false if streaming
>> + * @comp:		completion reference that signals frame completion
>> + *
>> + * @fmt:		current v42l format
>> + * @user_formats:	list of formats that are supported and agreed with sd
>> + * @num_user_formats:	how many formats are in user_formats
>> + *
>> + * @config:		current ISC format configuration
>> + * @try_config:		the current ISC try format , not yet activated
>> + *
>> + * @ctrls:		holds information about ISC controls
>> + * @do_wb_ctrl:		control regarding the DO_WHITE_BALANCE button
>> + * @awb_work:		workqueue reference for autowhitebalance histogram
>> + *			analysis
>> + *
>> + * @lock:		lock for synchronizing userspace file operations
>> + *			with ISC operations
>> + * @awb_lock:		lock for synchronizing awb work queue operations
>> + *			with DMA/buffer operations
>> + *
>> + * @pipeline:		configuration of the ISC pipeline
>> + *
>> + * @current_subdev:	current subdevice: the sensor
>> + * @subdev_entities:	list of subdevice entitites
>> + */
>>   struct isc_device {
>>   	struct regmap		*regmap;
>>   	struct clk		*hclock;
>> @@ -157,7 +198,7 @@ struct isc_device {
>>   	struct video_device	video_dev;
>>   
>>   	struct vb2_queue	vb2_vidq;
>> -	spinlock_t		dma_queue_lock;
>> +	spinlock_t		dma_queue_lock; /* sync access to dma queue */
>>   	struct list_head	dma_queue;
>>   	struct isc_buffer	*cur_frm;
>>   	unsigned int		sequence;
>> @@ -175,8 +216,8 @@ struct isc_device {
>>   	struct v4l2_ctrl	*do_wb_ctrl;
>>   	struct work_struct	awb_work;
>>   
>> -	struct mutex		lock;
>> -	spinlock_t		awb_lock;
>> +	struct mutex		lock; /* sync access to file operations */
>> +	spinlock_t		awb_lock; /* sync access to DMA buffers from awb work queue */
>>   
>>   	struct regmap_field	*pipeline[ISC_PIPE_LINE_NODE_NUM];
>>   
>> diff --git a/drivers/media/platform/atmel/atmel-sama5d2-isc.c b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
>> index 69faaaf..299243f 100644
>> --- a/drivers/media/platform/atmel/atmel-sama5d2-isc.c
>> +++ b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
>> @@ -87,8 +87,8 @@ static int isc_parse_dt(struct device *dev, struct isc_device *isc)
>>   			break;
>>   		}
>>   
>> -		subdev_entity = devm_kzalloc(dev,
>> -					  sizeof(*subdev_entity), GFP_KERNEL);
>> +		subdev_entity = devm_kzalloc(dev, sizeof(*subdev_entity),
>> +					     GFP_KERNEL);
>>   		if (!subdev_entity) {
>>   			of_node_put(rem);
>>   			ret = -ENOMEM;
>> -- 
>> 2.7.4
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
