Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2074014E02E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4X8RsItMqYeY6VHfEATcneW7QVEJ7BKTHbxPQVBoPo=; b=oukD3eU2k6Y3Zv
	/aQu63yHAc8fpeGVKpBu8oOMbEPKiW+9RXEA3P5/9vVPWzJpoJ1D5DKmHdo26GDfqSeOEunRmZMtQ
	UAHXRaA46x+qXNXqJCO2Tcb+kuECdVa5/17V9DwS/D7K9PqsqK5ox12XFE4mW70e4MYtT8ygevt/n
	I5/Cp8FPkoU/f07o/vREiD3GI1aj5nKuWJdMAlrHM70efYRxvJFxLZCNQRWicSc4Bf7VZMVwESdYQ
	9pE1/QtAEakYMh+0s5xTK9qlsC/X+vf6vfkf2saK2NUWSPfdI/gtebEPsI18tdeDdq3XwawicjQGq
	BF9dhS2qF0itNuJY/q3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDtA-0001m0-6a; Thu, 30 Jan 2020 17:46:00 +0000
Received: from mail-bn7nam10on2069.outbound.protection.outlook.com
 ([40.107.92.69] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDt0-0001ky-7T; Thu, 30 Jan 2020 17:45:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hTfTz4Wf/Me47SGJ5Ocy5MMeTonahR8GCX1/vnF/hBecMrXDCRP9TMISSTcWNsqIs0VWMrJa4IeyS8xaa/Ai89G8BKGkRqWfpHZMlLkBEgeIygc5xlB/CzV76dcTJDTm0j1Y1nGZ22ZrPCAz/4VPOagMDjzlGzXk8mJoLAUYiCvhZQn3N9gDzZxvpOyZ7/L19H6fyn5cwNkwWONnTiTRBsOY6lnpFXalCkARiJkmtAHANLlEmxcxXIxbg8/wOQQV9D538FPXlUIMwQQ/6J6BswFXnLEe9mfU30L+ZcSJykSc+QnFAiFpNpOL5bGxsqO6QmB57rsOcLHa2xzvB8SaWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/JnzXaOOoCJiiMGaih0Wb8tuXqF3Ptj5bX8IwG3mDI=;
 b=Xf8/c9L+Y9sTqVC/BQuq+ac9T0LIByR835eC12YG5WvfifFJllyNGjmkw9zWMyLVNd/kwELWtHTP0MV0Vqe4moH9uEqzDWXpkeLp0DMax/GThu6thzj/kNNmgjLAJBEyeqAbAWB4zeUMVZVHVSUvg75XpjmgSvOjPwz+tx0odMb0JPHRCHv5TKle0CkSMC/Tky6q2JsuJq3mgbAp6Mswd54JdNIgUTwEhN+xsolOFSJx9XnnOzsf5aLHQHx5Rzv7+23gktFqf1WyQowy9NRiv43SqshMZrH5jZ6VC8Upq8bvrrK9gI16/qZ+7AatWSG8B5QIQjwSqe/mutux9J7bcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/JnzXaOOoCJiiMGaih0Wb8tuXqF3Ptj5bX8IwG3mDI=;
 b=1yf6UXyeVnEDqGcxxRbRI98qEipPp8DJufjae1mhfZPW0N/Nqusv8I0nZ4nCtCNXdHmFxHu/cDUQCrmm0NoWm/UKnyK8NppUz91zGY+7B2TUXM67GZKmzpVkbuZlcEfmKWiaFhzrFRdE3ELlJZcOLsWnvF2eOHFfi7yEQFMO2V8=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.179.87) by
 BN7PR08MB4468.namprd08.prod.outlook.com (52.133.222.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Thu, 30 Jan 2020 17:45:43 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11%7]) with mapi id 15.20.2686.025; Thu, 30 Jan 2020
 17:45:43 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>
Subject: RE: [EXT] [PATCH RESEND v3 1/4] scsi: ufs-mediatek: ensure UniPro is
 not powered down before linkup
Thread-Topic: [EXT] [PATCH RESEND v3 1/4] scsi: ufs-mediatek: ensure UniPro is
 not powered down before linkup
Thread-Index: AQHV1pJHfu2kpVWabEi+eWXlrU2PdqgDfLbA
Date: Thu, 30 Jan 2020 17:45:43 +0000
Message-ID: <BN7PR08MB56845828CE1FEAD6A5CB4E61DB040@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200129105251.12466-1-stanley.chu@mediatek.com>
 <20200129105251.12466-2-stanley.chu@mediatek.com>
In-Reply-To: <20200129105251.12466-2-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.80.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70aee559-bbbc-4e77-a6f7-08d7a5ac3ae9
x-ms-traffictypediagnostic: BN7PR08MB4468:|BN7PR08MB4468:|BN7PR08MB4468:
x-microsoft-antispam-prvs: <BN7PR08MB4468BC2C8AEE22FDF405101BDB040@BN7PR08MB4468.namprd08.prod.outlook.com>
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
x-microsoft-antispam-message-info: X9utKxbvMKmAEFPz5gIfMbt2ouNJjrpEdtHc+VNC0llvECerTrFnMa66r3aJJ7o6ijLLENnynQdn6NqMMnn/9bc/JVBdvzMB8WdQEaw/X5Oxpf+f67CmE1ZrFGpVxlCZ6eoU5Bb5qfPOk5Jdiy/ixtw1GQCMoiyfWFWZekPsCqEYDtP0Xg70mJ80KVhhUgOhE8/YPZvKca9rLKKN8B0ERdyYtlMMXofUah3O5A51IdetTjpf9/jMTndWb+5L5WtEUP6cIBqBDcEmtYAeF1YHIwHil6IAlUf5Gj54lRaWcK/I9Fw5FRC1pX/Fk/pL32yj8dbd2MsSAyZU8s8QFKcE10qUJOFl+yaBWhq8Qtiu2lQZEe5qUGkw2Tp1V/EgQmHGkJfKRCAQ7aNYf6WwbPvcBUywz5hFwlf4s8k455iJXyUImOhdRttxx5FGHXL03XZN
x-ms-exchange-antispam-messagedata: 9/9k4avfESXSpqfopRcl2Fq2n1OLX7Pk7sWWQNOgVTTkytontykB7aV6gFCGW7LDKZ19fGnIwIr6CpH9enbO7OPyBMFjsFXZjiZbyYNq6qmgvPZhd5KLsrnJVTIoDrlBijqPlVn7YB7/OEvUYABl0g==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70aee559-bbbc-4e77-a6f7-08d7a5ac3ae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 17:45:43.6251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +lcqulMvbDhiLT9n2SQbjAMO2WyPhwBiOE6ZaBaLVOongPzjZMUeAaNOyJ5krOtcNDZtfq6Ee+RcjTMkTZjR0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB4468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_094550_322670_F0F68626 
X-CRM114-Status: UNSURE (   3.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.69 listed in list.dnswl.org]
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
 [40.107.92.69 listed in wl.mailspike.net]
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

> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
