Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF5346B3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkA7O8tvKy2BIQzOPTIGC60vbf7LApo9hbA+u3Cn0Sw=; b=P/ORg2rIs+eh+p
	fcQh+Wcokq+ok0HOVDZt2lGoNVxOzJyCw+zFEhK1XcLD1f9gnkiZiC998RxLkEQLZJYiGPG3z/ACd
	NuRKIZoeTzj3HySIB9kTEDt8JPeTOjXWunxy0Z9PTRhKdu5PIv2qj4QzVvgzYnpbeq2BM8JZv5ZY1
	nY0dlOJFjs4aF2nK4aTGv36/6FLyQi2B6NB07zzNsdTJhUhvZ5toUfZT3ounViKYS/4afQwtPdnuD
	Kdo3X4MwGaAx3OXE0kbRJWYljDhMvRloU8RNkqP0+O0d6k2GbW76kTlWjyWjnxjk2U/QBS1Va06TL
	AxTW0okvVMvmhFS/npTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt4u-0005qD-WF; Fri, 14 Jun 2019 20:45:41 +0000
Received: from mail-eopbgr680105.outbound.protection.outlook.com
 ([40.107.68.105] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbt4l-0005pa-Lm
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LJs3kHOWi3j4TbBy3wsNFShGNm1OeEJNgVtrMZGuOg=;
 b=tl9Tkb1OcbCVBQNcdpmRSMTqcifPl8P57kZOTOxcpNmQbetbrJOB6W2VbtuqEKXgP90axSP2dxYC/lG7zml9jBRPYTGDTi8qAQlLSJj6qmfaBPp5I3kHkJ+FYUnlrRAaGmdexentvv9mY0WsIDYzB+kIyAoutkCGEI0njVROrq8=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB5521.namprd07.prod.outlook.com (20.177.242.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Fri, 14 Jun 2019 20:45:28 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.019; Fri, 14 Jun 2019
 20:45:28 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Topic: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
 watchdog on system suspend
Thread-Index: AQHVIrAmpSe7ef5LPkq+gtVGV8yaCKabW/WAgAAQIfCAAAbcAIAAAenAgAAmm4CAAADR8A==
Date: Fri, 14 Jun 2019 20:45:28 +0000
Message-ID: <BL0PR07MB4115721DA2EB445BE7590BF6ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
References: <20190614125310.29458-1-ksloat@aampglobal.com>
 <20190614164609.GA29814@roeck-us.net>
 <BL0PR07MB4115E99D065FD9BEA4C43BB5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190614180826.GD3369@piout.net>
 <BL0PR07MB4115D5ECDEDCC028197637E5ADEE0@BL0PR07MB4115.namprd07.prod.outlook.com>
 <20190614203327.GE3369@piout.net>
In-Reply-To: <20190614203327.GE3369@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-originating-ip: [100.3.71.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef799d38-ce9a-450a-4553-08d6f1093bfb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB5521; 
x-ms-traffictypediagnostic: BL0PR07MB5521:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR07MB5521FD3294C937CFBF135680ADEE0@BL0PR07MB5521.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(376002)(346002)(39850400004)(189003)(51914003)(13464003)(199004)(8676002)(71200400001)(7736002)(68736007)(81166006)(15650500001)(74316002)(8936002)(81156014)(71190400001)(99286004)(80792005)(14444005)(52536014)(256004)(229853002)(316002)(5660300002)(66066001)(25786009)(4326008)(478600001)(2906002)(11346002)(6246003)(7696005)(476003)(186003)(102836004)(53936002)(6916009)(14454004)(6116002)(486006)(76176011)(446003)(66446008)(66556008)(6306002)(66476007)(6506007)(55016002)(86362001)(9686003)(53546011)(3846002)(966005)(54906003)(66946007)(76116006)(73956011)(305945005)(6436002)(26005)(33656002)(64756008)(72206003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5521;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1n57G2uVzOQuQ4YESdudQgJYMrha4miz0Ca+ReHjOhlsazLzZFGPUUedvp78P+cF0zEZ0CPOJ1ziufUHKJCkwxq0Im26HSm1EWrUOZcidkfn1WJ7SWdqm9HYReNLSUqhxYmmOpm3iy1axTk14ZpHt9dZCP/t5uHx/zrCb+SlqP+VOKOJOARuYnNzGmcBbd5UeN48u5zFAg9xu9rwSArLBbNQKF2aP077oGG9mNqo18IIYqYnKbiaDQxSWxfwvx11iWqmmdX0hg+Gw0jKJ1sJHr34q/daU+RxsuaAvgUhwRTJ3xUQhRPvLK11H7mScULAfS8ce+dSYUAKqcGLwWSXFF2qXykCn5fLPuYuPzsPNw2XaoIjdj2kaZ+fXnwwnctj6JO6Wr6SWwDACXL8i2u40zPktcC0v+wTH15g2T5vn78=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef799d38-ce9a-450a-4553-08d6f1093bfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 20:45:28.0817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5521
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: BL0PR07MB4115.namprd07.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-TransportTrafficSubType: 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 100.3.71.115
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-transporttrafficsubtype: 
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: BL0PR07MB5521.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_134531_773168_0A7DAF85 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.105 listed in list.dnswl.org]
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 Guenter Roeck <linux@roeck-us.net>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Sent: Friday, June 14, 2019 4:33 PM
> To: Ken Sloat <KSloat@aampglobal.com>
> Cc: Guenter Roeck <linux@roeck-us.net>; nicolas.ferre@microchip.com;
> ludovic.desroches@microchip.com; wim@linux-watchdog.org; linux-arm-
> kernel@lists.infradead.org; linux-watchdog@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH v2 1/1] watchdog: atmel: atmel-sama5d4-wdt: Disable
> watchdog on system suspend
> 
> [This is an EXTERNAL EMAIL]
> ________________________________
> 
> On 14/06/2019 18:43:22+0000, Ken Sloat wrote:
> > Well I'm a little confused still because there are two separate
> > comments in these statements. The first within resume implies that the
> > init should be called because we might have lost register values for
> > some reason unexplained.
> 
> The sama5d2 has a suspend mode where power to the core is completely
> cut. Only a few IPs remain powered (in the backup power domain).
> Unfortunately, the watchdog is not in that domain and may lose its registers.
> 
> > Then within the init it says that the bootloader might have modified
> > the registers so we should check them and then update it or otherwise
> > disable it. I'm not trying to pick apart the logic or anything, I'm
> > just readily assuming it is good as it was already reviewed before.
> >
> 
> The bootloaders may have started the watchdog (this makes sense if you
> really care about reliability) and so we need to be careful to keep the proper
> parameters.

Thanks for the explanation Alexandre I appreciate it.

> > So without digging into that too much, if we don't know if any of the
> > runtime situations above might have occurred, then isn't it best to
> > leave my patch as is? Yes this has the side effect of resetting the
> > timer count, but if the init call is needed and we don't have any way
> > to know if any of the situations occurred, then we have no choice right?
> >
> 
> Until we can differentiate between suspend modes, we have no other
> choice.

Ok I will leave my patch as is for now then

> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Thanks,
Ken Sloat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
