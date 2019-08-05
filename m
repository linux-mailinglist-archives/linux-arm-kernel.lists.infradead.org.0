Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457F18186B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EHPpQFLwqBCTNZdCw4EXDoPiCnQTYGwIT734drskFo=; b=Db76hJmOQORkFS
	GcSd7VbxmDzV40j7yny3bbwAHnHpkAcKuUGORps5+pwTx+u2qkdzz87UEQKHvP5qhVCv691Yvb2uu
	T+4wJPmyoThEYvg7csKqJ5pKA/Dkk7dALASs6tpfLK0hLRNo+l6WupQNOvXXH2+obk6oW42756nFt
	O66J5IDTMIGEzM7OXTHAHigoySHE33+BxAJJpbXkDyQ0lEIwI8cRbLJkB46ROT1h9H3gLwllS70Cq
	Ru1GEKukTOOEorzy1xhNV7AUzSB7X+HUie1/kSma4qblge48bP07Apt8M8+S4VuGAaXwSRlG50+sO
	A4V2IMfyxmwiXNan9ukg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubVX-0005qp-FR; Mon, 05 Aug 2019 11:50:31 +0000
Received: from mail-eopbgr60055.outbound.protection.outlook.com ([40.107.6.55]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubVL-0005qM-Ip
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBzv4w9Pfc71z2mtB1SRU6/YrONVis02b6HsT9c0VR8=;
 b=23bmj5yfBvwgIucK9w9HSHxVyuVYhlzvPzT7IFan0Sf+TIBxG3BHqVZnnbyhEpmXDGOBjzoqS5FRYSYIyGN/cM73ULkLcd7Y2S4WUsY1gTcbkTWL9IPgOesRr+4Olvr7WBN1NeVMUw5Y78GFeU0Z6hCLjQ+V8uWVh17l7xTdy6g=
Received: from VI1PR0801CA0085.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::29) by DB6PR0802MB2599.eurprd08.prod.outlook.com
 (2603:10a6:4:a2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Mon, 5 Aug
 2019 11:50:13 +0000
Received: from DB5EUR03FT013.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by VI1PR0801CA0085.outlook.office365.com
 (2603:10a6:800:7d::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14 via Frontend
 Transport; Mon, 5 Aug 2019 11:50:13 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT013.mail.protection.outlook.com (10.152.20.105) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Mon, 5 Aug 2019 11:50:11 +0000
Received: ("Tessian outbound 220137ab7b0b:v26");
 Mon, 05 Aug 2019 11:50:11 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 70b098e87fb25913
X-CR-MTA-TID: 64aa7808
Received: from 7e4f6b5dd5aa.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.54]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0B1AC98B-A3EA-4BFB-A617-E54DB939A675.1; 
 Mon, 05 Aug 2019 11:50:05 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2054.outbound.protection.outlook.com [104.47.1.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7e4f6b5dd5aa.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 05 Aug 2019 11:50:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXZeCWxwOU7Sbiyr5FYJefeQmosaMSiNouRyfALIIugTV7kTIsdVD+kdcwMlKwhfjt+ITHNeYd8GYMqtJt7M4r5PHjKrNc99qvmZoSZWERnZpv9fdJ2bS78E0M0YzyaZxF5ga3lW304rcnKWd49un2XRiUzQHpa4+Cb5+JfuZbtprwZvaI8pZLnUTbEpFs17pHnDB4avsM6iGvXn+XsYd3eLsVOl6B00gZV9mWZwe0p9dykNYpO/JR5CTEhyAYeltXFSeKhFSR4NMDUAhn+KflK0+fdP71DAd2c5Y5otHg7OMl/N4N/fTxp7KZqfTiwI2CLKrpYD6KJlxq1YHLSRxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBzv4w9Pfc71z2mtB1SRU6/YrONVis02b6HsT9c0VR8=;
 b=a/Kd+5w1AOZ7gYuUZsRcogyC+aiLdoK8ODg3xdpX4GZtJbaYxoERleEovL665wtdbvQCcy5+ygKNbnpVFx8FHNY3SbOsnoWIOS5KGymHeeZ4qbUo80huqMCjoRCT4C40/layRKbLXqsFN3JTeGJKbuw1QyBnx3kCb6q4R+etYEBjiqWth8Xdj1qAFL5wNU8oixDdY/flXo2lFQM0454unI//M1HjXSgGEn+/+7qBLWxYcWBAQRIx/DJ7lHgmC1HwIGAxWxIihGry2CTAsKd2k64H9/FvNY/Vj75EeEtFLUQyIodfIDDdnYIuIXaDUHm+5NVPz5dZ29KYTUIRER0WpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBzv4w9Pfc71z2mtB1SRU6/YrONVis02b6HsT9c0VR8=;
 b=23bmj5yfBvwgIucK9w9HSHxVyuVYhlzvPzT7IFan0Sf+TIBxG3BHqVZnnbyhEpmXDGOBjzoqS5FRYSYIyGN/cM73ULkLcd7Y2S4WUsY1gTcbkTWL9IPgOesRr+4Olvr7WBN1NeVMUw5Y78GFeU0Z6hCLjQ+V8uWVh17l7xTdy6g=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB4988.eurprd08.prod.outlook.com (10.255.17.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Mon, 5 Aug 2019 11:50:04 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Mon, 5 Aug 2019
 11:50:04 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH V4 02/11] arm64: mm: Flip kernel VA space
Thread-Topic: [PATCH V4 02/11] arm64: mm: Flip kernel VA space
Thread-Index: AQHVRinHDAO6mqzlmkSnxAPT0HfdWabsdd2AgAAFooA=
Date: Mon, 5 Aug 2019 11:50:03 +0000
Message-ID: <20190805115001.GA29738@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-3-steve.capper@arm.com>
 <20190805112951.GE59981@iMac.local>
In-Reply-To: <20190805112951.GE59981@iMac.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0453.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::33) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a8297af0-a369-4f2b-11f7-08d7199b1230
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB4988; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB4988:|DB6PR0802MB2599:
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2599F4ACE775A9B73514B7B381DA0@DB6PR0802MB2599.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 01208B1E18
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(346002)(396003)(199004)(189003)(11346002)(6486002)(3846002)(6116002)(229853002)(86362001)(446003)(256004)(8676002)(68736007)(478600001)(1076003)(186003)(52116002)(476003)(6246003)(6512007)(6636002)(81156014)(6436002)(66946007)(99286004)(81166006)(33656002)(14454004)(7736002)(8936002)(76176011)(316002)(66476007)(66556008)(71200400001)(71190400001)(58126008)(53936002)(486006)(66066001)(26005)(54906003)(102836004)(64756008)(66446008)(2906002)(6506007)(44832011)(4326008)(386003)(5660300002)(305945005)(6862004)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4988;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: yZE5dS3j2zZ6kLGRjbZMstxx+EmQNNqtqWAW4/3Ti3sL8DwUmaBDGI7LyYNMIkUsbKbIlomaW+/FdfYdMbtGBUICBCGQGtepFvqdQXpVbfjO8DAGTPwbylowDCdBfJa0hFjDuo0/htTxkEbGy4j1hq6eOefpnWShlqi8v79DP/7lXRrzx6EZcqRpfNoNz9f/fTBi4SAkFAGjggxlZQHHQzAEz2u0FJ+Y40kpNmFNHRJr9uE19AL65K9VM4XXLzRdGnKIuXsnaYqa850750Ln6ThIk9NLQwQKW4FBqoYHZiU4KS4by4Gdi1VyUXph0sYSrI3iJDjnZwZIiAmxM4ZpoVAGpKhn6WdJWYxV60AWvYog5tHbAgKpZmwqUQmGt7ap0QQmgMDfo/23N97FiiHr6ErIECH09WKKAgn8wgFF6Mk=
Content-ID: <3101430900CA07439D3ABBA8A9CA3C11@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4988
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT013.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(2980300002)(199004)(189003)(305945005)(46406003)(2906002)(63370400001)(476003)(126002)(63350400001)(229853002)(7736002)(25786009)(11346002)(81166006)(81156014)(26005)(186003)(8936002)(8746002)(6486002)(8676002)(1076003)(486006)(4326008)(336012)(6512007)(6116002)(3846002)(23726003)(47776003)(66066001)(6862004)(6636002)(33656002)(446003)(6246003)(478600001)(70206006)(26826003)(86362001)(54906003)(58126008)(70586007)(356004)(316002)(76130400001)(22756006)(6506007)(99286004)(50466002)(5660300002)(97756001)(76176011)(14454004)(386003)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2599;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2a732a4c-0188-4779-7a10-08d7199b0db9
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2599; 
NoDisclaimer: True
X-Forefront-PRVS: 01208B1E18
X-Microsoft-Antispam-Message-Info: qcnZuVC+Mn4PbiWpEJIzVjQhmZ8bDZmYnphFifxpBy21FENLSgx9vx4U3CkKgraRZArLB7vMn3co1fTFMagVCHj7/KgBJxUn6aL2fFkFo5pkbe2Md4JYevxwu0It3708/31Qa2Jse5xjdE9n9ZBoooaZKLvnMBK/0Sd/OE7AL6kpZS1JZxIH3sIRVMmg8mZ3uFrnAgXB7jJ+WMxnXR4TSICvzS9jQGOe8yRkYdNqLI587zukOdQMJPwBSwabFzAB5cX6yvaaefU0tg+dLstSeLGw5MCZikdgKGhUEBXq434svwOractdr8K7UdJ9t+7uFF1BzCmreakz4LwSHF9sVVjbYVF0S28NLS63c+IE2h5j9JADOJ7XzFXq/hXSV2uisiZoOrz4XxYxMeGbkJXVf1S2mV2Z10RtGOKCnNGwXss=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2019 11:50:11.1419 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8297af0-a369-4f2b-11f7-08d7199b1230
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_045019_687852_C88AD62A 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.55 listed in list.dnswl.org]
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "maz@kernel.org" <maz@kernel.org>, "bhsharma@redhat.com" <bhsharma@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Mon, Aug 05, 2019 at 12:29:51PM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 05:21:08PM +0100, Steve Capper wrote:
> > diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> > index 82b3a7fdb4a6..6f0b9f8ddf55 100644
> > --- a/arch/arm64/mm/dump.c
> > +++ b/arch/arm64/mm/dump.c
> > @@ -26,6 +26,8 @@
> >  #include <asm/ptdump.h>
> >  
> >  static const struct addr_marker address_markers[] = {
> > +	{ PAGE_OFFSET,			"Linear Mapping start" },
> > +	{ VA_START,			"Linear Mapping end" },
> >  #ifdef CONFIG_KASAN
> >  	{ KASAN_SHADOW_START,		"Kasan shadow start" },
> >  	{ KASAN_SHADOW_END,		"Kasan shadow end" },
> > @@ -40,9 +42,8 @@ static const struct addr_marker address_markers[] = {
> >  	{ PCI_IO_END,			"PCI I/O end" },
> >  #ifdef CONFIG_SPARSEMEM_VMEMMAP
> >  	{ VMEMMAP_START,		"vmemmap start" },
> > -	{ VMEMMAP_START + VMEMMAP_SIZE,	"vmemmap end" },
> > +	{ -1,				"vmemmap end" },
> 
> Why not keep the original vmemmap end here? We even leave a 2MB gap.

Because I overlooked this when I added the 2MB gap :-), apologies, we
should keep the original vmemmap end.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
