Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15E4B6202
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MlszIwL+gYiVkqdp5b2iZ+ArUJ2vWE6yZftCM5rd1ac=; b=boWH5HTEdwa9lg
	jbsegYbziJqnKp7r3SEvKgMl46EOhZWuf1nqidsJX+aNXTWMP31quFTvcRl7TzFPyvu4KC1Q1qQ48
	umwRYMTW+/7rcMf6dPPr9qDAIO7GKsdRKD9cws5BTAMUkqXc8RrOhvVyUMOT+PKSQWFydrP64db5t
	jVoL0HvmGQAsN1ZrKa3/DNOgOz5zkI+nvp+SKtvYx5Y58cJU57A0gsl4PbghX3OvkL6zq5j9+ESwq
	EZYqGAe3wi2CGAKsp0wMPsdsWOWRAourwHjCSg5SwodNtMuMoCbEL8lo1GnhXg7fpb37ilN+F+zdz
	pDciD35DNPuNS4LIKtoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXlp-00017z-8v; Wed, 18 Sep 2019 11:05:13 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXlb-00014D-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:05:01 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8IB4qP2005951; Wed, 18 Sep 2019 04:04:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=uH4i8c54vKwBxnr8iRn1FrimXwKkwATSRk9Ux3t+Kmc=;
 b=O40hTXgfaJ++y7oFK9E7X7bEWZCiRHESfsTBbjJWUQ2G68hYz4WMMXdTH02X1hoFKQsY
 60TEuK9JDU4RfgVptKw/JNKiozCG+3rbJiFWre7Bcw+69ckP7VGejYDNzM4K8v3z8mg3
 xugC2Wx+M+yTfBUGyDeiZSVlkaqX9BVoKX+cnX9rd82F+iZ6qh0Yk9XECY0684KNbw5X
 ozRgKGhksSFTHZUGUPuLaFZHhvYcQtGjDzyNYO2j5vm3O61ILpHRGnaq1XyjMrQ+sEud
 1iAu980GDZarpQF4sxvlz8nd9oTCIHvOnSm5DHHK7SAGx5xpsn9cL+E1+WHNRL431NHC 2Q== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2v37kd2avb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 18 Sep 2019 04:04:52 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 18 Sep
 2019 04:04:51 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (104.47.50.55) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 18 Sep 2019 04:04:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uhb8VRw3uE5a/fJ5373q4i7uJ5HkvUExHoSe8siyKvJpTiVJUuC8aU2M3gtSIUoaijCXkHoDqtBusqWZPWvkedSTFBbAabhpPxvykf10M0Bbf3RvWiZ82is741lxUFL9E2r/XgExoe62hOubuHNHSFXwnKebK3FE7wcl18bVgcXOXhvc0SMiqepT9fwj101apD7AzS3dvJRQvaTfxU24yz0b5VZzUl8Ybvjqeg4fveReYke5oPtJef8a6B7XMTfMuL7YzTLt+e5C1jV91PrWMKJqvehrNdgr+HrY/IZ5X8e2cklaefi35H9Fjil4ho993IbJjgu7FVpmhuTYVU1utA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uH4i8c54vKwBxnr8iRn1FrimXwKkwATSRk9Ux3t+Kmc=;
 b=YF7v6j1KeicjBbHnf91nGUcuCLsg7MoPAqyNThErQyDjWx5B8UNW8XFUIXoFmwqxnsx5WM6yVmKzyXRYcqtk6s9xiLMDxQQmbvGFCtOSR6G9uIl7VPOB+KEDKgK+z46R+DL89UzVc8bjTtlnKlhxc8/VWvfpcvkdWfhdTCMpniFTOPwqMITaPj71Hab6fum1gcFkDCfJ4ABDgZ4JPrKdG6BS4C4smJxVgwslud6Z83dKfkLQlmMg2hJ11+HO3U8DRje8yNmJwcGtEy7OmTZX+7wJUSaiqTNNKvTLifWG8vhusgEaqK6IJ1szxID2aopGSQmx404mERtDaEmom7dEsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uH4i8c54vKwBxnr8iRn1FrimXwKkwATSRk9Ux3t+Kmc=;
 b=aikKf3nIwDEF5EpJ++AKfI9i/y14ZuQdfJWf0zbckHbkhXEP7oo58X8T1NoWGTUJtuHan6O60/22UzF5TpLRuDoqC3MiXr6g3MZ2pI6xnZrNMvR9ruO4rECyoloC/IdEbuul2DlTzsIO8jmVOcdV9tzUQ36x7EDgb+IMAGfiGDU=
Received: from DM5PR18MB2184.namprd18.prod.outlook.com (52.132.143.143) by
 DM5PR18MB2213.namprd18.prod.outlook.com (52.132.143.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Wed, 18 Sep 2019 11:04:49 +0000
Received: from DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::68e9:e24f:3f9c:de02]) by DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::68e9:e24f:3f9c:de02%3]) with mapi id 15.20.2284.009; Wed, 18 Sep 2019
 11:04:49 +0000
From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
To: "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>
Subject: [RESEND PATCH v2] coresight: etm4x: Add support for ThunderX2
Thread-Topic: [RESEND PATCH v2] coresight: etm4x: Add support for ThunderX2
Thread-Index: AQHVbhDjfrP4VWQIek6iybHhk0X+JA==
Date: Wed, 18 Sep 2019 11:04:49 +0000
Message-ID: <1568804666-21664-1-git-send-email-tanmay@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::19) To DM5PR18MB2184.namprd18.prod.outlook.com
 (2603:10b6:4:b9::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b540146-71c5-4767-12c1-08d73c2805b6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB2213; 
x-ms-traffictypediagnostic: DM5PR18MB2213:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB2213CF2827F94EFE3DC2F8A7D68E0@DM5PR18MB2213.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(39850400004)(346002)(189003)(199004)(25786009)(99286004)(8936002)(5660300002)(4720700003)(3846002)(2906002)(256004)(52116002)(6116002)(8676002)(2501003)(50226002)(6916009)(81156014)(81166006)(54906003)(316002)(2351001)(186003)(6512007)(6306002)(6486002)(102836004)(26005)(2616005)(6436002)(66476007)(86362001)(5640700003)(64756008)(7736002)(14454004)(66066001)(486006)(305945005)(966005)(66556008)(4326008)(478600001)(4744005)(71190400001)(71200400001)(66946007)(476003)(386003)(6506007)(66446008)(107886003)(36756003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB2213;
 H:DM5PR18MB2184.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SWlEs10LyLdWHCai5q/CFYvEGR9azJfT7TR4l4KwgEgBRN8JIQXwdks0TkqYhryzsE9VrKsmFMPH210vwEnMnb3zWt4HAKAivSC+YX581eTPU/0xblDg8kiJWRyfVrEluWB/q7SwPzUMrUQoaSj6fZAa6UBllxdwI6LmOc6nwazYlzUoaqLSmztaxpelfQnCrkq3aNgxV+Ug0cttLQ4HueNXIoNDj3BKFkvycFdXKZukI1YjFy8wWIaZybMUMHLH+XM4Nc6cM13Gd1GHY9hXoMjdZUWDSsiJQU39eZPwRTnPthCrJ40lIlLbEssTcOTQF7zzH/1jvpwJ2eQ9m3S7bs+AdYcw2peNJ0vVgm91fV+Rj5mbIpriGzGWi9x58SWhi0TSVrcLMedc5Mr9xLoTId2ObI01nSpxCCJLJJDOlOk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b540146-71c5-4767-12c1-08d73c2805b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 11:04:49.0130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q2+o2mAXa0APYdSEEUNyVB75uZMX2tmbZYL7vJR8golanrp+OPmen+cy7HhLthiYzw7GfRC6lzbhHCZUZAxYtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB2213
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_06:2019-09-17,2019-09-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_040459_768927_7161874B 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>, Tomasz
 Nowicki <tnowicki@marvell.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>

Add ETMv4 periperhal ID for Marvell's ThunderX2 chip.
This chip contains ETMv4.1 version.

Signed-off-by: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
---
- Updated with full name "Tanmay Vilas Kumar Jagdale" instead of
  "Tanmay Jagdale".

[0] https://patchwork.kernel.org/patch/11138743/

 drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a128b5063f46..47839b4a8bc0 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1211,6 +1211,7 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
 	CS_AMBA_ID(0x000bb802),			/* Qualcomm Kryo 385 Cortex-A55 */
 	CS_AMBA_ID(0x000bb803),			/* Qualcomm Kryo 385 Cortex-A75 */
+	CS_AMBA_UCI_ID(0x000cc0af, uci_id_etm4),/* Marvell ThunderX2 */
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
