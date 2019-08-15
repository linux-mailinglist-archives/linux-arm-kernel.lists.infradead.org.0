Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2B98ED6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Q2nCs4yoo+8/MAl3HsELzHdqhZd9b+u5qm1GHZqJ+4=; b=lXTYkZlyb+27vx
	MXUoU0wHcQ36fCqm9EWMap1JaEsjqlKzpxzXfjo9aNfkqxCN4RLdKmg7cXtuET406mDyXzGQkC7bU
	bQTW8e3qKnyUV0Cs8ZMlK23TCfA8SWrVdD9N1acQBRh9JOKOT4ztZSPVtUQxZeaf+vpEZ71bi48aq
	AW9KY2LJYETjzbSSZj7QkMuNDJK7IlW++IqL47P9HlkBT6GyxBU1C6Va1Ek5JYCRSxaXj/pGjALO3
	1YFk/0KKQNk1Qdwb9yFiEGuCgeCb+VCiuJ3C1a74QHqM56hS6y4ygnZ7ERPdQvg2E1odhb2FC0hs1
	7MeQ0T6BR/roR/4kk51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGCj-0006mX-JD; Thu, 15 Aug 2019 13:54:13 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGCW-0006mC-KS
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:54:03 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7FDZJD5010230; Thu, 15 Aug 2019 06:53:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=8cnowKT1tKlX90/AOen3FLR4mjT+5uoIVLZJoIkN2KU=;
 b=Nmz+GW1w0ybdsiu+X4kTpgHtT6wYGdFwgFkxaRQ3mMuTqxNRYviYbHpKTvRBZxRYIv9I
 C+8wM0VOw/Lbm9GBnzWmCPCqUrZQBpjWFWZqZF1UQG7kQcstDpg89HHw9ybyxDrIqEfC
 Qr0KdUZFfKwhkDZ9RU5oJuZDXfs82bbdF6fYLmyX0tMCS0g1U/pto6kb4Dr6uj7UyytE
 CPafKSRUrIQnrAM6AHuJuFMm2HCWcQH7UcVtXUF7vqnPKqtm6Gh1HH9OkiV/9LOHlFKK
 R+Hd4dFMKHqTWstt0oUyF9Qm9ARyRfXPajLD5rmgY7fuudjk64mba2kKUQ5GNpjMkM9/ cQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ubfabkr17-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 15 Aug 2019 06:53:51 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 15 Aug
 2019 06:53:48 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.53) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 15 Aug 2019 06:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dg+ZRFUPEcA/E9yksOMUuJPQWUIQxgAWx9RNRoFWScl36ljwINDxB8doyV9Bg/z+VrTIm/HlVWHqko9p85huUwbQn75ECUoIGmOw2VZBRq0NEJBYkDPmJD/pNenFNbvaoec/RVUwsot+vEa/24I0xMhhdI9UDpmQl2/abKCUnsQfEnLkMcY4pMVEu04wpvzMWwQxyuKFRDCvxs+XNqVB6f4bj4BdVTojIJaNltxlyPX7ZRZYDh0WvRAzmp0GPczChVTcYMkDfh8UCtv1qM1JwWdFIyQ7UZPumNEJGmTQstt8mymjt3CKOTcjQcloTRPdhjkFKri2gZ/8uX+lA5bHmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8cnowKT1tKlX90/AOen3FLR4mjT+5uoIVLZJoIkN2KU=;
 b=KWmh/xg3Q1su9hGx6ZpOLZ5p6+D0ckxdl4FV7Ym8n2jsuJYyn92orAbdmTmFq1RFwtaZU2S0/Cc/s9zevazlbvMc2PLM1cnGk/unmwDevCvYfRMmYLWKXOFXkGhA+0nZ/7p9uELP6Pd2GU2JW71MCltmweqXA9qPqHlp3NHqs1g0YrbjwrinziqcYOkdSWetHEmAvuJqtNakqnS0Zy14WHdV+sHNMYurQVcKJdYNNEKRpcfouuVPD4XDICf8Wt1JisUjERB5CU4tTPI5m2DYB4bm51HikdD9ZLQQ3khiiicR4LMkooP72TOL5FlmACh+AzZWxIXM8+vWeHDuJ5HMrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8cnowKT1tKlX90/AOen3FLR4mjT+5uoIVLZJoIkN2KU=;
 b=TEOK4cPU0wxn6QEvy9I94jzXwL4EjekOGbfUmdUDN8rdLN92pt5h5BVIszDSNJCEbicDcMP9mFMOOfMv7eyazZxzU4TMoFmvpT0r1sRGD5aRtqetVSPm0dLY8x1P4kfy3kxui3EsTa46LZVNOXUSOp4fBBFLRi811Xd4UqD7SxE=
Received: from DM5PR18MB2184.namprd18.prod.outlook.com (52.132.143.143) by
 DM5PR18MB1002.namprd18.prod.outlook.com (10.168.116.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Thu, 15 Aug 2019 13:53:46 +0000
Received: from DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::c1ba:ac0b:df8d:b5b2]) by DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::c1ba:ac0b:df8d:b5b2%7]) with mapi id 15.20.2178.016; Thu, 15 Aug 2019
 13:53:46 +0000
From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
To: "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>
Subject: coresight: Add ETM4.1 support for ThunderX2
Thread-Topic: coresight: Add ETM4.1 support for ThunderX2
Thread-Index: AQHVU3DbTaHKp89/hUGoLbf98FNqKQ==
Date: Thu, 15 Aug 2019 13:53:46 +0000
Message-ID: <1565877215-1331-1-git-send-email-tanmay@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::29) To DM5PR18MB2184.namprd18.prod.outlook.com
 (2603:10b6:4:b9::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5d6dc7b-ebec-4a96-56f6-08d72187fe34
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1002; 
x-ms-traffictypediagnostic: DM5PR18MB1002:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB100261738DF81407FB01EF2ED6AC0@DM5PR18MB1002.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(366004)(346002)(189003)(199004)(86362001)(102836004)(54906003)(186003)(6512007)(66946007)(6486002)(5640700003)(386003)(26005)(53936002)(6436002)(2616005)(6916009)(99286004)(305945005)(4720700003)(52116002)(476003)(2501003)(478600001)(14454004)(6116002)(316002)(2906002)(3846002)(19627235002)(256004)(66556008)(81166006)(486006)(2351001)(107886003)(6506007)(81156014)(8936002)(4326008)(71200400001)(5660300002)(25786009)(50226002)(8676002)(7736002)(66066001)(71190400001)(66476007)(66446008)(64756008)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1002;
 H:DM5PR18MB2184.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YQa58HXqDP9veAxND3KO02B64NnkxDZZJj/ZDCJek04EyJPTuxzsuHnQyW+qGcXyuDowvUKZLVs2aCBEMmI4ZSIRoGPRMNZRXKV6KHM2g3f+kPwYEtnBbfS2+LGPkoDnsFE6zzf+kedcACEEH2/pADFz0MS5A6LisZ9PBILL5W6xojE3RJvY6HDY8wUidSsbiiT/psSa9ai55yiKRbc4o0RSl0xYLdN+XsGkEUTpYgSRWxokPH/ATo7vhnfFHyM53vfsGYEQ4HSjw80ontylm+niApo5sXCh1EiaaRwLWgu1Ar5emvHGmiz25BMXF7aQ4NHN6hplykcsfoNXFV49AasCssY9wUwdV1x7e89cFt+R0cAA7PYAArWxa++nmnA50b8zoWXatZ58LprRJshFN9erK7Wcb/76wdqpNyJ2fPU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d6dc7b-ebec-4a96-56f6-08d72187fe34
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 13:53:46.6818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0kYX7Ib8z8ZG5SuVIDeVatptsRYAMNOTZEyX6EDR84U9oxi1PlVxBnWCrBg5UpOfqEoF13MZ8eXk4A8fOPghMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1002
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-15_05:2019-08-14,2019-08-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_065401_086661_F22DEAB0 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add ETM4.1 periperhal ID for Marvell's ThunderX2 chip.

Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 ++
 drivers/hwtracing/coresight/coresight-etm4x.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7bcac8896fc1..ac3bd617907b 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -58,6 +58,7 @@ static bool etm4_arch_supported(u8 arch)
 	/* Mask out the minor version number */
 	switch (arch & 0xf0) {
 	case ETM_ARCH_V4:
+	case ETM_ARCH_V4_1:
 		break;
 	default:
 		return false;
@@ -1196,6 +1197,7 @@ static const struct amba_id etm4_ids[] = {
 	CS_AMBA_ID(0x000bb95e),		/* Cortex-A57 */
 	CS_AMBA_ID(0x000bb95a),		/* Cortex-A72 */
 	CS_AMBA_ID(0x000bb959),		/* Cortex-A73 */
+	CS_AMBA_ID(0x000cc0af),		/* Marvell ThunderX2 */
 	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),	/* Cortex-A35 */
 	{},
 };
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index 4523f10ddd0f..03369e56b2eb 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -137,6 +137,7 @@
 #define ETM_MAX_SS_CMP			8
 
 #define ETM_ARCH_V4			0x40
+#define ETM_ARCH_V4_1			0x41
 #define ETMv4_SYNC_MASK			0x1F
 #define ETM_CYC_THRESHOLD_MASK		0xFFF
 #define ETM_CYC_THRESHOLD_DEFAULT       0x100
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
