Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1AD3DC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4If9kAF0J1uVpUT/xMFEF8lQayTIVMBHuqE7T24WZy8=; b=hLYyggkVi4gJZ2
	xJR/i+d3w8Sf5QJK8ynZXQpvUmJxC6p+LexcC3W5L20Y0LS2hWt5qZcvZD0VH4sPiv0ef26JnIXfq
	PGt2MQnFQv2q44i4y+ITSqp611URkKTKUl/L6UtiUIoXD+9lr8ppYz8lVFhkD9GYUC3UuciVt4JLA
	JFoYOnQn7wfLOxfPRcLnvwCPutQ6VnAB0eAU2mVkchSfSU+KBIKiA5aALzY5QlAC/MJ2I10S3K949
	SlJIsWVNmQ8xusaVquzCX1u42xxHIlUz9X5Q8tZ7FL6OIPl6fHLtm3dMXLItTTPVlH+zaNuV+99Fu
	PdVHHBnxGI0EbOQ0phfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsb0-0004Vp-98; Fri, 11 Oct 2019 10:56:30 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsan-0004Ux-3k; Fri, 11 Oct 2019 10:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yoXMqgkrVOlA9w3mwWbFLbUt4qFRzx5cc74EwqZiVtY=;
 b=dfCRgbIAV1zlJn+vUpOnPUVJEGyckcwqYVkyVZDcJnAxMwXCnnnkRJiWPjsEas0hWsdY7ZaJH4Ub2QBMUIpWA3fYWKe5t8ivCrACOl9O0+u/upJihO/7bPQj4ycpZAqzPdKlaW4WvVhmFoLXmeEs82TVpMi9acKB1+k10ZJJHpw=
Received: from DB6PR0801CA0061.eurprd08.prod.outlook.com (2603:10a6:4:2b::29)
 by AM0PR08MB5009.eurprd08.prod.outlook.com (2603:10a6:208:160::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Fri, 11 Oct
 2019 10:56:12 +0000
Received: from DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by DB6PR0801CA0061.outlook.office365.com
 (2603:10a6:4:2b::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Fri, 11 Oct 2019 10:56:12 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT023.mail.protection.outlook.com (10.152.20.68) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 11 Oct 2019 10:56:11 +0000
Received: ("Tessian outbound 0cf06bf5c60e:v33");
 Fri, 11 Oct 2019 10:56:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8a007ee49b10e978
X-CR-MTA-TID: 64aa7808
Received: from aa32cf6c135b.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.4.57]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 48BECC57-E34D-4728-9C65-D5FF2659F6BC.1; 
 Fri, 11 Oct 2019 10:56:05 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2057.outbound.protection.outlook.com [104.47.4.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id aa32cf6c135b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 11 Oct 2019 10:56:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EC/xLyzYCYbd6RIPi3kQpezBvJR4c6MCUsTREh31AfifkPl83vvNbaoniCvwhrhkBrcJpWjSu0/UNo1bQlOouDDlMrrh8EbUhQuxOKZ7NaNsPQtLWIv2stqrFVtAtvF0VFfl/mC2ka3mJc/DT7uBnLJEavwx4dLCWlp6/jOE6brai0dHOqQspIHgQLxCF4ZMYjWLv8/+qrlEYnBR5UNeSjmcj2FdU6E4YALDv4fEaQ6J+w4Ub0SGFCCgt8mrW9/Ftg8hFSbFi1pfKwx0y+iLwp8N4HjSRtXppVZY8ZQa+37hXthrwE0Lcpq/9n8Zg1wh2avs+Xg32szhC9fmU/21SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yoXMqgkrVOlA9w3mwWbFLbUt4qFRzx5cc74EwqZiVtY=;
 b=hr7iN4l7nRdqG8XhvisBD/c3JclEECHdpUKtrB16ttqwlAPE7g6TrqfXVoPELp+sgq4o4G9c+jLpPAR7kuL4Wsvdued1r4zKPfc7+2mcUPFlo4B0kHgZnJvBGkJ39eKhyFRqboJ1Z0Y/rPDnIAW2DjAdytzRhuMWobGCoUxrORCp5KQhMQpJ0L9y2pFrnD+9i+UhabMWqlAp31sX6/cL4W17gSK4J5K7cwIwhHDZQ7ip7/J/Nnl8T5Yx7fiCEwv9ktfEFnlaJxU867L5b3Ygezpg4pa+WHVpCTl3v39kVTc8+jLMsY41zyc/Hriz9D9pG28TLAsM3MmK7PYcM/Ivyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yoXMqgkrVOlA9w3mwWbFLbUt4qFRzx5cc74EwqZiVtY=;
 b=dfCRgbIAV1zlJn+vUpOnPUVJEGyckcwqYVkyVZDcJnAxMwXCnnnkRJiWPjsEas0hWsdY7ZaJH4Ub2QBMUIpWA3fYWKe5t8ivCrACOl9O0+u/upJihO/7bPQj4ycpZAqzPdKlaW4WvVhmFoLXmeEs82TVpMi9acKB1+k10ZJJHpw=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB4820.eurprd08.prod.outlook.com (10.255.99.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Fri, 11 Oct 2019 10:56:00 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a%5]) with mapi id 15.20.2347.021; Fri, 11 Oct 2019
 10:56:00 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Topic: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Index: AQHVgA+hW0YpyPd1Sk22upjR9Lo04KdVKIOAgAAcS4A=
Date: Fri, 11 Oct 2019 10:56:00 +0000
Message-ID: <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
In-Reply-To: <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.54]
x-clientproxiedby: LO2P265CA0120.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::36) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 0c4f4911-f4a2-46d3-ef2e-08d74e39a11b
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM6PR08MB4820:|AM6PR08MB4820:|AM0PR08MB5009:
X-MS-Exchange-PUrlCount: 4
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB5009A2C1BD2FF2BA6DA4DD11F0970@AM0PR08MB5009.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0187F3EA14
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(366004)(39860400002)(199004)(189003)(51914003)(52314003)(305945005)(71190400001)(71200400001)(478600001)(58126008)(7736002)(6116002)(8676002)(54906003)(3846002)(6246003)(2906002)(966005)(316002)(25786009)(6916009)(26005)(30864003)(64756008)(66446008)(1076003)(186003)(66946007)(66476007)(66556008)(6436002)(86362001)(5660300002)(52116002)(102836004)(6506007)(53546011)(6512007)(386003)(11346002)(8936002)(44832011)(6306002)(446003)(4326008)(66066001)(76176011)(9686003)(6486002)(476003)(486006)(99286004)(256004)(14444005)(14454004)(81156014)(81166006)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4820;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: JIaJWUJWP0WG1PK/HOcJ3+PKQFY0r4CxGS1H1v5xai6h+tV6m35HwE6oMaNZGIq3KTlCJY6/SCEuUydy2Z6S6PjW/zIZvDEo8Vj8OZ73FW9zk6U95ioz53+G5VyR9H8yKEkfaMouS0dxv9X0T/JZQSrpQng9J4qblHcVhE8IribIjVwUvEsUDoB5Is65YVkg6lkboIDRXTZQj4d0IW6E5X/p75MM6bPxPP7hD1O0uO0HwAGLQGCd3u9PqiXNtnZGDXdcpNZJe1Nq8wVnuCSdzyin7tcZfTfaDWZTYSGYqfghW7Hs9ruvLYwycLN3mZuMIx7INhKDrYoaKIU8WyNbcR73W8tgJEELX1oaSO4ZRQDnRVxzBGF6axxPjW8gof1BPGmLpE6iOGMMynXSrVSmpLzlVkJ9IhHiuhsUYFg2pWLua34tPyu9/bqGFBJWkNDhvpgLvYbD5wIw25jYRNZL6Q==
Content-ID: <F9CD49232546D5448AC20BA53B29CBC9@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4820
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(51914003)(52314003)(76130400001)(6116002)(3846002)(46406003)(54906003)(229853002)(70206006)(6486002)(6862004)(4326008)(99286004)(9686003)(6512007)(6306002)(70586007)(58126008)(23726003)(316002)(22756006)(86362001)(6246003)(25786009)(7736002)(305945005)(30864003)(50466002)(1076003)(5660300002)(47776003)(66066001)(81166006)(81156014)(8676002)(8746002)(8936002)(450100002)(356004)(14444005)(186003)(14454004)(966005)(6506007)(126002)(53546011)(478600001)(76176011)(97756001)(386003)(102836004)(446003)(486006)(2906002)(11346002)(336012)(26005)(63350400001)(26826003)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB5009;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8f9169d1-aa18-41dc-0cb6-08d74e399a06
NoDisclaimer: True
X-Forefront-PRVS: 0187F3EA14
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v95fesv4TffCX+IrOLWOkQDc1SkKA9nCaaelIFPuwhhwZmH4ZHYlXXe6niVMGLtTseqfdNXsuh97yZ+/pwQbrGJX/Vht/v3T9Cz1Blx5pEMAY0+QYXn+Vaf8GPtYl0uDGns5wt2bHMQ16M7qbBbQxurX267XVuC7vWq7pdTJanEfjo6LIb5/DQGUdrhS4dDtPnsmVib+8ocRPZxE8FNY0sdTR86HyVCpdwMI3ugdPyepodj7PvBK3yl6B1+lCUdindmaCDUWNHimrSQNsdlUZQUXlh9lLJfbCUTs3Sw5XB5NLDxwD/07KU0h/sa+nXq8jRQ35DCCK/9Gx9LezPWKWSq8sUhmAUgp2K8HhIZvTWFHzkbp8DjjI3zmJQhUxrgl1yxX4AvISU6V6q4x8qiLwDBiBRKJrp1SY+wQg3iwUq8XaVsEMrP6OXBlnIHZkEWZPZrNEjymhEJX39NUi4CBEg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2019 10:56:11.8478 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c4f4911-f4a2-46d3-ef2e-08d74e39a11b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_035617_318268_10D1CFCC 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.74 listed in list.dnswl.org]
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
> Hi Brian,
> 
> On 11/10/2019 10:41, Brian Starkey wrote:
> > Hi Neil,
> > 
> > On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
> >> Hi Ayan,
> >>
> >> On 10/10/2019 15:26, Ayan Halder wrote:
> >>> On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
> >>>> This adds all the OSD configuration plumbing to support the AFBC decoders
> >>>> path to display of the OSD1 plane.
> >>>>
> >>>> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
> >>>>
> >>>> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
> >>>> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
> >>>>
> >>>> On the other side, the Amlogic G12A AFBC decoder seems to be an external
> >>>> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
> >>>> feeding the OSD1 VIU pixel input.
> >>>> This uses a weird "0x1000000" internal HW physical address on both
> >>>> sides to transfer the pixels.
> >>>>
> >>>> For Amlogic GXM, the supported pixel formats are the same as the normal
> >>>> linear OSD1 mode.
> >>>>
> >>>> On the other side, Amlogic added support for all AFBC v1.2 formats for
> >>>> the G12A AFBC integration.
> >>>>
> >>>> For simplicity, we stick to the already supported formats for now.
> >>>>
> >>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >>>> ---
> >>>>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
> >>>>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
> >>>>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
> >>>>  3 files changed, 190 insertions(+), 31 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
> >>>> index 57ae1c13d1e6..d478fa232951 100644
> >>>> --- a/drivers/gpu/drm/meson/meson_crtc.c
> >>>> +++ b/drivers/gpu/drm/meson/meson_crtc.c
> >>>> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
> >>>>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
> >>>>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
> >>>>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
> >>>> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
> >>>> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> >>>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
> >>>>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
> >>>>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
> >>>> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> >>>> index 60f13c6f34e5..de25349be8aa 100644
> >>>> --- a/drivers/gpu/drm/meson/meson_drv.h
> >>>> +++ b/drivers/gpu/drm/meson/meson_drv.h
> >>>> @@ -53,8 +53,12 @@ struct meson_drm {
> >>>>  		bool osd1_enabled;
> >>>>  		bool osd1_interlace;
> >>>>  		bool osd1_commit;
> >>>> +		bool osd1_afbcd;
> >>>>  		uint32_t osd1_ctrl_stat;
> >>>> +		uint32_t osd1_ctrl_stat2;
> >>>>  		uint32_t osd1_blk0_cfg[5];
> >>>> +		uint32_t osd1_blk1_cfg4;
> >>>> +		uint32_t osd1_blk2_cfg4;
> >>>>  		uint32_t osd1_addr;
> >>>>  		uint32_t osd1_stride;
> >>>>  		uint32_t osd1_height;
> >>>> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
> >>>> index 5e798c276037..412941aa8402 100644
> >>>> --- a/drivers/gpu/drm/meson/meson_plane.c
> >>>> +++ b/drivers/gpu/drm/meson/meson_plane.c
> >>>> @@ -23,6 +23,7 @@
> >>>>  #include "meson_plane.h"
> >>>>  #include "meson_registers.h"
> >>>>  #include "meson_viu.h"
> >>>> +#include "meson_osd_afbcd.h"
> >>>>  
> >>>>  /* OSD_SCI_WH_M1 */
> >>>>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
> >>>> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
> >>>>  						   false, true);
> >>>>  }
> >>>>  
> >>>> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
> >>>> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
> >>>> +				   AFBC_FORMAT_MOD_YTR |		\
> >>>> +				   AFBC_FORMAT_MOD_SPARSE |		\
> >>>> +				   AFBC_FORMAT_MOD_SPLIT)
> >>>> +
> >>>>  /* Takes a fixed 16.16 number and converts it to integer. */
> >>>>  static inline int64_t fixed16_to_int(int64_t value)
> >>>>  {
> >>>>  	return value >> 16;
> >>>>  }
> >>>>  
> >>>> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
> >>>> +{
> >>>> +	u32 line_stride = 0;
> >>>> +
> >>>> +	switch (priv->afbcd.format) {
> >>>> +	case DRM_FORMAT_RGB565:
> >>>> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
> >>>> +		break;
> >>>> +	case DRM_FORMAT_RGB888:
> >>>> +	case DRM_FORMAT_XRGB8888:
> >>>> +	case DRM_FORMAT_ARGB8888:
> >>>> +	case DRM_FORMAT_XBGR8888:
> >>>> +	case DRM_FORMAT_ABGR8888:
> >>> Please have a look at
> >>> https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
> >>> recommendation. We suggest that *X* formats are avoided.
> >>>
> >>> Also, for interoperability and maximum compression efficiency (with
> >>> AFBC_FORMAT_MOD_YTR), we suggest the following order :-
> >>>
> >>>         Component 0: R
> >>>         Component 1: G
> >>>         Component 2: B
> >>>         Component 3: A (if available)
> >>
> >>
> >> Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?
> >>
> >> But why if the HW (GPU and DPU) is capable of ?
> > 
> > AFBC doesn't have an in-memory component order in the traditional
> > sense (i.e. a bit-position to component mapping), so Arm
> > have decided to define the convention that DRM_FORMAT_ABGR8888
> > represents the AFBC layout with R in component 0.
> 
> In this implementation, we handle the ARGB/ABGR as the same mode
> since the AFBC can only represent the layout as "ABGR" anyway.
> 

In this case, with the external AFBC IP, there's a whole extra layer
of potential confusion :-(

The decoder only needs to know the number of components - so
irrespective of what color channel is mapped to what component, it can
always be configured with the same mode for 4-component 32-bit
formats.

For everything to work correctly with YTR, the thing consuming the
output from the decoder must treat component 0 as 'R', but otherwise
it doesn't matter.

Is your HW able to treat the decoder output in different ways? e.g.
mapping component 0 to 'B'? If that's the case, then exposing the
different orders is valid - but only ABGR should allow YTR.

> > 
> > Are you sure the GPU supports other orders? I think any Arm driver
> > will only be producing DRM_FORMATs with "BGR" order e.g. ABGR888>
> > I'm not convinced the GPU HW actually supports any other order, but
> > it's all rather confusing with texture swizzling. What I can tell you
> > for sure is that it _does_ support BGR order (in DRM naming
> > convention).
> 
> Well, since the Bifrost Mali blobs are closed-source and delivered
> by licensees, it's hard to define what is supported from a closed
> GPU HW, closed SW implementation to a closed pixel format implementation.
> 

I hear you. IMO the only way to make any of this clear is to publish
reference data and tests which make sure implementations match each
other. It's something I'm trying to make happen.

> You'll have to tell us if the closed libMali handling AFBC would accept
> ARGB8888 as format to render with AFBC enabled, if not you're right
> I'll discard XRGB8888/ARGB8888 for AFBC buffers completely.
> 
> But it the libMali chooses tt generate an ARGB8888 buffer whatever
> ARGB8888/XRGB8888/ABGR888/XBGR888 is asked, then no I'll keep it that way.
> 

Yeah, I'll try and get clarity on this. It's not at all clear to me
either. When you say "accept ARGB8888 as format to render with AFBC
enabled", which API are you referring to, just so I can be clear? Do
you have an example of some code you're using to render AFBC with the
GPU blob?

In many APIs, there's no real expectation on in-memory component
order, so perhaps there treating them as all the same is acceptable.

However, fourcc + AFBC modifier is explicit in terms of component
order, and so IMO it's very harmful to "ignore" component order in
interfaces using fourcc + AFBC modifier.

There are implementations which support other orders, so ignoring
order will break those implementations. In some cases (Android, maybe
GL), this can be hidden behind "driver magic", but if the API is
fourcc + AFBC modifier, IMO it had better be completely explicit with
no tricks - irrespective of whatever other less-prescriptive APIs do.

> BTW I kept the vendor implementation here, which may be wrong but since
> they have the AFBC IP license and Mali Bifrost GPU license...
> 
> > 
> > If you do choose to expose orders other than BGR/ABGR, then you should
> > certainly not allow YTR to be used with any orders other than
> > BGR/ABGR. The AFBC spec defines YTR as using R in component 0, which
> > Arm has defined as DRM_FORMAT_*BGR* (component 0 in LE LSBs).
> > 
> 
> The MAFBC_FMT_RGBA8888 pixel format is defined in the AFBC decoder,
> which seems to be an ARM IP, the registers documentation is in the
> SoC datasheet at [1] and the formats bits are defined in the patch 3 at [2].
> 
> So it seems the decoder handles only a single type for 32bit RGB buffer
> format, as Amlogic names it MAFBC_FMT_RGBA8888
> 

Hopefully my comments at the beginning of this mail helps clear this
part up a bit.

> For XRGB8888/XBGR8888 we simply "replace" the A component with a fixed
> value in the pixel generator.

That seems correct, so long as the decoder is configured in the
4-component mode.

> 
> [1] https://dl.khadas.com/Hardware/VIM3/Datasheet/S905D3_datasheet_0.2_Wesion.pdf page 772
> [2] https://patchwork.freedesktop.org/patch/335199/?series=67832&rev=1
> 
> >>
> >> Isn't it an userspace choice ? I understand XRGB8888 is a waste
> >> of memory space and compression efficiency, but this is not the
> >> kernel driver's to decide this, right ?
> >>
> > 
> > As long as it's agreed and understood what XRGB8888 means. It must be
> > an AFBC bitstream with 4-components, with B in component 0, G in
> > component 1, R in component 2 and 8 wasted bits in component 3.
> 
> Yes, but this is something userspace must assume, and it's already
> wasted in the linear XRGB8888 format anyway.
> 
> > 
> > I know of HW which treats "XBGR" with AFBC as a 3-component format,
> > which isn't correct but can easily lead to confusion and
> > incompatibility.
> 
> Seems it's not the case here, at least for the G12A SoC family.

That's good :-)

> 
> > 
> >> For interoperability I'll understand recommending a minimal set
> >> of modifiers and formats. But here, each platform is also limited
> >> by it's GPU capabilites aswell.
> >>
> > 
> > The (Arm) GPUs support ABGR ordering, so if everyone sticks to that we
> > can make sure everything's nice and compatible (until someone turns up
> > with HW which _doesn't_ support that ordering).
> 
> This is not clean enough in the https://www.kernel.org/doc/html/latest/gpu/afbc.html
> document. Since ARM is in control of the renderers, saying AFBC does _not_
> support another components format as ABGR ordering in all the
> OpenGL ES/Vulkan implementations, it would be clear we couldn't render
> anything using AFBC with ARGB.
> But we hit the closed-source/closed-specifications here again.
> 

I didn't really understand the middle sentence.

I know and understand that the "closed-ness" is a problem. The page
you linked was an initial attempt at making a clear, public
specification.

What I need to be clear about, though, is that it describes _only_
cases where DRM fourcc + AFBC modifier are used. I don't think there's
any sane way to apply it to other APIs, because the formats are
described differently, and the "leeway" allowed for doing things
"under-the-hood" is very different.

> > 
> >> Limiting to ABGR8888 would discard like every non-Android renderers,
> >> using AFBC, I'm not sure it's the kernels driver's responsibility.
> >>
> > 
> > It prevents renderers with hard-coded pixel formats, perhaps. But
> > those are already fragile by nature, surely?
> 
> Well, except Android, all the other renderers uses ARGB8888/XRGB8888,
> as fixed pixel format, which is quite a large amount of code.
> 

I think whether that matters or not really depends on which graphics
APIs you're referring to. IMO it's inevitable that modifiers don't
simply "drop in" everywhere. The kernel API allows you to query what's
supported and pick that.

Thanks,
-Brian

> 
> Anyway, thanks for these technical clarifications, it makes things
> much more clearer.
> 
> Neil
> 
> > 
> > Cheers,
> > -Brian
> > 
> >>>
> >>> Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
> >>>> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
> >>>> +		break;
> >>>> +	}
> >>>> +
> >>>> +	return ((line_stride + 1) >> 1) << 1;
> >>>> +}
> >>>> +
> >>>>  static void meson_plane_atomic_update(struct drm_plane *plane,
> >>>>  				      struct drm_plane_state *old_state)
> >>>>  {
> >>
> >> [...]
> >>
> >>>>  
> >>>> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
> >>>> +					     u32 format, u64 modifier)
> >>>> +{
> >>>> +	struct meson_plane *meson_plane = to_meson_plane(plane);
> >>>> +	struct meson_drm *priv = meson_plane->priv;
> >>>> +	int i;
> >>>> +
> >>>> +	if (modifier == DRM_FORMAT_MOD_INVALID)
> >>>> +		return false;
> >>>> +
> >>>> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
> >>>> +		return true;
> >>>> +
> >>>> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
> >>>> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> >>>> +		return false;
> >>>> +
> >>>> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
> >>>> +		return false;
> >>>> +
> >>>> +	for (i = 0 ; i < plane->modifier_count ; ++i)
> >>>> +		if (plane->modifiers[i] == modifier)
> >>>> +			break;
> >>>> +
> >>>> +	if (i == plane->modifier_count) {
> >>>> +		DRM_DEBUG_KMS("Unsupported modifier\n");
> >>>> +		return false;
> >>>> +	}
> >>
> >> I can add a warn_once here, would it be enough ?
> >>
> >>>> +
> >>>> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
> >>>> +		return priv->afbcd.ops->supported_fmt(modifier, format);
> >>>> +
> >>>> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
> >>>> +	return false;
> >>>> +}
> >>>> +
> >>>>  static const struct drm_plane_funcs meson_plane_funcs = {
> >>>>  	.update_plane		= drm_atomic_helper_update_plane,
> >>>>  	.disable_plane		= drm_atomic_helper_disable_plane,
> >>>> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
> >>>>  	.reset			= drm_atomic_helper_plane_reset,
> >>>>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
> >>>>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
> >>>> +	.format_mod_supported   = meson_plane_format_mod_supported,
> >>>>  };
> >>>>  
> >>>>  static const uint32_t supported_drm_formats[] = {
> >>>> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
> >>>>  	DRM_FORMAT_RGB565,
> >>>>  };
> >>>>  
> >>>> +static const uint64_t format_modifiers_afbc_gxm[] = {
> >>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >>>> +				AFBC_FORMAT_MOD_SPARSE |
> >>>> +				AFBC_FORMAT_MOD_YTR),
> >>>> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
> >>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >>>> +				AFBC_FORMAT_MOD_YTR |
> >>>> +				AFBC_FORMAT_MOD_SPARSE |
> >>>> +				AFBC_FORMAT_MOD_SPLIT),
> >>>> +	DRM_FORMAT_MOD_LINEAR,
> >>>> +	DRM_FORMAT_MOD_INVALID,
> >>>> +};
> >>>> +
> >>>> +static const uint64_t format_modifiers_afbc_g12a[] = {
> >>>> +	/*
> >>>> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
> >>>> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
> >>>> +	 * - SPLIT is mandatory for performances reasons when in 16x16
> >>>> +	 *   block size
> >>>> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
> >>>> +	 *   for performances reasons
> >>>> +	 */
> >>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >>>> +				AFBC_FORMAT_MOD_YTR |
> >>>> +				AFBC_FORMAT_MOD_SPARSE |
> >>>> +				AFBC_FORMAT_MOD_SPLIT),
> >>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> >>>> +				AFBC_FORMAT_MOD_YTR |
> >>>> +				AFBC_FORMAT_MOD_SPARSE),
> >>>> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> >>>> +				AFBC_FORMAT_MOD_YTR |
> >>>> +				AFBC_FORMAT_MOD_SPARSE |
> >>>> +				AFBC_FORMAT_MOD_SPLIT),
> >>>> +	DRM_FORMAT_MOD_LINEAR,
> >>>> +	DRM_FORMAT_MOD_INVALID,
> >>>> +};
> >>>> +
> >>>> +static const uint64_t format_modifiers_default[] = {
> >>>> +	DRM_FORMAT_MOD_LINEAR,
> >>>> +	DRM_FORMAT_MOD_INVALID,
> >>>> +};
> >>>> +
> >>>>  int meson_plane_create(struct meson_drm *priv)
> >>>>  {
> >>>>  	struct meson_plane *meson_plane;
> >>>>  	struct drm_plane *plane;
> >>>> +	const uint64_t *format_modifiers = format_modifiers_default;
> >>>>  
> >>>>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
> >>>>  				   GFP_KERNEL);
> >>>> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
> >>>>  	meson_plane->priv = priv;
> >>>>  	plane = &meson_plane->base;
> >>>>  
> >>>> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
> >>>> +		format_modifiers = format_modifiers_afbc_gxm;
> >>>> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> >>>> +		format_modifiers = format_modifiers_afbc_g12a;
> >>>> +
> >>>>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
> >>>>  				 &meson_plane_funcs,
> >>>>  				 supported_drm_formats,
> >>>>  				 ARRAY_SIZE(supported_drm_formats),
> >>>> -				 NULL,
> >>>> +				 format_modifiers,
> >>>>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
> >>>>  
> >>>>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
> >>>> -- 
> >>>> 2.22.0
> >>
> >> _______________________________________________
> >> dri-devel mailing list
> >> dri-devel@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
