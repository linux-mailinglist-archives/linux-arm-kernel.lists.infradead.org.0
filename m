Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A7D195254
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 08:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDTflNFdhdlXAKL8hRF06m7pX89ZV0zbrTsTeB4A1is=; b=B4LkTDgwaLzu6f
	WpoOz59VJUborxjRolovSgkby/DFbiBqmdc9NHhoxW5nYOzJNdj1gvg0cSO+Oqr5Dm/04ZOZeJr8d
	Yowprcnk0iph5Pn8zFzSlc+WYGFtTRGSBlkIpyZZqompgt4MWRrWirKHvTcwjCWNNYq3omnzXJ6dZ
	GQGxhxsAnuLQY3T1uyNPK4QC20K2A9dEaCb616d/geBwVgchCqw05VF+HWnrB6IAMVJIILHL5xzqu
	9brPSZlgZ0wNbANdnn/nk5xnrC8bUQf2NBezDs4iGAU2iucSP9zpwqnBxrRle6pnTJuEJF9Cq2is+
	iyPDCa+IvKBUdfar1tTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHjk2-0007cv-9T; Fri, 27 Mar 2020 07:49:22 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHjju-0007c9-OT; Fri, 27 Mar 2020 07:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585295354; x=1616831354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3So4KQElf8n6iZiDQZl0yB+pEwm0dJL4dFu3ybCXiHc=;
 b=mT1Odfd2vGcHA9Es6RRb/nhbq4/EC6XWsSct69JyiY7qkTXE6n4A/Rwy
 r4GPYlvXBZ4dUn6OQ8njq5T67Hoj4laHyh9HX7irmrnslHX3QG/o61EvP
 sHfrtrK6R61PhE5NzdGgKxCNLEgC9A5N7e33+UAwaIMxn5FOlJKA9+Kn2
 lKquxmxcSFJ/AIigTCYVpJOuCxo2BcYxXt8kbQ4dgiEysuyFs5Sx0CNe9
 VG2XEO0yHM5GvH4PRE4x2GXNQRS6L8CvPBla5zblXzOcVCc2NCApT1s2/
 m2XZvVFURRFSfwwMW7Z074fMwJ9SXMKrdrt5GXBEqHfs9+AocMv+gbz1B A==;
IronPort-SDR: vCJzssId70WsgZUQRz4GGkFsBDr2OGOIqee/oFsSrIUXqYyGt7jl8nccCOal88pnils4ExUTyS
 Y4g9B/z174BMfbyDiyjFpBbFSNXBpIYmKYdmPjKPwzl1+ro7NRNtqNlfoky72+LVGqoX54iJil
 GnXeCnOoB4xLDOhKitB/ss/yg0Npy2s6Rku5eTUtUtRrfD0kW3RL+RaURhYyJduqnIu3vF0o2F
 SKyk08pMoZN0xJXB27RmJ/GvT/rfbCHN2pG2zKgcyT2bi+niSR5jtUupFRqcTr0xD2C5QCR/g9
 uJ0=
X-IronPort-AV: E=Sophos;i="5.72,311,1580745600"; d="scan'208";a="133661378"
Received: from mail-dm6nam10lp2106.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.106])
 by ob1.hgst.iphmx.com with ESMTP; 27 Mar 2020 15:49:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jaY2ERPWZhRYodwlNIviTx9OF4pSLI4Pu9B/gh98LA53aNAkdtkShNhzD13BstHP56+SgDXUFSndq5COD5SzNMzJX17LoUDmF9jtMpxp2ik1hfMN1bAXp0pDIWR7lqryQNwBOvt/yliLltyTaae6bdMMFmvIaASgiiW2LYlYeJMURZMziyuEYBSmJ2Xvylo7ijcqtiZxwNjz6AI74x6FA2pbATRXEqHZWPPLRL7Weq/Bkb7BSule4V1esov9D5Ma0KWaELQNplIb3nz9PVWoHe7kovfEX4BoEehiqJb39d9q8wsbpGT93mcqUGFZ7e4vTHLqJn5eRblmO0iWSpJ+xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JaVdG8BfpUVk+asPQi8jPX6PCq6mY33ZMSKuN47pNOw=;
 b=jUA++6EY2i8VIJ/bPfBK7Q0tVT8U/aQLc4gakORB1kvScfxo+eZ0d+aoCi0sEJgpcztG9QdPM5Vxd5kDuZmu5YVw0WQ7lXsB3yOkR3Fes+Ftre1h3CcPE9ZxZHxt2mN3TX/UPVGqmKZzzR4lTmQbr/EmVk8Tn1yQc799JYSwcJWHzrl/2hu+QoYG1zpkFYXJcPrmji6erkfAgVQYUZMQY++tRAAGcNt1LM+lYLLu2XWBiJeZsB7yh/pwfKzSD3sW6Y4x1dYGIyqyG6rCDD5h/Rsm4UcotWGUAR+ntsRHcdKvxX00A+galMNN+JvdO7s2Iq4p7/Ykwy+f7iEfULwodA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JaVdG8BfpUVk+asPQi8jPX6PCq6mY33ZMSKuN47pNOw=;
 b=J2ihjdL7T/zsUzH9OA9wDREtaXsUoBoB1NnpBMFR5VQSqPTufy29WH2UPUM3WDrNldIdzpo4+Ob5YHz1MEHXO8aHxeXFYdWCGCrUA5YEcRHhKDXD75bNJfUc+HMM2P54imNRjLal+L/+s7ujhcuaP0yIgeiG0mLnj14im6dSyo4=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4656.namprd04.prod.outlook.com (2603:10b6:805:aa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Fri, 27 Mar
 2020 07:49:04 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2856.019; Fri, 27 Mar 2020
 07:49:04 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, Can Guo
 <cang@codeaurora.org>
Subject: RE: [PATCH v6 2/2] scsi: ufs: Do not rely on prefetched data
Thread-Topic: [PATCH v6 2/2] scsi: ufs: Do not rely on prefetched data
Thread-Index: AQHWA+Pw3UJgJmAzSE+5Ajw5XEBLVqhcEGrw
Date: Fri, 27 Mar 2020 07:49:04 +0000
Message-ID: <SN6PR04MB46402B83E0E69E2309A9EDA8FCCC0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <1585214742-5466-1-git-send-email-cang@codeaurora.org>
 <1585214742-5466-3-git-send-email-cang@codeaurora.org>
 <yq1lfnmcxmc.fsf@oracle.com>
In-Reply-To: <yq1lfnmcxmc.fsf@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [2a00:a040:188:9054:1046:30ec:e40a:caed]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4d4d0431-8c08-4baa-7fdb-08d7d22352b7
x-ms-traffictypediagnostic: SN6PR04MB4656:
x-microsoft-antispam-prvs: <SN6PR04MB46567256E7C05186E66119FFFCCC0@SN6PR04MB4656.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(366004)(396003)(346002)(39860400002)(376002)(478600001)(86362001)(66446008)(52536014)(186003)(33656002)(64756008)(4326008)(8936002)(55016002)(9686003)(66556008)(66476007)(2906002)(76116006)(316002)(4744005)(7696005)(7416002)(81156014)(6506007)(66946007)(110136005)(8676002)(5660300002)(81166006)(71200400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NTvsK5IfrDzvWu5TNzsmykLGuO0p7tSTmDBd1f4o3ikhT0t9hDLbi0uB5YwACOiBQaS9mQe9ZMil6PyQaCAA/bhrmJCZtBnedHwnyr5ieo5+1Y5RapZybNvMka/8fcaN/R+fi3ME4iJyRPqdf/2j/zm4x3R69UofYTT+eibqpCOCyDuFZi5ih6JE3PRNUqzAy7i5BLhMphT9y7aifOhgZMd9AwLuGFbX3kQlMCNZmxAVcYpwBMGp9nGrYqWkhs/gr/qhyCenxEbdharh3lPAjl9ujq8KXQL0kCTrYsxiZZ2OwdcSilmRLCFSimclKfxMDucRcEf5rsVkxrgdAABzY3427iBHXVtYZpnOVFveTLHxhuIxTQwrN8SAVcxCZOS9syeas8QNko4jTjzItU+SznPMeOW5FY285YIq9K0bnuXr2U0d6Lq/faFO82nhsoIf
x-ms-exchange-antispam-messagedata: 7f+PGzVqIQ7xkTOc9KTpRNUcRGY5PgRKbiz7xRqEIJW2oOgUIM9VEV08Od2XOzYJ19VUZmpCIBEbbZEtJl8DtFhxMoscUuZ4UubtdnIk66cNZlhgUsAy1hEwJkie9Qk6LEYtsx5xlAqMZezPqDDuJRnlQkBaka4n6g/9XkH4R57GvY8ODA61CJYAbj77I9qc6RNgFsmo2a4yqrUIk+rgEA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4d0431-8c08-4baa-7fdb-08d7d22352b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 07:49:04.7661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KxJMQGJiTGeW8tlZpMMi7ea7/Gq/gbGothmX58lPz5WT1kQrv36xb/lpV7YcDKXFlCxSbPORbsxpkDrRBe7tYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_004914_861831_C9340F0B 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>,
 "rnayak@codeaurora.org" <rnayak@codeaurora.org>,
 "saravanak@google.com" <saravanak@google.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 open list <linux-kernel@vger.kernel.org>,
 "nguyenb@codeaurora.org" <nguyenb@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 "salyzyn@google.com" <salyzyn@google.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 Bart Van Assche <bvanassche@acm.org>,
 "hongwus@codeaurora.org" <hongwus@codeaurora.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> 
> Can,
> 
> > We were setting bActiveICCLevel attribute for UFS device only once but
> > type of this attribute has changed from persistent to volatile since
> > UFS device specification v2.1. This attribute is set to the default
> > value after power cycle or hardware reset event. It isn't safe to rely
> > on prefetched data (only used for bActiveICCLevel attribute
> > now). Hence this change removes the code related to data prefetching
> > and set this parameter on every attempt to probe the UFS device.
> 
> Applied patch #2 to 5.7/scsi-queue. Awaiting Avri's feedback on patch
> #1. Thanks!
It looks fine.
Thanks,
Avri

> 
> --
> Martin K. Petersen      Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
