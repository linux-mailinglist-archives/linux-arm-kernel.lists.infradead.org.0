Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24F11C3755
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8gOaMYXSmgRL1MfBRa3jBMfv87nR620mrHsBLj5soE=; b=A32loFV/OiXHAb
	kqQsccuNjCHl9wm7BP2ZLP3oAiGuztarZoAh6Tha1koWR/GiWhQc3NcsjVS663vE2E24Jon/8vou6
	2GV5JAjinD4vJ+uxonFyFnEd11SRtz02Eqed36XAyY+bjNKORjUt0oZthJ9IIBbL445Oq0VubyHab
	D9q2T1NB1aOoV3bpFY87lFCmgT3YALBaGJG0HJqZsowGlXfTMovWc0YHgGFopvbgLI8+JgIzHtJBz
	H0XS2/yjae6kTj7FDGaa//9WWDQNMsPvIcgqP2bQHBcUNHwJohJ12yn2stflnKqRthJNKj25chqnU
	emIUGfM8ugM3lHWBkA1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYli-0000JE-Sx; Mon, 04 May 2020 10:56:14 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYlM-00005o-5N; Mon, 04 May 2020 10:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588589752; x=1620125752;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oh4h2+4WZfPbgFoCzN2W2S5zx5A2o0hiWxokVRUC5Q4=;
 b=BTrVySscfblW9cXI8QVmM3y30QhI5fun5eWaejwbPuXCh3du5AG2CGhN
 aiNwkdIMF4ltGf91ldpU+uRsj+c70iKcC3SLu7Vt/3W7YIzSAUUSQGfmB
 Xg+ErluUyxC52r1PWOv8A9F8FUH99TazedNSnKIfnQ0OWwLrqOlAOdCUT
 5pEUTE6uDKhpAqp6c2T9lkgZ8xW94YIiMNrFMQEOv16dNdyfk+I+zh3B2
 af4X+RW/GJM2jE3QwLWztXz2NUQ0thGN+qyb1uVTeK/jkEbeASnnfzzUq
 rah5njpSz98mbFxjyBIeTqWM9F/R+kyWMVgu3LSzio4ftZvb2K4AaEMHM Q==;
IronPort-SDR: Ln/eydCr9O3sDbfek55OFSjYHtspaSrNBCJZQD3ttPDoxTfh7PdeGhaucQFz3Kym1ulu8j1Gkv
 Kni3t9JI1swq4oac9SYFcjMfd3v8/h4TivPbnxSzt3FDJ42Nf8vTFl5TyyHPYyptI6Tm0Hy3Zr
 VdpNfHmQrdbChZnN37YQxodXcYbHyJo2lfSD4P4KkkLVm881+0DJgW9kBIFarviTEFe5qvhwbd
 zyPI/dGD4nPZEg1KMc57whwVq1t7HqlczaAGUKV5yS0pzVu1cNoQrlI1ICIXqoSkbSoirWXgXO
 7oM=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="138292890"
Received: from mail-co1nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.51])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 18:55:47 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0mZpg5CVrBCxtpsGhiqBSrDs6U2zO5k+xY9y2v2Au5LFMn1LEMUqKaUB2e7srUQMlWz9VKiNJFiGmJHdWVtMZPT8DS9OSNOBDvmM9xY4uUzr+xBSEFpnoZRuDVWM6a1rP+xgQ7xN6i3iwJyxmqUbuwFJtAJUePEq1GoElhsFp8VbSrC9/kzBL+HzS5eRHmisj5qi0qPj1BgKUGqKzoxz4/r8jf3/W9svOenK+AYAb0/5gs4KK/REZjZQBP7ATvIlvAjmqJ3hj9TRLF1uH9IgvyN3g9JXcHzdmMbVkHKhQyTkWY0cvC6qq49PTgUZyoIjz9+VnELgtKhkbJcERhYCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1IHuRbl5+OWrYQQMS7uZLA68oV+zHatijsoxTF/oz8=;
 b=WDbP2q+SZSXVnyJ59gKzyvQyGRT0KNiZs6xbbD0O+1371UZJqKHLzhAnqOuhiOGTGK+BdNESlUDzjhaLx5bczR4KSy5/47ZB/80Dm2qSabJn3NahEikTg8sMpqsXuNQEiAIsfrZtEeV6RHKhLY1N1HttIfcU2PIxahHOddGJb2PJwynO9bLYApAm+MBBWZY9rsux2lx+JC9MTY7OLTpOEuPfqhipg0p5dZIONm24+2b8rWeAxyojjRRTGifGlfxN6kxS0Chw1iJZctlGFriC1NNUQ/KRIDebhSgbEghXuXV2zv6SW2azokcG3jxzzfTjzgq7ttV9LIsQzkw+DWAcug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R1IHuRbl5+OWrYQQMS7uZLA68oV+zHatijsoxTF/oz8=;
 b=hcomA+Z5JrNQ0d3N/n/ceo8YVXPxOop6acjK0aarsg7JgW5vptGlY/xs6GjMfA8DEXp1AQBjTlM5850IypI3ZFy+GlNIGGsa/wFMOzG+OlUQJSKWII6BSXeAIzAwplfN81YzcEArqrmXBp/xK3XV8mYqCJKTLoiuyIOj0wrbR04=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4464.namprd04.prod.outlook.com (2603:10b6:805:b2::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Mon, 4 May
 2020 10:55:45 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 10:55:45 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v5 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Thread-Topic: [PATCH v5 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Thread-Index: AQHWIT7UcNDlRrxlf0S0WlJUL1qmaqiXwh9Q
Date: Mon, 4 May 2020 10:55:44 +0000
Message-ID: <SN6PR04MB46408BF365ADE7F226275BC0FCA60@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-5-stanley.chu@mediatek.com>
In-Reply-To: <20200503113415.21034-5-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0bb70594-c25b-46a9-ef8a-08d7f019b23a
x-ms-traffictypediagnostic: SN6PR04MB4464:
x-microsoft-antispam-prvs: <SN6PR04MB446415C053937DE91B2ADDE7FCA60@SN6PR04MB4464.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sVYxk6HOTY93j7bP2XvIhFvJyuiiEW6zb8SfCIRgsHwNbctaOK6bVwUrAUvkASId4+2cRSmf8w8Mz/NmT4yIaueS5exwKDNQJlN+TJMz7/pHWum5lpbdM74QylDOKGdXc9/oU9RJHHBhGlnXczHf0Wxf2s5f3Ghd5RtnebZT/pdUHTR4Kb1orCwSdPDHD10zzOdAegbHERW/7u7yp1sMIGvYKSzJuK4RF29EIbtVT01oaUhikLd2fD7032ZtmuQguJ3tMIk/PgptZINqFLEj8Ja7slp8CpovLQsegvXmJYFP+/kPmeXBskyaK43h5Z6aM0BQoNn3E2NpIm2I+nwunILEeiMLyaUP/pbJDVQIwo9UqjFX5R5vVnqeJGW/KsDVL/ltfy7AcQseSfD5WiWDwKO9QPhlsNvEIOJuylPeB69ZA1GCaQR7tr/YQGS5qwcl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(66476007)(8676002)(26005)(2906002)(52536014)(6506007)(71200400001)(478600001)(33656002)(5660300002)(86362001)(64756008)(4744005)(55016002)(9686003)(7696005)(66946007)(54906003)(66446008)(76116006)(4326008)(66556008)(186003)(8936002)(316002)(7416002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2CsDIQPmF5JMeflgoh85wQDoymLbvdkNNtDd+oxAXWdFACswnFcRhbTCWS1GBjZGcsjSmLZ2NJWmg40Ls5MuHExkVR6rR1PvSbyrHm52BNYBUSFWxg3jRWu1yZWgbikykOz/pN3JW3sk00XBeVLl26t6TSLc94DWl3zf8w0UW1Uy6bZbEyVx2iR4aZaWph7hQt+hqF+PzpyBUwxXalSfku5+lNObAdMzdF8rtx1fIg1RJ3tth9dO9KuOF1O0mxZ5O6G4rqIU1LgLFmpUQSmxa5w3N12jnLZBI0cMWSsLgnTdKAoYhnN8gwPyXrovSsHDRUxBywuwa5o6Ykx0ATfjnYMHL+U/MMvfCzvdfuXUXejjZKv4zJ3MNlRYrO6TeJrR7lx7ZXeUfDeZonFoM+mN1HJqrPsnmNEE3ocl7ogube9RuJ3BuRqsAp/5njggbJHvEDa8I3UuSECQJD/qma1LdGdpx9oZQSptviS1skdQ5Yti1Ds3Q6YetQ50bPqfzsKwMfAl93SbkcVKoBIAA6Po5dNkR6A9YhaFHEgHkjGRgM4Oqw4x4oaDs+cyQDZssL5NPWbBdhoAnZ8aNaIggQtBb7NngQVo6gBOdf4AMRWymVs4w3XUpkn0Z9J4sP6eNv7kDXwQOB+F3k4jR8xMdgvEKcFxdfINka2gUYvOQnaEklRIZNMfptMRjjs+zIugYqtKsXPGAiirZ/BiZV67HYtsJwO44SzbzI68YUrTPsGIdgWyopMhW84KAHgD1brVTecMR4V8M9TSyM4zPiXM/2Ej2Wzzk2UXApA/aWKooCpcC70=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bb70594-c25b-46a9-ef8a-08d7f019b23a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 10:55:44.8071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tJmRo7UenTzlfHlb4Y+70c2Wr2cHIyCbnVYAhRXmm3C9+mgFoi2VAbyyCW5gcU0oMzRyMLIQQNsjteoqac5HRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_035552_319269_4C89885D 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> @@ -555,10 +561,8 @@ static int ufs_mtk_apply_dev_quirks(struct ufs_hba
> *hba)
>         struct ufs_dev_info *dev_info = &hba->dev_info;
>         u16 mid = dev_info->wmanufacturerid;
> 
> -       if (mid == UFS_VENDOR_SAMSUNG) {
> -               hba->dev_quirks &= ~UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE;
> +       if (mid == UFS_VENDOR_SAMSUNG)
>                 ufshcd_dme_set(hba, UIC_ARG_MIB(PA_TACTIVATE), 6);
> -       }
> 
>         /*
>          * Decide waiting time before gating reference clock and
> @@ -575,6 +579,17 @@ static int ufs_mtk_apply_dev_quirks(struct ufs_hba
> *hba)
>         return 0;
>  }
> 
> +void ufs_mtk_fixup_dev_quirks(struct ufs_hba *hba)
> +{
> +       struct ufs_dev_info *dev_info = &hba->dev_info;
> +       u16 mid = dev_info->wmanufacturerid;
> +
> +       ufshcd_fixup_device_setup(hba, ufs_mtk_dev_fixups);
> +
> +       if (mid == UFS_VENDOR_SAMSUNG)
> +               hba->dev_quirks &= ~UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE;
Why move it? It is a unipro/hci param.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
