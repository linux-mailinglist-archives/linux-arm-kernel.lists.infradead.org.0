Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D49AF3395
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jm5dw3fYFndE5p2wB7g1MGCrGUfHItwSHVtWAJ/erRQ=; b=D6mwVe9SnkSQKk
	xrHFRs5T0o01dNhyy09PMHM+3JZM00SNF1Q8as1pb4xZn8d9FXwYldIiTh7jeCm4CLnyGwBFItoAe
	ZVBhKkjKwjjPdcA+r0pBU18y9nUkaZWdnUEJX+Yvz4spr05Nk3DTSfAohUGyaZrug1JqHfV6P74Rb
	1nB+UfH85/S1LzvSzl2POXapfaiVBVHQ8pfIYR7oIXcc/7R7WJdXi90gvBUeM2RDYzln8o7o0PXtA
	HrrQ/cqNYBvNNp9WAAsxvZm1qIG3oJYyrsYq7OC0xfyP8wyiLMD2G98m8/eA1N5ztg0ISlooOSAXn
	APwT/3GVvvu71tD6mF7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjtx-0006Ca-7X; Thu, 07 Nov 2019 15:40:49 +0000
Received: from mail-bl2nam02on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::622]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjtb-00061D-9v
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:40:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R+LckH3a0MtimrpLVKmXACugT2l9O+dM2hr9/XjaMEOV5dSPbmXiuYxnKdbs/6mhYiZ24Njhe/0Zpv7wVU1w632hzA5l9iEWargThMNk7U0zf8kGEKAMFhAsn+CKDUhZ8zdnEu4WB92XmnYNTTyO6A6PLXiGOwNDZq6PmRErR8K5QCxNS6hie/nD6KhjzQ0hMmn2hi38eT1dsta8SPEoq170HQHrX72Qqq+pv7nR7FbL/LlfyLTQoVVUmqYSSB3REWMkwDkmqbHSiIe9ejfACMi5Ac3cw2zyogGeCGGxN5Z1y2eGmkJHFkBsd75h8fwcJthUBATobNLXQm/ASi8XkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvni0J62Ve2Ge7pKRmAxe77Omz24CxDX6+9lN6xjcic=;
 b=KUSlhVAqHQw7iRmfNvCGaQDVpJQ8awnOXxPC1OJi3oq22u5cNW+ZrUgpNvIJe5nOgzi0R07eBl0LSxEejI/+fv5Y/BI/uPvV/4B8B8EZsILq7U4mRc0Jcpn0lMwIRWB8vI2HLzpsOpLg1XvRfs3S94LC4wNozpqLgYg7mK7+fektNbSrort38sD6Cg4s5oy0+ALlU1PVKXPpysQjqJf/Gs9qrNrzEP9qMvdQDIEvF9CJd7ZOzCQ0lNlr+z8acXBwUvHHLpNHwC82Uv6s4lJnxchjY5SuvSIQuB/uPJfIvyGStNV0KnioaFs6Ke8itQCrbyGTSwA3cLvSU8XSMPXGhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvni0J62Ve2Ge7pKRmAxe77Omz24CxDX6+9lN6xjcic=;
 b=B3pTU7cTn2FPXoY6Fg6UCxrYgLkNXItfVAcQqlvI7Vgk5rqOpIq1CPK45coBjDd/yt9M2GU4hXDMPjIRX9JRciL3YK0Bsmb7sJK0H52IpPEj+kcmp/AXMVirUK93jsT6MTWdD80soB8Q8K11lMUSzrDZeEbcGnfPiGyB3+Fh+FM=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.230.25) by
 CH2PR02MB6102.namprd02.prod.outlook.com (52.132.229.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 15:40:23 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a%7]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 15:40:23 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Markus Elfring <Markus.Elfring@web.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>, Derek
 Kiernan <dkiernan@xilinx.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH 1/2] misc: xilinx_sdfec: Use memdup_user() rather than
 duplicating its implementation
Thread-Topic: [PATCH 1/2] misc: xilinx_sdfec: Use memdup_user() rather than
 duplicating its implementation
Thread-Index: AQHVlAp4a7DAmwL3UEy4xr76jpF77qd/2r7A
Date: Thu, 7 Nov 2019 15:40:23 +0000
Message-ID: <CH2PR02MB6359C7594FC4969EBCF0301FCB780@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
 <f6f8f94b-295f-48f5-902e-3d6d4052d76b@web.de>
In-Reply-To: <f6f8f94b-295f-48f5-902e-3d6d4052d76b@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d1dc1cb4-56ad-4d55-ac23-08d76398cd9a
x-ms-traffictypediagnostic: CH2PR02MB6102:|CH2PR02MB6102:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB610296CBDC4F216403C93E78CB780@CH2PR02MB6102.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39860400002)(376002)(396003)(199004)(13464003)(51914003)(189003)(26005)(64756008)(186003)(446003)(81156014)(71190400001)(25786009)(6436002)(8936002)(6636002)(102836004)(11346002)(74316002)(486006)(86362001)(53546011)(7736002)(8676002)(33656002)(4326008)(6506007)(76176011)(66446008)(55016002)(66476007)(71200400001)(66946007)(76116006)(3846002)(66556008)(99286004)(81166006)(305945005)(6116002)(2906002)(52536014)(2501003)(5660300002)(6246003)(14454004)(54906003)(7696005)(229853002)(256004)(316002)(9686003)(476003)(478600001)(66066001)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6102;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +z5iXwzgmRxwPLC0Ytf7TN8v6AY1NfDxKFiC+DQItY2GQjarFtuqX/UV6g519r7YaOku+MSuVYlzzFSt8En7JC0sTfOok3JGO8xWUVwKLjBLyBPjqe9cTFp6t3quWIuibJ2e6pySbYWMWoVvT0Na2w4Ed7uOx0IxyFFY/uszVDqQV5gz+D85hZ3uSX6pPqC6beRmJvbt9DRJ67Lk7wxPD1UG64UZ6Z5ASgnT1omBsx2pkoHRnmvtlZDyHRZAp+E6DLILAamIaoB1jS7wpSH9wmDFqW6mksJCdY9kUL3swR5oRUg4+HljmOTiMMp8zFWzICE4okY4GWR7EiGVuwZM45c7yp/MoxJWGAzmzAEvQQ+WTwfnsHVQgU4+H4CB71q6wDHHnX4QF8OrNeSUP7T+xrtbIhmirD8t5aYC6nAZqV8XS1OXCJGSgSh+Voc/Sq0T
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1dc1cb4-56ad-4d55-ac23-08d76398cd9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 15:40:23.1329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wiC2p8j1VNTLkbXEGFCHp5/+iEsVAPY6w7orqxJ/y1cWnwbCIOf4vCEBbD4VZ5VGz/ObXMEOINZfmRaeuMEflw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_074027_366978_6BAB3794 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:622 listed in]
 [list.dnswl.org]
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Markus,

Thanks for the nice solution,
we are going to test this change and let you know about the result.

Regards
Dragan


> -----Original Message-----
> From: Markus Elfring [mailto:Markus.Elfring@web.de]
> Sent: Tuesday 5 November 2019 18:55
> To: linux-arm-kernel@lists.infradead.org; Arnd Bergmann <arnd@arndb.de>; Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic
> <draganc@xilinx.com>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>
> Cc: LKML <linux-kernel@vger.kernel.org>; kernel-janitors@vger.kernel.org
> Subject: [PATCH 1/2] misc: xilinx_sdfec: Use memdup_user() rather than duplicating its implementation
> 
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Tue, 5 Nov 2019 19:09:15 +0100
> 
> Reuse existing functionality from memdup_user() instead of keeping
> duplicate source code.
> 
> Generated by: scripts/coccinelle/api/memdup_user.cocci
> 
> Fixes: 20ec628e8007ec75c2f884e00004f39eab6289b5 ("misc: xilinx_sdfec: Add ability to configure LDPC")
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/misc/xilinx_sdfec.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 11835969e982..a622fcf4954a 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -649,14 +649,9 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
>  	struct xsdfec_ldpc_params *ldpc;
>  	int ret, n;
> 
> -	ldpc = kzalloc(sizeof(*ldpc), GFP_KERNEL);
> -	if (!ldpc)
> -		return -ENOMEM;
> -
> -	if (copy_from_user(ldpc, arg, sizeof(*ldpc))) {
> -		ret = -EFAULT;
> -		goto err_out;
> -	}
> +	ldpc = memdup_user(arg, sizeof(*ldpc));
> +	if (IS_ERR(ldpc))
> +		return PTR_ERR(ldpc);
> 
>  	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
>  		ret = -EIO;
> --
> 2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
