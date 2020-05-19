Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608AF1D98D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MqnXxFOns/AWmkMp0ryWfQBanU3AOHfixsZDWuS9SGY=; b=H2TQj5lpcBHp6a
	ZdhQPpyU33QItn0FD3Pv4QEFlz3CDSBo8jDQDPpJEYmD3CnchIr9FtEJuHEHZnzTAya1CqkjiljVQ
	rv3ik/D+k4CLE59Fq79pkJK4i19jIPDCoGXU/EfpMryv3Zh5ydnk+tlmIHNUEUuzlWwJHeC62aOm3
	s+MkpRRoFPK8SVQj4VzPjmWA0ZPnuyPZEjNTc9SqcoAQHqq03A7KIJDvZqKzYrMZlTKLA2PPYTmWY
	CLbQ9aGtbVnuR/QE/ito8e2/aX0pR5tOgukHoiUFo5AtnhuBendngXrNvrHnHHUE3wkFTHoothLfD
	A5WS2bVlLFJIWqcs+Nfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2ra-0006SO-EF; Tue, 19 May 2020 14:04:58 +0000
Received: from mail-eopbgr70078.outbound.protection.outlook.com ([40.107.7.78]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2rP-0006R6-5W
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:04:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTh4PWcUa3pqzoh9fb3ug3BhfjZOLczceQyECkaVTbkEJPebl3w/C6dP+NVM0jf43w9KD60m4kuseH7YnRVDB3acsO3OFoElEeFrQjQX55FKQZ4UZ+AS9uaMpNuK/zfegDnU8mS44ALmNx8urBT+x5OcmUhE47r5O51GYRKhfqNPw8PEERJHtXQAFNSa0UwA5o8hkbC2zUhNY58Ct44ueulvj+5MaP5CNspuoykyljZoecNXT5tSvytBPfUlN+18r8qSaaFCZLk3jP1L7OZsLYfueuR+SPYNaaEFCIKW/P5vnR0aUoI8TIAovmroC6bLjuqB6J089cIaTRmEVzkk4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvKADXgze9LQNvclFGZFl9Lh7DQ8boLySckeI/ZehzQ=;
 b=VP4SPeQLRHzS5HpbezIlyg2Bjoiatm+Igr+xQTOFpx/TCggQAtgq6NBfR/Vd2zhmcGbsf2vQaFwMjWjweJAT33vx38H1SSdM6oz/olkLx5Hc+xEBxJF06OsgXcEpGpcQH+4o1YyW+WlzXjq6vEfRW5b+MwdA+4W9365K9PhjpwlS35IdAJgHNzaQu8wDjfTDUKDsAv9VjGtraaI3uI/XRjdx3x6Wfvwg1ZE2poEwXGnbubMIVNtj5QAt7Mn91OFwUbcE+BFtw+jFOtHfWf9WdKDsXGfh8Vl/JKRPhGZe0+2sJqWQu66V3Z7HtxzRs7NvNPVUeTLxkI22dWEJyS5evA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvKADXgze9LQNvclFGZFl9Lh7DQ8boLySckeI/ZehzQ=;
 b=C+485zBHx08DIirZyecQXwjwZA4sSttPI/BfYvhjtN5T+UVupsPNm09zYp+3f68af3sgdGxR6wdwMZ44Vgg6E0irYS22Eib4wKCNyQ+fJNP+i0GfkFsfMc7ko/0fC+0bVn/kSwIDb6p0oqvKBPf3vLsI/6QXKN7CbLVU8QSA9Pc=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6367.eurprd04.prod.outlook.com (2603:10a6:803:11a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Tue, 19 May
 2020 14:04:40 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 14:04:40 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 anson.huang@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 john.lee@nxp.com
Subject: [PATCH v1 0/4] Add pca9450 driver
Date: Wed, 20 May 2020 06:05:03 +0800
Message-Id: <1589925907-9195-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0128.apcprd03.prod.outlook.com (2603:1096:4:91::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Tue, 19 May 2020 14:04:35 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1815eb46-83e4-4b3c-bba7-08d7fbfd9272
X-MS-TrafficTypeDiagnostic: VE1PR04MB6367:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6367FEA1966385C8DFD271E589B90@VE1PR04MB6367.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uTtFK8/uPW9pfmDZ+W0gYodMIThrItzhB45uS9JanhBulVWOon3dY72qzGivVsQKX1j7hL8mVCrFvoaDi/ihZxTz6aqt2mX9hZXl5lWr3+pqGBnJOYwiRguPv6hEHxvIbLwwK/WgoCu6Ju6GMIyXG/IV8zg0MdBW3HwmRZZm4vBgp5jVlxJthjC7v6jTdLypWtk1REjjWTONt/d7O/j4ObsJxdm7KzpZET6E/RRHFMwRKMJAc93Sl8jzEMJ5D4Pe6mfxURU6r/nTl+iTNH4sV8zrnXnMGgjczTtI2Zr7+oeQVN7pMNMF7RjO23W0/hGb10rIwiSzfHo95STDc+OzEc9DN7Qzvs+UyRm0RpVU/R2M8S3qDa4CviLbpfB5Wb8+Je6fx2HhgtexjhNpbqH78RWwqvLWJP+6zb2sxBhd8w2SF3wo6O5C3Llc8r/6+CvT105ubREBJ7i2SLBNCSHwj9Wag0GhdqCKg9TyebG8KuF/nf0l8nT1sLayGDvUHfnc2pCXoSeg7M4rFIQjX1sqOzb3p6EFy5GEPXUjvxoThM7/dCaqnS3qtzLljOf5Rc8F
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6636002)(6512007)(4326008)(2616005)(6506007)(6666004)(5660300002)(7416002)(26005)(186003)(16526019)(956004)(52116002)(8936002)(36756003)(66946007)(66556008)(2906002)(6486002)(66476007)(86362001)(8676002)(498600001)(966005)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: bcwcDOSxv8k5Ftbi0SFldsTm/v8lb6sP9CjIitGTXkNLN8tLfODejmce4C5G4a4Fv9bnu5dKTTV/ay4013GpOlDUjF8/2xLmAy4Osh2BzTymvgkyzNKNTUWK5cMaf4qELkAbCsjebmxzWhX6nyx8PB2waMfINTmM/l4hYVHSSP/BxIFmyX3s3MSUIzsg9Sm2rApGlUZzfunB2K/WnZMSHdx7XXR70IoUTYOAHJ1kqzyzby3kMy2KmaQD3wRnWxueYVH9bXklGiXjrlkn4C9GLy5wWQ+GoSG2vX0+1t1ZniXL74h13li8MQ7HVREF/TC2nAZJcrX6QPo6uVRSOoZLhxw7gO9rTjCPY55ek7mADbiQKc8fIC5bhoAO4JbEyOllActcdM6h63zpFxDWDeY7S0i4qU5Vd8nRcIt9J99gydzSd0bzWomDgUu8hBMwKYcJ2vG7SonxzmIKHaMvOItWQ3z7KHeQLUVepuFhR67QQdA=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1815eb46-83e4-4b3c-bba7-08d7fbfd9272
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 14:04:40.2892 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sTr4sugCeDy4syG3LNAetfBohVqDkeB0T2VszWytn3plFBvdC2sJHmPLmPHT74bL4TT3GeoOCK747a7SaYmxSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_070447_264035_D55747E1 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pca9450 driver for i.mx8mn-evk board. PCA9450A/B/C supported now.
Please refer to below link for PCA9450 datasheet:
https://www.nxp.com/docs/en/data-sheet/PCA9450DS.pdf

Robin Gong (4):
  regulator: pca9450: add pca9450 pmic driver
  dt-bindings: regulator: add pca9450 regulator yaml
  arm64: dts: imx8mn-evk: add pca9450 for i.mx8mn-evk board
  arm64: configs: add pca9450 pmic driver

 .../bindings/regulator/nxp,pca9450-regulator.yaml  | 190 +++++
 arch/arm64/boot/dts/freescale/imx8mn-evk.dts       |  96 +++
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi      |   6 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/regulator/Kconfig                          |   8 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/pca9450-regulator.c              | 859 +++++++++++++++++++++
 include/linux/regulator/pca9450.h                  | 219 ++++++
 8 files changed, 1380 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
 create mode 100644 drivers/regulator/pca9450-regulator.c
 create mode 100644 include/linux/regulator/pca9450.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
