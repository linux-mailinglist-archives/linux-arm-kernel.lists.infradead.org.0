Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A288D99E13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ixepkmxSbEDsVuCb7mwewv3jjQJjRlOGfvSEehPMLs=; b=TRr93J6+tkpLBQ
	EqEXZuTNp7V20+IOxHpIig5ee7a6UNwMTHhykKofC3m3DmW9JNGkdPhUOk1RmRhgM/htQ4P2VcADs
	AYTBatPMnliZZYsrx/v2RqorOcHRz7zLgj8gsJdgKWbzHIGb6rc04px/2rMOU0EvlC0eXiiyAMu+g
	AfGnUUjfq4hjP8I5zUIKnnbKvn0RWTKzMjbGJcd3W3kclIQEO7b3LNnXqStX1ReLoGGaswZxphBV1
	X0OJnUKug8E2VR3u/PhA5sntJbiyb0TT3wt5Cy56Alu0StxKAq/0WUpDrIAW07Hr4Z5OuIssVEwyJ
	eTaE76SS90GNsdKfp7gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rBk-00017T-Eu; Thu, 22 Aug 2019 17:47:56 +0000
Received: from mail-cys01nam02on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::60b]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rBW-00016X-6n
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:47:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fX9fl2r4wlhsMbem5DOrZM/LOYqCxOilkGZDUxTKi+wlHiWksTkMb+IykJ9GJcmH4R5vHBiSNNTdKQteYBJM74IUoxPkthVsJRDIDlAGKK3twLg29Y6xQ0CMcmlBL0ycFwIBFWG5GccrEGJM5wiey0URzl60SZbQuLtTer75fzdauWp/BDf13SP+GihhGjYXxZ/a6tHF6COMfjx2pABZVUY8L0eGnkbub2I+nfFBdNMrHrYrhKlMAzUaTyepgrc5uw1wg22hZqph5Q/kaCaQxUvwLf1VhglbfLltHkW1Ot1QoM/DmLe4chLWlCe/FVhdGsChSckjGko3h1t6IntCow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqDa3pIwIiqDvvxtt27nz9xXjLuh4u4Tolb+kQ3PrU0=;
 b=iqqNP9oqKrQuIINeo6YBPteo/Gq9HnR0rU41C0kiDod1U/pJ9kZcP8CAF1fxw7IIDtbZTbyQb+3yLNanfrV3/Ct+OdNDgbvsK39O4auT/SaRayEC0GxpowTV+pGTp8GIHG7loO46jvaHi6/0DGgHcjJb70RzaTxxvTfD/Uiwi0hY+PijvPjzSFeZKI2vuDticON6xpQCL0qKNZZxSGdR0i9AV2lnvww45jsyVXqlT1df4b+LgdF7RATzOMJ7NVQ3iPCSBNVeIK/HyFWYSiLdHY6qVSgPPPfE0mGRDxn+lb7DQY+B//mDhrI/uBMen2Lpz9/oTb3/t9P6qDKc/PSo6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqDa3pIwIiqDvvxtt27nz9xXjLuh4u4Tolb+kQ3PrU0=;
 b=gDYZ9KTkAOk87dYgOxIRA/QyP7nmXzvocb5LT1sgpmt7p4MiXdVxhfq05FPC11id/L7Yz0Yoy9MxceAr5b6siwVByLHEvWpH9Bi7HaWerMnlSZkf3abhxz+sN4lZMMkm1gSF0zHkChBc2ZtMlwDUbQWh0JGDkdFFM7tX0IVZY1o=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6789.namprd02.prod.outlook.com (20.180.17.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 17:47:40 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96%2]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:47:40 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Derek Kiernan
 <dkiernan@xilinx.com>
Subject: RE: [PATCH 2/4] misc: xilinx_sdfec: Return -EFAULT if
 copy_from_user() fails
Thread-Topic: [PATCH 2/4] misc: xilinx_sdfec: Return -EFAULT if
 copy_from_user() fails
Thread-Index: AQHVV+8TkOGZsbP3SkqxFCOXwmgcjqcHc2uw
Date: Thu, 22 Aug 2019 17:47:40 +0000
Message-ID: <CH2PR02MB63593847840988DBE32C8D65CBA50@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <20190821070606.GA26957@mwanda> <20190821070702.GB26957@mwanda>
In-Reply-To: <20190821070702.GB26957@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4580992c-29b0-4533-586d-08d72728d3f1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6789; 
x-ms-traffictypediagnostic: CH2PR02MB6789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6789AFAFFA59CFC111C0B867CBA50@CH2PR02MB6789.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(39840400004)(346002)(366004)(199004)(189003)(13464003)(5660300002)(14454004)(53936002)(52536014)(11346002)(446003)(486006)(6116002)(3846002)(33656002)(66066001)(476003)(256004)(8936002)(6246003)(6506007)(53546011)(26005)(81156014)(81166006)(8676002)(86362001)(4326008)(25786009)(186003)(102836004)(66946007)(66476007)(6636002)(76116006)(76176011)(478600001)(74316002)(305945005)(316002)(2906002)(229853002)(54906003)(6436002)(9686003)(55016002)(7696005)(7736002)(71190400001)(71200400001)(64756008)(66446008)(99286004)(110136005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6789;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h53mQyTeQJm6b6NQHRq3mYWy4k8YoA325JxFdlvTZhL7WawSwBT4/YBefKQ/YPQFtO1pNdzro0vpc6u467tQXpExvxpT9gZGaS1tbd58OjiykMFddxvSLEbni8d+n9owSzM+wpi/PklYTLrRNedoEBMt+cxOj8fX1VMx4vAfBL0phyyp6yl9YdQ7pBjlz/dhtBVO6sJaPsQt6UbN+fRKepoxKn7HWmAqYoF0JcMmR00s7hff343rTW/N0q0vNLNIa3GgX4HHcRY3DPIsTnay3LYPZnHFliLKmApvWQkxi1gXfL4eozwKJFkau80Et2KzjQuzKRvTrLgUDs62ktPDMo43CDKxgh1vnwWJNU9RTGJ6KFAb0RilA/8hVG77eNwLt2B2ySAlb2PqVtLV1d+aZYqJtAUI5h9DZaaJdiDitrg=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4580992c-29b0-4533-586d-08d72728d3f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:47:40.3399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nmf6MiNZEULTLlkFWvBetcdWtaHP4+U1CS1TgV3H4QUVGXB8qAgOEa1R0nGZ2AeLBPDnglCd3tjRLr9lmf534A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_104742_247026_E51FFDCA 
X-CRM114-Status: GOOD (  15.61  )
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
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

> -----Original Message-----
> From: Dan Carpenter [mailto:dan.carpenter@oracle.com]
> Sent: Wednesday 21 August 2019 08:07
> To: Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic <draganc@xilinx.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 2/4] misc: xilinx_sdfec: Return -EFAULT if copy_from_user() fails
> 
> The copy_from_user() funciton returns the number of bytes remaining to
> be copied but we want to return -EFAULT to the user.
> 
> Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/misc/xilinx_sdfec.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index dc1b8b412712..813b82c59360 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -651,9 +651,10 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
>  	if (!ldpc)
>  		return -ENOMEM;
> 
> -	ret = copy_from_user(ldpc, arg, sizeof(*ldpc));
> -	if (ret)
> +	if (copy_from_user(ldpc, arg, sizeof(*ldpc))) {
> +		ret = -EFAULT;
>  		goto err_out;
> +	}
> 
>  	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
>  		ret = -EIO;
> --
> 2.20.1

Reviewed-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Thanks,
Dragan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
