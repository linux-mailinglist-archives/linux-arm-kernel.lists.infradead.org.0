Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6559E51E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+5+RJNPe9+BEJjTG30bsSNlO0gq95/gBZupFIsdCQcI=; b=hQokmwTCqFUQIw
	+DyyTS2IFc51Y+rajkKpefTwXIXUBgNxkeE6EFHde4p8Dm7T9Mby4C8HeirbLgdNbjTtc1W9dIOWJ
	wEaFdtG2Dh3HfI+VgXAYr4hmEHbCjgcJezZkdhmIljSVFd44o6iOUv7ndXJqt+zQ4+keAncStbMRA
	ZtXFE+TL8fGq1GvDBTd76vzR+50BjBMKgUaj4aZR1JS0flB7jXr4Ov5Hwo9X5IzK69RChk2pp792i
	3lBbcmCrvFxcvdcyoAMslRN4GPSEoLr0NDvTGGxSxXVcHv5ng5sQkXoMlcbB1V0F/FbYSvMpkc4dF
	+yjSfa38yDFDcH5NlNDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YHT-0003PP-4J; Tue, 27 Aug 2019 10:00:51 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YH2-0003Jg-7w
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:00:28 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7R9nwhs032750; Tue, 27 Aug 2019 03:00:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=/iU7iI3pKjLZg0eGCen/fo3NUic6/+D10tVKPiqxUuc=;
 b=Xq531Xbh20tHWxuX0UYtzsIe6viBdh7ZEkwlGlDtnClfz4wjOZyfIByDVrrOaivD/A1Z
 KsBJVgvdMKeX+tPkvn7xDWzv96RYRHYLs+6WXyrTgO1aA+0VW0JTWV35Cwo0F2OZYqK2
 2N0MeU6liIpOabUHU6Ws1VShZ9NTnl+H9MMjb+dwjnjFuJQwGYa0nbEis4zTak3N1JHZ
 XzKSXYz4ll0vP6H8gAwxCb/vPGPujzpE3SMUn+yE7+XEh8onHaxaNEmkraEM2/5mcKng
 jlellzpFDczwVflyG6c/HgYFRS7bHy54ipFxHIAkD5fdmfG+6cYF2qbLGXuna9pqn9K+ zQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2uk2kq2xs4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 03:00:16 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 27 Aug
 2019 03:00:15 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.55) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 27 Aug 2019 03:00:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n8n99jig14zNvWwyAU2XbAy3+QzlgFqsNz0JbFtAv1aZUpJ5CoiVGrQBF/DRcq/sE00H0dtl2kdCR/E9DKSvfXvBbHxay+W2eMuVyQ8wD3U8niznWunkA9QUAddGyLjvX5B8wHaF4zgOhYXxPntF9g/AkOiafqNg3sHdXaUN/QD/4TLNanUL9KdjCa3nUOtuLxfOemwbpxS9VTh5SB273PqCSEdDcpRffZ2nmLPBNFGhIZu4Hfnqqg9o/rrqMzgs8gzhtnSVOMx+m8ZqyDy9fO+eCykbyhSj0i+F3dq6C1LOk2GUPXRCuN8jmBmDLg4AfVDqyTgRZ7gWG+jzQmz6/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/iU7iI3pKjLZg0eGCen/fo3NUic6/+D10tVKPiqxUuc=;
 b=RU4uywvB5tKgyaPxcXfzoToxZgjNWJgkYi91+OdTquOxP3nhTgdMFFhnxRQ/Z3iTU3VTjrwCCbKdgUxnG/SMIxwgkNGydYMbIrlYhEikRaIjXStG42+pFFrepUWAS78qZKO6H7casuAu172109wfFh/NYWYTeH8gRrcOivkBzAJYnJ+ZWyyrlfNuKWWeicIxnguZiJ3tx67x2YyvmMZ1PIQAakRqFgdaR4AgDloo/4/IKsJtzx0VcgWe+af3Ut9AGETPn+ylZRC01Z43BFjrOvvUYOSqDLVjWtN8F8MBcuMwmYbdCxoorzSaffl5y2nYNnjOuZQsucDc89U/JqGL9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/iU7iI3pKjLZg0eGCen/fo3NUic6/+D10tVKPiqxUuc=;
 b=ZUasNuDOAdL5UjHjn38FFcsbGTnR1udXVSoUVdqrVweF6dc7mw9/ajxuFSD01Rp6GD9fLAzQTV0D7kQDMx1la0hAVpNR7M+Ux+RddcU+BkWH+OPGQku4DQbn7I+uqgJoSGUkSUtyJi+lvvC9mZi7XGTV75zJRIX0uiMHXZcv6YQ=
Received: from DM5PR18MB1355.namprd18.prod.outlook.com (10.175.223.16) by
 DM5PR18MB1675.namprd18.prod.outlook.com (10.175.224.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 10:00:13 +0000
Received: from DM5PR18MB1355.namprd18.prod.outlook.com
 ([fe80::3cbf:34d2:5b36:e127]) by DM5PR18MB1355.namprd18.prod.outlook.com
 ([fe80::3cbf:34d2:5b36:e127%12]) with mapi id 15.20.2199.021; Tue, 27 Aug
 2019 10:00:13 +0000
From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
To: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v4 0/2] Add CCPI2 PMU support
Thread-Topic: [PATCH v4 0/2] Add CCPI2 PMU support
Thread-Index: AQHVXL44UOusZkT+Ik+fktleifcBOA==
Date: Tue, 27 Aug 2019 10:00:13 +0000
Message-ID: <1566899990-18277-1-git-send-email-gkulkarni@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::18) To DM5PR18MB1355.namprd18.prod.outlook.com
 (2603:10b6:3:14a::16)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97eebb8e-6b6b-40f7-408a-08d72ad55a6f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1675; 
x-ms-traffictypediagnostic: DM5PR18MB1675:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB1675EC05E4B297033A71B6B2B2A00@DM5PR18MB1675.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(199004)(189003)(7736002)(8936002)(6306002)(305945005)(4720700003)(8676002)(50226002)(81166006)(81156014)(66476007)(66446008)(5660300002)(64756008)(66556008)(6486002)(4326008)(966005)(2501003)(102836004)(14454004)(386003)(6506007)(26005)(186003)(6436002)(99286004)(6512007)(52116002)(86362001)(2201001)(110136005)(53936002)(256004)(486006)(54906003)(316002)(6116002)(3846002)(4744005)(66946007)(25786009)(476003)(71190400001)(71200400001)(14444005)(36756003)(66066001)(478600001)(2616005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1675;
 H:DM5PR18MB1355.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h1Xg4CbwAKfBDOhll5JtQ/EXfrS0jZjIT0+k2zZxopN8bgVAlgQn4ceE7hMB0ZpqgLitg9ZS+PDfORsmQI1PajhTy2m/C5y+jPlvErDzYRfJz9P55CiDiPVlKbk7sz76HX74crHYNwINE93JoDORL1UI2GPOnZr0qhGlleFFQbMaH65M/uFM3HjtbIF+8nKzBF3ZsqBrQ/+57lJCJcbakEoiceOBqo3aNCAB+SVtEZixhwJCc62e1eZuA52mLwqkt9npRgUtcf/Iir0kDHcHE8DgI1qfRrk5t/AoSqZQKXH+X2W1G1nWh+9Tp0goKCCv/nAr34/7n6glfAPN8Uz5o2uBKoNEBuYFTg/5SP76mkY3py/XuCem5GJEoDru8GQc7uN2ws5NkQ+oEW9sKklxXzZBn+b69vey8d8FiSt4c6U=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 97eebb8e-6b6b-40f7-408a-08d72ad55a6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 10:00:13.3004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rh3yi0c2uVUqNgPPbXUl5bRh5lM4bJ4XnNk9mpr1BEnWBM4gZDEyMDYRz9aJ3gvXK6XSR6tHHmhBkXvjxVkp5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1675
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-27_01:2019-08-26,2019-08-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030024_488056_1E83475B 
X-CRM114-Status: UNSURE (   9.58  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 Robert Richter <rrichter@marvell.com>, "will@kernel.org" <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Cavium Coherent Processor Interconnect (CCPI2) PMU
support in ThunderX2 Uncore driver.

v4:
	Update with review comments [2].
	Changed Counter read to 2 word read since single dword read is misbhehaving(hw issue).

[2] https://lkml.org/lkml/2019/7/23/231

v3: Rebased to 5.3-rc1

v2: Updated with review comments [1]

[1] https://lkml.org/lkml/2019/6/14/965

v1: initial patch

Ganapatrao Kulkarni (2):
  Documentation: perf: Update documentation for ThunderX2 PMU uncore
    driver
  drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.

 .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
 drivers/perf/thunderx2_pmu.c                  | 258 +++++++++++++++---
 2 files changed, 236 insertions(+), 42 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
