Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846C7BDAF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KG57J6UxSXm8N42dB5xqu49nMhSdsw7NvhF5JdJsyrE=; b=PFpD0hUJwQIwz7
	XVmrAM/Hl7BjCsWe8441/30ruxn26u2YLgtKg33Pi91Sl5SUm54cehE0kwSIfQdUowLMTpQDHyp4D
	hV+vL1rMqXpbhDeRvwDU3FiWaOpMqYAH4QA6o2u4w6KwkoKZA53Jf7DgXuAdBsoLuokVguSI5VpHd
	PoDjyOFGDRV9YBhNNkdUtKnj4rR4IiAaDnmVy2BS4Ewy7qi/h0Apty0bbMX8D6rX368/w8SjTWcsH
	/5SW+mYpq9u+KvwKo5QO3HjkrYDv8poglX2Pf8JvrW4iHGkMTHFHMuhMHiwTJZnP9ujndsM1fVXxn
	ldzvoK6YBZoIjmRJXjYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3bs-0007BP-3Y; Wed, 25 Sep 2019 09:29:20 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3bJ-00074C-94; Wed, 25 Sep 2019 09:28:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+twphkDJ9JcFdEgLrB08rYZxiEbo19/WzIrJ+I0j9LM=;
 b=VsGpBtBeyepsWqPxtbndxEmMG4YlQ3ZOWwsatHRJwCEPThkkD5lyT8Qi9hqUqOMBkAtu/D37eI1kQRZkSjumuvgR3iWkpN54HN3LCOljC7lFL4G+DcvxD81eEkEg59daVGeq62StjA+4mb0d01xAErNUXb5QvdCsbBlz2ptzRVA=
Received: from AM4PR08CA0066.eurprd08.prod.outlook.com (2603:10a6:205:2::37)
 by VI1PR08MB5501.eurprd08.prod.outlook.com (2603:10a6:803:138::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.19; Wed, 25 Sep
 2019 09:28:37 +0000
Received: from VE1EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by AM4PR08CA0066.outlook.office365.com
 (2603:10a6:205:2::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2284.20 via Frontend
 Transport; Wed, 25 Sep 2019 09:28:37 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT032.mail.protection.outlook.com (10.152.18.121) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2284.20 via Frontend Transport; Wed, 25 Sep 2019 09:28:36 +0000
Received: ("Tessian outbound e4042aced47b:v33");
 Wed, 25 Sep 2019 09:28:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 41fddb4900c77cd9
X-CR-MTA-TID: 64aa7808
Received: from 070cc776db6c.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6FA97B3C-748A-46CE-9B3C-2E08A2BC77AC.1; 
 Wed, 25 Sep 2019 09:28:30 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2050.outbound.protection.outlook.com [104.47.9.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 070cc776db6c.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 25 Sep 2019 09:28:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dRm0iCAV3Wlbq/WKff+NlkC0pgVrd4oRfBW34LRKxfghGCpj23IWHb6tdcGahi4vKfVHAFZK2G2UjiZQ3CUkJXjoTvUx5P7DE336TLSc6a9C+pe1jUBqUppNRH4pp9n763czA3Xjkctf1bVS8WZUhhbBKxmlMQo2zY1vZUrOwlMQ+Gx35jK7dqGbzm7SlGhr4G652Hx6J19rs1+A+9wrFDu33PqN8evSvkfb9qJZ49u2R2grykwHJBvx31C+e0HhZfdIIfQK4hcinn5HwCxw7w+lugwbU/IkK+bKSNAtBK/8+gYURhVKxeVLcAOH7dNR8Cl49jmvuu/sRMPbwzpjRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+twphkDJ9JcFdEgLrB08rYZxiEbo19/WzIrJ+I0j9LM=;
 b=FUZlxYopA9Ggztqdas0LmhZcp54A1GmdKyhef3V91bny9ZGVHNKyIG4hpdJXb9PIhHcUHZhvhnbwOX3Zerp7aNSi4qVjlFeLlJz06Xsi+jw9JOVQHdXY4kKwboU+rHnff8EKN3CbCHZQ1iMPq4rE2LPnvrM3h6zDAeBh5HpbPxk6xDSg1XO4aWZ8sn44zO3vFXTykOlfaIF7A3GSm6l0H5hVOjMsF3p+axgX68iU6bwMV2oKjU1iquRHTmremvgRjgsOkeJ5xfAe4oDnmiTok0NMEJcDa+l8MIcexP0qlTMyOpH7Y5KKSQ6H/UF2Qp9lq/AvauadoMTzL5tppAG1jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+twphkDJ9JcFdEgLrB08rYZxiEbo19/WzIrJ+I0j9LM=;
 b=VsGpBtBeyepsWqPxtbndxEmMG4YlQ3ZOWwsatHRJwCEPThkkD5lyT8Qi9hqUqOMBkAtu/D37eI1kQRZkSjumuvgR3iWkpN54HN3LCOljC7lFL4G+DcvxD81eEkEg59daVGeq62StjA+4mb0d01xAErNUXb5QvdCsbBlz2ptzRVA=
Received: from DB8PR08MB5354.eurprd08.prod.outlook.com (52.133.240.216) by
 DB8PR08MB5066.eurprd08.prod.outlook.com (10.255.17.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Wed, 25 Sep 2019 09:28:27 +0000
Received: from DB8PR08MB5354.eurprd08.prod.outlook.com
 ([fe80::b076:40e8:6e7b:6a18]) by DB8PR08MB5354.eurprd08.prod.outlook.com
 ([fe80::b076:40e8:6e7b:6a18%3]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 09:28:27 +0000
From: Ayan Halder <Ayan.Halder@arm.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
Thread-Topic: [PATCH] drm/rockchip: Add AFBC support
Thread-Index: AQHVcglQgFQKNg7dnEKeB+EcOCgUI6c5SHCAgAAcMgCAAr5zAA==
Date: Wed, 25 Sep 2019 09:28:26 +0000
Message-ID: <20190925092824.GA21018@arm.com>
References: <20190923122014.18229-1-andrzej.p@collabora.com>
 <da7f0c5e-9ca9-020d-5366-2b21a42acdff@baylibre.com>
 <332335a5-dc7f-2cce-601f-f73e9243dee5@collabora.com>
In-Reply-To: <332335a5-dc7f-2cce-601f-f73e9243dee5@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0042.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:e6::19) To DB8PR08MB5354.eurprd08.prod.outlook.com
 (2603:10a6:10:114::24)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.54]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 69617507-f117-4d58-0ae0-08d7419abe0d
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5066; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5066:|VI1PR08MB5501:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VI1PR08MB5501F6C7BD5AAE59FB022D83E4870@VI1PR08MB5501.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 01713B2841
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(136003)(366004)(346002)(199004)(189003)(51744003)(66946007)(2906002)(5660300002)(6486002)(476003)(86362001)(2616005)(52116002)(54906003)(102836004)(81166006)(81156014)(6436002)(256004)(44832011)(6506007)(386003)(1076003)(316002)(33656002)(229853002)(4326008)(8676002)(7416002)(486006)(76176011)(66066001)(36756003)(8936002)(71200400001)(186003)(25786009)(66446008)(6916009)(7736002)(14454004)(6512007)(478600001)(413944005)(966005)(26005)(66556008)(11346002)(64756008)(66476007)(6306002)(71190400001)(446003)(6116002)(6246003)(305945005)(99286004)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5066;
 H:DB8PR08MB5354.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: GbH09oawjotp5S9z4ljqkGA4ZHEEknf86gj4ndVzLNFzjN5idLQygrc7fnU9ryT4JRHCxheHC4E2eX0DM15SoN4F+KULbjwEKsWGNK76v0RxsSYZM9tbcOMnk8TDrgI/nTUyzLPlpADnZujNtNZEHkKJCmxrzXATdyld8IrhUq3rKq23vuHrT83CVBkCiH6uL2qXFAsc5rr1hrbuorEJat3b92NhdZzSmlf5LytGwplUvJM29l7UdA4kfnU51Kf517wBT9ZPTIyith10d2lcclAMDbhT1pUpOouo5poYceXzlCRh24nEhGaBYcOrCbIOhkpq9x0eAAWroBGAiHU2TACPxtb5HW6Uu7a7xblRjRhDI0yA2p4hHtS9SuIUqpTZM3s+ncMBPZQdZhrxo/Rj9NNmjwoY5Xt9dLSIRzw/yRb/f8RQj/HYjMaPiS6AgYokQdbtVra2ZAndBR1vBxVxxA==
x-ms-exchange-transport-forked: True
Content-ID: <5495A5E01BDFF9419EECBCB110C451E4@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5066
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Ayan.Halder@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(189003)(199004)(51744003)(14454004)(26826003)(54906003)(966005)(413944005)(8676002)(478600001)(450100002)(6862004)(4326008)(316002)(66066001)(47776003)(81156014)(63350400001)(81166006)(446003)(102836004)(8936002)(8746002)(5660300002)(1076003)(11346002)(336012)(2616005)(25786009)(476003)(356004)(126002)(6116002)(50466002)(386003)(6506007)(23756003)(6512007)(3846002)(99286004)(186003)(70206006)(22756006)(36906005)(2906002)(6486002)(486006)(7736002)(6246003)(33656002)(305945005)(76130400001)(76176011)(229853002)(6306002)(36756003)(86362001)(70586007)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB5501;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ad1ed8a6-a03b-4305-ecc8-08d7419ab7a4
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR08MB5501; 
NoDisclaimer: True
X-Forefront-PRVS: 01713B2841
X-Microsoft-Antispam-Message-Info: 9ElAizrKvYET8QopYbyqj+GzCPraPMSxV0nU4o4Rq3emlFUu58PLUyGMM7+FcBhXShHMw6roroomg3t8ifrQyuohS6QceJ1ub0q97QICN0Jnjx7U3lDB6gFn0pTTsJ/Tgz0cRmEc97VeFZOOkstcxzVr8fiZNwHbRCakO3JlcdpBU92dYDYIdAc1HBkGb/sd0RJD07nOJtKFdMlKKfMvs2zxqvaz6CG8KZA2/GohUGY667PVSxOVJdC61mAlCGvW4WJ25M19i+gNw5/MufB/vwUv2DUL3L90vB/BkF7w9fYXiGm7ivfqkHqwSw0Xer1Lk24T2LsbObvuTRABkkHvSKX2jjamn8Y37W5/lZEMDuE4AHKpzy6K0KdeSkx5eysnNVoH5VJVE20C9FrdcABTlTq9zCLAX6++tlnz9M6G1qQG67RjJt/5vg8VU+iyEajKDaN/ujP9JoenJgV44scBgg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 09:28:36.4068 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69617507-f117-4d58-0ae0-08d7419abe0d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5501
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_022845_599289_C8287443 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.71 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 05:34:14PM +0200, Andrzej Pietrasiewicz wrote:
> Dear All,
> =

> As a result of my mistake I've sent this patch with an incorrect SOB chai=
n.
> Please kindly disregard this patch.
> =

> @Neil: thank you for your time you spent reviewing it and answering and I=
'm
> sorry it's to no effect.
> @Ezequiel, @Tomeu: I apologize to you. My mistake.
> =

> Regards,
> =

> Andrzej Pietrasiewicz
> =

> =

> W dniu 23.09.2019 o=A015:53, Neil Armstrong pisze:
> >On 23/09/2019 14:20, Andrzej Pietrasiewicz wrote:
> >>From: Ezequiel Garcia <ezequiel@collabora.com>
> >>
> >>AFBC is a proprietary lossless image compression protocol and format.
> >>It helps reduce memory bandwidth of the graphics pipeline operations.
> >>This, in turn, improves power efficiency.
> >>
> >>Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >>[locking improvements]
> >>Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> >>[squashing the above, commit message and Rockchip AFBC modifier]
> >>Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> >>---
> >>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 27 ++++++
> >>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 94 ++++++++++++++++++++-
> >>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 12 +++
> >>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 18 ++++
> >>  include/uapi/drm/drm_fourcc.h               |  3 +
> >>  5 files changed, 151 insertions(+), 3 deletions(-)
> >>
> >
> >[...]
> >
> >>diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourc=
c.h
> >>index 3feeaa3f987a..ba6caf06c824 100644
> >>--- a/include/uapi/drm/drm_fourcc.h
> >>+++ b/include/uapi/drm/drm_fourcc.h
> >>@@ -742,6 +742,9 @@ extern "C" {
> >>   */
> >>  #define AFBC_FORMAT_MOD_BCH     (1ULL << 11)
> >>+#define AFBC_FORMAT_MOD_ROCKCHIP \
> >>+	(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)
> >
> >This define looks useless, what's Rockchip specific here ?
> >
Please reuse the existing AFBC modifiers.

Have a look at malidp_format_modifiers[] in which we have defined
the modifiers(for our driver) we are using.

In your case, it will be
DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16|AFBC_FORMAT_MOD_SP=
ARSE)

> >Neil
> >
> >>+
> >>  /*
> >>   * Allwinner tiled modifier
> >>   *
> >>
> >
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
