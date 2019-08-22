Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4B999DEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9srVYR6nNT7/+E9pOl2HRTyNeJSa87oTkXnJEqTVoRY=; b=sos5M/GdBs3xx7
	+nqlI373zb4Q5Ojaw1vhvTLgrPyRxV5AEGX34YAlJrm6bdsbOnaTY2zQeKQT07+83prDsXjHMwbG5
	dPQazi6qfwS9HZA5noepkICBPgDNPxMqVrpDDT6OpmmKI8gpbXkbsdNcC0rvq6g2pRm1UZkdEmdyd
	ooo/cl/c+L2YWqV9UllAx5qODlqgx4jzjm90xIBv1d3COE8N51Ccz0+cIyfmJOI1AAerw39kPobTQ
	/y0awOxdzcuMIn8trrhye9HtLnCiG3TFsNvYRk+Owi2HaPEd3ksd5js3cBIcrWuvl4mw8hAvaoJjA
	Q0cb3i+ObnqPfnN2l7Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rBM-0000re-A9; Thu, 22 Aug 2019 17:47:32 +0000
Received: from mail-eopbgr700067.outbound.protection.outlook.com
 ([40.107.70.67] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rB8-0000rC-Dc
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:47:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMsdEZGGUo5ZdRr5SUAM0O8BAq5vooIgRpF5emY6x9iHR7EBTqr3omxcB21FMuNuyaMWIWQPlHKpx31n2Pe2Z5t56fYxJPHbovkSDYBA0gOx6KowBxJ9k2qAKfgFfpDAsbTwnu9inF2zTMcmsHfjELEq6ZzKFGzHZO47lrq3+oV/2khO/2F12HsV0esTzt8bciNNXCYDkp73hzl6s1oS8SHcgBQ0nJ9SH4Yk/ZTLEwD6e3EfFXbHPs/za0XQVGHUWXeizbzoKpL/CMejkCWSXGjjshXDCjiKt27MsmnLjCZTOteGoX+KLpkg7hnPkQIfQONPdFUWBrWHkVxolWG8UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnSe1FjAEaFrTw9DipBiu4miPL9pi270EhJJdY0S+Mg=;
 b=gUDZbzoUeLispz2C4E7q2CT5lcEKePzktyHZOtZiCpCvIupkHPDF0k4yOq4CIaGYxcGiFPZ0I6kbxg07z8/XmOws5ZLWBYsmXLG2Li+8obt+RVZinuCnVf6xVrq0ZUXA6DcYW2+IaXbJA3vbOmnVVOru/QGC+wnWe2zsNNly0xkF5uqp8SwfNm8HbfJeIIHzkRUXmyj5BQbaeIoTdhFyYVvqEdpkdst5hbeagJ2/i9CcpInLdYKukZL/4l8nR2mG0w+wZUT045EESGacNMtLLCfM3W0N9v/YEC26geIVQzHok1wav64eCuT1PWDnNAB1snX3l8mHU4xo4mqkfdkxZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnSe1FjAEaFrTw9DipBiu4miPL9pi270EhJJdY0S+Mg=;
 b=bBGzLPbNaVBU38MMyxooD2cXgzyRJvzvyFq3ydTU6Z1+8A3xhBGuV8N5gCllzW4/rueKYkfW08Bl3yTeRJ2nxy5ba+IIirhpnBa5g6TkEHANjHkON/WswBoWqFM9sTXS6SU6c4bstqgvgxKt/jlb69eo/KEYlR8vgwl4MhQXwyY=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6789.namprd02.prod.outlook.com (20.180.17.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 17:47:15 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96%2]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:47:15 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Derek Kiernan
 <dkiernan@xilinx.com>
Subject: RE: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information
 leaks
Thread-Topic: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information
 leaks
Thread-Index: AQHVV+76IySGJCWDyUaqUkp57fbBeqcHcz0A
Date: Thu, 22 Aug 2019 17:47:15 +0000
Message-ID: <CH2PR02MB63599214D1FC937E256FCBC4CBA50@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <20190821070606.GA26957@mwanda>
In-Reply-To: <20190821070606.GA26957@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2c1b4d6-1523-4bc0-629b-08d72728c55f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6789; 
x-ms-traffictypediagnostic: CH2PR02MB6789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6789C461F6BD39F79B14A203CBA50@CH2PR02MB6789.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39840400004)(376002)(396003)(136003)(13464003)(189003)(199004)(2906002)(316002)(229853002)(6636002)(66476007)(76116006)(76176011)(66946007)(54906003)(305945005)(74316002)(478600001)(99286004)(110136005)(64756008)(66446008)(66556008)(55016002)(9686003)(6436002)(71200400001)(71190400001)(7736002)(7696005)(14444005)(3846002)(486006)(6116002)(66066001)(33656002)(53936002)(52536014)(5660300002)(14454004)(11346002)(446003)(53546011)(6246003)(8936002)(6506007)(81166006)(81156014)(26005)(8676002)(25786009)(186003)(102836004)(86362001)(4326008)(256004)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6789;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QNGLJxcarTz1b8iq3vS2CG3307r087GuDZ+9E6QbrOjGSpLiobL1wVUnz/UjfTiRt7GckO89z1mIPh6GCJYm9HPO6AcT2gdHfopWYRJaB2D01otN5u9sKZdBZKV0NbZd/oYESHBrL3kh8eNoUT3OnsPnkvBZ4i+jpN85ccBxx0Jyj6i0SB7M86bVxCF79czy+2aXbU3qCEiYwVau0e3uOV92tQtfhJSyzQVlAyP2Rv2w5rqfP8jfcGdaZCli+KUutPygrqVB8ovHQmvJ7Of8SQucpvJmU4f4eVDpcCaMDWvwWAyiV5s85HtjolS5yhmWRJ1JRHfcAY8pDq4vxntYpgBhlDFSbz1d/Sx83zLjkesFhG6NdeEb6/Bn0LVfl3UGpp1gSr05V6sbMrOBmF20jQcm5JAtI5yNm67dEwi9lNo=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2c1b4d6-1523-4bc0-629b-08d72728c55f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:47:15.8982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MSc6oXetkG+P6R1fVG+GeBl4YnNdUcju01zgYkLCNwChSYPv4xjjqx+mt4E/vJZavDT/+o0OeDSOlK8b+BEr1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_104718_464252_FD003809 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.67 listed in list.dnswl.org]
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
> Sent: Wednesday 21 August 2019 08:06
> To: Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic <draganc@xilinx.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information leaks
> 
> These structs have holes in them so we end up disclosing a few bytes of
> uninitialized stack data.
> 
> drivers/misc/xilinx_sdfec.c:305 xsdfec_get_status() warn: check that 'status' doesn't leak information (struct has a hole after 'activity')
> drivers/misc/xilinx_sdfec.c:449 xsdfec_get_turbo() warn: check that 'turbo_params' doesn't leak information (struct has a hole after
> 'scale')
> 
> We need to zero out the holes with memset().
> 
> Fixes: 6bd6a690c2e7 ("misc: xilinx_sdfec: Add stats & status ioctls")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/misc/xilinx_sdfec.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 912e939dec62..dc1b8b412712 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -295,6 +295,7 @@ static int xsdfec_get_status(struct xsdfec_dev *xsdfec, void __user *arg)
>  	struct xsdfec_status status;
>  	int err;
> 
> +	memset(&status, 0, sizeof(status));
>  	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
>  	status.state = xsdfec->state;
>  	xsdfec->state_updated = false;
> @@ -440,6 +441,7 @@ static int xsdfec_get_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
>  	if (xsdfec->config.code == XSDFEC_LDPC_CODE)
>  		return -EIO;
> 
> +	memset(&turbo_params, 0, sizeof(turbo_params));
>  	reg_value = xsdfec_regread(xsdfec, XSDFEC_TURBO_ADDR);
> 
>  	turbo_params.scale = (reg_value & XSDFEC_TURBO_SCALE_MASK) >>
> --
> 2.20.1

Reviewed-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Thanks,
Dragan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
