Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5F8AE3AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 08:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lmWPwQJV+ZaqKGkML+pJxlcFviScrZXJrrjQTLfZRPg=; b=cCrDB9agGPW0Rd
	/IxZmlel0axJzd4nZ+fKDEYUtbbtw9PlRmzJUk6lzjC5div0/pYZ+yunSe6Y+IC9R3CpfEvpkKVqj
	BB7mG1R9DucNO7ua7GecD02YR2b7cuen9NTSnnKLD1Wgk7gTQ8l2cCKbx+Wkwf/5cJtui25Wx32c1
	i3Qj3boN49ylDItA9yYjn9ddYBnh+oASI+tnsE4vzRT+8z/+dn3xhXjGtTcuwWq40shEwkX2uNWPG
	xhx/NZ9/+exwRXtpMZ4VDyOoCdGsRTHys5zmReOswixlIfWNlXKIaj/JO6iaDucx7el/AQ6DseJcb
	fjmnbITMpSa4al3M+05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Zae-0002Uq-Ug; Tue, 10 Sep 2019 06:25:25 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ZaS-0002N6-BZ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 06:25:13 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8A6A6ui002986; Mon, 9 Sep 2019 23:25:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=BLsO1ojeEGLYAqscyJSX5SASI61X1rwCe2bii3hHpmU=;
 b=jbflxpgiclsf3FyzVw+osZRHwanOG+O0K8Nyjen/G6h4xwR++JkJ4YeuliB48oCy3l30
 DncDKuCVE9iLfanZNyJK0sCwmj1adjshPzm/4+vVtsE/rYU3bY7EgkDzutmPOuF3vaZ/
 jx0iL292DLddh+KskfJSR8I9yWgF8ArvQ1ZuEf4+nXRIYg+tnJaVvZ6tHfXGKm5zvplv
 ePHCzTK7VyzvN8AtTH4O9GRN7fJ1ZWIldsCuVbzr0RaeDW2h0JAI6BO4vCiJnqQaVzta
 ST+ltQfoMnt8Za67FiRXPo2NHGgd312T9Y/ZXrnPZDL6fJPlmQSw69+IrPPNSTjoN42S iQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2uv9wpu60p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 09 Sep 2019 23:25:05 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 9 Sep
 2019 23:25:04 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (104.47.33.53) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 9 Sep 2019 23:25:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3ghwuOJrLybfjilUcrNUyhsjoZp3QxHiwC6JOhoWE/GxozoUduyszk2Cb9AoQ2Zt9ViAl+UY9nmf2jZaUy472atAmyPob8tsj4Ep18xQU/DKqajwPjI7mWgq7inK1q+79xsQNMMYebjHTcj4w6sl/bo++D40Sl/NZhHqunAlc+3lrMVpymghcgeHp/6zj9C+Cv/KA6GKhs/7MPDta9r2jykvIiH1qanCiu4LdmktzfYxlJGv8I1GGjCw6joFaI+uuxlpMxMydBYI1wf20UbyRbR18LgvbAhNbuGVl6lJXpt9n/WhX3+DNKczDpJ97adVQhTxftbuzyf8ds3xwzxxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BLsO1ojeEGLYAqscyJSX5SASI61X1rwCe2bii3hHpmU=;
 b=e8vh+gThqufKcOcdMzH7Y6MUJW5T3/AB6IQpuiNXg6DL7bIsvnOtgupyM/OuOiXXRByE1RLVd9KOgojlsPXmghIJPpW9zx/9vcHAEdZzGR3yaOzyJP0WyY/tDwZl4wIhZ/8r9now8vF6JXSHumD0HO2cYRQSSUZ/Vvb1FWNdyHj27JGa1mA4KsMxsMh/9gOzf5tYaLWxRyP3madhzf/LfwmDJYuob8KNoepggJNs8lJA1bomJuU3FjTyhT3+d5Dlmm+obPGm5w2SPp0PqNRYcaezjn9Kzc0XBsZ4E6fAAEtPYR+WKh/lB6+fTmO4Ryse/rvE8H2VPygblMw2JDNuFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BLsO1ojeEGLYAqscyJSX5SASI61X1rwCe2bii3hHpmU=;
 b=UgV/KssP+irALizGrMdHIdSMP8MpA2wv7ya3unwASHcmXu2rivVbzwdGZImuW12EZ9O8GW+cjWtTKfuipuGhzV6Dgxx157kUb/EXtlpKJHhWZdRb06fKR3+jUKALz4ss/w1mkH1N/VZep71Qv8E6Jvw6XBSSDI5+e6CEkOnOJak=
Received: from DM5PR18MB2184.namprd18.prod.outlook.com (52.132.143.143) by
 DM5PR18MB1673.namprd18.prod.outlook.com (10.175.224.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Tue, 10 Sep 2019 06:25:02 +0000
Received: from DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::68e9:e24f:3f9c:de02]) by DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::68e9:e24f:3f9c:de02%3]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 06:25:02 +0000
From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
To: "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>
Subject: [PATCH v2] coresight: etm4x: Add support for ThunderX2
Thread-Topic: [PATCH v2] coresight: etm4x: Add support for ThunderX2
Thread-Index: AQHVZ6B66aMLevjV20q5SUUHcbe5kg==
Date: Tue, 10 Sep 2019 06:25:02 +0000
Message-ID: <1568096664-13252-1-git-send-email-tanmay@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::26) To DM5PR18MB2184.namprd18.prod.outlook.com
 (2603:10b6:4:b9::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5cd46a9-157b-4131-d5ee-08d735b79cb2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1673; 
x-ms-traffictypediagnostic: DM5PR18MB1673:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB16738813454D565FC6A73213D6B60@DM5PR18MB1673.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:179;
x-forefront-prvs: 01565FED4C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(136003)(39850400004)(396003)(189003)(199004)(81156014)(2501003)(71190400001)(478600001)(26005)(5640700003)(8936002)(50226002)(52116002)(102836004)(386003)(6506007)(53936002)(7736002)(186003)(6512007)(81166006)(4326008)(256004)(305945005)(8676002)(86362001)(66556008)(64756008)(66446008)(66946007)(66476007)(6436002)(36756003)(2906002)(486006)(4720700003)(2351001)(6916009)(6486002)(107886003)(6116002)(99286004)(4744005)(2616005)(3846002)(14454004)(54906003)(476003)(316002)(25786009)(66066001)(5660300002)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1673;
 H:DM5PR18MB2184.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: azHpFmACKALClAGalQhIEcZ37M4fh6RNxN2TaqMfOI3wu8+Qylu1V5HiLe/enjgphuNZMR997sxqhjnLTEsZ9MDnaWTOcDyo+4q42DdbtQxj68yQqk4SomyBWLNtwA5Kpwt9bIg3bMx5wfu3Kh//RzLThrH7F5VGBReDPsL7BYh+mGU36PKVCk4KHvB0iqhKMcW+MRyAHJtAlJ1ong1sf98q36RTtRGl8W8ySQdxleADFTo56C1vzsGJR1Khgevdj9+ObkU4vYhTZCMpnKeCPKQWgCxldDy5ZEfsqlE2ztIf2AH8z3f89+0nAfPR7dXfaRn00XKCHnyshQ0zkLoNn185s3LZxr7YTYEFOWpjtthimzejdBzSz2H/xjDYRbEk0yQ+5gY3p4gYeJNnCfqsjIwJh0IQGMbncs+0GDUlNi0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d5cd46a9-157b-4131-d5ee-08d735b79cb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 06:25:02.2236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jlQV5RX924P8Cn8wuaVMVrZjhw9SdvSevSdMjFVQibaWwBineqRqZCS1JUWIJ5ksiH9uRl2Wz4saAxLac2GGxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1673
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-10_05:2019-09-09,2019-09-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_232512_495589_8E01B70F 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add ETMv4 periperhal ID for Marvell's ThunderX2 chip.
This chip contains ETMv4.1 version.

Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
---
Changes since v1:
- Updated commit message.
- Use UCI to identify ETMv4.
- Remove addition of ETMv4.1 version checks.

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
