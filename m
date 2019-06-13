Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615C8433F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPsA47b1zpqbV3yl+Ybjl0jK4tvvVbMyNF/u7mRR3f8=; b=pi9gNSC5dzrfsu
	dIGTCvr14Ae4VLeicwo4gWkj/pd3MlFpqm5bF905UV0MexRiXERQkHbDZv2se3MiipHQUcuBfqwWO
	Sj/Bu0jioBZohacqDxPxzSBDLWSUUqh70wGsor4fjrRt2AyOXpzErZoIt/p+UauPQIqSMKWk8RCyQ
	+3YjgVgacVh3Z/YHanuHrWlBx3FJhyee5292Z8R9dtfgv40asuYBN86l3dfs0Np2mA+7ZuFZ2popb
	0y5+X0/+Qaz6w6LRWCkkrfJpxVgVWjdbunW6MAoLnlqdL+we+/76EmI4qwSQXOprUe5J/fhTHvcXq
	Uj5n1CCZRAvip1TwosQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKoX-0003iZ-HY; Thu, 13 Jun 2019 08:10:29 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKoF-0003hA-1e; Thu, 13 Jun 2019 08:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560413411; x=1591949411;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VIjybpwTwwxGIpY0i4jZ5bVde77SyFvl/oTa+5JMkd4=;
 b=IV8J8bvXwMtewr9JGdvjYrCyXls8/q/LOP7ALnNQJ+0wkOUHEZBKPXNs
 0EgfmmBe1PKmTrKk0qBllcuLR50Jt6ApQUK5g5IRw50uRFXl3Ejugfkg/
 kq/jnvcG/oM82dri9SNE6MJjkbpvi3utl1ljL/KxC3LHjPJV/NtVgZ0m9
 6/IQ7WOcx2KsIdEQEqmEGt6bYxMxCKn9s74MF0JOzKLPY0QWauTd7lnap
 5uer94qaLNaqtx4AjFA3alBCBhDTqvl0MjGo9tPMTr8f3wBXQjr1IUACu
 w+HR0nqHJyWCLQtEfXtz1q7v9kU/q1jZpjK3Dzr4jChR0lJaNM3aOwrjr g==;
X-IronPort-AV: E=Sophos;i="5.63,369,1557158400"; d="scan'208";a="110448294"
Received: from mail-dm3nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.52])
 by ob1.hgst.iphmx.com with ESMTP; 13 Jun 2019 16:10:07 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VIjybpwTwwxGIpY0i4jZ5bVde77SyFvl/oTa+5JMkd4=;
 b=AhLGu8jqjdu+CrR5US0h4RMXY96VM/QsaT3IQQgeOr3a+crDtQy8dpRcj5uXeUwqZv/8PKrtAm9A07+kAHP8pnPYKO0LxE55mAhvtY2PVNWquxIkNhMtWapD27FCWAyJhALmjnWiXjJwGispmWfBYsELdQ69VB/DQDMJ7rqn3Yk=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4320.namprd04.prod.outlook.com (52.135.72.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Thu, 13 Jun 2019 08:09:45 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 08:09:45 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v2] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
Thread-Topic: [PATCH v2] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
Thread-Index: AQHVITI9+7JKUiS0g0SPWsgtdJ5ukKaZPAkQ
Date: Thu, 13 Jun 2019 08:09:45 +0000
Message-ID: <SN6PR04MB49255AE8236AAA9E41A046BFFCEF0@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1560352745-24681-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1560352745-24681-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c09de684-0f7c-4174-71a1-08d6efd67f22
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4320; 
x-ms-traffictypediagnostic: SN6PR04MB4320:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4320D6A16E45D661959D22F2FCEF0@SN6PR04MB4320.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(39860400002)(136003)(396003)(189003)(199004)(66066001)(14454004)(55016002)(4326008)(72206003)(478600001)(9686003)(6436002)(5660300002)(71190400001)(71200400001)(76116006)(52536014)(25786009)(68736007)(74316002)(26005)(486006)(3846002)(305945005)(6116002)(6246003)(11346002)(186003)(7736002)(446003)(53936002)(476003)(15650500001)(99286004)(14444005)(316002)(8936002)(2501003)(102836004)(8676002)(73956011)(2906002)(229853002)(6506007)(81166006)(81156014)(76176011)(64756008)(66476007)(66556008)(66946007)(7696005)(256004)(110136005)(33656002)(86362001)(7416002)(54906003)(66446008)(2201001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4320;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8khyZlb7HHirjOHU3H/WaA2lDtHHxAJ+L5bgQb4/6fhVP2wtCiYfXWKxjx0Fpge4hKA5ioJyY4f+sVotn8ZBQfqi8h+czPe+0hsgzpnWw06Bmzk9raQ2YfjuwvRddI/LkRnJ2E6beiZoNKUpAEB6t7OEwBJD0nHLFXTY2EV4agTrc/5Xc/7O3aufmitI8o5JZBF3lzc8ySfsqjBMUt7h0cCSuwtjNHtvHgcxuILPkVSGp3b5LSaa7CRIEm+wxaH52wGgGxtsdSlgHoa2Lh4xKTFNDWKOxVF/wWkClxfpXN0mSX0F9Xpzr7n14awuJdlNZDzFQPR6deFIaoCCISh8vYQJKvXkck80qNNVSb9hlaqoqkErSeuht0ByuwBbzn0xEE72A87hhbyyKGQoBraxrqoY5GGFHAun5c5g49+1sYI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c09de684-0f7c-4174-71a1-08d6efd67f22
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 08:09:45.3577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4320
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_011011_159780_0DD1DE3C 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sthumma@codeaurora.org" <sthumma@codeaurora.org>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "ygardi@codeaurora.org" <ygardi@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> UFS runtime suspend can be triggered after pm_runtime_enable()
> is invoked in ufshcd_pltfrm_init(). However if the first runtime
> suspend is triggered before binding ufs_hba structure to ufs
> device structure via platform_set_drvdata(), then UFS runtime
> suspend will be no longer triggered in the future because its
> dev->power.runtime_error was set in the first triggering and does
> not have any chance to be cleared.
> 
> To be more clear, dev->power.runtime_error is set if hba is NULL
> in ufshcd_runtime_suspend() which returns -EINVAL to rpm_callback()
> where dev->power.runtime_error is set as -EINVAL. In this case, any
> future rpm_suspend() for UFS device fails because
> rpm_check_suspend_allowed() fails due to non-zero
> dev->power.runtime_error.
> 
> To resolve this issue, make sure the first UFS runtime suspend
> get valid "hba" in ufshcd_runtime_suspend(): Enable UFS runtime PM
> only after hba is successfully bound to UFS device structure.
> 
> Fixes: 62694735ca95 ([SCSI] ufs: Add runtime PM support for UFS host
> controller driver)
> Cc: stable@vger.kernel.org
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
