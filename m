Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD35160079
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 21:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Xs6dSyYhcX1k0pamQHJWAnrpMTxEgjBILmn9MmDhzk=; b=qpfEJuw0dxsdbd
	gSw9QskctPhD7SucHlSTQftnpf/Ae/8s05aTSPj+Vt/MJ+5sYLn5/Rl0bxKpm62M51f1IKn5AV0RK
	eVRsFRcZLlNmqSoHQi2TYkzImzm2KOA2jL4dN0O4mVRkryhHS9WZ01Ere9nCaUsVCZy4tG4jdjt7y
	lA5eaXmB8pnPJHeCfpDbLByVyxmoaXZaI8u6OlJUeX/hnUIr7F/JItf1L6OuMt1BvyfbrUW1O+AUa
	1OVx3CspnRjF7bHAx2+SNYFqlW4yNYdxZJJObdCLvRqgPrfqjUKjDWvUWGy4TCa42kqDoTys1tzPJ
	KeG6Dts0k64HXYYiY4VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j34QD-0007Cq-QV; Sat, 15 Feb 2020 20:52:17 +0000
Received: from mail-eopbgr760040.outbound.protection.outlook.com
 ([40.107.76.40] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j34Q0-0007AG-38
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 20:52:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aBMHCHHFoAVtW1Fsxg5lgKBnmUpbROjFPlsRm73Pee+cwvw1f80Wd1UHev7DQ5rTOT8C0Hv2xD3v3jQsJYl6sQ+CewsP+U90+uyQiC+sYFBCdqUlBYCxzCbBP7XqXV7L3pONZ60eiPTOfZTebFT56AJ92ZfZNuv95JwLFVWjCG1bEBerqWpWWpJ800g5MW5o/4usLZTmGS/kFRp/uYe3VSQnpBKPfEs8tQB/QX58v+Ay8qvygyAVwp37coPrWVS0YSrWGQL/Fff5MPk8rASO9IF8qy2caZUZDAbULwZNAgxzyYO4exD4/GCwV6BouP3tGzjpztIoQhsVuXIIZy2VBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HOBcsRHBuzI/ktdH5s1Q4+QOfZm1ltGLHf+UVoH6/RM=;
 b=hscJa/xtwKAiAxcXvsAG2YV6Pg0fZTzgJvnIvsxXRByqmy0lHhK/nf+nFQlmS/xWrk4Flnosi5po7zcZ5+E5Ld95vK3rMvWUhtMZ2IBXeQ1SreXqPNByf00qZWzrxJ2Kr7+tKIgZFYEOgg51cp7Ay2O8Yh9nzRX410YOkwOe7EWqcCIGbKrmyajxEPx+E/bAJp8SpvxbLbKn8zViUvbeSrnUHESi8ii2JW2bOxolRS0llJ6rT995CNn++7JY3rEa/9Eww57ep8Wz6k7g7pTDDCnPAskhWOTxpvtDT75B2MpFLw7FthUJ8YF9f8YmAsCuGE/M/Qh244tE4oXZfANYQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HOBcsRHBuzI/ktdH5s1Q4+QOfZm1ltGLHf+UVoH6/RM=;
 b=Z4zt3qfjXlsAYqUEvTMC2FCjPFzIkqiYPrttoft0NoFtdEge3pLFw6/t3zFZ+s6NORKn2YS3Mzc/8P0SpN9Me+jvgq58L3sR/w6JS9Et4+eohtQeiq0axcFEC80k9c/sI+lHoLkvDn/TYuI9osTwn3oE/aW0CcWo6gjCB8n8LW4=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.230.25) by
 CH2SPR01MB0020.namprd02.prod.outlook.com (20.180.11.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Sat, 15 Feb 2020 20:52:01 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::c9bd:b19d:704a:14df]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::c9bd:b19d:704a:14df%7]) with mapi id 15.20.2729.028; Sat, 15 Feb 2020
 20:52:01 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Sasha Levin <sashal@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH AUTOSEL 5.4 299/459] misc: xilinx_sdfec: fix
 xsdfec_poll()'s return type
Thread-Topic: [PATCH AUTOSEL 5.4 299/459] misc: xilinx_sdfec: fix
 xsdfec_poll()'s return type
Thread-Index: AQHV41D3T+CdT+Q7T0isFJicpaRRO6gcvNTA
Date: Sat, 15 Feb 2020 20:52:01 +0000
Message-ID: <CH2PR02MB635957528FFF97FBF8121E24CB140@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <20200214160149.11681-1-sashal@kernel.org>
 <20200214160149.11681-299-sashal@kernel.org>
In-Reply-To: <20200214160149.11681-299-sashal@kernel.org>
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
x-ms-office365-filtering-correlation-id: afe31b3b-54a5-42ad-39d4-08d7b258e7f0
x-ms-traffictypediagnostic: CH2SPR01MB0020:|CH2SPR01MB0020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2SPR01MB00204D8191A8344996AFC9ECCB140@CH2SPR01MB0020.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(366004)(376002)(199004)(189003)(6506007)(8936002)(52536014)(81166006)(8676002)(53546011)(81156014)(71200400001)(66556008)(7696005)(66946007)(66476007)(110136005)(54906003)(76116006)(66446008)(64756008)(26005)(316002)(55016002)(9686003)(966005)(2906002)(86362001)(478600001)(4326008)(5660300002)(33656002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2SPR01MB0020;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8HhTso0O2WqtxikDa2ILkZQ8W9TkvAMrCfvGYkl5yBGF1mSzWOBRYtQUdv+t4x/fWnBmX+qHetf1M5hoUxARGfsc3m2rMfbvH30JQfH1bPhjFQtwBgdKWdszU5VEH/jiY3TrQMYWaWiF8Q55KNeY09Njad38Kur8NL+7+7f3CBQSZUoy+DWE3QFwBCKLugSeI2VQUq9YAvXVMDhUV5LXnYAFbbIHrgQGhS8vI+wxXKAID4IGoH6BoKoZaAxI294L35NzBbHca3OjbwVyafzu106nyx/uiMFZcDIFawL/54f9/Ufq0ldzWPpw7UaILf2tIi6hCWALJDv03sSIhtQkjQRaeO1YVJzee0rGTifKXHm3CKHQwJVwfNHUodTgHBcZN7ms70Z35VhV4hCXe62VmV49KB19sKOMSfSG9nlekF809/AP4d8xo7oqmQt1xLj+ylhW9mdZ7UikdDFb86EHjH/arpMpsYPNTkpWf6qxDQOlFPFsUT+7Tt7RV201WYv+iX7w2tqjFlwagwxxQG8OaA==
x-ms-exchange-antispam-messagedata: 4rB5986mljYUuvuLxZ2iEgYq0vY7xjWWZ1q0ce46ud1IYFwr4QOYk5iLYRc3ll+9Yut51zlEC0WGgyVpivcWWVvwQ5F4hiI4bsuV5wIvHg/fOlRzXx8pw96W7aJhMmhsF5WYWqYxoKWFTDWNoq5RYQ==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afe31b3b-54a5-42ad-39d4-08d7b258e7f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 20:52:01.2851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TdChtI/Qpu8Bl/HPzYl4VO5x12sNBkwwJe9FzAIlOwbXTMrVR+L4JfXghMz+xY1NhbV4Kr3Tn7z6hnF7yQm6Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2SPR01MB0020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_125204_162091_AD51DB64 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.40 listed in list.dnswl.org]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Sasha Levin <sashal@kernel.org>
> Sent: Friday 14 February 2020 15:59
> To: linux-kernel@vger.kernel.org; stable@vger.kernel.org
> Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>; Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic
> <draganc@xilinx.com>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Sasha Levin <sashal@kernel.org>; linux-arm-
> kernel@lists.infradead.org
> Subject: [PATCH AUTOSEL 5.4 299/459] misc: xilinx_sdfec: fix xsdfec_poll()'s return type
> 
> From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> 
> [ Upstream commit fa4e7fc1386078edcfddd8848cb0374f4af74fe7 ]
> 
> xsdfec_poll() is defined as returning 'unsigned int' but the
> .poll method is declared as returning '__poll_t', a bitwise type.
> 
> Fix this by using the proper return type and using the EPOLL
> constants instead of the POLL ones, as required for __poll_t.
> 
> CC: Derek Kiernan <derek.kiernan@xilinx.com>
> CC: Dragan Cvetic <dragan.cvetic@xilinx.com>
> Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> Acked-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> Link: https://lore.kernel.org/r/20191209213655.57985-1-luc.vanoostenryck@gmail.com
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/misc/xilinx_sdfec.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 11835969e9828..48ba7e02bed72 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -1025,25 +1025,25 @@ static long xsdfec_dev_compat_ioctl(struct file *file, unsigned int cmd,
>  }
>  #endif
> 
> -static unsigned int xsdfec_poll(struct file *file, poll_table *wait)
> +static __poll_t xsdfec_poll(struct file *file, poll_table *wait)
>  {
> -	unsigned int mask = 0;
> +	__poll_t mask = 0;
>  	struct xsdfec_dev *xsdfec;
> 
>  	xsdfec = container_of(file->private_data, struct xsdfec_dev, miscdev);
> 
>  	if (!xsdfec)
> -		return POLLNVAL | POLLHUP;
> +		return EPOLLNVAL | EPOLLHUP;
> 
>  	poll_wait(file, &xsdfec->waitq, wait);
> 
>  	/* XSDFEC ISR detected an error */
>  	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
>  	if (xsdfec->state_updated)
> -		mask |= POLLIN | POLLPRI;
> +		mask |= EPOLLIN | EPOLLPRI;
> 
>  	if (xsdfec->stats_updated)
> -		mask |= POLLIN | POLLRDNORM;
> +		mask |= EPOLLIN | EPOLLRDNORM;
>  	spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);
> 
>  	return mask;
> --
> 2.20.1

Acked-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
