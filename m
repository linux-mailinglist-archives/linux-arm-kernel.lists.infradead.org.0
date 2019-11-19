Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359C102C4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 20:05:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WZ1PBNIpxIr42u//rMo1Gm9oqxFqFrz5/oCoTxchDYM=; b=F36Wf9fBPDUKJq
	aqz3n4LYR2wKPEvCrFaksPmJrCCQIIOsw6+8aNlnZJfAoa6pxerYlbblNnidJ49SyQYq4QRxepz1z
	Kh/jHtHrqGph17S4k4BjifMqAPIvNRZMvytLlNIPdq+akz7p1p0TP8xkWdBn3NsHxvteNjHJktR2E
	Qx+IHjC+mtmhJEHomEFeUXODoxKv4CX8SpPtFGuJAwsZV+LNfC3TqT2rH7ZD2cKOXI8vj6tVfYXIQ
	D9VGSmmrmsb3QXmdMdcuplxwDgR19ildd51wQbnCgqBB0uyvw54HTmeR3gPnQlHuvu+tmFU1kLBWo
	v8KcnEKoEEyUA3y2vUSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8p1-0002RZ-Fk; Tue, 19 Nov 2019 19:05:55 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8ot-0002Qt-0B
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 19:05:48 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJJ5bOx026680; Tue, 19 Nov 2019 11:05:39 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=Dhheooa3iET5G/ZiiulZA+7dUvPpMBy+MTTFj4ziKt4=;
 b=R/7VuuY7R+bL7VizU4O2sq5KAcb0PqeJIfeqWpfh4FJ2Imf0V3gNKDQdabcceAyYp5AV
 ktz0a1481MA6jTWxCxWrlJIP8ZYrjgYyb1rLEs7I+igb1t94SPWR2DOMC5le4ZOZHpbg
 Orwi6uy1HC+GOJ7HACD3HhpFrGc4LRLHrCx5nhpIi9Lv/lXH8T3XWwYU0DtLqWgwv0/V
 5FcATpdXa2A3mfVu9p48bgOFhw5kku2tJXOOr/8H6SF+ejFVPvV104ZAXcj/2PxDwdrQ
 MSUUrj5lMXjZNSeqfHb1wwSUxS7NtbRjFxlA9+LNJNslsfzOx2yE3nbtfAirZ9nsqAcf NQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2wc82vkfr9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 11:05:38 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 19 Nov
 2019 11:04:57 -0800
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.51) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 19 Nov 2019 11:04:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gJSWalpLJhU7t4/78YH8OhEqQwTBXffWc4eulyutjaxFAuaugUY2Rn2RxhEDtWeK1dW6gpa97M+KBNiNQjGBWRS8ZRnOW7cSXSWqIuAfZ+Kq6j/y7Q+n0ZpOD5rHQjRI1iQ7oCXka+36SoidhRsyB7sBsdsuK4pxjltRgm/4vgWuYAb1lVyjiLAGEj14pj0p1yLJR39p4LOOvnEvP47o1v8NFKw3LCRhAeiS/s3xqUH91/Zl9O5pAwtCTVhUiMu4vMTiiHAgjKrwIeqx3UcVmu8QnHwoEbU5yA53ICzYX4iIKzqQn7UFQ9GGCwIe13oMflLCj/qGPpGB+qRk4/wp8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dhheooa3iET5G/ZiiulZA+7dUvPpMBy+MTTFj4ziKt4=;
 b=OMfG+lkJ+vgKpKbZubS6NF6Xit/UzZ+13BaeIWM9gAfDBDo/F67lmTXIHhg9Pv4fQytbKpNnolBcPVcf1M8k5gCoxFpfMDvcQITfqAYy6FTnLFpBK74sXMAgHU+S1JGOVvTTTBkZkDNHUR84YATnS2pvyplNUxWUFGPwecRCjWc0F6LMX7h2sdKAZuX0/pc5GmfBzxS4FpV/Es09oXIvJhkAV8pgn6xAc/yY47N+adhHwApr+voh+0lkWSTL5a1NpkZXMA4LvdXHTNDvqzlrddmqrUYUQk60/Gh2fG9/DBYpfDwsrevANdSLk/j5HND5t8Eo4iNoK71xslo6f9cYgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dhheooa3iET5G/ZiiulZA+7dUvPpMBy+MTTFj4ziKt4=;
 b=U7gtgUPLUc/ZlKxPynf7LzxldNsJw8ULA/XMgMJDWQVxGKpfiyrmcvYrWpFVYup5GRFLK7bq849CGNQA4UJZiGYSpDq8uPhnr9AxuPEIQdwYaAlE9nZzshyI/s54B0eeOk/IwqQZ3NNmQ9Zz7rpx1tVEDZqLis/KKbOTO2RgRjo=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2736.namprd18.prod.outlook.com (20.179.23.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Tue, 19 Nov 2019 19:04:56 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::657c:6c81:859d:106%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 19:04:56 +0000
From: Robert Richter <rrichter@marvell.com>
To: Arnd Bergmann <arnd@arndb.de>, arm soc <arm@kernel.org>
Subject: [PATCH v2 0/2] MAINTAINERS: Updates for Marvell entries
Thread-Topic: [PATCH v2 0/2] MAINTAINERS: Updates for Marvell entries
Thread-Index: AQHVnww7OyVWSNdaSkSvXJOYurUbAQ==
Date: Tue, 19 Nov 2019 19:04:56 +0000
Message-ID: <20191119190436.17875-1-rrichter@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0701CA0044.eurprd07.prod.outlook.com
 (2603:10a6:3:9e::12) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e9330b0-88dd-4eb7-61a7-08d76d235dd0
x-ms-traffictypediagnostic: MN2PR18MB2736:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB27369948CE1115ACF1E59DC5D94C0@MN2PR18MB2736.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(136003)(346002)(396003)(189003)(199004)(476003)(316002)(81166006)(52116002)(99286004)(71200400001)(50226002)(71190400001)(81156014)(86362001)(486006)(107886003)(26005)(6116002)(2616005)(15650500001)(186003)(2906002)(6512007)(6486002)(6506007)(386003)(36756003)(54906003)(6436002)(102836004)(4326008)(3846002)(110136005)(7736002)(5660300002)(14444005)(66066001)(256004)(305945005)(66446008)(4744005)(25786009)(64756008)(66556008)(66476007)(66946007)(14454004)(478600001)(8676002)(1076003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2736;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lsA5Gj57lHT3yEjSwJSAHxUsayWr32XWspynFa/QPMDuY7Ndnyn27A5NvyLRHRi9qTKFYHrEScly1SvLDYPMCyjpGvcOE61TEDdClGfO7EpVR9dJRUFXqFyzqdlI3VebWQviNZXUPq+Jhz/mbMFXHYfQzsXq9GnaoqBb6VCzszcLRT6jb15XHjRcrrdpUlh0tTqu3rizyEIkhevuJlsWu1b17qfaJRJq64f6hSt+DB1p76YGgeHU33hlZpOFuW49XmUp4RIOa2EbWlgVLZ+hgblIxco2zRNyuQjFyHSmxrUVvRIVZNC+8oTA8u/Ge1WKH20QE3oB7wpw6P+dAGXMie9B5+w0/n9pv1a+kRSfxl1QYrvWt0J62Drwn4J8y2/2nGnG8um5Bp4NLbH+iN/TnoCyt0dTSSiVQm6R6Uvurg9AsqUZ4/4XfppyxfU+Edfr
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e9330b0-88dd-4eb7-61a7-08d76d235dd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 19:04:56.4593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7uFSvVTyOzozvz41wxRDe47dB5dCt5aL6bPJnVzoMC/Vo5Qr727wQMe+GLy7GzcpzfWPkJIn+WqZ8o+mgSXtnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2736
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_06:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_110547_168607_85F01E55 
X-CRM114-Status: GOOD (  10.08  )
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
addresses and website.

V2:
  * Added missing .mailmap file
  * Also updated website
  * V1 sent with leftover patch 1/2, resending.

Jan Glauber (1):
  MAINTAINERS: update Cavium ThunderX drivers

Robert Richter (1):
  MAINTAINERS: Switch to Marvell addresses

 .mailmap    |  3 +++
 MAINTAINERS | 37 ++++++++++++++++---------------------
 2 files changed, 19 insertions(+), 21 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
