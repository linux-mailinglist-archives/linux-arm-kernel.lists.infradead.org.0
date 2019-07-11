Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65783651C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 08:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfQnAEzACdko8G8mwesbSJzGmLOLKcCLo4IfUdsmC3k=; b=X+wpWQaXyJqNjv
	/gSgncSjgEzEI+/7H++gokTSrppgG/smax3gyZWvkm6I1m6AtifTnMHjO25dtRgnEnMZ9eX8V8U5R
	yfZBdf20UmDy+fXISOT2cEYUuwchwO1w3eekX1Pcgfb+sdFXlqAPYh09DHjYhY7F/OJxPtze227a2
	gfM2E4g2ZkwkOliR3AhU3PsvzJGmvo+pPfDUBbAWqtiF6xd6lUddwn1YXzEwvLzTze5V4PgwFDQM/
	UEEJa32bpG6VSLMIYcCQNriEhGxhD2iupg3OMeGzn8cUREdGqWgzdkwazVF/1sfVXJLxp7sgp/6Ai
	VbML22ye4tp6nyTpyLSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlSMv-0001Gw-So; Thu, 11 Jul 2019 06:15:50 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlSMh-0001FS-10; Thu, 11 Jul 2019 06:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562825746; x=1594361746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1YrGGyNlRB9hb3RBUHcYaJSdfrvxqWNsTUeEdON888A=;
 b=fpP3EQKwTVk+Aiwje7rOH8uzeaT42+J+o3HwJySxlFWjf+3q/92ahCif
 qB60WJivOB908tXOrHSbAKHDpO50HLMXb6GSro7bTgHgUm4QxSGvXQR52
 TFHNyum/7dJY3eJGKUfeRHZIq09nc5SuKZA5aGMBa0SFyH74C+PUIt5Ef
 o9UNhDCeokkyBwjaS6sFgiP4uUmILCsxO0wMD5MMp/SC5i9C9f4+ZWkKk
 EQsCZI+Ud4izF8AyMJtiuyVQ8ktLVYXZF0zxUYwG2Vt8udeZT2geuIpUO
 Ril7MGNlJf6ltIC6Ofo9IIBrbq6rWzdy4c5QSPc1TgO6ryQIgr5qDGbmA g==;
IronPort-SDR: o234wHZ08xdc7I7+V3mMEvsfOuTf9YxvzkzMQqfCEA/PaAlPyps2drwditFAiReTC/LF2FfOB0
 eimMOFB1aTtJdsy1mKa9I/OErI1/e/s7Vjl/oHt118ygNUh/b+0dEz5eqRPLXDU+vWaBG8VBvW
 ipSvQUG1ST36VlC1ZdntSYJoQcBFE78bWbaHe6gSxz/js3ORaz3Y/oLWLRNE2SKnT/C1ZMFFhS
 ndFdTdzv33L5aWupYjyZAvqA+19MQMile7mda0IDDa5cdeNkJXd8htwiCicqoled5gbmIxwZ2/
 srE=
X-IronPort-AV: E=Sophos;i="5.63,476,1557158400"; d="scan'208";a="212667730"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 11 Jul 2019 14:15:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gX/A5UCiyCH9HbKlu2jcYbNg/3d2J5L+6SSUSukvsJUypjSIoPLweu7Wn859jnsAanJkos38I3SToRFsJRpyLPI/YHwZ5pY6vL0lljsCisfIMfrjSn2adVZpc1Kt/HXCGq7uWRGEW8Pl5BPeyY7GfXAQpvLbduDwxIemLm6YT4J3GO62OYEqztvHqGFni9s9jzUTaBZClMyzW6ZPMyOvy0tcMmvCLpVxXUJBiQ3966A2nH0JxfJq1vQfh2VpPeOw1iHcJR1OBMnDzhwcMbN7RnxF8AMb6cMrqcTU2m+8M7XBgRZa855QS97GuniFvMO9zUWRrFFKM3Ht5DmMNxFsuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/spphAd0K8MM7F1/9AFl9NDmoF4CClkrJ4E2ZcsKmLQ=;
 b=dTyU83eFhrlDrZfdETGU8eodvso/AXw/yBMls161hEwCv+GdfzHO3Qi+PZ5XnWIuH3MNsJqQDkdk5On+iSO7pXLuhCRDOShWM56uppQZKjj5UwSEfQvBVPZtaLQmPgoKtPzr9NJZsvEq2ltzRQDJvDlb/g5FyR9/mrBRt/S4jUeVFHZUtQe8MpEHQFTRetgxi8n78/FqJdcR64IHuHdWGO62YAR5AREI0IMc9TwHQs+CqTjSo4dDL2V9Oj6f72L3zg5WV4PyKUccw0cTdUQV6tMythnP8ret13A0pFeuQ2Lz6YTPk0R6fWsPVHUAo9RmCvBYny9r6L+bH0iqFwXiQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/spphAd0K8MM7F1/9AFl9NDmoF4CClkrJ4E2ZcsKmLQ=;
 b=D+VOK+kCqS1ZWDzvzHby2abGJe3tYXE9bwpiv32ufdhaVeMb7Lc7GDhw7gWmQVqCHN0HuMyW0O1v30YdlmAUHnJno3Txh11hvxPNM9UVw82vDvUcXaDDIIGxxlAgezkE5/yd71pBQ4Euqyp5il2kS9mufaQ6DvXqeiuOiWQfqyw=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB5262.namprd04.prod.outlook.com (20.178.7.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.11; Thu, 11 Jul 2019 06:15:20 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::541e:d74b:98bf:c319]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::541e:d74b:98bf:c319%5]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 06:15:20 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v3 4/4] scsi: ufs: Add history of fatal events
Thread-Topic: [PATCH v3 4/4] scsi: ufs: Add history of fatal events
Thread-Index: AQHVNyTGnP9of7OWlUuyDLJWlYUyBKbE7K7g
Date: Thu, 11 Jul 2019 06:15:20 +0000
Message-ID: <SN6PR04MB4925157680BCEE559ED6F038FCF30@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
 <1562765901-18328-5-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1562765901-18328-5-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e9d2b2b-5426-46e8-01a4-08d705c72722
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5262; 
x-ms-traffictypediagnostic: SN6PR04MB5262:
x-microsoft-antispam-prvs: <SN6PR04MB52625D007B9581F6CD1C0B8CFCF30@SN6PR04MB5262.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(376002)(39860400002)(346002)(396003)(189003)(199004)(76116006)(66946007)(26005)(66556008)(66446008)(66476007)(64756008)(229853002)(478600001)(25786009)(55016002)(316002)(186003)(66066001)(2906002)(446003)(74316002)(476003)(11346002)(110136005)(486006)(54906003)(2501003)(7696005)(5660300002)(99286004)(4326008)(7416002)(6506007)(68736007)(102836004)(53936002)(33656002)(76176011)(9686003)(52536014)(14454004)(6116002)(81156014)(6436002)(8936002)(86362001)(3846002)(256004)(81166006)(14444005)(71200400001)(71190400001)(7736002)(305945005)(2201001)(8676002)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5262;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j0aSW+m1PKWHBPlxb9OjZfK4YSjch5TLrSGzVREN4zLsZLEUrXQsNQ5KS2Y0s/mvOp2T//o2CPnGKgE7U8Bfmv6qW+2xlj4DQZKE7FAEmN56fmG6iSgKAt7dtcey8ymrrsDc6yxL3CPUrsxPYudK54piJAUPfDBTDPwvIevwpikYsn4TgK/gdDtMEJHejMFHZpQlBg2apW1aHP82YWO5KI7HPP6comnKmtD0Y6PpWcMeT4ez3S+pNR04namZtR79lKCOrUlmy/cvWzZObYfBO3xy8tE79CGh+6vfUbjYcygbcK77jgqDQO0xR+ZHgLc34T9KH01MwOANIbfBw4qAe7MmXkHNVi6kIFCUv01yH8xqtBqJw5CAa6CuPss9nQE9cgCNyM9FBJg0q0vc4ES5rK5FdENSNLRdxfNrCpDVYG0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e9d2b2b-5426-46e8-01a4-08d705c72722
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 06:15:20.8475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_231535_209285_593454E1 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> Currently only "interrupt-based" errors have their own history,
> however there are some "non-interrupt-based" errors or events
> which need history to improve debugging or help know the health
> status of UFS devices.
> 
> Example of fatal errors,
> - Link startup error
> - Suspend error
> - Resume error
> 
> Example of abnormal events,
> - Task or request abort
> - Device reset (now equals to Logical Unit Reset)
> - Host reset
> 
> This patch tries to track above errors and events by existed UFS error
> history mechanism.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

>  /**
>   * ufshcd_link_startup - Initialize unipro link startup
>   * @hba: per adapter instance
> @@ -4356,6 +4372,8 @@ static int ufshcd_link_startup(struct ufs_hba
> *hba)
> 
>  		/* check if device is detected by inter-connect layer */
>  		if (!ret && !ufshcd_is_device_present(hba)) {
> +			ufshcd_update_reg_hist(&hba-
> >ufs_stats.link_startup_err,
> +					       0);
So no device = no error, instead of ENXIO.
Well I guess this is a fair choice,
although less informative if the device stop responding.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
