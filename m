Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F2F99E56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N59TEpZgPbnmgfpNWORu0WKhiAXpXyypCnN/PJdneQY=; b=JAs/8LNB/Q9wHC
	Lc/UvdxUyNDLdB9cm1jUz9QH/5urgQEzrPaYV67cLK9AU6lxTEFloXKzfvBTKi6S1drp7AVkHtUIR
	vwuVbOQ3NvkinWikmM3xP8no2c6Rfk61j9MpnhY0cRDQIDs9jBL5fU0lKX0uu4twfKYKKaXA5J7p9
	aH0zgw42ilJYIKg1Q9i1Kolf7IdPw0ELqm6/7+HfL01puI3+VlMaMsUwGL7Hyqf4fa7ZUvChDp1aC
	9ZomiF70QlSN8sOh4o+IpwTaT7NrX0TcSE0D07R+Feze8dPq2d/SaZDSM9vghHH4ZD0YT5175mEY1
	+JaaSOUbwHQBwWrWXmAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rJh-00049r-7i; Thu, 22 Aug 2019 17:56:09 +0000
Received: from mail-bn3nam04on061d.outbound.protection.outlook.com
 ([2a01:111:f400:fe4e::61d]
 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rJV-00049K-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:55:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWhqdInEk6uyTla1GtvG8XjmJaAB1cAwjRwXKcY5J9Zx+QcXfxEEgkamozh6BTsSDu2bWTb3WPcArnCu4rzUe/Wux7H/+WtlyK4wJHNyaFRhYDXzBfPcTpnf6bhDiGIn40k5aDbLOKGB4AKbRkDlorQ4EcbSNVz7lpvVmQZLunbolbUAAUHLXGTO29ERBSGoWO56rEGKq1UwXuSQBz5If4Ot8NI7tTzwz57Q0w68Rr8iPLfY/AIlf9bm1JKPnmfK9xF+dfUyLVksgD/g9pxzlsc6X9bX/fuw1tZ1/mQpiu9S6UBuZwkr7iyrf5WLFxcLH2sCEE08/+GoTQCeLHd8Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYzMgoAN6NM14VPhIBwd7Ai1RxoPcCeqbOgf/MFgI4E=;
 b=TQx53JHiJW3DCZ1oeaPy1VaDcHhS8xnoqaonaDrIswpuRaeKOQFrlcnPGYsCC73QkYiMTMyZiBULoheQwsfxKSKyxqTnJ0CiNjYUyvQFQUOOxuEZRAfV455dD24HJTrurv8typtNHk5m1B4hNFXJot72K6e0yshEgjORHeJqQ2Lf26PJoo/ZkqBLa6YAFRzfZuacfxn+cOHj2q6X0/gnGfQbbzyPt4kgzqnNLeqOZA8uvYcRM+6U2PTLjeZgUI+8eqll+pW6WvLaZnuOLmmx0T9tVZeLkbYnHnSAATQga5+E3PjCtJ0goyDaf5tEqoJGGcFwjYM0aPFhnq9LIvkgNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYzMgoAN6NM14VPhIBwd7Ai1RxoPcCeqbOgf/MFgI4E=;
 b=YudYopLterMA57das8r08ksidURXhV4O9/LENu4xtyD4wa+CjOX3oyd2OrZaZVtdNSiE1pnOtmqpor889uJLlhjIv+JJX3MUeUGxQQDkMVbg4lnjTbF8WA7x1Wl6VHyG5mvyTXIbddnxyeyUNJ/J/rpUY35qLZHp8uQaNdFeBAo=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6984.namprd02.prod.outlook.com (20.180.11.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 17:55:54 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96%2]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:55:54 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Derek Kiernan
 <dkiernan@xilinx.com>
Subject: RE: [PATCH 4/4] misc: xilinx_sdfec: Prevent integer overflow in
 xsdfec_table_write()
Thread-Topic: [PATCH 4/4] misc: xilinx_sdfec: Prevent integer overflow in
 xsdfec_table_write()
Thread-Index: AQHVV++vOnMFcLNfRkOFJ6N+dUEQ/qcHdYPA
Date: Thu, 22 Aug 2019 17:55:54 +0000
Message-ID: <CH2PR02MB63593CB2434AC146D841E56BCBA50@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <20190821070606.GA26957@mwanda> <20190821071122.GD26957@mwanda>
In-Reply-To: <20190821071122.GD26957@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a510962-e8db-4662-7053-08d72729fa8c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6984; 
x-ms-traffictypediagnostic: CH2PR02MB6984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB69848E24700568880E2E42CECBA50@CH2PR02MB6984.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(376002)(136003)(366004)(346002)(13464003)(189003)(199004)(6246003)(86362001)(11346002)(486006)(446003)(8676002)(476003)(6436002)(26005)(99286004)(3846002)(6116002)(81166006)(7696005)(6636002)(71200400001)(229853002)(66556008)(66446008)(76116006)(316002)(64756008)(66946007)(55016002)(66476007)(9686003)(305945005)(14444005)(14454004)(256004)(66066001)(52536014)(4326008)(102836004)(81156014)(110136005)(54906003)(2906002)(74316002)(478600001)(53546011)(6506007)(53936002)(186003)(33656002)(5660300002)(7736002)(71190400001)(8936002)(25786009)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6984;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YUnQRQfC1vj61Fqx/TEprCeMDb/DYllytgqfn9+jmbCdKINjDSpqmo5HD6JpcS4wcFpO3Em3jComXMkylwPxc3CD23PL3cI0xOegF4FUa6sf14wZjGEOhvoI8FDDPKG0FuKyhX1ALcMDpNALe/EyA5N2HkeiKtCe8qbZTfSSG4kF7ZZSmJu/oGCGZXegwqQbZLOV83COk2r5pmY3aRzAzW/+YnKIIL+DX+4LLBfmb/jzECqhYHpvlO+lVnsEHNato1EfFNfGv70o3T9hwpK6XHkJWVysSLmbwUq07OOgY6lGH3cPiHfcyOc2RmZdhww52UV0b8DuOFC8KrSwmflTxWZZAn6P1B/p5Mz9Fzrk8gD4ejBwPaqCD+n0GWifGTe9eNoMIsA7rGESSpnkWjUBHlZtwIHQYcnNWGbR8k/SlRo=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a510962-e8db-4662-7053-08d72729fa8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:55:54.6245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VLpLINQjkgQQrDVBo/HcMlEi6QxwWlK6+I+KO+UY3Thqaq/DoS41Qs0Ql2ICG1P00kiMlF3CNTkQ94Ony8pMRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_105557_495952_60389551 
X-CRM114-Status: GOOD (  16.00  )
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
> Sent: Wednesday 21 August 2019 08:11
> To: Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic <draganc@xilinx.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 4/4] misc: xilinx_sdfec: Prevent integer overflow in xsdfec_table_write()
> 
> The checking here needs to handle integer overflows because "offset" and
> "len" come from the user.

Good catch, thanks.

> 
> Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/misc/xilinx_sdfec.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 3fc53d20abf3..0bf3bcc8e1ef 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -611,7 +611,9 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
>  	 * Writes that go beyond the length of
>  	 * Shared Scale(SC) table should fail
>  	 */
> -	if ((XSDFEC_REG_WIDTH_JUMP * (offset + len)) > depth) {
> +	if (offset > depth / XSDFEC_REG_WIDTH_JUMP ||
> +	    len > depth / XSDFEC_REG_WIDTH_JUMP ||
> +	    offset + len > depth / XSDFEC_REG_WIDTH_JUMP) {
>  		dev_dbg(xsdfec->dev, "Write exceeds SC table length");
>  		return -EINVAL;
>  	}
> --
> 2.20.1

Reviewed-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Thanks 
Dragan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
