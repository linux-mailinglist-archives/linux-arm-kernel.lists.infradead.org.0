Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4E4F3AD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 22:58:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTYmgZxlNm6UJmuO0isHWJ7NNGI4lL5cuHZDFCXZRmM=; b=q05CfoYdK0XsQ6
	xf/zh9RpGI87rbMrQmaXWrqhnFmvcx3c06YHU/oSby3LJLAP+aPyPeioST1BNLb6BjrK1nL0bcg4n
	rSLGHI/4jCw9liWHPuygGApZxqY9s5O8UwyFQspPCLVk/KCcSFjyJuhMhQInQFQFwjY2KVUN02Cp9
	QDoRQapoPNvfFbidhy2doBnVOcZ2gcLdeLig0LGOsAn8CbjmFi50viZdW1UbJBqTNPbGr1BOqNH1D
	hcABCTusduL63utPv/rX5lokD5Q0/2TcvBASh7d/ANpZkdkFVYr4RL8Zh+qfVIUbFpWRYUiyKWGCy
	NGudOijGLCY/W7l5LFGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpnA-0003PA-TG; Thu, 07 Nov 2019 21:58:12 +0000
Received: from mail-eopbgr700069.outbound.protection.outlook.com
 ([40.107.70.69] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpn3-0003OH-6A
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 21:58:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ii+8VJvjQYXHQoxUdOcxPu4Jv/08JhDUM2KMxqSozLCiDsj9OH+QjsgRw5Lbx4W7XnXIO86HjYVRlTKFpF4/aYTG5jtOd68I0e0grPrSolXrMA3RYGMWvfYGW4JZNZu106D+G3/nVYqnYa00ECBF2ynhX9CRgxdMulM3rg1anTm0a7N92MJEbr6EcgYklfE2Vv9rTY9613hbSs3W5FuHIa4kSnEtXUfsOANqIFHTngRRwZttah354joah0OYoaJP9MFTeiYaVJ/JiSTyv+oUOVlxxVX5v/NPSUokPHR68FFkEDnZ3GvFF1diRMNSxXfuDCggguFQ/RJ17cJ+D4ZscA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mR4aUAj2MR9wMMhCXUbzQUWOHggyLPMx1Ptxh2Tl5Bg=;
 b=HJ8MU5a8Yzeoqpa28RRCQkGxhz+TKxJbUaor23w8IHreXLg+qqOdG+Kmb6vpfzuPywoW8abTvB7X33xUqOw9brYOyxxm5e39stN5ZEma19ju8I2ELRuTDvkWCvCmbiO1xpSu57OnbcPAUhyQ9HDpYijc+9/6Alvt1ydwXK1c/QPlkUVJ3voaLopK9nZzLyi5vTqKwiyu7GVS+DfqR3FJgWZkeI/imBRCzS7PbZRcDdBd7S9TJZegDdc6Vxr91eBO4pDp0zjnJWiAcCCEys4RfkXBDH6yioCR0jmaagCLW9xnBJWRT9RLMoh7VQXa62sTUQy6jUyBs7XLgGymtF4W+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mR4aUAj2MR9wMMhCXUbzQUWOHggyLPMx1Ptxh2Tl5Bg=;
 b=P31P19oX4nlKjUU6OKZTscSBxCQoAybyNzVy3ZNNqui+vaQVinQ3mzFjnJiW0YU4slmMlS+lSTJsYNNuSCGhGnkfLZDBw2p/IztSnaV+kJiXKpT66eDK780oBkEydpOzdn0rZT4p+5qd2iUZwx7qSIFnbUUgwt+DT7NYrhA43rY=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.230.25) by
 CH2PR02MB6598.namprd02.prod.outlook.com (20.180.6.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Thu, 7 Nov 2019 21:58:02 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a%7]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 21:58:01 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Markus Elfring <Markus.Elfring@web.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>, Derek
 Kiernan <dkiernan@xilinx.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH 2/2] misc: xilinx_sdfec: Combine three condition checks
 into one statement in xsdfec_add_ldpc()
Thread-Topic: [PATCH 2/2] misc: xilinx_sdfec: Combine three condition checks
 into one statement in xsdfec_add_ldpc()
Thread-Index: AQHVlAq/6xOFapUQ4keqOaNDjO/0TaeAQ5tA
Date: Thu, 7 Nov 2019 21:58:01 +0000
Message-ID: <CH2PR02MB63591F1841AC0E54656BDB92CB780@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
 <b927be91-a380-1bba-2b10-f0ca49c477b5@web.de>
In-Reply-To: <b927be91-a380-1bba-2b10-f0ca49c477b5@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [109.255.167.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0c6d33bf-0e67-4eff-3b7b-08d763cd8f4d
x-ms-traffictypediagnostic: CH2PR02MB6598:|CH2PR02MB6598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB659808905FBF185B25E74335CB780@CH2PR02MB6598.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(13464003)(199004)(189003)(6246003)(71200400001)(52536014)(4326008)(66066001)(8936002)(86362001)(5660300002)(6116002)(81166006)(2501003)(8676002)(66446008)(66476007)(229853002)(76116006)(110136005)(305945005)(14454004)(54906003)(3846002)(71190400001)(66946007)(316002)(64756008)(55016002)(446003)(6436002)(476003)(66556008)(6636002)(14444005)(11346002)(55236004)(486006)(99286004)(6506007)(186003)(33656002)(53546011)(74316002)(7696005)(26005)(7736002)(478600001)(9686003)(81156014)(256004)(2906002)(76176011)(102836004)(25786009)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6598;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aRzaFgZseBJHuxV+ROBfqFCsd3iP2ydwnx7eYn5IXNZnBULHZWytu/Kz6lGzfjnMZqlR9OseSDeLUrDTmAgF9nc78I0Memes7T39TRdTDpJ+vHLEeAUl8Z0/GxsS5SGoG9Edx8scXyVJHXg0WKXaYRpfkzhMCZldsLQQWeyFoAFpgbLxyEXPf5GZsZuPp7Qk1+Wi5WGh/lDZr5vBeNmRhhytp8oNSZ9borWe8izFnzEAIw/zjVa0pMBrPHLphtxeezmOeJB7m/twNjDg3Mveeav8uU1wfeUE2PQYuf/KnvMRoXWmBFKn8BcTcpTS2sP54Voosu2Mwz98nf+z5HhW+iuWp+c8NxuJgtqazGm8OaY1ql6x5+dc0LsWANxCC8ZxwCT3sma0GQ4k2oJDcA3/Wir6K7yqdytMtwGOuMTF1oCcpmZMgZhpiUQ9ga0japhq
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6d33bf-0e67-4eff-3b7b-08d763cd8f4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 21:58:01.8334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N1jOfOsqlIATZp3H0kTc3OBXBZK3wHXF4qRpkl+1lVSs/nTh1qRl9IwBvLwom+DQVmnQMYbM6jjhzhG+ANSlsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_135805_230192_C022AB1A 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.69 listed in list.dnswl.org]
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



> -----Original Message-----
> From: Markus Elfring [mailto:Markus.Elfring@web.de]
> Sent: Tuesday 5 November 2019 18:56
> To: linux-arm-kernel@lists.infradead.org; Arnd Bergmann <arnd@arndb.de>; Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic
> <draganc@xilinx.com>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>
> Cc: LKML <linux-kernel@vger.kernel.org>; kernel-janitors@vger.kernel.org
> Subject: [PATCH 2/2] misc: xilinx_sdfec: Combine three condition checks into one statement in xsdfec_add_ldpc()
> 
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Tue, 5 Nov 2019 19:32:25 +0100
> 
> The same return code was set after three condition checks.
> Thus use a single statement instead.
> 
> Fixes: 20ec628e8007ec75c2f884e00004f39eab6289b5 ("misc: xilinx_sdfec: Add ability to configure LDPC")
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/misc/xilinx_sdfec.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index a622fcf4954a..322d5c6e6d12 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -653,18 +653,10 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
>  	if (IS_ERR(ldpc))
>  		return PTR_ERR(ldpc);
> 
> -	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
> -		ret = -EIO;
> -		goto err_out;
> -	}
> -
> -	/* Verify Device has not started */
> -	if (xsdfec->state == XSDFEC_STARTED) {
> -		ret = -EIO;
> -		goto err_out;
> -	}
> -
> -	if (xsdfec->config.code_wr_protect) {
> +	if (xsdfec->config.code == XSDFEC_TURBO_CODE ||
> +	    /* Verify device has not started */
> +	    xsdfec->state == XSDFEC_STARTED ||
> +	    xsdfec->config.code_wr_protect) {
>  		ret = -EIO;
>  		goto err_out;
>  	}
> --
> 2.24.0

Acked-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
