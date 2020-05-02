Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430771C2685
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 17:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtlogSWCkje5uIvMc+SmS6/l9C4xG7OT0KUm51aWmr8=; b=spFjzZZzubD8/Z
	GwBuBp7Lz6g0nr9zZdB+OACo8kL1c6s9lt8w/4WnODmADijF5DnYZRifh9H1eKwvBrHHG80v37D3m
	kz9jRT6uyHG2g+LQOu3bu0HFG7IoZCcWIE88v4aIHJe/Wy/RMv7CsqYVxL+6bG97p7ucolroNLfvz
	iy1eCRvGhzXg+Qpmxl2XLirkqmfrhhbVmp9OvG7ElUxIv2p07S/Kv7T6NfQ1taeePMDSwK8+BkPmB
	pGgtvQrXkHSFvvk2bLdCIhmCWy3aAr8FPZbvfVSYxwy3ZcOkTmsV0UOTu2iaWK2dW2yDct08lHkq+
	q7YpDAT7rhnNEElgO9BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUtzC-00044n-Hp; Sat, 02 May 2020 15:23:26 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUtz6-00042j-1I; Sat, 02 May 2020 15:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588433000; x=1619969000;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wU6Hn1QoFqxgocchw3TXAxm8RfIqCWu7dsHmcejUx0s=;
 b=WgbX/43+sK1CAFfkIW3K+INjmX2e2+QjFv6nt7z+s/3FMZx0GU6SPlPK
 i09gRFskDioOp+cL/UqVjlM+qBiUdOSrNYSCOBBKWpJ7gwIAxTvm5b7uU
 ZpjudtyqD/2qts4m3fymlHzNh2k4yCSkGs3rlCQfLMTH6ykGGV+NIYJBP
 D7T3107LB3M9ZeTlZUq2btAKJTqHt5RDU1hV0d9tiI8w2xpJGHYaJVAZq
 iUurdZSYrfHHQR9SXiPdE+A4+bzXtkiqwZoWRklH5OhUF1y6DuiAWUJ/X
 eOkqFz1/q2wkYal6oSnllibLQgHrUQ3MpV3GIGkQj6q0ysGTMICrK7qxd A==;
IronPort-SDR: hWd2HlsXFCzxszpy1PxyEVnKMhdsIc1BJwnZNW1ByD2j6ALevmQHmS6ONEGzV+hbPsdjDNatVa
 XngdzQMt93UYAVGnr9DjuozZo8TJpUYc/1NegPBrXmU/qbbJQrt2YQ1vTLb4dsLjglVs3pkg+4
 gsFHDRjVKe1YmTL/7jh03htwpJeisMq42NMNlYbgb9HtxxtHuVslzrG0/fnhV/GGblxSWfkvTy
 WWH6i1TAfUizwTNI6h/YyPbXdo5QJawtfWPWHsggRRZPpmu8Eu+1pDEk5OrXVOXXORjhqIN4Eo
 SY4=
X-IronPort-AV: E=Sophos;i="5.73,343,1583164800"; d="scan'208";a="136747771"
Received: from mail-bn7nam10lp2105.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.105])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2020 23:23:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbAbIqgTE+41KaZr1EQqDl15qoQxn6UhrozuEVcweJP2lqU9sfcCRrXcXqqKDzxAQJnAzn+Z4FQ6xJdyrx52Ng7/3CmVDMHVMJH3s0tTBRrmYL/ga5ekeYRzkbpDfDNLX9ryZDPWYbj7j+754T+Bu0+lqKqZK147LgUJaMfAaZUQFmYcRjtAwd3TT7KlI42xJpsvhyPPQPvnn0KD3tcZAOvoeVYvzKo/4htTBA3f6bKAq5cHEUBQyJ59Ugxspdxa5hxcPkQpAZ/wlD6ocsNnSUgG/OOlIiO5BoKnpgpOJvh5TM0KsZoGaZIB+vLj+tQpkG6Ami4nOnwjQvb4CZbwRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAarNdY0LRF1NAAYIxwK0+9OV6ZHf4MkhZuZv1qDILw=;
 b=LMZr8o8JURkp9B74MqOaUv6M7sc+Y0W9YefY0ONW3bxXUdzts7VGefCvDMDCXw9g93XOZeafjKUInA5cLlUiDiwaI5MD1KZhn+CrqZNTSbJUR0oQu3w3i0NGP64AMXBqMQsOlV804rbwXtiOjeIDaucMDZUntLaB0EDsjX0dWO+ClR9voHmVXa/S+zyZagP/guDYV2tGrOh6dqJVRpOyzWhqrgjud59pIwwhlvCp1KQTnm0DSjN1gehRztHHYDvT/4FwF6LtK3C8jeqzxwOEDfeC6+A8KcZp9/qwYawoCnUbN1KrSXDFhoNa54HwSbTL1NlR71k8B4zv4jVur5KL+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAarNdY0LRF1NAAYIxwK0+9OV6ZHf4MkhZuZv1qDILw=;
 b=ZstvIr/HBSwheHYneY4i6oDDMwHC2NVgWiFQ/clfS0ZYs1hnH0bAzoXA/9gb5VowbotDrs8OQpShPeJEeVJbTMckVhsx3t+O1rFtR6RNQ5bEduels2gkx9wPNaox4AnFZNhdTbllV2Ck6pXNljuCggx+SvYsutnrW28CzCSpIq0=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4591.namprd04.prod.outlook.com (2603:10b6:805:ae::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sat, 2 May
 2020 15:23:08 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.027; Sat, 2 May 2020
 15:23:08 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v3 2/5] scsi: ufs: add "index" in parameter list of
 ufshcd_query_flag()
Thread-Topic: [PATCH v3 2/5] scsi: ufs: add "index" in parameter list of
 ufshcd_query_flag()
Thread-Index: AQHWH8Y7hGL68hem0US2UiZWqmAQY6iU6yiA
Date: Sat, 2 May 2020 15:23:07 +0000
Message-ID: <SN6PR04MB4640D032215F66ED46B4D069FCA80@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200501143835.26032-1-stanley.chu@mediatek.com>
 <20200501143835.26032-3-stanley.chu@mediatek.com>
In-Reply-To: <20200501143835.26032-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 85aceabc-e0ba-4b62-98fe-08d7eeacb7b9
x-ms-traffictypediagnostic: SN6PR04MB4591:
x-microsoft-antispam-prvs: <SN6PR04MB4591BB3F3423DD3D2741AAD4FCA80@SN6PR04MB4591.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 039178EF4A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(478600001)(7696005)(54906003)(110136005)(8676002)(8936002)(26005)(6506007)(33656002)(64756008)(66556008)(66476007)(76116006)(66446008)(66946007)(86362001)(52536014)(186003)(4326008)(71200400001)(9686003)(316002)(55016002)(4744005)(5660300002)(7416002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ty+uPANuoFZwLewJ8H5POl3AW0QU2KKb/HT/3OS8tH6ae5fAT0seYhiyUjOD87gVKoEYzJLkUR0a81/V08Ht4FA+5IunCGMm/1akN6O/sHpAZ01TXtdu5G+TQu1reE0EFP8n72lVua5Mrv05xV87LRKL5Oc7dh6xLYmfhp66Ei+LpUS25W7LRSaycWg/gx2Nf/oTWL7uansI2Lsx7mt/mP1YRmeYf7w2yZTXEkVnN94YYWyi9goCMZWsZIp943FzxAntxd+N2EuaYzpiXes5tb0Kp2LwWh0BKgzuYWk02YwQCm+tu16BvR68rywf6WMYfIj1Ts3SGiJPd8SzlN5Dgk4VL3z8bxs/Ul0eA/jMj0uatY2SnsGp8cSlWEOL5zIOBkNPdpM7h7YgHKk9Me6iVytYq7fHhJHvMkWS97UOEn3HkZXXCxjOVbg9YiTBKDph
x-ms-exchange-antispam-messagedata: cyFnXUQQ3eeU7DTCVHmnb0zdNIhO03zLmsRYbzttbiz/hFr7bDh9VWTlrQBk2BCOCptaDkHiGRLigQlcFQLZG94N5DFA6OLrfBV43o7hVSFeckuWWcS1id7+hmdb0mdW4eA3YUC3R1lkgbO4cvWSV3zw6/xcwaplJ++lB+oDQ2giQ4wXyY3z/a56Y6CmoQ++CB9nkyfUO5vIrMERSubfapqYE03qGGU53GugVM2g6jzLNKFum4AMwJww0FDkm927k/i/grYryGAbpPglKdfkXwdRnpBe6aItUyJ0YhWbaN8rc0a3E8gq2YxX7w0szKQoczEr3Ts3f6XutkJtNXQswwQ2dw4v5R7dg7IpaWzRNbtajIZlwSrw0UyJMIAU13khwcJoMgJEQYDScQHBb2B5ouNmvudM7+xXmml2LwxAAKed0QBKmvGQAgzZ2eqeCXF3fcA++gIy0ic7yWn7fIeq4sjHuKRAOyNjkUSccC4Qc16+D1b2sSFNOY22surmQjG4AswAiwc2HUIhXAbFBOAm20Mo+6AG2rQ2u7yzwv5zPY8NBv9Mn1nm+cgITLGNUYHLzKeUJhtyGoB6JuawN5YjuyyjnGlH1q9YBuhWaE8lB4aF/h0Xag4Lpw07/0NVoJzFBR3FglyaA7LXFwjBcyY9LBXgZbXZWsRs2ZwGhihYFA8QBrFWQeLQxlCmBokFrtj1hjAPt7kMUByp7sNrBkgSH03hlS4GpyWywOHg/Gs30Kyab635Xz6kutD4ZGKzCGotC/w8G2559v8d9I95FAzzYiqxBZxGdCFxnGjhb1+XREo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85aceabc-e0ba-4b62-98fe-08d7eeacb7b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2020 15:23:07.8545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JY+WJWnFDrK2bZFiYKgcyL+Mq2DPTytrQZg/AvGaVtsYb1l8C/A6b5/4b8z+i/d9BchyCbsgn0nlqyNRADjfBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4591
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_082320_131960_CB84F5B2 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> For preparation of LU Dedicated buffer mode support on WriteBooster
> feature, "index" parameter shall be added and allowed to be specified
> by callers.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

> ---
>  drivers/scsi/ufs/ufs-sysfs.c |  2 +-
>  drivers/scsi/ufs/ufshcd.c    | 28 +++++++++++++++-------------
>  drivers/scsi/ufs/ufshcd.h    |  2 +-
>  3 files changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
> index 93484408bc40..b86b6a40d7e6 100644
> --- a/drivers/scsi/ufs/ufs-sysfs.c
> +++ b/drivers/scsi/ufs/ufs-sysfs.c
> @@ -631,7 +631,7 @@ static ssize_t _name##_show(struct device *dev,
> \
>         struct ufs_hba *hba = dev_get_drvdata(dev);                     \
>         pm_runtime_get_sync(hba->dev);                                  \
>         ret = ufshcd_query_flag(hba, UPIU_QUERY_OPCODE_READ_FLAG,       \
> -               QUERY_FLAG_IDN##_uname, &flag);                         \
> +               QUERY_FLAG_IDN##_uname, 0, &flag);                      \
Noticed that you are handling this in patch #3 - that's fine!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
