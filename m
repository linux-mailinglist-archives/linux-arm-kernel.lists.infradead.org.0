Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D292C1029F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jDU5+VVVESHNknIjBKdJBMKg17XlFWZKYCsUosMZQuE=; b=nkeAw628NzucW/
	eqUEIxZp86X8W+UIKwkfYs/FhUDiuylfzRWRRr9Bh6Goi4wdQw/dQx2jQM8pZmO2xj6QPpAxJlvUh
	KANpEd4YblTHJUmLJy4liuY8Ad1oqoUuliFuRaoE12lGncS6tn8/vsSzXY2fCiL41DvB+r0JqzyAB
	CJbRQDBkwjEckGIY5ELF4L+zWtzzfLXmnC6F7rrKfsTW9y7/fT7ZT8oj8P3rrcUy7xpAqcXrD5u3h
	GJFiAhBCRWns+JndNwpcwpZmU4pFE4xQhlUv2NBZej7CcoTgnMHrqzEHUMF54dPZapvSfUBRuwstS
	CcespctyfJuVyfN6/IgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6oR-0001AS-AF; Tue, 19 Nov 2019 16:57:11 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6nv-00010d-KN
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:56:40 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJGtBKi011541; Tue, 19 Nov 2019 08:56:32 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=3t45OKT+d5jl739oc2AkL6RENEgguvtvlUTHzgM9DTg=;
 b=Sd1pD1GsJYDyCwejOoV/c1w/JID18WMSj9kWEJgKto6qeQBDPVhcd5xs19kdXHPLFmLS
 T7H1VL6u9LkH48QgTfCVvl8Q/sBCucQqlC+FRuntea9/Vi+ijMh4avgO7u/VnR62S8sv
 EuGcIHwG31glMq6JCAWq6i7ZqWZu/5B4o+MokTjocNt44qLY/gEv2vzFhig4RCcGd9Gd
 6+SgW5pTORGl63zhpeGKbFpLXc8s9DmeF6HzJtdHxwvYDBTJOJYnKO3d7xGsMlgjgWek
 eiRrkG3qf9WSVW8pQ/g73bEJsfKmOisBRRTfrbGwfIFZIX0tE9pzWZDCBkegBxPbOGTe +w== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2wc82vjwf9-7
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 08:56:31 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 08:56:22 -0800
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (104.47.41.53) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 08:56:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TN03+l7brZ1A3yYAV5c2RjnovUbDGdR6Lf8wqrys/Zifzu7db2l6uHNRnk+n+HVcDfBAKOb+EOwvMMPCT+WRKcdDFPE10V/JB2NPCsS+iCefDuFi8Fll/ixkFYFYQoxVa5LHyNZVhk2YJSwYmo3i+wPFRXkSuXp4PM5/OqHURROXcAT9xy+E8LerDqZNLjNpWHMhdKGvIsefff/Px7SAA1GGhL9aoq8TSIbTlE4TMkaB++h8HvgoIBBwgQx/qvERNlTV7jrx5DleC2V0/7eT5kP7R07X4T7Dbsl7KOwnvc8sW7CYPUSpsZ4QL1tVWp3c1KhHUB2BT6bluta9TtXmXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3t45OKT+d5jl739oc2AkL6RENEgguvtvlUTHzgM9DTg=;
 b=Rx5sP6T4G8ON7W0c52pJWdKEAv/8wmoY58BIFI4Z8CodEYbAeuld91qRUxiBeBuBkhc4ktPAkt+JWIUb38YUoqdYJV21QQiPyMuLkPtWDiaCwv9B3JGRVw02e/3aQEL/BrkCh95htefnSdBkd4ET+5CEKYds5pVHlsb670gELayVLLErOhkGhKcbd5GfZQOaC5NxocqzogQFXFJdi63Vx7r2TkSjG+oHRO4DHsN4r2b4BQGdzTMbvC+GpBfTUkA4yT92VWBgqaIjXpb0pvVyi7zp1Rl8RP1kDAfE2/tR9fSf4TttUKXtuGFCbZqD6IglsF6DMnUSEDqC6PfzHUHu9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3t45OKT+d5jl739oc2AkL6RENEgguvtvlUTHzgM9DTg=;
 b=mvgKqppnRwtzJqg8uI9qjMY6vwLHakONyUIznzfWUkjxfUJAtNicdk+XXfDzJFOzcjrmQk6Yz9Vk9ctmNdNs5QQ7HtFuBZF2dHdgXU8smjkKs2RwfaiZrFAAur7LSrONutVXwVkEy4BlIgpyGMGxs7qJSzSLRB+8ZSdVnJW2Z78=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB3359.namprd18.prod.outlook.com (10.255.239.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.28; Tue, 19 Nov 2019 16:56:21 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 16:56:21 +0000
From: Robert Richter <rrichter@marvell.com>
To: Arnd Bergmann <arnd@arndb.de>, arm soc <arm@kernel.org>
Subject: [PATCH 0/2] MAINTAINERS: Updates for Marvell entries
Thread-Topic: [PATCH 0/2] MAINTAINERS: Updates for Marvell entries
Thread-Index: AQHVnvpFfGTd3mz7602El6nZanah7Q==
Date: Tue, 19 Nov 2019 16:56:21 +0000
Message-ID: <20191119165549.14570-1-rrichter@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P192CA0020.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:fe::30)
 To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 569cfdea-a6ca-491d-2ea0-08d76d116751
x-ms-traffictypediagnostic: MN2PR18MB3359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB3359B5B61995BB97D2D74A73D94C0@MN2PR18MB3359.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(346002)(39850400004)(189003)(199004)(486006)(25786009)(54906003)(386003)(6506007)(4326008)(66476007)(476003)(66446008)(64756008)(66556008)(6486002)(6512007)(36756003)(15650500001)(52116002)(50226002)(110136005)(2906002)(6116002)(316002)(3846002)(107886003)(66066001)(8936002)(6436002)(71190400001)(71200400001)(186003)(99286004)(256004)(14454004)(305945005)(14444005)(86362001)(7736002)(2616005)(478600001)(5660300002)(8676002)(81156014)(4744005)(102836004)(66946007)(26005)(81166006)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3359;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a8pnLUglGKjTPfBbV7EnXKsYT9P51XcqOWvS18nF9g9/o5rMZnS3WAbeGgpQLac4rNxFQ/2EX5rKAEh/vfFxMXC9CoajpTWyFd0EUzTb0+K5N1LpdrKkm5wNIuMUMB4jJ8IYtSWPOr2RfChtequFUaLNzuaARCvUKXhfFnjBoZKiPzaTnG/GyXVmr5jlbcBQDle/FrM+QTKGGI4kkYeGLG1NeYWcnjdIqu8sOEkhpP9rBcqtew2lTbsldyuniwPor3zszVXVhIFu8YSPYlfGgkjbuJfUMf6msNMcite6oydAM/2n/OQ0mfYTxlMlnWwRKTdgOstj1ZeSL3iYMEnKo8LL6g/hFdrVIirEroxcd7YokGSv5RXMiqqz2rVK9JrJu2AYBqfIF3s3WddlpNKlR6msET3jDgB9F/GhkphzFKeKLmd4aNHRaSrHidSXDFn4
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 569cfdea-a6ca-491d-2ea0-08d76d116751
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 16:56:21.5247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F2EJfg0ovLPJ0G+XecyRABCEHr+FiwU4WkFis5XfXuqfe41mVUS8r5jLNB4TjFduIEY5IENtr8fVW49mgbqyhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3359
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_05:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_085639_791560_04F05FEF 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Robert Richter <rrichter@marvell.com>, "soc@kernel.org" <soc@kernel.org>,
 George Cherian <gcherian@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some updates for Marvell entries, mainly: Taking over Jan's entries,
removing obsolete addresses, switching from Cavium to Marvell
addresses.

Jan Glauber (1):
  MAINTAINERS: Update Cavium ThunderX drivers

Robert Richter (1):
  MAINTAINERS: Switch to Marvell addresses

 MAINTAINERS | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
