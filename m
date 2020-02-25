Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768A16C367
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lH9ybDAa4vSr5dR/i2/Yut6a4xk7qw0jDAhojeYJ3KY=; b=b5/3Ov560pkIU0
	Zgt337NXWB+CaBaTfltbRvsXyio3IA8YEVgyVXeiHnSaAJFV4lc1Vzu3zK2nXiba3TfPuc263JIdC
	MfnC69jwOvR7ykR/6o3/V4VQ2fXobQfaYcOmLBrl+zxZCDymFrfKhPdr6ZiI6XFECnh78+UH3jJ5V
	GIVlpw1c5EVSAt8SUi41+KZwK9najpUIe/Y3CuuRh05cbZ9+q1ve1WUAI+WVAtqQyguv3fQu4YNNn
	MneE/sS3zyQcaI8g1kleZRU7zqli95BNbq3wapDVfn6bKhPcmUraxZnUL+uYeu6kTCIZ7h5aU/ho1
	k9Z3BmxaAsXwshXhpRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6atG-0001M2-0I; Tue, 25 Feb 2020 14:08:50 +0000
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6asv-00019D-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:08:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmHiLRKKNSQBZUaMBpIYWGC8g5ObAwmoCOFf+hgDy36nfdymNq8YBIRnHRGv1oQMjtNChkfR2Vl1Ewojw1dYHZskLRY0bFEQ3SZ6Cpp+8lmV4IkM874aQtQTGiH2HAloGNnIjDfa6NbSKDnwCm9sM2+DPTr6S+cKPo28FapNvHT6WVOyllsOoj2Io1ASga9NnwoAHtoW08M+osjDjnXdrDtQSak5IrjJhYAxC/MbzX2r8fHrGZmv2wh+4bzCJvoP10+LtiGkkrmap1BUXbdaGS6Os5YICxijpvdzcZuMecWf/YkwnmZnrwYuIq0FY3sI1au8RkCg+6WquNbx80iQaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5CNM5W7Qd+vEZc+2RXqmNdl/RxxDO8gHNCWHaDgrM/o=;
 b=Zbpc0tHcbMv1MHZDJt6bdsbeZ2t9E4vJQmZiPsOgH5AvMmuvMhRPDZ69RweAkrfjVQ/w/pHcjp6KQ+bvY4jcxORpG+hmSSvzxDBqYTYCbABlDABY1WiDykODKZDRZEP9qhoaJam34zq8OKgUzoE6gWl+JihgrSHeRr42iv3szHSZK9sMilmS+aIGNDWN4rjbqG28bFqhBe9vEo3inavKWRMEHG3Hw/JK2//kjDSor8vNc28SNXi26pTPGaBAgf8sxktFiHzkHVnVKomLJRl/GB2VrH683Q4S/7Ez9KsZH1vMv+2SrZpt+dJrMGiycZXVureDI/UHghHvK85gJPc38w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5CNM5W7Qd+vEZc+2RXqmNdl/RxxDO8gHNCWHaDgrM/o=;
 b=p1hKSZ1rYrSdOT+oeUVMgy0nCgB6kg0ZTAJdLc6z1NcTUOzIWBiiXgafOpQfWaVHby/duUc14CyzW2HzaaxAY2qcwQq7ARM2bTpnV2psHZi65oo6o+qlYeyntW4gWNurOW1vQDhA0qpyqV8p32eFzo0Jc3VHYyrAprONpsH1qIg=
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com (20.178.82.25) by
 AM0PR06MB5297.eurprd06.prod.outlook.com (20.178.82.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 14:08:23 +0000
Received: from AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::586e:bd84:8aec:a50]) by AM0PR06MB5185.eurprd06.prod.outlook.com
 ([fe80::586e:bd84:8aec:a50%4]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 14:08:23 +0000
From: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
To: Michal Simek <michal.simek@xilinx.com>, "wsa@the-dreams.de"
 <wsa@the-dreams.de>
Subject: RE: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Topic: [PATCH] i2c: xiic: Support disabling multi-master in DT
Thread-Index: AQHV5mNyTIn2+pYf+Eu7yiopaV9KGKgqKWsAgAHJyWA=
Date: Tue, 25 Feb 2020 14:08:22 +0000
Message-ID: <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
In-Reply-To: <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Enabled=True;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_SiteId=6d7393e0-41f5-4c2e-9b12-4c2be5da5c57;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Owner=ext-jaakko.laine@vaisala.com;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_SetDate=2020-02-25T14:08:21.0714500Z;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Name=Restricted;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_ActionId=d14ff242-82c5-49c6-9f21-31c73a957bbc;
 MSIP_Label_d5842b46-9b7a-431a-b662-8cc44ff92a4e_Extended_MSFT_Method=Automatic;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Enabled=True;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_SiteId=6d7393e0-41f5-4c2e-9b12-4c2be5da5c57;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Owner=ext-jaakko.laine@vaisala.com;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_SetDate=2020-02-25T14:08:21.0714500Z;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Name=No Label;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_ActionId=d14ff242-82c5-49c6-9f21-31c73a957bbc;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Parent=d5842b46-9b7a-431a-b662-8cc44ff92a4e;
 MSIP_Label_7246d30e-a6af-4059-9b44-a42233242e28_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ext-jaakko.laine@vaisala.com; 
x-originating-ip: [193.143.230.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abe22bd2-2adc-4c0c-2316-08d7b9fc2ccf
x-ms-traffictypediagnostic: AM0PR06MB5297:
x-microsoft-antispam-prvs: <AM0PR06MB529720AF70EC689CC49B1DD9D4ED0@AM0PR06MB5297.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(346002)(396003)(136003)(199004)(189003)(2906002)(86362001)(53546011)(81156014)(54906003)(110136005)(186003)(6506007)(478600001)(26005)(8936002)(66946007)(4326008)(81166006)(66476007)(8676002)(5660300002)(9686003)(66556008)(71200400001)(33656002)(52536014)(4744005)(316002)(7696005)(64756008)(66446008)(76116006)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR06MB5297;
 H:AM0PR06MB5185.eurprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: vaisala.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u8OOg5yjcyeWf6h3R3El4idhpJx33cPIhVWm8mWtef50JdJTPxq+OCxV3EFn4pN3EulacowfU1+94M3Lmlh1ByTwBwykQQNlV/k90j+Q3+71MwYGotfBMi6jGEhaQM7Z/tdi0CZx/4t13owDTLWrS6ZVSk6/8jRJRCEe04WqcVZ5czQUOKsn2n38PkimzYs6DMmtWn9Bom72Y2pbriESwZvkdl0WW9nCuYM0NPymlvLNJNn/hg5yd2Dl06+99rsHZ5AOxo1uFb6gk2255ZU/VKcMlEoG5e1a2ZrzDi3GjwDynb4ZPR5YBYZTq7hYMBl+LniPHVdJdhkHJuSiJkrW47rXh7MHxf6P6hMaOAQI+lwsEG2RAL31lgx7iDZ6DIrIMLDUBtteSDIdAsFwdjG1d3JZaWuS4/MfpOmxh/OmafS0Sdxt+BleMciK+bDD75Rf
x-ms-exchange-antispam-messagedata: XB0h1KQ10JDA4D8/4SM1JMZIopQB4JG+8K+EYXXJnDtk70BdYFHv1C65eurKfenN1LDIk55u6Ua4v3wVB3jaKGQZoF2ypdB+Uq4BpxpOom3PsA2VehqQtzAVsFjBQevFcehXZt6tj9gB5qQfOSrcWg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abe22bd2-2adc-4c0c-2316-08d7b9fc2ccf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 14:08:23.0194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NUHECoOEbynyjBdKrO2+TA0DjPKYDaQk8DamtXuVeq25VT1aHKPrc4dLWujQxAU38/DLvfa88BxnCKRgpSiRCeN3vxW+q+bpm/DqfAXOxvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB5297
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_060829_971745_27724953 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

-----Original Message-----
From: Michal Simek <michal.simek@xilinx.com> 
Sent: Monday, 24 February, 2020 12:14
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>; wsa@the-dreams.de
Cc: linux-i2c@vger.kernel.org; michal.simek@xilinx.com; linux-arm-kernel@lists.infradead.org; Shubhrajyoti Datta <shubhraj@xilinx.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT

> nit: I can't see reason for these changes above. I would do it in
> separate patch if you want to align.

I tried to preserve the original authors' intention of having the
lines aligned. My new parameter name was 1 character too
long to fit properly in the original space. I don't have strong
preference over aligned vs not.

I will make V2 without aligning new parameter as suggested
if this is otherwise ok. This will reduce changed line count.

Thank you for review,
Jaakko
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
