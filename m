Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F9D1C37B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzghkWdPypXYCsaG/PkMZXwybxBmMaGtyJpWvh4TEbM=; b=CvEPitn4X2BXSY
	FB4IEfOBa5clOzMW9laYJhhZtmez7TUMEr2wXe91DtC21FAfcQFmlWvO+Ixqv3He1/KONmdolMw3j
	WK/jlNLju4MYjxZ2kmqhE+phx5z2L9l9sGrnF4Ojymvt08kUiTNJiB4X+5CTtx23GnqnMJRXkfGrV
	NQyeF8TtrTLtOOU+/qYja9qLdcxdV4FpfMtv4IKq67UOseauYTgJ1DrtRSeUQNeC2XW1gVWvxHDIF
	uP12UZ7P+cYqwxIUuB4kYUV0EtmySq7CVxkQqM0zkNzoLX/P3GOfgVilvqulhvBdGQHuvN59FpZ+2
	w5EIujRcAmis01qXguOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYuT-0007BL-NK; Mon, 04 May 2020 11:05:17 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYtj-0006th-FI; Mon, 04 May 2020 11:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588590271; x=1620126271;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3swNNt7ByUDH4TEmomKLU6LjxC0+j3d+1xoB7kpyRUU=;
 b=rwWAvfyYVoj1/Mxfwl6goEzqyUmetjEHMa9YKWnd/gZuiQ4U9ZNMd0Ug
 5VPdYsVpFH3r0UuZMyvokx8nYqCNx34p5Jobxg8LnDL+RIgJsgFiDkEJR
 gnW+GF5OT5RvOcidOLXCDi9trpae3tE+qfLVZPOZ5fD07S4iwu2wvqy8N
 DYDf5gDbEHGbKKoMjOvTkhcrpYOQ5RMgneuHISqA/zZyTzXMhZOs16WEy
 rrRp+ohDNknn5+O3wDsCRWuHPcBMz9T9vMPbDJN6cwEZlF+Fw/Jcn3tCs
 Rxw56Q5t1fR6OncaKscgO2CJtBbjckFN/KvyI4SlqBviyR6/iPB1irFot w==;
IronPort-SDR: eUfu5vOvj3gHGxxVfrKfzFnSfmesF9cJxdB+OvyzkVnEi4Cl70YAwaCKl6geiGTYCTr5HeYaMK
 AgNK36+kaKPTLBNta/AKNQivknWJ2PUrE/96Z+rJk1tiexp9+NiZF6wyK/FVmx0Bts5pIxt98f
 /H1mcctsEWxLZcZlLRbMPUGejOx1zu1ndZcTgucmVQeDfJM3M47uGIUCFfDLsdo6Zc5N1NpNdj
 K+QEZoPuRaoZHDTb0Zt8kwtVU1Sb+oiFO2fI1D4lVCDj0gPQUGPXOfJjsEQk551UOVgTXQAgQp
 Q5c=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="245704408"
Received: from mail-bl2nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.52])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 19:04:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/NphUkc7QW45V0m6rg98wnM4FMfjoqwp2GgdUyoawZk/2jJTivDzzY/xeCwb34fJuOIK9WwvZL7mIAra5Eg1B+0ZSIpYANbkmspsB4+7nBRwBvpCMJJh0+/UEsfLMxaNIiV/HGqoLsZTuAvTdYzppj3NwahMnGF2FFBICCpnXvdZ8OpWuykq1Ox3CXwUgxbfnozsbVeJFAP/DoUBBtl6TjMdaW0FCmV83fcsB2vr+pPCSPHcwEZbHTSN0PNrMyUDXpu48oRxJiHr3rs0fJONr8Hu1b3u3O/U882oY7UKduTaM9e2j3teXPXKN6Rilc2j8oWU/tD+xxXWNKI0nLt4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3swNNt7ByUDH4TEmomKLU6LjxC0+j3d+1xoB7kpyRUU=;
 b=SKncE79GPgfQvorVjSxrZ9v1mU0M/xtaLTmOxgr/1FIlnLTQXHMedGyE8vug9QbwBPhekHDFrr04EChCmVmSn6sjAZrhP1tELmhcMh+FTV8qemn2t/MK6RVSvu9avbbjb6h8QW8eCwPYpKimXXDfMqxj7aJLAkiFBJJN8PivyPC8LA21Ux/54dSvhEgEdhlxnVOq1TEM2HqX6Ia8imZoaoEfqILs02F2N+iyqMwIN0X1SJvK/lzm7uj/4zTgrMsHFdcM5yNXbrtB812W8kHFEkmKevG90xp/CiOS2Yc0fAQa6dVcAH80K5y9dHMmO6Lb9HjY3dYV3rc1eGZqqFcGdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3swNNt7ByUDH4TEmomKLU6LjxC0+j3d+1xoB7kpyRUU=;
 b=njmdRKcJM9ftE0//OwkhC9RJ996hXoJfXMkOxlyHGjbxOkbsL0IjtVh63WlZ3J+OWTm5bwPL85IdIYiKjd4oUajuPR62cq/W/trCMvhHScrhMWFWLOYaH5LZbDMirGYFQdexDjXsVCg70IKTcGMEyGy/wmPMwzPnX0ltByO0ifs=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4944.namprd04.prod.outlook.com (2603:10b6:805:97::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Mon, 4 May
 2020 11:04:27 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 11:04:27 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v5 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Thread-Topic: [PATCH v5 4/8] scsi: ufs-mediatek: add fixup_dev_quirks vops
Thread-Index: AQHWIT7UcNDlRrxlf0S0WlJUL1qmaqiXxNnw
Date: Mon, 4 May 2020 11:04:27 +0000
Message-ID: <SN6PR04MB46402768D43F689C00ADDDF1FCA60@SN6PR04MB4640.namprd04.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: a23452cb-9cd0-4252-594d-08d7f01ae9b5
x-ms-traffictypediagnostic: SN6PR04MB4944:
x-microsoft-antispam-prvs: <SN6PR04MB4944577424D71F3BAEECBB89FCA60@SN6PR04MB4944.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9ZYItufUsDj8bk4tAn5UuDLaJCMWE22tW1cTEhjYBzjCJG9mL2DnlyOBCukPA22eD8VLy3bmDjxFNh+ah+rPDJKW/t87iOHnCIXPV+n3bZcrRrG9QpilV4hqaenkHsN1cVrGy5VuZa/L/yKZYYUoC1LVDNCT2qr9ob2oWR2sU5tQrA02kXacd3wXiaEXbnQNHEeHkHD/CyCs0viCLTTIc96jrnXjjosQr9zgo7fU1CMgl57PSbJZXLKL0oHxPc0DIQMAAUmAG7oANgajza8yLlX2kgpCzUdCqZH7yQb+usiECscPyAHzXnTYlF4g4XwQCc4pGxPpAY8FUsvghSfO58zQ9SWDuCyTRz+KZZhpWVMhvVZ3k/6kSeZl+nwmsIVfHqdHj/jW56aWikC21ETu5qiZZZgU0jKjz/zEjL+rzg9p/UEou+CsPjZ6NnzH626q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(136003)(376002)(39860400002)(396003)(26005)(52536014)(186003)(7696005)(6506007)(316002)(86362001)(7416002)(110136005)(54906003)(2906002)(8676002)(558084003)(71200400001)(9686003)(4326008)(5660300002)(55016002)(66446008)(66556008)(64756008)(66946007)(66476007)(76116006)(478600001)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: PhR/TzSmtaNByZUC+wApRh9Xn2/R1YXrG4bW5rIdj4OKk2lRsx8gDPY1/48oz0yZPr1HkL/x0RS13wOFKKjnrM+9iMqO2rzPwLLNyKSjLPtq+ahx4NjdbQyCqjNl75TbDD92+c3UErxK39PLubC02i0du/wcSXQfx0B2zoNctWVMMucInUxPF0i2gDwUpKVQVTXuBv7qUKugrnO/kVTos+Ws9JVg+jldjcRIEQ3/f7RzXuE10YDKPMjmgf6QEtNtyb9dWQFIjQNsqMUXkrCyejaDEnMXJLsbg1v9GOFhHeUU2mHKHAhRAXXYoR5yFnyKvSjFWcwM354xbYarNIyfoJ1asSJxASXCZDfMmoZoZQP5FmRveNIIXnRPQUqPFv6yVyJGeGE7+759Jp2xa5Ahm89S72OeGcrBTNQvKha7j8FzxMrk4unRlK/ve8AFKC+TALsx6N8ifOt6KRRV7YJ6FBuASO6v3+/TlWv4FOkTKFKVROGzAeeTEnmUnESUtG8tKWCY79lI/swXalLEC8KsCOJADT4b7eTMNLNDw7Kv6RNdI4tnM+LbJtA6tdRfXIOJW9dgHmOY1ki8B1ecNF2vq6RBHSMArH1yml8MNRPWIKnNljf4EqsHnInmRADKvBiVms9ESkIUW036VV7g0BMGWu+CjFJZg82TqYQJRVyG5N+TTZ5SdUGKZJLKX6wYO0/s1cvauUe4K80ctCj48sDs7/cbHeZ1jRfciFigmHqoB2UrIq+qCacBhEAlMfwOKKuj3QMs/1PjEIokcKHY7fRcEB8qPt8hH9+yAfYkTncrZeE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a23452cb-9cd0-4252-594d-08d7f01ae9b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 11:04:27.5497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cHU8lvnzqS3OXw308NpBB207jEFHYbAQOVCN0gLr2Q0DTJl6hdE8i9d7TDl+OSmPlbCkEFUzd53HJ5Q8XW1Adg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_040431_525220_97928997 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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

 
> 
> Add fixup_dev_quirk vops in MediaTek UFS platforms and provide
> an initial vendor-specific device quirk table.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
