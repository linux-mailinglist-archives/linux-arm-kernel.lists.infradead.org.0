Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5222514E038
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBN2a4AIeo5Gc2xtDbyiI7/2j0qWQK3GGsBuIBdeF4M=; b=berVWwlnCXwOmc
	Q68UOZDqzpa7C91xFg9bg4dkFVt9czjjhLAEHtdaiZuDEIq4Wb0Ow1UsmovHvgZd2KRDrE3KYVK5t
	dyR/tA7divEj363r2RDdM58BG50hplK/tsisXe+qw036/k2jBbWYQAfdNP4mTKnuCscchUv0/NdkO
	yfnKclubdzO+0rqWZWt6bpIa77fvsIs226AA7qzcw8w/ve7cUbII+6QiV2AzsKSitkEY+dfIy62wQ
	mJowbvIzhLvUOKd/OktZc1J10vc9uzMxYVaimHXEkZNikKUNu1sglMZwo3a633o58uRaFb5OhGH7F
	sW2yV222I8Ia0CP+8Eeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDu2-0002Qw-Js; Thu, 30 Jan 2020 17:46:54 +0000
Received: from mail-bn7nam10on2081.outbound.protection.outlook.com
 ([40.107.92.81] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDtn-0002P7-Oe; Thu, 30 Jan 2020 17:46:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZv5nwNeWTahY2ScmWQVujeo52k+eOumX/uO+157SLI7a1eHVpuygad3EElTzcynbAj9L+BgNAtlBUMlUTa5N11/JQhmt7Vi7eAp1znZszsRK/h7slCau1FVnBMxhqqI/82H2qgzJLZAHk8aW7buuL1yY3oNR82Kn3mdKI9IEmyTo8z4bOEKiU4CCpB8fqS10Drdzx6HAAeaVflSELnD2dYa5UJ5Ni1UAFEzLeM/rFReljRWbekL/S/vRbJ4ZXYCQsYcy7sU1jQzdjt/niK9nNKAJnu46ZAXbSd5fWgp7Kl/LhWItycT/RQ5J13250i3UwgRrbzVnTFX4GFuAgIqGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Ebke6eveyxao7m6TM2J+k5u29xj8tTIql2r8ll4bY=;
 b=nmE2B6/iuTt9gxpjmZ/hC894lZoGUo+p46y/cU+RKvaeHnXdB+yG91Tivn382lvrmk5YA7GdDAano8vLh5oZihTxVBrHNKDMh5zPFxx4Y4dg6PcSRqyjJfYbx6OAcPPfK2RS0Eiso9J/EIhCo1ykCEbXXmqlxbQZ0wq8ZMWIotKdwJCPkx9y7P0A+DgAUWbh1EAMc7xMPZ3p5qalsSuuwK2bVAJGMy7kzgYUyPHGx3q7KZTrGwOWxFyoRTLDP8sWAzop/C/zFSsAQ4jf6F0fS+LvxDqoUN0MzCusqiPXLMZx0ObXaKwh09DsliSTBCcKm4ENQiI4Odqi0VJajO0pbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Ebke6eveyxao7m6TM2J+k5u29xj8tTIql2r8ll4bY=;
 b=FqmeQ3V4ICnLvFN7W/A3AMH02Kxz/FX7zGBCD/xK+jUHhy0UQo9oTJqDWFeiuSa12gsBawRNIrEJWPJJpn6M4xbRcWygCrASAKL/iDlUmdBZ4ioa12XLmOtVXnWp7CArufg7jcwBwf6C4Gh/ZP2ELR7QlA22dNOmi34P9PyceOs=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.179.87) by
 BN7PR08MB4468.namprd08.prod.outlook.com (52.133.222.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Thu, 30 Jan 2020 17:46:38 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11%7]) with mapi id 15.20.2686.025; Thu, 30 Jan 2020
 17:46:38 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>
Subject: RE: [EXT] [PATCH RESEND v3 4/4] scsi: ufs-mediatek: gate ref-clk
 during Auto-Hibern8
Thread-Topic: [EXT] [PATCH RESEND v3 4/4] scsi: ufs-mediatek: gate ref-clk
 during Auto-Hibern8
Thread-Index: AQHV1pJIc1dgl/ITFkycQvQR9IcT1KgDfTyA
Date: Thu, 30 Jan 2020 17:46:37 +0000
Message-ID: <BN7PR08MB5684D2DEA29598A666214B3FDB040@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200129105251.12466-1-stanley.chu@mediatek.com>
 <20200129105251.12466-5-stanley.chu@mediatek.com>
In-Reply-To: <20200129105251.12466-5-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.80.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96e96dca-fe07-468b-f1a4-08d7a5ac5b40
x-ms-traffictypediagnostic: BN7PR08MB4468:|BN7PR08MB4468:|BN7PR08MB4468:
x-microsoft-antispam-prvs: <BN7PR08MB446839B2DDE3DCB9AAE55D77DB040@BN7PR08MB4468.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(55236004)(6506007)(8676002)(5660300002)(76116006)(26005)(9686003)(81156014)(81166006)(52536014)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(7416002)(8936002)(186003)(7696005)(55016002)(86362001)(316002)(2906002)(33656002)(558084003)(110136005)(4326008)(54906003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB4468;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CtLo7dr4allvHi6BkNOySr1LnuGEpKrSCA0bxIMMMu15aQMRBm0hoN1u+vTnfVuMzC7Dg/E1j7P5ige+yquuOpadH04az5bEgZtBtv7C1w1IXOcD5MI7RnfKswEjlTQiYI3HoakvdQV38Q8NoMokwkTp/lhryJUJERE7AvobSDe9Q1UMDIUwbmOZz0vkUvn053eLOdtvQ4ObVh6syvM9uBDJT10S2rGLto7ty43j9cAWYv2jHgegyQlmjnFsfGGHk22RcS+U/9/k9HTFWP/O+dVNB4gMVmjDmh1UZhuA0V95PaW8EwHgEoLSbQgxffmDeLFXxlMgilP8Xb4WgL21BVgvpYnhguuLbMij0UbZ4N2jQSeGggWuUx5QNpP6lBzhSwq0y2E0orNDXiC9Nlo/QYjOP2psAUX/Fotn6ZCE/AcxkrG8lXegeTaVhMsd3VqI
x-ms-exchange-antispam-messagedata: E10j3/8Zsju/hjmfsjl0g6OfHUJxxhhNDsKENLALZ3U86Bslu5fg0v3XkH/kzRT/cPMXKOj9r7Dccywgt4PsmMNEjLEgDc2DQx6vZWX3vzVbsKx43yYRlDf6xSq3B+IeP2+0EFfi+ynBQS8+LzGcCg==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96e96dca-fe07-468b-f1a4-08d7a5ac5b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 17:46:37.8747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g1mf3pcQojX1rAh5fvi3ofr07UTfr5j4EuD+q0G4isk8lmXRdb1zeSNrUz7eVEA2Fl3C532tM5FXMVm50HNy5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB4468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_094640_349989_DE0D1957 
X-CRM114-Status: UNSURE (   3.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.81 listed in wl.mailspike.net]
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
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
