Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A524465F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1OVymgToCfrJT50p1JYEVp2MZauFtXlSzAnCtEWj3e8=; b=dF/jxqsVF1L6lk
	KfWWezrYgysCXB1MiROsF4quyo/ueCoTzFSuhdDaM0I056zBkN8/URJa7gjJkRAS7ZSErec9Rmg8c
	oPy/tluMet2Z8e9jNvKGplKUaN7rL4IGkWimkcWz33xPaNrmgr5fLEdIgiTQt5MJITLwOoKl6Ptw2
	PqtpeGza3knkfMrd+6/hnL8MXqxmN1W3G4Z3uKuz8ti+q8WYY4DheVkKX11x5Tux04flfSVEe0Ubk
	105PNmCk1XQFvUeT7JXbeapfO0AGT4UnYaon+SvZmlnyZxgdeWIoEFJkHCwf2sPmgYzFKOSGec7aW
	OY7Xz9LfYgaKHe66k00A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqEL-0003MK-5q; Fri, 14 Jun 2019 17:43:13 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqE7-0003Kv-1s
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:43:00 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5EHf4es007981; Fri, 14 Jun 2019 10:42:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=VqEDN5eTSpN1gvCS3Iem5BPA/AbwrrdonOaPDePuaZQ=;
 b=B/Dzp+Hh3xAvBlqJg1em352zca7Ewn9lMnL9X+JV0Bt+q2SfSLs9Idp2MEPzOyeoH/px
 Vd0A3amqtcovnh9tc9shfMvDs/fXmY5DYynplsUO/ITfrE9hVcKdy83joSDyLWJMbC+u
 fpLS2QJ8Ogp7Ugj+xErsA6A18prv3AACLNc4amfYHQgP4G6s3h9xHT2HCAjJqPMQh9Rs
 kSFoJ9Dd1oj/owDMefUStxKyObLSgs4I2tJj3NBiaOkDR0IRFKmdLx/OAUsWIMQPYxo4
 6vdaae6thbLZxcPSAcJHbxQ93Y+xfnxx/0zIYHdr3RNaVADLhZZCHYHW3ZY8lnYQzI1V vw== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2t41j63g2k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 14 Jun 2019 10:42:51 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 14 Jun
 2019 10:42:50 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.51) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 14 Jun 2019 10:42:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VqEDN5eTSpN1gvCS3Iem5BPA/AbwrrdonOaPDePuaZQ=;
 b=TdsPJ02ro8zVlkYIHJ2cXsLTwAZ1mhWwi4uCPUKipx6VoH9qu4OzhDaJ9BRzZ4ttdPmC4HAafifI426vOyU4PsqXzr5wyVNUPB/Dib5D7dPFid2hvaquSic8gzexmu6idGTlMIGE/zAUuHM5B4gGnMCRQyedgUzHxWGFfz6ZxUc=
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com (10.164.205.31) by
 MWHPR1801MB1936.namprd18.prod.outlook.com (10.164.204.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 14 Jun 2019 17:42:45 +0000
Received: from MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::7c5a:e2f5:64e0:5b70]) by MWHPR1801MB2030.namprd18.prod.outlook.com
 ([fe80::7c5a:e2f5:64e0:5b70%7]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 17:42:45 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 0/2] Add CCPI2 PMU support
Thread-Topic: [PATCH 0/2] Add CCPI2 PMU support
Thread-Index: AQHVItiSZuHNgKndYkGQyfWKOHcA/w==
Date: Fri, 14 Jun 2019 17:42:45 +0000
Message-ID: <1560534144-13896-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To MWHPR1801MB2030.namprd18.prod.outlook.com
 (2603:10b6:301:69::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d61100f-19cc-4c3b-ddbf-08d6f0efb533
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR1801MB1936; 
x-ms-traffictypediagnostic: MWHPR1801MB1936:
x-microsoft-antispam-prvs: <MWHPR1801MB1936BE12BE6C434F12172B91B2EE0@MWHPR1801MB1936.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39850400004)(396003)(376002)(366004)(199004)(189003)(66946007)(6116002)(71200400001)(2501003)(102836004)(3846002)(7416002)(4720700003)(52116002)(66066001)(99286004)(6512007)(14454004)(6506007)(71190400001)(4326008)(386003)(478600001)(6436002)(2906002)(54906003)(110136005)(68736007)(5660300002)(256004)(8936002)(2616005)(305945005)(2201001)(476003)(36756003)(7736002)(4744005)(53936002)(81166006)(66556008)(66476007)(26005)(50226002)(25786009)(186003)(64756008)(66446008)(73956011)(486006)(81156014)(316002)(86362001)(8676002)(6486002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR1801MB1936;
 H:MWHPR1801MB2030.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IGtNPM3zBupv+PQyDvnjITg/V1M8bfDpi1ivtfe8tiqhwIPPTqSa6tlfAt4w0eG7K9rPCLbNJ2qd2VtXebHYwzQDJZhGwWbsrUYQg1hwgX78oAZOBKNNZib6kNIYD5pKZpoFouZwo5reHVwKgs3jXfk9jV2LAr2oOOF53QyHLh04uhfGU7gbhLGSKgrhWJnlWpFrmXU3Fi7gGzMGuc8udp6WG5+sYhv9hGryfJbVXHRgmAYdh1/kI2kLOzgufub7UA1ld5//PFAOySEpIIIPZZYa3RTo1fNa25eR7LbOMSE6Evbeymyh9BQq7dS9keqjgw6ViUzCJWd66ooHJrw7bNliE55axEPH5cj1xRGwV53peqeuaMGrYBam9zwM6BO8PjLmblLJ8bFffBrNZRPV2+y6oaB4kDtniz6kWCQY/rk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d61100f-19cc-4c3b-ddbf-08d6f0efb533
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 17:42:45.2416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkulkarni@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1801MB1936
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_104259_260400_3DF90EDD 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "Jan.Glauber@cavium.com" <Jan.Glauber@cavium.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "Will.Deacon@arm.com" <Will.Deacon@arm.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 "Robert.Richter@cavium.com" <Robert.Richter@cavium.com>,
 "jnair@caviumnetworks.com" <jnair@caviumnetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Cavium Coherent Processor Interconnect (CCPI2) PMU
support in ThunderX2 Uncore driver.

Ganapatrao Kulkarni (2):
  Documentation: perf: Update documentation for ThunderX2 PMU uncore
    driver
  drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.

 Documentation/perf/thunderx2-pmu.txt |  20 +--
 drivers/perf/thunderx2_pmu.c         | 179 +++++++++++++++++++++++----
 2 files changed, 168 insertions(+), 31 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
