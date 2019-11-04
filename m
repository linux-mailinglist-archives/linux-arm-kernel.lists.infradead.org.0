Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEE1ED9CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VK+fIBOKBl6ogqVrsuWBZUQqD3TE6dpCZTY1wP1oJUs=; b=BJAMBzX2FeoO0B
	095cDUHHUVmyxaPRWRKeYGrNMuCEXeoKfZS/rZ5/0KOUrAi8eMWlXwiwk2ya7HuBZTFynM/9a5tYN
	UKO/5HKqZSJLQmHPS+pK2/oDJ76ss49EDrop2xp1GAm2w0YC/DZLL2s3qz73Y+8tjYLqlMdgVKg+h
	x7bN0s6oBJlXC8zcYKrL+ljdK2vR/htTa5ZeaTbdBEL3j4cROzZqPUmHcDPFtOk1usDcR0VIbSDF2
	Wq+vmC3aNOk1N/hKLxw6xepfXVO9YP7//QVG1XbqeT8cXCqsF8Ynh2UaJGSijac6dTwBPs2tQ6G12
	jWSgL1CSVbvfKYKQ9m1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWUW-0005Rp-Q2; Mon, 04 Nov 2019 07:09:32 +0000
Received: from mail-eopbgr10083.outbound.protection.outlook.com ([40.107.1.83]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWUP-0005Qb-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:09:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2abgEyaW90eKpIceKrO3yUVWpAZkjk/En1fU7EJrrdgozi71v9GCty+uL+/xrwqxUjdgj2dUTs0DJ08nNm17CwieIOtUw0f/76QtuYNq6GEFRNVxR27CIjwjJYT/FAF3N+km5a+OXIPzjSo7Ietpjwg5mKnqh9iUF/WQlau0u2x7o8cC1haiiLc7mgHHSwZgCJotBmlfsFm6ITpfZTkYGvnF9w8J8/jptw/X9jMmxqT3vwfo8RriJ/v/lRoIy04ms8Eak+aR7Pa3iEcI48VbpJ6r1Gf+ZFnE+4n9kS0Y6b0TgfmxYIkmF5c+1HRi5qZlTc8DxKzx+7RcCZYHrIiIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SaInR20gqwsYbLwFfybk8nLo9B2AxXj5drRuGYkpnQU=;
 b=YTIkrsSvbGtqsJndq2Yq2szuXKcv4NoYbvIdXY/Jrn0YDkk46+xT8HUK3Zt4L6poVLN0yLTViWoLqVaWCSq3fwlHRAGbCj1Q/YyqdLlIrCfCGA7e9JjvRVNm4mrmZUSdhQTXvrJ2WhITRuaF6ECRLpEhyXS/3SM/Jp0VZcHKZ9K8HyYOv2PNLKM8lpM5qBO+Ls029dPoOWbbv7/vYIke/ZT7V8riZAWbZKH4Kw6ani3nhZJi/g/lwigPvkjG82kZ92wpQZ308qJrGESCN4dyPSQl3rdrY0TzNH/+8QlOS8Hq5NArrIxjzVCGI1QP5jx9uMCQ3Qmk0eaQhzWF+WdM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SaInR20gqwsYbLwFfybk8nLo9B2AxXj5drRuGYkpnQU=;
 b=b2V8BHnAgx+Eh6Ni/vxTCST/ckNVeiGd0PNrwE9ne5TNnlf+HzxHKOH+vm0GJMYyVpzu7K7rVCSolSwT+f0fhUoDGhIv+vCDUyxS/0kn9OaQALGzAP/5rua0viEKhTz6rD9W3j3EZ8KuJycKfTBFggZ5xdm6pU5z9HiLm1UlL4k=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4283.eurprd04.prod.outlook.com (52.135.131.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 07:09:21 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1c96:c591:7d51:64e6%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 07:09:21 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH 1/2] docs/perf: Add AXI ID filter capabilities information
Thread-Topic: [PATCH 1/2] docs/perf: Add AXI ID filter capabilities information
Thread-Index: AQHVkt7HHau+gsXR0EuoPgkJpL+thA==
Date: Mon, 4 Nov 2019 07:09:20 +0000
Message-ID: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0132.apcprd04.prod.outlook.com
 (2603:1096:3:16::16) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3d7a2143-138e-47fc-843e-08d760f5ea12
x-ms-traffictypediagnostic: DB7PR04MB4283:|DB7PR04MB4283:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB428337EEA1366CB218E8F9A5E67F0@DB7PR04MB4283.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(366004)(199004)(189003)(66946007)(66446008)(66476007)(66556008)(2201001)(71200400001)(86362001)(71190400001)(64756008)(6512007)(54906003)(4326008)(2906002)(6436002)(256004)(36756003)(478600001)(66066001)(2501003)(110136005)(25786009)(6486002)(186003)(52116002)(316002)(81156014)(1076003)(81166006)(14454004)(99286004)(486006)(50226002)(8936002)(8676002)(476003)(2616005)(7736002)(5660300002)(3846002)(102836004)(386003)(6506007)(6116002)(305945005)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4283;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5AC1RX9WN3fB2l+JNBV5F7gUE+GhwH2vSAbVEQb+0BGwjKH2nty0cW1xHjVdOwVixEDglT2PzCeY0W5kbqcceXzU3Ii3RrJFTfDG7XiHXGIkfB4SZQSdC0E/gfa4XzlizVjDL9XTqZ73hvYj6ZZWi/GikdkQLHubUK7kwpY0BQuXf+EEULvP3xdJISa3Jw5aC6VOtYsf6Aeu82LWKZwBYrFLqKSGp9N/pnHCu5YgG/ZC26LNphgTNRaDK2ORcDNYPvDlGNHO6wCCtepkVHFR2ueuaZVPW+yDqZ3oCFJ7as9XlScXVVhJtZOCV+rS95C+XjZr++gwevM+7wQxQYL5T/9fTlcK50H46vQwEvpZRGilYM1jt+3VySV1B0ucN+dTQ5Nd7a1R79ocpIXuoJLE5i3gHvDx+AqRKXRYyyiuwW2WAHtRonG2seJcsdq0XEdE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d7a2143-138e-47fc-843e-08d760f5ea12
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 07:09:20.9458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tlk2U6WOAxLoCketbv/TTixL8ii+HXbFpZrGrlEMH5vuSx1M0WlGnbsmmDsaa9gDkGn55omFhbviQBXAUgCTEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_230925_597909_7871DE11 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add capabilities information for AXI ID filter.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/admin-guide/perf/imx-ddr.rst | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/perf/imx-ddr.rst b/Documentation/admin-guide/perf/imx-ddr.rst
index d1347928ac39..9c5742e44b28 100644
--- a/Documentation/admin-guide/perf/imx-ddr.rst
+++ b/Documentation/admin-guide/perf/imx-ddr.rst
@@ -17,7 +17,8 @@ The "format" directory describes format of the config (event ID) and config1
 (AXI filtering) fields of the perf_event_attr structure, see /sys/bus/event_source/
 devices/imx8_ddr0/format/. The "events" directory describes the events types
 hardware supported that can be used with perf tool, see /sys/bus/event_source/
-devices/imx8_ddr0/events/.
+devices/imx8_ddr0/events/. The "caps" directory describes filter features implemented
+in DDR PMU, see /sys/bus/events_source/devices/imx8_ddr0/caps/.
   e.g.::
         perf stat -a -e imx8_ddr0/cycles/ cmd
         perf stat -a -e imx8_ddr0/read/,imx8_ddr0/write/ cmd
@@ -25,9 +26,12 @@ devices/imx8_ddr0/events/.
 AXI filtering is only used by CSV modes 0x41 (axid-read) and 0x42 (axid-write)
 to count reading or writing matches filter setting. Filter setting is various
 from different DRAM controller implementations, which is distinguished by quirks
-in the driver.
+in the driver. You also can dump info from userspace, filter in "caps" directory
+indicates whether PMU supports AXI ID filter or not; enhanced_filter indicates
+whether PMU supports enhanced AXI ID filter or not. Value 0 for un-supported, and
+value 1 for supported.
 
-* With DDR_CAP_AXI_ID_FILTER quirk.
+* With DDR_CAP_AXI_ID_FILTER quirk(filter: 1, enhanced_filter: 0).
   Filter is defined with two configuration parts:
   --AXI_ID defines AxID matching value.
   --AXI_MASKING defines which bits of AxID are meaningful for the matching.
@@ -51,7 +55,7 @@ in the driver.
   e.g.::
         perf stat -a -e imx8_ddr0/axid-read,axi_id=0x12/ cmd, which will monitor ARID=0x12
 
-* With DDR_CAP_AXI_ID_FILTER_ENHANCED quirk.
+* With DDR_CAP_AXI_ID_FILTER_ENHANCED quirk(filter: 1, enhanced_filter: 1).
   This is the extension of DDR_CAP_AXI_ID_FILTER quirk which is only support getting
   bursts from DDR transaction, i.e. only can get DDR read or write requests. You
   can select DDR_CAP_AXI_ID_FILTER_ENHANCED quirk if HW supports enhanced filter.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
