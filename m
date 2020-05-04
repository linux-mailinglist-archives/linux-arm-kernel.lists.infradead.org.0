Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D861C3775
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVpJ/1gIuH67wTvgS6FYGfZT0cAb5hOU7LZ/hKp8Otk=; b=vELrJLYYAo2ouH
	gaNRHnhs5RZzY2L3uafhiXun3AdhPfLzcPfbqZtG45MxDSfptQFEJTLtpdNdcAKw7VEPl9yH9gU+s
	PuZf0Ys3tHH00Yct87Xty/0oOiIGpfYOtpFEnF2vIWrQ3iI/aIXLDzovmsq7ykcf73/9urt9Aevux
	z/gF6eJ6iNnkCebCuxUv8U6bp3Ci0SPJ4ODIK4gshzR6ZzVAT+iHizPzufvKDkJlYNWgKHcAy6f1K
	RF4wzpxgutv6aVyB5pXVnktZgf5kHiU255k4XsKRFgjI4wzyTdpmUP+WFMcu5k+Dk6WxtSsSusNCa
	AfAjb+OxULm0NjYHuE+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYqG-0005Ms-8F; Mon, 04 May 2020 11:00:56 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYpn-00055R-Ov; Mon, 04 May 2020 11:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588590027; x=1620126027;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wGerDWJsAgrSdERHqxwXp1LKQqtnnZ0kriiexny7f3M=;
 b=EpqFnwjrbyN1dC8ha7NUfWxiSKQnnN/Bm1zCoEOeS0EmCULs+c8IYeg8
 sYQWrpUnpUr0DjLK0YeHdyq3h3SyCkIgqpiLZw2+7kjM+YX5HdY3XGK3s
 rcB6e+gz7YL9XVokdiNBn8j6S/J4RptHnm5pwZiA9eu0n6HE/xtO4xLkq
 yLFFaUuNTNIVQsFY2F4dvxEu77UuJDDLBMPdwDJ3rdmT2i3J0A7kaF90F
 NKD6mqlQVVAnr/BSvunhfXwgt+HEVr6UiBNJ6USOEjjNicS217ypzxU3K
 Cz6sB86HR3HcYxR1nTKj7DDwCGpt1pySFr20jdMixqcg7LznE4d1HY8dD Q==;
IronPort-SDR: MOaj86Nr9VAaN9cLcnswPwFpjKo6FdKgusvjqV1WAjxvHfH70LHZbUgs89R+NKkiNo262xqpvx
 YwqxSwy1lUG3Nn5/UCtcX+1B94/iZvS4Melf7mK7i50+U73WjYDP8FDNl8IgOve64OXTEOugnv
 g/Ow0XHP2/sphR+ndxMFYMcHCCkUXmHF4Qwng89tf9nj8ep4BsjnDPiLJzlkjlxFvZzjww4430
 h9v+PEItsfxWUlD+l1cyafa40qTuS7Vp9jS78NZxz/4SHzdfI4ompDIV9fwDvUS3R+f5F9CUJa
 RiI=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="138293079"
Received: from mail-bn7nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.101])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 19:00:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crmOjTpAVKK2Lm2II1wNHfG+ne1JG3uOYkcp6rgo5qfsSgXCQylr3u8//CYfkOj+T2cn79Wj1MMCOrx5OQUbBS5QN2AxheCBdUS6O9k/8Far1NlfGZkJgWuJBCPlPqJ04+GT5Ns0d2DqxGVrCCrbZ6ZJhfbQJD95rby2q33+snmoHE2tEviywDZ/fa/wwuyt+QaZDDQ1oFRTTIYEsvj1I6VVwTHMcZFtZT9zO1SP+rfbx8bQa4MBGb9kMSp+IMHAu/mNLqgYo8JIsZC8AnVbURaWqPw8FXiHiQ3Mtn9JzAkH9ULT/+4VNsIke7q4IQbw42hTtSUUZ+yZI+Engu1I+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGerDWJsAgrSdERHqxwXp1LKQqtnnZ0kriiexny7f3M=;
 b=jJb+h9g97EfNAxFQ9/g4b4l+LgTkTdICL6ByOkJ8lUpnyKkMlo8CcDOAA57Kd2m7t5ZLzOcCSpkNFXK2hO2awAtg6G66gsS2fAC7gPWXkBPGIXicW3Q7qDPbk6yEQIHJZ11UboXnSjs7CRq7NRUFM0FQWfmIQykT4X1tSTGTaWJJajtxAy4vqzMmDoJHcJiFQjVEIrMaRWSRykUBA270/wJYDmtfSLyjlYZaHN2ZG67Jvpxwxv2W6n57YiEB1+jAeeahv7MDsGo1u8yIx5Pgku57puIxx5zME7w6DApOpYSCY6GUrFXoQad4ygM5fGHHcfErO+4OfmuQgD5SQ2jnIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGerDWJsAgrSdERHqxwXp1LKQqtnnZ0kriiexny7f3M=;
 b=E3SIeft6UhJMdoe7v3fL5NDwbcHx6itgy+4z7rcsbFQFipUsKthMm3ehRvqunk2TJHnAhpJPikueui3zt2eVyeTHGqL/9KMWRxSz3lMaIUhS8m3NN4O+F51EIbb4LtImllUsWxPy8WzWoF7c9nlG8btNuk0pqY5RYO9K4edNN+o=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4464.namprd04.prod.outlook.com (2603:10b6:805:b2::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Mon, 4 May
 2020 11:00:24 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 11:00:24 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v5 3/8] scsi: ufs: export ufs_fixup_device_setup() function
Thread-Topic: [PATCH v5 3/8] scsi: ufs: export ufs_fixup_device_setup()
 function
Thread-Index: AQHWIT7NaY1WAMy1NUS3UysZJe+haKiXwsAg
Date: Mon, 4 May 2020 11:00:24 +0000
Message-ID: <SN6PR04MB4640D03DC58950900D90823EFCA60@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-4-stanley.chu@mediatek.com>
In-Reply-To: <20200503113415.21034-4-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4419d74d-7bc3-407e-ef91-08d7f01a58a1
x-ms-traffictypediagnostic: SN6PR04MB4464:
x-microsoft-antispam-prvs: <SN6PR04MB4464D7E06A75A49519C21948FCA60@SN6PR04MB4464.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2zUomWtTQ5j+gwLdDPUhEqEF0bAkfTYmHf8rdWModnE8ie3yBRLRH4RJ0h0PUG1G4sdBsotLE+8GVK00skfm8BjJP2qawrDlTNcqPobZXhD7kdAe4Yo6XxIpZyaabH6XVG6Qh1zaThD6nOfPbcUtiQ1YaUzvBYNndLRMCZCJ6T00Yrze17buigaw02KartXS6np8+GqYvbCEVS59zKpTNALNmfeuktCvEdhLbJJoLgvaMK9EgcM05/iM37yfluWi1dLUVSlffsxCbpR/3HKN0l2edYNiC07enOrNzWvqPTHRNIczssDAqg5HlutY9L2Vu6rWQoOcXzldJV7BJalmCHJwy3gSAv0MedYCKovH5ZmGM6P5d/0uNAIsV2zQ7Q+RLyT2rNEQyNx6njubXMBK9sH3eHTV5tiOU86uCFw49obRT3TdTZpqd+HBWNgeWZ5p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(66476007)(8676002)(26005)(2906002)(52536014)(6506007)(71200400001)(478600001)(33656002)(5660300002)(86362001)(64756008)(55016002)(9686003)(7696005)(66946007)(54906003)(66446008)(76116006)(4326008)(66556008)(558084003)(186003)(8936002)(316002)(7416002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: W5GqLAP+OlILEFU9pLNkdLq7e4QKdITObCubHumCT8aOnIKD4itrobaoZRgrL6u9FWwcgqn2/4cRwa8Rxhx0gLUpmFpLpO/TABYy4cZMWfVy5vlNF269v2HwUNh0R97hXaevg1ChMlNVWOCqjfzmL/YGKX8dVWac1je6aSrMCAWnrnc0c8l38oWJ2AhpZaXTU30Y0rwiklMCWa2NR2bn4HzcOkJXCdWx7w6VRGviv3rrFyInUpwpSs30SPbQkhA6bQwo95Bnn6RvukUq+/qu36EoOIsIG3f2hZYI/qHJdm5DIAC/AAQq9+TjELDSr+ZMZgBHbVGxLZs43rqUWOdn6uB0uQLL8h3mwtEsURLnhfQqdScuR5Uw1AjWi2LnfMBleWe8xNgj9WV9kpvuI/Jb0hiNc2D+kvmwdGbpt7lc9zCXZFQqzkoGtY5YuRzrA7qctI2qcHrpM73vntmQoaXdWTxANzrtGDJJ3/+5/Xi/rY3vChbiufzZAMRMjnFdY6elgOna/ePT3yyYmmEPTccbzQN9N3GFjbgXT65Fsl75VSIM9h0YTLm5580OBpmHTOrBkfvLQtTf+uw/q/UEd2f2NxHc35OX9BDyPR+c0uLombYh3VK7ahefLksUkbte74knzR79mS02Czi6N+1OeTmi280PWI8WkzisxZwQtMAAEaQM0aGDk2iutN7AVmPqLqnfAF4up3oWUBm39+oft1ZvxTceF3H+hyHStjaPycv+iByyaxi4steziYfFnvNERSwqYD2dLM9iT91qjuAJLdtUHlkdgPyJ5l3DXmXsOPzmJj0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4419d74d-7bc3-407e-ef91-08d7f01a58a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 11:00:24.1658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v9fGiIYPUu4/oNBSBHNzBW7hegQ+vf7jxsWcoc2pO48q1yQWrI5TPKDYvzOx3FiIs08fGogACyAYoXMFbgBpYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_040027_902613_A1849F8A 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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

 
> 
> Export ufs_fixup_device_setup() to allow vendors to re-use it for
> fixing device quriks on specified UFS hosts.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
