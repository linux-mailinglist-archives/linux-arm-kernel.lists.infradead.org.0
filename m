Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D8B1AEB11
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 11:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTq43gjQQ6lwxpcdwIufv84WqtaHG+bLTf1z/hqsDCE=; b=lUsgJ3Y3JG05Gm
	Q+qqQ5YzdhGRPeCsJXK8AjOlpQciQBGQPLcf9lQOtuj7uqNMhaS/fjTA8R/vmjKl6MgPTwWCt0goL
	j+VxWyORAKcSxInmbhblqLNWuPTjb4wzX1roFodnjqpGFc03iSKw8qzDmaW0khaW67hvtlwj3zKdu
	TnLfUaFabNYRzQbM6cFBNtbEYTLzC/esLWx6oMYpGbCEQKq0m011v9AEHrT2dSIbUHnlVFv8kVbgi
	fnjDOwNmR2XhgOw02Qrf+pFPNXlnPQ9AEQXF7CKuFku+v5u0S/Fmaxcix2dp/DPNj7ImoODrSTM+R
	DK6RAUU/EjguqHVpWbIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPjMx-0003DS-O3; Sat, 18 Apr 2020 09:02:35 +0000
Received: from mail-eopbgr40053.outbound.protection.outlook.com ([40.107.4.53]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPjMp-0003Bb-UK
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 09:02:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=If/zJo6UdheJ6cYtOXQ2eLTJlLIqDZhTl1/GviENexK0NwowtQLXxUEVX2vrjONE4plM5hpMWoO3nsb2+ILF6kbgWcBYhdyviGwwnxTAyNavYm6k+QTltLeegfutWV9xH7MLEGJQ96Dur9DYqJ2JGOEhnk2DhgBDJRvDkOYZHBYRL22orjiwxw0TQjrsU8DYuJi03/SSP+b8qlzZPVf7KmZ5bR8KN09IpEwG5Gt6gJNf3YzrtY7uSWmSf6e/lI2sLSYiAHiR9d5YBuQxH2YZORcGI+dje8YtvCo2CuJ/9rgQxEw/LMhyVm7AGeKcySAqvO25tZUGlDUS0uH1M+LswA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ke5TtkjR7+ws8NJuYK4OHcurdD4vd/ehIDhN3HpmK+E=;
 b=LBSrDI1y+pWylafNiYuybyhJLzThVKcWsZt72w9kchM2aJkQm/ut+8obRv3+PGOnEaaQS0t1/OjjpyZnUb3eBcPrIcPEuZpGgbhe2CkHr4tVMjQCTo6a0vbvWGGhLJ2zQfpmJMrmdMjHIDp3RlTpdqp8j6lKy66nXdUn6RT3RascrA/mOfXABxxgQHIFjGo5YMTQ+k5y8d/NHt/1MHVJmnqjOdWYFTYgjPaGb3Cc271286Uh22A5OqlRGYYB2BMbfp49Bc3ezoR7d6otPY1D6s2NTmtNapwvcOdGtGQHCMb2q3l6OjrPUJDam0siv8unsDhO0eu1oMMj/Cuv1iMeXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ke5TtkjR7+ws8NJuYK4OHcurdD4vd/ehIDhN3HpmK+E=;
 b=c2wH4hnKO2JH6ltmr9BTCNZKUX5NdSzK7Af7z2r5mrbxDNcbjhQtZ1Oi4S3Raa/30BPvZZKChrvAGE8bgAtc+MdeKUYD0pz9uHmrByykQSeYT6879BJ5rRwipgh6jv4NufoB9uNVyl5bqKvKzOMI2q+4YSIHf4Y1moBwL6m5rug=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2872.eurprd04.prod.outlook.com (2603:10a6:4:98::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Sat, 18 Apr
 2020 09:02:17 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 09:02:17 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
Thread-Topic: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
Thread-Index: AQHWFKOGAuFzlBxH1EG6G0sVkyxA0qh+lrdQ
Date: Sat, 18 Apr 2020 09:02:17 +0000
Message-ID: <DB6PR0402MB27606D9E2721F98EA2397C6088D60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20200417103232.6896-1-sudeep.holla@arm.com>
In-Reply-To: <20200417103232.6896-1-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [180.107.26.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6d4a627d-6525-45ac-e3f1-08d7e377320f
x-ms-traffictypediagnostic: DB6PR0402MB2872:
x-microsoft-antispam-prvs: <DB6PR0402MB287206BA6A4F54B8F54E6D9788D60@DB6PR0402MB2872.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(316002)(2906002)(8936002)(8676002)(110136005)(71200400001)(81156014)(478600001)(7696005)(52536014)(33656002)(44832011)(64756008)(186003)(26005)(4744005)(9686003)(55016002)(86362001)(66556008)(4326008)(76116006)(66476007)(6506007)(66946007)(66446008)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2i5cI7xnFzr1dPzIS1by1TXhSXrorlg7mbKZblyFbfsQwhsmicGTxP1bAeTyw8MvL69haHpcuwkNr59gJUBHAjd+GPfRDXVhEQbpNdVbDI6ymVW+smkJ7IIYjcgj8DfYiEoamV5UReXQHHAMnPS67GiLZIdUb3cSA7zTSeVvrNvl9y4i28/H4T6OzBiraNx0KHxYUuYPRq+TYFywmZuwPuP7+u9l+B3egj8c4Qq8RrQhvXD3PD5rYsi8UEZ3Nr3xzV1rhHmtEHjTkOIP5H8/bWQu3y/x4WFkbn87PY6AgR/y+qWIUn4If5ILPPGFoLVl2Jl4RCXbu4LLKvFSS03ST+FzbE87Syhq9kemIYDlAZaTuhFPLOAz8mV+OKBez6r0vDv3btn6iA9fx6ZYf+rK/pec47PQRug5ljVhsowyjimkVvHNK78+e7QcznNpaD25
x-ms-exchange-antispam-messagedata: U3TscE+BCI6QsEfantev0NLmgYPZtQ7UlCf65sd06fdTScVec2PJIDxot1Zt3VzMH8p6vinV8/uWHj5aS2IMRP5Q0z0ey7HN7h4s/JcV/26De8ZkRfllyOoB4hLVWM9pbrJ7cNIi9HMXh8Wni92BZA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4a627d-6525-45ac-e3f1-08d7e377320f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 09:02:17.5930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 90g4Z4I0dOXMVojTq4ya3wf4k+QHA3AGN1SEk10DIyDD82+36kJ9d89LBqKDPKSP80Cdux5DkG30tpmURrJX5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_020228_081449_929E4EFD 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Etienne Carriere <etienne.carriere@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] firmware: arm_scmi: Fix return error code in
> smc_send_message
> 
> SMCCC can return one of the 2 return error code here: NOT_SUPPORTED(-1)
> and INVALID_PARAMETER(-3). Map them to appropriate Linux error codes
> namely -EOPNOTSUPP and -EINVAL respectively. -EINVAL is also returned for
> any other return values.
> 
> Cc: Peng Fan <peng.fan@nxp.com>
> Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
