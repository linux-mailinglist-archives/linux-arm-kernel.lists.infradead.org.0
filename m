Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 157A3F6BC3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 23:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y33bhbvcij4WTZya/zNFIC40xMj0hcc7VWNVNZifTtk=; b=FaYYFGrw9c8dM6
	3+9Jy5pK0NwnSNqXzQsXjYsJN44iDUdChZNcuPBByoOJcrerkGJKqyYFLBf/yL38Trkq35mN+WLBB
	G6NIeHBQaQLvNEnHIRFMWuldkcJnW5lLX8xx7VwT5mk2hEmk37xm4zTiIlg+gtNAP7DcfcT8fST+q
	ozZBLklpip9Z5fsM9AHnjTs/ddFR4On3HTP8zcxbeGnhXEadxAWpkYvrlZUqijcsgZkW7LklVC6xc
	XW+wyLkuhrxddhP4+E5VEdSaJvfTzrxhPpRdpjLqvW2+AMEectvOGM199R/I7MJxpGqWPGl6u0ANK
	xtkhTrCTp35jhD7SVcUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTvXM-0003oM-OE; Sun, 10 Nov 2019 22:18:24 +0000
Received: from mail-eopbgr820057.outbound.protection.outlook.com
 ([40.107.82.57] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTvXC-0003no-CJ
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 22:18:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g84egq9xvLePxmRJ7DFPyOPd2VKHu5ws0CpgjE64QnnKHF+imA9ac5ys/uLfsWe46LqzAJoTLcT5xzbQNC+uX8agLmFl3RXzOsCIAO3kBTPnKl3jHzwvxKB4dyUKbt143YbOoPGDx9uhlZZkYvAzu81JNEoDruNIi5WXtNEmXyG8oOnwSjumhqGbIb+Im4xbGNUgHBIJndvGaFFmiZ6veSyMcymT8Iwni6rYXpUi+aYnAEfcDOLrP3cVbRTfQJTZdlbncZhkROCaraiz3DsJXHS0tjmrY7UuG3jwC+Rgj+2i+f/KMxzyBuAIikm4TyFeaVBPqj5N7qC+GohpDuYCeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjyNqcgjxhJEzaKVJmgi+1lMozkHfc57jW2bfabBHlk=;
 b=R77lC5q7zCOZzbjyBy35oZwXlJOboF+SD99MAx14VILsGvI2rUebm22B5IksFazKVTl+rm4kAzPU8rx4j4+Pck0MDiO3iEB1VsjYNsMG3lMY0hNMpaZYrrd6p6qpvd6uPjYRbiD5Ijel9FDs1sWjDfbA5RQMVmbIyQdmBN5x+sjp0z6NoDnyAQUN15vTDubBiZBCnFqQB/4l6MSySjeoOFFQ4+TMY/CyjlZcGaeF/f9T0iNrwem9+muKiF4JxCL5lQKu3uv+ZPhIKsEH7e5ZwCi4a6tWlw7UDN1NaqWchTATczgZBoOS0UvHqn2GTiGOUHI8h1x2BFWxLNQeEBFyFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjyNqcgjxhJEzaKVJmgi+1lMozkHfc57jW2bfabBHlk=;
 b=rxj5zxQg8baYozaGy6JpcbBDeDYfOlCGuFjVa1A9RyL/FFfN/4eRtNZIIH2FS90pmC8vauvLksbOpHQrZRFnn7Q2CvzGTCMFUybbDhg5JUMuH8Eu4JO8b8RaR5SLfIuU8A+FuZKqwcxLAWBPHUB8pfH7nzWv5z1Tfiva5bzS8kg=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.230.25) by
 CH2PR02MB6406.namprd02.prod.outlook.com (10.255.156.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Sun, 10 Nov 2019 22:18:10 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a%7]) with mapi id 15.20.2430.023; Sun, 10 Nov 2019
 22:18:10 +0000
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
Thread-Index: AQHVlAp4a7DAmwL3UEy4xr76jpF77qeFAR/w
Date: Sun, 10 Nov 2019 22:18:10 +0000
Message-ID: <CH2PR02MB63595AA5F7192DA2186EAC5CCB750@CH2PR02MB6359.namprd02.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: fea71f34-3e97-4109-eb58-08d7662bdedf
x-ms-traffictypediagnostic: CH2PR02MB6406:|CH2PR02MB6406:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6406A024160037452DC4B366CB750@CH2PR02MB6406.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:343;
x-forefront-prvs: 02176E2458
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(136003)(39850400004)(396003)(13464003)(189003)(199004)(71190400001)(6506007)(71200400001)(486006)(76176011)(102836004)(2906002)(99286004)(53546011)(7736002)(2501003)(446003)(476003)(26005)(33656002)(25786009)(74316002)(66066001)(305945005)(4326008)(86362001)(6436002)(6116002)(3846002)(11346002)(66476007)(66556008)(64756008)(229853002)(14454004)(478600001)(186003)(9686003)(8936002)(66446008)(316002)(8676002)(81156014)(81166006)(55016002)(256004)(5660300002)(66946007)(76116006)(52536014)(110136005)(54906003)(6246003)(6636002)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6406;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ukRpOZmTPU5Jfm28PgDdr/KvBnw1R6GibydZPO4Xx4VQeos73gGKrgV61CXZycG/5lZyT8ZmpfFFI+GAV9WM7yCNRk4UJLwqj2Mye4smLywPfvy760CL7NEY1PdwVA06BGZ9RVHkeS9oj0a7s+LXJnJI0PSMBOJW+V6tAQ7jV/EevROEBGSkQ1m0Iu4RazXa9YoYSaZLUmuuL/9rQDB6T7fZm4C15gtUVwe3UU2X3sN1IYAEnKcbjil1EcqFKt0HWVVesV9MTIKHvKKp9C5Nhs+xeNpaDtBjUauwGxPjcIiiae0v9Z47r3lxuRSFqIHEPmsBGh2F4VRJ57VYaNGKtLJv9uu/X51Npj7a8pqAVDOku4vKUAR5EL+lFFtcnnNQIyScY72vN/h/8sbXizcNSv3D/wb/Rdwewbfn+0IdfsgkEXRawymkIz0P4pTRI5WF
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fea71f34-3e97-4109-eb58-08d7662bdedf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2019 22:18:10.3648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UOKMBiAlv/0yBuC+QF9QyZJcAF2/0IdmIY8mI3QPsTNSAo826RwPXrf81j16Si8bGfy8jOSjMNzHAjxX5R9s7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6406
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_141816_022771_F1D68478 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,


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

Acked-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

> 
>  	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
>  		ret = -EIO;
> --
> 2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
