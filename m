Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8820F34A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCzqr5Ji6FLraBvWu+3TnHih9maQddZaLvHHAi7w0x0=; b=JtMDL30oatNEm1
	pxjukhu3SB9pp1btCxECdwqehkR6JpjBW7dLMVOTyTkSNZVL1lk2KLbAPMmAc2IbCdeJp0t2iHxCP
	sXPDoS7sz5RccVwPAn8j2Y8MMhk3hYy4tWfOLiBV8gXHuHyjSsx/GbrrTG7njvoUfEfUrJ3RsHJ+J
	BAp7qD0NiJyDu+6nng0YXKEhtt7e4Pzme2g0nc4LBCimbrD32nq5RVHoLBaeBrRk+U7aRD6dxj7ip
	MiRknDUBVDWVqh7siccUexEixZ7MrVJcpPdW9YtMxj5hTwOs955N/WYaLRvXsLxw/tykFiwMRC0/o
	qpBdJNw+PwigKvTc4tFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkgK-0000L7-I9; Thu, 07 Nov 2019 16:30:48 +0000
Received: from mail-eopbgr730087.outbound.protection.outlook.com
 ([40.107.73.87] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkgC-0000AF-II
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:30:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ALkXvKk82UeIUkQi26Euzcz1OF+aHIATwg/RE7YgO1PHiKDVf26JyNkQ10IlRaP9alTGRiFUVFj7orm2N9WDBOLcP/36YP5BiI7Iu8IqQvgb4p2PPP11+xsHMby0vPMn9rHo3OfrFM3Rzaxp+oz7d6g3VZ+oYEAaPAKL5TjvkaUAziU0tKuYrCGrTc7VUuGuiZ9gQAt9AFAlCF+Q4irpUWY1dJiaYjLGvGhROpZS8X2NveMrOIQONFKf1kz9Cy+rakufWJyQRv7iHWLNKtCmPg+tNkxxBOSU17wOh3FjZOrxeN6+15HWhFGus95H8TZ563LSzYeTSeNsl3WJ5D90cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2J05OH90Y+8n8UuYvFPLMZipv1l+MlZLwCH4uk1uuw=;
 b=EwZeWiWdq6HK7SRzwZkO+yCar+uNaduPBiMTOV614b3wmzTC6at/WJ8d/P72XIqZSPRc6ndU21vjqvIZ1RknOOdkG15/zi49dQ+UcEr2AxuqywB5A4b8hDUe4RVWTZu+Uagh8WZSygT1DwXyZlph5Mk1rgwEewmj+4SHXvl7wo28J4vkVXOwaLI+Vlv7w5qCiPRdWayPX5SEvXTde+OsQWjaYFWsRBdUQJtlWEuRjoq93YNk4AKzy/fMJa0yI2R2s23YJ3D+3jckCqBUt71XelFlCvvwk1q/ZDXlBNcAw3HphrvXEu3I+PsgCbbHMVQzWYEPeK8ANMUOZNvsvQQEpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n2J05OH90Y+8n8UuYvFPLMZipv1l+MlZLwCH4uk1uuw=;
 b=rFCnVZ7u5kxX9VF7KQdHa8O0yG4kcAww+YO43f1hb+tW+sJCeNKsEQEPOFDI80Ibbar7FkqkZyC1/nQMG0pJA9pGJQcpxw/zRIZzOhdYDplo+Yx+3lXbSkcEfEWoesBNjbu0xSuGBorWOrwXcvoXi0Lo0cYSclGKnydltvntuvQ=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.230.25) by
 CH2PR02MB6230.namprd02.prod.outlook.com (52.132.228.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 16:30:37 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::e81d:489c:2bd7:918a%7]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 16:30:36 +0000
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
Thread-Index: AQHVlAq/6xOFapUQ4keqOaNDjO/0Tad/6O5w
Date: Thu, 7 Nov 2019 16:30:36 +0000
Message-ID: <CH2PR02MB635990244270C49D0716FB43CB780@CH2PR02MB6359.namprd02.prod.outlook.com>
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
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3a6a9cf4-9fce-420b-e27c-08d7639fd1f3
x-ms-traffictypediagnostic: CH2PR02MB6230:|CH2PR02MB6230:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB623014A9478B3FE92F748C78CB780@CH2PR02MB6230.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(13464003)(199004)(189003)(33656002)(476003)(3846002)(316002)(14444005)(102836004)(186003)(99286004)(14454004)(256004)(66066001)(8676002)(6436002)(66446008)(66476007)(6246003)(2906002)(66556008)(229853002)(64756008)(25786009)(52536014)(71190400001)(71200400001)(76176011)(66946007)(110136005)(6116002)(76116006)(9686003)(2501003)(8936002)(26005)(55016002)(74316002)(6506007)(53546011)(446003)(6636002)(486006)(81156014)(478600001)(4326008)(5660300002)(81166006)(86362001)(7696005)(54906003)(11346002)(305945005)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6230;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vPWyRDP1BcO7Vfmcla1SESpB4lQ22hymyO00fGbHT4IMs+D8qg/M4mjbnX2z3phc94DPGjky7jZo9dqlCkzoU4hV4hMSSzewhYQPA5pyEXK0ixuZ3jlrXz5EdstuLvheTBsUIsnvr+5IfdYNmvfN3n3Sqe+5b7wynVGliRo9hjKj35VxgVjKiuJFyNWYzSEYN1EmcvnTGHsG8PKFa84BRbOHHtFPHJ0iubQBV9RdOtFOT0rq8M2s7v2JwruYoij3nQhDJBxEvSjMXSCyiZD7RgiZGzulV+jJCp/CJiF8R3Ykrwt21KIlKBT31op/D1x6rbDCDH8MhjaP7KSlkcmxa3CtWXo36KWPqEntxN5KKOpVyniiCOnWuOV05x5GUdRy591M8afKaJNngS1caTnFrgSj4GP8O2zh0Lq7yg2TP5Th99ICYi0usPng6pEEXDYM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a6a9cf4-9fce-420b-e27c-08d7639fd1f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 16:30:36.8916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kcPuJ91LC9+Pe7PNSbVQo2kc3F0QIRZZTgXsjU/oN41Rlc+BLuDXFrdaU+PnRW5VNbqJ+Qeee+f8FwfYhtKT5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_083040_608120_F72769FA 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.73.87 listed in wl.mailspike.net]
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


Hi Markus,


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

approved

> --
> 2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
