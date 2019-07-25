Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CE274882
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 09:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSt/2ubH1bUtk8eHMHQ9XgGKZZfS7Nx0EDFabPn7mzk=; b=aYCZJEK9ZRYD66
	fpTbsLlLxeYNaVcF3Ruam4f19G9+Sh4MoH1/vkp6oaeoKPpjFWJuUR93A4vyaMCdwMk4l6NqyOBuG
	VL7AUyADbnRtLQeBYv/eyhjggvTuyNFyNtATF8T/xq6dkPsQ/kUIysvEV3G3u+ooyNRMT1cwFmwDu
	XRtR1D6wDdi1SKGTa7Yo6U1HNlQYdZ0UAd5yKviesesy0pE56LllSwbR7OpuOutCrJDYnRLLu59cu
	3kcNxd0C40eZr8p+cV2gXoi89t7a/8NcQeIn+P4km7zKCLnmO3BL3Xf3EYJ/wiP48wN5mz8pN7wTw
	+BNqy2jFjJ2r6TlfJVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYao-0002gj-J9; Thu, 25 Jul 2019 07:55:14 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYaR-0002ee-QF; Thu, 25 Jul 2019 07:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564041292; x=1595577292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O1+X1GqEOt4tnmwifXCUObiycWFbqYhmImNtrV43v6c=;
 b=HBlyjsEwmyiG/+WpD6lIRvJYdQ2Y/xPSD6TqqlvIjTiYHJQpGHvhhiG+
 Q0wVtcDQAViQ5r1ukOVDdUaPayUAMNOWIfmM2goLTBPxUriTZqWavOKVi
 MbMB7SlfAQKlbQGg1o2UHC4Jw0gLFmjaORFqJ9ohgeYemCz83MQJwHkxf
 hq14YMaHpHF4LqVoRxr5Ii6n98mpfi739pRD8DdddwHEvLINxPIslabQo
 HEmNfu9QoCkcgEgjW2v2JSgLI5rBXDi7Q0SBlqdc312ONWflYSCejGaZQ
 buR5KnFKJP1htDZK8SZrBxqL49orQgwTyNK3P3Vq+5HvNjf2yhdsx1lUD g==;
IronPort-SDR: +6dDX/Ihm6Gf4iN5ErE6cPB2suXgNxtm3b2JHNqR7075y5xs1GfnzIQm+GcQczss5/yoxdr+wi
 38Pa93J+y6mOXv9He8UhlHHUBQxuFlT9ula+G3kpYF7y3GKDYrV0UawRmNB3BCslFUhlKqDTvX
 HkIWjsOUvwHdkxR4HMndG0uMKFci9uHqC9lPv3YQfDENDsttYNkcQJUsm1fmHNXgn9BWh8pZkk
 lCCAGaZ6FR6Euk1YLLd77/7hheBvpWcpPsJCjHEQYm6wKjMcL2QgZfi68l8Z8c5lpAG+FLCdZs
 9o4=
X-IronPort-AV: E=Sophos;i="5.64,306,1559491200"; d="scan'208";a="115593855"
Received: from mail-dm3nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.52])
 by ob1.hgst.iphmx.com with ESMTP; 25 Jul 2019 15:54:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hcQ30nKlkAp0NI8fS13OMott+iGpwaPLuElv3L0hwyffNjIxV1Rckl0ReCOL1ii9J+KcfkrgbVTzCPIxvzYAsR4qtbpcKQNtFei0YwOuFtGXrsPlbCAwhDjxxiPM39Ew4zKbOVvKRWrDOu+haK64qTO642yK95E0NNjR7BPJn+bm/14jG5kmFDhxmb3KDkhkESfGhot74i6545Uzp2G67MYvcGcQFhLBIw/OMnkBDbVDw9ivYRE9+jVCpCgK5+B5yPpMpaiWSVJSaYwhQgUFDstq/YB5D6XPYIY2hFxCTDWslrF19pGlw8+pE/e4sYGhENufWyZgR0mkStaSVzrnPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1+X1GqEOt4tnmwifXCUObiycWFbqYhmImNtrV43v6c=;
 b=kjOWATrJBBJx/RINDrW1CZ2Q7UuVlGt2vkvZlB/+p6Y+pbqmuvDrSqHAsE2NbmgX/ujk1B5q6SRyYP2ZHKQ05wi0OGzKrPSHUKYDwcIcxFA0US+twbaq+l78tjE59VXUkzKMzqSMk9OUoWquqJ/RAKLxppOu27TGFKJ+a0rNoOlLcqWtb9CWggRMcpZmGuOGFzz/G6xFkFJ0CKYsLpX+CF/CAuNPx8ALYJyFatC4JbDJN2fc2y98MZIASkAyaUT2D6nmV4tBuJOeyeqfcGzJddQaPO4bktnqQVtBmPu4Xh4Udq8j2FAncJ5uE/+sCTh1U/ZS3XhHhiihFGd1+wDaOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1+X1GqEOt4tnmwifXCUObiycWFbqYhmImNtrV43v6c=;
 b=ToDvaJFArMDQM6C/y4AOeKzG8IAR8f3u2+Mz4BbOCcLFmr1fFFNcWLCLvWMQy93cTain98yDHASp1gFtWbPlRmLSb486/jTTWY7HD9GrhNgoswlP1TSl7lgem5EQEaaIv7OIH3DyDzPYri5clxcE+jtQMFOdRhs8iSv9SN5M64E=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6784.namprd04.prod.outlook.com (10.141.117.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Thu, 25 Jul 2019 07:54:45 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::5d3b:c35e:a95a:51e2]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::5d3b:c35e:a95a:51e2%3]) with mapi id 15.20.2094.017; Thu, 25 Jul 2019
 07:54:44 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v2 0/3] scsi: ufs: fix broken hba->outstanding_tasks
Thread-Topic: [PATCH v2 0/3] scsi: ufs: fix broken hba->outstanding_tasks
Thread-Index: AQHVQeOzs+GM8YPYOUWWOWn3iohjSqba9vVA
Date: Thu, 25 Jul 2019 07:54:44 +0000
Message-ID: <MN2PR04MB69914824302B84E144137869FCC10@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c9252cf-af9d-4eb7-eda7-08d710d55bc2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6784; 
x-ms-traffictypediagnostic: MN2PR04MB6784:
x-microsoft-antispam-prvs: <MN2PR04MB678406242C41AED51EB83B4FFCC10@MN2PR04MB6784.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(199004)(189003)(52536014)(5660300002)(66946007)(66476007)(66446008)(186003)(25786009)(66556008)(102836004)(486006)(76176011)(2201001)(26005)(64756008)(55016002)(6436002)(81156014)(229853002)(76116006)(2906002)(6246003)(4326008)(86362001)(9686003)(8936002)(256004)(53936002)(478600001)(71200400001)(71190400001)(33656002)(68736007)(7416002)(8676002)(6116002)(305945005)(7696005)(316002)(110136005)(14454004)(81166006)(54906003)(446003)(99286004)(7736002)(11346002)(66066001)(476003)(74316002)(3846002)(6506007)(4744005)(2501003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6784;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wXz599hOMXPIPaVUPsdSRMnYv6ldxtCajBZzw/2Nj005UI0UGD7sjLlOjD2FuTDFR4LSZ475ETxrdFbZxQxlZwtifXErJOqB2eyKVRj1bF/ygxTcxHq82FX3iNKksA7thpUdgMvxr1CrZw18bllJ/+ErPvFdb8iwwT0KRdTDulSGf7EsvDGylhIfQyRj5HCinpcEbxx1JQCi6onooTovbQSiE9l17IVz2ylzFwSFBNMl33fCnKz9KpQc01kuj6QD80v5TQbl2f1gHQCwJoTqLvA6G6SHu6FXtDoKseE711+XUqPGFVsuMzjraXiuAuY+trZ96xPILLnRYZ3L3S6SIGQvkox5SnOiRnNyaezdTjP5ynZjgZjvPe+6Uiwu/9Xwx/SPnINJEZ5rei2r0mY5BkXcuw3uY3bjwPNTENpshJ0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c9252cf-af9d-4eb7-eda7-08d710d55bc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 07:54:44.8333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_005451_968699_CEB183E8 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stanly,

> 
> Currently bits in hba->outstanding_tasks are cleared only after their
> corresponding task management commands are successfully done by
> __ufshcd_issue_tm_cmd().
> 
> If timeout happens in a task management command, its corresponding
> bit in hba->outstanding_tasks will not be cleared until next task
> management command with the same tag used successfully finishes.
I'm sorry - I still don't understand why you just can't release the tag either way,
Just like we do in device management queries tags,
Instead of adding all this unnecessary code.

I will not object to your series -
just step down and let other people review you patches.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
