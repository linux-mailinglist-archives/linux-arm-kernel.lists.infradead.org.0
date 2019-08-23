Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226D49AA36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHUUAvVzIiyLZUzGdWY4xGWQrLZiaMfk61yi2eCmZSU=; b=TFAcClf2aT0owZ
	jjhp1MiDe5dw6zO0n02lO1sexhZGgdGP1V6GRj9L3NwxvWNDY8chWPaM8UcTjgau2DX5TtDVE6WeF
	Q9ix8CuyCLrBmRNYrOXpgQj60aXaj3pO44l4FFiN4UPRd25pqzdDXjaCxr5BVOxWtx3VAzGSyhL4I
	ZjqI3kHj5msD69OX2riv4NIwKg+aTvDB4rdge362juoy1ViNhGYrnPLE+3YvIgZVQywPbER1/F/wg
	3R9Az1QArmU8MoNa14yB7w35eOqF3RXFYmEh9qVLaDsBVeTSYvviiT68k+FjXgZRoGfQrf2j7TEEU
	kuTLk6kG1BGj/Wu05ebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14rk-0006sc-L0; Fri, 23 Aug 2019 08:24:12 +0000
Received: from mail-bl2nam02on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::61f]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14rV-0006rr-GM
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:24:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/h8n3LsLIXkvKYXgI3+GRbb4p5SlKZgaA6ArI12uYhVTI4RNsVNvaIiUD3kReVyXYs/XjNLtrjmmhrp7dS1aytDWe4ydT1unqlzotW/9rlMJjRfEFdAmj0bJiLXevwrqMxcV+nOHiN7MKD2htnhQB3f/UHQ7cu4hqYjjQBTQENqawGqpJg1pfkOdAbt0OCfXcoONVcidGu57KPajj/8v0resr2A1pITxs+IosO9UJB2Fr67XVs64xtDQ7LtlUoH80k6yRQ8RtfIFQTAbYgOTG0KxcBsur5lfMecrUN951x3RTykcztThAyenl8bedNaIVdgXNHDN7LnPbTFQruuKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iy5QS3g0RzZQTaIaRlnQxBdsVWHbTBKAt+bk9KCI/HY=;
 b=QHvzM/ZYdLsUwyGD8Lgs/qNIz6KmUjwGIJv2mFSU/aZvWaUCq4kt6XyJkLn2EnI4H7DztW/kEYKsOUgbRvgEVw6p6eTMa2PWBxVplXFx0MjjcfKFSdkbxIpnxURNJTw2drPo3VeawxPzj7bv8Nlw4UPTdP5WmfaDxFPsMYNV3X77YNn5cB4BLnmqUnEslmW5ustO0gr7RBzFFAY7Xrf8iBIexIwvtFELA+DUjZ1nXvbIRoaUC6AgSAg8YukPrz0rlVTklWoDpvvW/Kf2vKPVk17OUK794xalD1q9FKqUkRCuSxygcn+9vyBdIH3Zxt7EC3ZoI4uvZzjA0KTCDLua5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iy5QS3g0RzZQTaIaRlnQxBdsVWHbTBKAt+bk9KCI/HY=;
 b=bilh2T+peQDMFrlbQTv5Jv/drVQTTiDV5G8tOmVlrPNMwfKqGMMwrflLGQa+j10nXcjKJoKfBJWJhD6Mak/OSne6MsLvVBrT92gFkrhWJPXD2XJ6w0WYXVXDDYcH+dmfWBtNwSof65vpdJD+2BD9MQURBjST5adm+Wsh/4qmv3M=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6840.namprd02.prod.outlook.com (20.180.5.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 08:23:55 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96%2]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 08:23:54 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Derek Kiernan
 <dkiernan@xilinx.com>
Subject: RE: [PATCH 3/4] misc: xilinx_sdfec: Prevent a divide by zero in
 xsdfec_reg0_write()
Thread-Topic: [PATCH 3/4] misc: xilinx_sdfec: Prevent a divide by zero in
 xsdfec_reg0_write()
Thread-Index: AQHVV+98zNjK4dF6zEutfzCzk1SLDacIZ9kA
Date: Fri, 23 Aug 2019 08:23:54 +0000
Message-ID: <CH2PR02MB6359602748E6F8BB56E586B9CBA40@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <20190821070606.GA26957@mwanda> <20190821070953.GC26957@mwanda>
In-Reply-To: <20190821070953.GC26957@mwanda>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32f8f6db-ef76-4703-7b5a-08d727a33cd2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6840; 
x-ms-traffictypediagnostic: CH2PR02MB6840:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB68402EA5515C6F90CDA747CBCBA40@CH2PR02MB6840.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(366004)(396003)(136003)(199004)(13464003)(189003)(66476007)(66556008)(64756008)(66446008)(66946007)(76176011)(305945005)(66066001)(86362001)(52536014)(476003)(11346002)(7736002)(446003)(33656002)(3846002)(6116002)(6506007)(14444005)(14454004)(74316002)(7696005)(53546011)(256004)(316002)(2906002)(6436002)(5660300002)(6246003)(25786009)(71190400001)(99286004)(8676002)(110136005)(81156014)(81166006)(54906003)(71200400001)(9686003)(8936002)(76116006)(186003)(53936002)(102836004)(6636002)(478600001)(486006)(4326008)(229853002)(55016002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6840;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oaDclW6SmLyqiAsVKLHN5vJbdtqcLM+1/OV2zl9/jDomZmvPIx/8bfl8D5s7rG553lgRGPi4pwfAB/1APdnnXQGH+Yle9Xd0QAUbP/tdbvM3izuHa+tHmlqLY7ARQKwQ2hsnqERcNk2V5SQ5/Wd8V/Gnqi50z45kFr+fQBqYKXGx98Kh7apqdsBUmRXKgAUmzY9a0muBjSxhqdwWo+xd8ViwdTSaF/Hjl02KrsyQ87g0W5P1KNlP8Qw6WUEa8e03YX0+C2Knw/id7SK1jY7H/rUe2CuLoZE6dPduOofob+siVTY+rd1218lmPyuMT3M4Vs/yxKrzyz1VTuFiULmgu+qPsf8rIWk3lWkoo8X7q5KkQf2+j5el3dqF+LGiNNDn96t2+JG8M1uCs2EkROfwTZKi0goyPQm2GdqG9LCSmMI=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f8f6db-ef76-4703-7b5a-08d727a33cd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 08:23:54.8764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +PsNjo+rYeYQIMUs9dzPHkZXqZworoGpLoDay4le+SpNrjeZkc1gvHlSKITdVwVKbTHFivNx+rkU7eExTh+ilg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_012357_550575_EAE7A2FF 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:61f listed in]
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
> Sent: Wednesday 21 August 2019 08:10
> To: Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic <draganc@xilinx.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 3/4] misc: xilinx_sdfec: Prevent a divide by zero in xsdfec_reg0_write()
> 
> The "psize" value comes from the user so we need to verify that it's
> non-zero before we check if "n % psize" or it will crash.
> 
> Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> The parentheses in this condition are a no-op.  They're just confusing.
> Perhaps something else was intended?
> 
>  drivers/misc/xilinx_sdfec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 813b82c59360..3fc53d20abf3 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -460,7 +460,7 @@ static int xsdfec_reg0_write(struct xsdfec_dev *xsdfec, u32 n, u32 k, u32 psize,
>  {
>  	u32 wdata;
> 
> -	if (n < XSDFEC_REG0_N_MIN || n > XSDFEC_REG0_N_MAX ||
> +	if (n < XSDFEC_REG0_N_MIN || n > XSDFEC_REG0_N_MAX || psize == 0 ||
>  	    (n > XSDFEC_REG0_N_MUL_P * psize) || n <= k || ((n % psize) != 0)) {
>  		dev_dbg(xsdfec->dev, "N value is not in range");
>  		return -EINVAL;
> --
> 2.20.1

Reviewed-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Thanks,
Dragan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
