Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3C114DBBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RoSJ3rV0LSk23Dpsl0TdeQnbTqFzQEpIF2MQMmglnes=; b=DZQrVydwzSLSaN
	2xMCuUp1UC+et/JF6kOmMKB9d4pkyg1WnyPtviJDHmtntziCSQO5zUcMLEt6JmciSSWAimv1+y4xM
	tT2kTV4r1skHClwDf+iBZ2Lb5pT17T2CF+m37LAOL+ILzVp1S9BV0QdjCD4HgRUNZPjI3+vvsN47j
	HYSoXcjiIa01PSeO1XjBTr1Y0NlBAJ3/JUt8mmQH+9FR9MRf9/fBliat5lU8ovysYOuAoHc+loV+u
	FulzkSRfG9D8AFy6KyQnQFqRU5uZMBjz4TfwLkZWQPzBmqhxr0ApYniqMbyh3mIBTgA/AS/AUynB/
	tssleOjRPcmIj2JjCfVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9sU-0006oC-FI; Thu, 30 Jan 2020 13:29:02 +0000
Received: from mail-db8eur05on2077.outbound.protection.outlook.com
 ([40.107.20.77] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9qk-00050E-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:27:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbgLgHEUhNRL420Sfe5Fm4cQ1/y0f2IvQ5gyxmStkhH2sHxb0Yp+/vgTe619qgYE6PnkpS1U5cYS8a3uVnPBksmhpSHKYM/no8CVcTDsy5zcQKGP5cMl147UNPRYUZ8JzdVN8lWLTshbh0WLxJdzTGHdRkJPlx+A/SWCMcPXG7bm9knSDrsEIP/sX3YN8tptg8Ou296mx6o0AKg4VKRc8T6Go19Tk6Ay3pRw2+EjXXuHFc22ib0d06OYEqLm7ZdHpZwOCN31zwHR52M2uCCJYNAH8lPPl7sJUVeWDb7bpEy+rZrpk1hswsqXMr9dLveq7/ey5XSdG4rXpG2sDeMBPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBPYUDEg/iavAjaH1nFSrUHB3rwLErtmqOpeJw+eIgY=;
 b=X3Ekle6qNCQk+ufj1DydosF1W4x0XenXA4CgbiIfwt7yJO5eNzF2qhC6rXx6KrqGS+U7g80Whlx+4w0c+8SU3KUKgUhCeY+CISibueKf0zkUHHHgjdK7Oz3a47Cwgt3Y5pMvmVK2npIvWnK46+SdgcBqjTP+mKVLqbiti0umf88govs83sqjFnZiwX7qZsLYtZNVDUqdaE9MfoeTRr57UST93QBKT6RCZtSiQXKtua/P4LS2cbepaKuey1bm+0SO9FlRSzd1GoB7bdxqbLhUtugQx5sk1CqvCQvK7q9Z6hiN7crgc/q+4434fQdHBYMC9ezwMY7UEYgTMixHkqP37w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBPYUDEg/iavAjaH1nFSrUHB3rwLErtmqOpeJw+eIgY=;
 b=jqtVhgCK2//rpQw7JbFCOYc5fSliyAfFYBW1AHyok7IistSPVt3M2p9o7vPUfyxCazIKOBujnuRegXTnDLsMgDcgAjgTPbh9/MnASJg59Vwb8QSzI22TeuUGmT3+5IzmGGaSab/PyOKhmbYQ1MIENET2XPvNdB3xSCVqJf41ioM=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3456.eurprd04.prod.outlook.com (52.134.3.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Thu, 30 Jan 2020 13:27:09 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::85e9:f844:f8b0:27d]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::85e9:f844:f8b0:27d%7]) with mapi id 15.20.2665.027; Thu, 30 Jan 2020
 13:27:09 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>, Andrei Botila
 <andrei.botila@nxp.com>, Stuart Yoder <stuyoder@gmail.com>, Leo Li
 <leoyang.li@nxp.com>, Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH] bus: fsl-mc: add api to retrieve mc version
Thread-Topic: [PATCH] bus: fsl-mc: add api to retrieve mc version
Thread-Index: AQHV13D48TAVZl2sEk63BJbSjUOXCQ==
Date: Thu, 30 Jan 2020 13:27:09 +0000
Message-ID: <VI1PR0402MB3485DB40CE1C1631D920EE7598040@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <1580123761-19536-1-git-send-email-andrei.botila@nxp.com>
 <AM6PR04MB58788A33BCFD161773375C8DEC0B0@AM6PR04MB5878.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4b22e23b-29ec-49ee-6bca-08d7a5881bb9
x-ms-traffictypediagnostic: VI1PR0402MB3456:|VI1PR0402MB3456:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3456A35CEFC3A56371B732BE98040@VI1PR0402MB3456.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(199004)(189003)(55016002)(64756008)(66946007)(66446008)(2906002)(9686003)(66476007)(66556008)(316002)(54906003)(52536014)(186003)(5660300002)(26005)(6506007)(53546011)(4326008)(110136005)(7696005)(33656002)(44832011)(76116006)(91956017)(86362001)(966005)(81156014)(81166006)(8676002)(71200400001)(8936002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3456;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OuAzXg0DJCja9X6KID2Rcl6rx/U2etzyzfgtuvaeRXDDF8KbA79hA8xJJlpJi5YgpHLHA4ZsO64ou4Gsh57aZPAhHwQZSvorq5kvquxRyXjZZQqIoxFkTzBVYwrw/2ZqQmYHPq9vMrYZiNg1xzU0NX/v3d35kIWZ59KFm1OyqU62ITYyLyxlhPvbpmVTLFpnOaqD4YlivY0A2+2GFa7YOkMF4rurdPwWmYapOF8+HPJcd8dXI2LQGdK+I0aObwovSdTtTtBUnC5r0nDvnvCP8G8eSZwu3ZM3xwFIpXFWLE5gB0LBc/oqwoNBVV7L+e8kUV28FryN3yNnjYjZZHtet/nnMbxiDtlcYDBQdO/uOiHS9tmhW8fiOdd6Kv2v3yeG/AEcmDJ0ZLxdAX+zp8H9irxtzd918vHQ5MGjUYgOJX7d3S3SjUvCUGCPkO+0b2AK3LXBbqY2YM4itoQZ7n8mUppJnV4aLHKJF9XWyY5VdCfvznsNA0R/4PSiCi7BZJHERs64IQ6jFPYpR+76kz7X9A==
x-ms-exchange-antispam-messagedata: HA6ZiRpGwQ/VoMsxh/rsi0HGC+ogPkNN9y2RuiCARwnro70ITIoTv3j3++PLNfAN99Sk7yqV43e1eUsJY82dkn3w5piRYS62xbScoz/Jpa3XZ2RhEBI6m5c6s/y1Uo7fFTY/CgwOTlalAvETTA6q3A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b22e23b-29ec-49ee-6bca-08d7a5881bb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 13:27:09.3545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nIj/B9sgfpgSqchPB+THrob/zLmI1ZPXF2yU24dEync6K53oBKxx1eW60u8a17gvpDmL+xYDZV8r5TussJE+Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3456
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052714_338614_9F643179 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/27/2020 1:49 PM, Laurentiu Tudor wrote:
> =

>> -----Original Message-----
>> From: Andrei Botila <andrei.botila@nxp.com>
>> Sent: Monday, January 27, 2020 1:16 PM
>>
>> Add a new api that returns Management Complex firmware version
>> and make the required structure public. The api's first user will be
>> the caam driver for setting prediction resistance bits.
>>
>> Signed-off-by: Andrei Botila <andrei.botila@nxp.com>
> =

> Acked-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Reviewed-by: Horia Geant=E3 <horia.geanta@nxp.com>

We'll need this patch in the crypto subsystem,
such that the CAAM HWRNG patch series (currently v7)
https://patchwork.kernel.org/project/linux-crypto/list/?series=3D233763&arc=
hive=3Dboth&state=3D*
is updated to work with existing (and future) FSL MC f/w versions.

CAAM HWRNG series has been in review for quite some time
and AFAICT is in pretty good shape.
Unfortunately it missed v5.6 merge window. I would like it to go
in v5.7, but for this we'll need current patch (a dependency)
to go through (or be cherry-picked into) the crypto tree.

>> ---
>>  drivers/bus/fsl-mc/fsl-mc-bus.c | 33 +++++++++++++++++----------------
>>  include/linux/fsl/mc.h          | 16 ++++++++++++++++
>>  2 files changed, 33 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-
>> bus.c
>> index a07cc19becdb..330c76181604 100644
>> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
>> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
>> @@ -26,6 +26,8 @@
>>   */
>>  #define FSL_MC_DEFAULT_DMA_MASK	(~0ULL)
>>
>> +static struct fsl_mc_version mc_version;
>> +
>>  /**
>>   * struct fsl_mc - Private data of a "fsl,qoriq-mc" platform device
>>   * @root_mc_bus_dev: fsl-mc device representing the root DPRC
>> @@ -54,20 +56,6 @@ struct fsl_mc_addr_translation_range {
>>  	phys_addr_t start_phys_addr;
>>  };
>>
>> -/**
>> - * struct mc_version
>> - * @major: Major version number: incremented on API compatibility chang=
es
>> - * @minor: Minor version number: incremented on API additions (that are
>> - *		backward compatible); reset when major version is incremented
>> - * @revision: Internal revision number: incremented on implementation
>> changes
>> - *		and/or bug fixes that have no impact on API
>> - */
>> -struct mc_version {
>> -	u32 major;
>> -	u32 minor;
>> -	u32 revision;
>> -};
>> -
>>  /**
>>   * fsl_mc_bus_match - device to driver matching callback
>>   * @dev: the fsl-mc device to match against
>> @@ -338,7 +326,7 @@ EXPORT_SYMBOL_GPL(fsl_mc_driver_unregister);
>>   */
>>  static int mc_get_version(struct fsl_mc_io *mc_io,
>>  			  u32 cmd_flags,
>> -			  struct mc_version *mc_ver_info)
>> +			  struct fsl_mc_version *mc_ver_info)
>>  {
>>  	struct fsl_mc_command cmd =3D { 0 };
>>  	struct dpmng_rsp_get_version *rsp_params;
>> @@ -363,6 +351,20 @@ static int mc_get_version(struct fsl_mc_io *mc_io,
>>  	return 0;
>>  }
>>
>> +/**
>> + * fsl_mc_get_version - function to retrieve the MC f/w version
>> information
>> + *
>> + * Return:	mc version when called after fsl-mc-bus probe; NULL otherwis=
e.
>> + */
>> +struct fsl_mc_version *fsl_mc_get_version(void)
>> +{
>> +	if (mc_version.major)
>> +		return &mc_version;
>> +
>> +	return NULL;
>> +}
>> +EXPORT_SYMBOL_GPL(fsl_mc_get_version);
>> +
>>  /**
>>   * fsl_mc_get_root_dprc - function to traverse to the root dprc
>>   */
>> @@ -862,7 +864,6 @@ static int fsl_mc_bus_probe(struct platform_device
>> *pdev)
>>  	int container_id;
>>  	phys_addr_t mc_portal_phys_addr;
>>  	u32 mc_portal_size;
>> -	struct mc_version mc_version;
>>  	struct resource res;
>>
>>  	mc =3D devm_kzalloc(&pdev->dev, sizeof(*mc), GFP_KERNEL);
>> diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
>> index 54d9436600c7..2b5f8366dbe1 100644
>> --- a/include/linux/fsl/mc.h
>> +++ b/include/linux/fsl/mc.h
>> @@ -381,6 +381,22 @@ int __must_check __fsl_mc_driver_register(struct
>> fsl_mc_driver *fsl_mc_driver,
>>
>>  void fsl_mc_driver_unregister(struct fsl_mc_driver *driver);
>>
>> +/**
>> + * struct fsl_mc_version
>> + * @major: Major version number: incremented on API compatibility chang=
es
>> + * @minor: Minor version number: incremented on API additions (that are
>> + *		backward compatible); reset when major version is incremented
>> + * @revision: Internal revision number: incremented on implementation
>> changes
>> + *		and/or bug fixes that have no impact on API
>> + */
>> +struct fsl_mc_version {
>> +	u32 major;
>> +	u32 minor;
>> +	u32 revision;
>> +};
>> +
>> +struct fsl_mc_version *fsl_mc_get_version(void);
>> +
>>  int __must_check fsl_mc_portal_allocate(struct fsl_mc_device *mc_dev,
>>  					u16 mc_io_flags,
>>  					struct fsl_mc_io **new_mc_io);
>> --
>> 2.17.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
