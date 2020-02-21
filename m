Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3593168A4F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 00:19:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7+n0M9y8miiPIutvwWSfPRYbMV+XhcVP1mzqY+aEB8=; b=XE1+p4sUvOI2Ur
	/sbI8EI9wsAO5B2Koyr2nq+GMRWygEz81Okk1QQSo/oFObnqlfSzCIUUIvv4cnZFFfuWXfB7IdVSi
	9VVsBCxjTSgTn+vQ5IXEFznVxEUMWupt7Jf7ZaXuqZ010nNujjYwFzuyKDTcKzEmby8Fka8Gjo3mk
	6ICczDaJ7M7JiLAfwnTcOd2wLkog8zL+smEqOCloYT/hWhwpTom806VhKtBeUa8y3KnWo2Br7Sspo
	EDXENV473yRm9O441P8hunm5DcEbqvxNjB9gEYyx2pqXYlTlFAGUDiXc5wHCMmRyuyjldh/2LSPQ+
	MbGTkAu9o1jiwBhmTjIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5HZO-0001BX-D2; Fri, 21 Feb 2020 23:18:54 +0000
Received: from mail-vi1eur04on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::61c]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5HZD-0001Au-W6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 23:18:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IgjDtzcGKCxvMVEMRoAXhbKbZMlg1t+rVmFxkZ0+oVTYFqmSO5F5ozpq3Gr8eSbO9vsa3NsPhT5LjpvdKr+O/bCueLVIXUjJynFzCt5V8/sxjk7AJZ9NS2U6Db/k13PhHx9hCpnsA6pDeR0QzSBIfRv8y5rt54V1+EHJU3dZmD4k24wGlZbn+PCnofoJLd7pw1mNaNikp38swRn4mbjFwf5A85T+jVCpY2IZKM6CvERZXb1SMGVVOQMgyxoRleiwjkQiWaz46yGPnYv4eyZ/2O8eoWmONcUgCVFxh+EbFxJjY1JjiON39SFlhCVfbZjvRfxk1ixZY2zEeffn/q/F6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGcNXHh9S+Kkp+bniHPr3wV6kd48X6gdMwyoeXqMwVA=;
 b=aRK5CVuydiqw2baQQucQoE1+BwMwOO0AetoUU5ysiUP8cHjmf7+xkyu0l91VHkaB3rcpXRIAly40nGDLTceh5MKEej2F/woRF/vjpcYdZttu5hJMGQauTFxfv2jyw+2wprzIxpwkSghXTHeLuzLUXQJICLh3yhS3p2cRQm+QnN3cDZJMouJUG3llsmo2Jx0AvKxLFMxK8qtTHWR/7jgF+q2plBU1o/8gu7yyXz1NVtlyxeQf3idkG3YACZ4CuMMgTiudcSJyWffXNvc1YwLJYz2f7Mhz48gENh7SuwpiTntz6TAnmNdQQTiDg0EO8iJ5Jv1Eo23g/0vgtOGEuAvQlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGcNXHh9S+Kkp+bniHPr3wV6kd48X6gdMwyoeXqMwVA=;
 b=brUUn6XyBCU9FWCRRugu6X5ZHf8BANL7Ex+ek6D/cIsVanIfkVmbvd27+yIgCSceYnqUi1szM43LVqLdoUn2c+yIRvsWJgbmSV5eHppPMIV6JPzzYg9NQntgl5nZtAQ3gYwwAcUP2XXZpMey/qDK9YKYxPVM5r2sZ8SKOzKYumQ=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6382.eurprd04.prod.outlook.com (20.179.234.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 23:18:38 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 23:18:38 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Colin King <colin.king@canonical.com>, Roy Pledge <roy.pledge@nxp.com>,
 Youri Querry <youri.querry_1@nxp.com>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH][next] soc: fsl: dpio: fix dereference of pointer p before
 null check
Thread-Topic: [PATCH][next] soc: fsl: dpio: fix dereference of pointer p
 before null check
Thread-Index: AQHV6QxK4GBO4LDKQkW+6fNAYtWLS6gmR4EA
Date: Fri, 21 Feb 2020 23:18:38 +0000
Message-ID: <VE1PR04MB6687C23030FD3C59BA5EC1EE8F120@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20200221231143.30131-1-colin.king@canonical.com>
In-Reply-To: <20200221231143.30131-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 59477418-5cc5-4896-457c-08d7b7246202
x-ms-traffictypediagnostic: VE1PR04MB6382:|VE1PR04MB6382:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB63823E59551312CE216CA6A58F120@VE1PR04MB6382.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(199004)(189003)(8936002)(8676002)(81156014)(86362001)(76116006)(66476007)(52536014)(64756008)(54906003)(81166006)(110136005)(33656002)(5660300002)(66446008)(66556008)(66946007)(4326008)(71200400001)(7696005)(316002)(478600001)(55016002)(26005)(6506007)(9686003)(2906002)(186003)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6382;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RyghmJby+uYZ0EPBqzjDq36mTfBUwjWlUudFpqp1jzs4h+sPgzKAb0an4hyKX+uZAdUhxAxsxrftCRc0Hnf7E50nJU/NxPwhJ+m32RIPNbH1/rZorDna5RmVDuq7wh2nQJsDkm+V94Gv3/Y5ZVpO9oXQcadyWw2T7+yMImqkUYNkdmGwmWeE0wXhqRf/9VwsvFdBFSxXAXsuhZy7uwgY0zeesFR6vcO4X1osodkjKjag2q/bIw4gLOnvDsBZPQnVbZXRT3MRSBwM+/AmICfQATzYoH0CNi2lpiJhZ5OSZNlWxQLIp5h88aclp30O1unTw7o3Bz+sKeApII7YURBx+bmJyxUsWcql9+jmsom2sIXah7ir4zRlpNWyMauUXvwOlmCgHcM5CXE0AK5qjbwJmu2ZR1nYTiMdDmUJCr9MRdnU4xoVj9Y3aSW2rJ6lWHGT
x-ms-exchange-antispam-messagedata: AjBywuOWAN0zvB3ar/pKhoRqV13h2AAei6zjeDvm/xyKfoIT3+zPGyMtPJKmigX5MsMNStxb+A5bGMxETZScF+hDBXpCg5bjx1Ov9EYg3YMncSlHsHu+74VrxgdympAC02imJa3QRnzDzv+6W/CE9A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59477418-5cc5-4896-457c-08d7b7246202
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 23:18:38.6366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q6B4hIZBTkEm+zMPImW80rDCng0s/nOOcc2vLAvD20N09J25ThvYRoO2P3kZHWCz1FvAmUrR5GPiQEV4EvYlxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6382
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_151844_097566_801CF83A 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Colin King <colin.king@canonical.com>
> Sent: Friday, February 21, 2020 5:12 PM
> To: Roy Pledge <roy.pledge@nxp.com>; Leo Li <leoyang.li@nxp.com>; Youri
> Querry <youri.querry_1@nxp.com>; linuxppc-dev@lists.ozlabs.org; linux-
> arm-kernel@lists.infradead.org
> Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH][next] soc: fsl: dpio: fix dereference of pointer p before null
> check
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> Pointer p is currently being dereferenced before it is null checked on a
> memory allocation failure check. Fix this by checking if p is null before
> dereferencing it.
> 
> Addresses-Coverity: ("Dereference before null check")
> Fixes: 3b2abda7d28c ("soc: fsl: dpio: Replace QMAN array mode with ring
> mode enqueue")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied for next.  Thanks.

> ---
>  drivers/soc/fsl/dpio/qbman-portal.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.c
> b/drivers/soc/fsl/dpio/qbman-portal.c
> index 740ee0d19582..d1f49caa5b13 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.c
> +++ b/drivers/soc/fsl/dpio/qbman-portal.c
> @@ -249,10 +249,11 @@ struct qbman_swp *qbman_swp_init(const struct
> qbman_swp_desc *d)
>  	u32 mask_size;
>  	u32 eqcr_pi;
> 
> -	spin_lock_init(&p->access_spinlock);
> -
>  	if (!p)
>  		return NULL;
> +
> +	spin_lock_init(&p->access_spinlock);
> +
>  	p->desc = d;
>  	p->mc.valid_bit = QB_VALID_BIT;
>  	p->sdq = 0;
> --
> 2.25.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
