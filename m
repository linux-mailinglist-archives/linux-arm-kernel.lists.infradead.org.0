Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B090B1DA7BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RMJlrwpuDucJxp59kJ1X/jXYFujlRHwpENvoQfghJyU=; b=WCo/EXsSk7zO9B
	ock2pS6kpA2sSW4o1ChPcwaqb7VEPuaWZKJLVScnhSICKfEVAPkvzKMbgPIZs45ilUbtSF6QEGbZL
	9RpzGeRTtcv0h5FliLjSChTdRYtnVE7wJddifRasecswn9JogfdIAevqIrF90RBpfF5XYn3Lr0ab/
	XSPTL8OY0Y25Ehw1hafB8j6eEB6bvmG4McaS+AW+PBk2wizVTf8KatTSJicJJ1usMQlPV1q2Bw58F
	4yGRfLc+1gfTWUoQlkvwE0NfGcfQcwuAxjMKalhPwbUebm5twZ2oAaScys0NtmdP2JwooU3WJjIsY
	Tkba/4mNfErjqTX0Nyxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEE3-0007cs-T1; Wed, 20 May 2020 02:12:55 +0000
Received: from mail-eopbgr60089.outbound.protection.outlook.com ([40.107.6.89]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEDu-0007bY-Kb
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:12:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+KxzhBK9kSFqRzc+syu+R5slMxxnmv9fLmUUQ6qzIrzZ+8pk4RW+jHZhwhnL8P7+Gn7WDVKRVSlBZr/pp5OvXDMDj+f44nj2m9EI+ixPspf/rcVrSFJP9p5Y5ixF8qHiuGvZL4D5dGd6wDla2GeUU8aQRN7D1TxubbUammMMmc7lT5I3TSlUPkSF9dPCO+DGcJAinZdZyyJBEEgvf1zm70RUleieGfNaVnIinGjKQJEzAWTMfqEhvoTs+YiTkwj7TnYRnfZB83C9cE+XMR1wmK9DNIceQ/lhcM2+hp+cRiHp8RjhHCs0mJ8QFRqhQaPgGEgR8BYc1M6Le0rxFJqig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RnblXTQDwrw8LX5NWOSDTxGQELjPog/KQM1EDqmLzQ=;
 b=WoZ2wjBcofuMhTeD2lttzUBDFB0+i26a6qAMbfCn3Qg9GkG/XW3JeA/OGx2+r7EyJJ313866FkC5H2hQdXHYwvzrh4DphtjrDV2V2u1H7v5RV3C2xY4i2SM22bzP7dnK8FQ3ebdngmm9/ZgqwcjS25IaUs4+LVmN8+JTha7H4szoIQDb2HCRv7vfZOyFhB0HfpuNRZp9DLIo7wLie2RPQLg54hOhwS3ePJBlu1nh19ytDJVSqmAVcUsTHXqTIlmWBN26EBVgvpspsEBdX9zq1xmv/lfY6jXrQJGz12YPcL/jmX8ytuCIa/EjzBUgxYynjlzWPvg0yIdousxm4fwMfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0RnblXTQDwrw8LX5NWOSDTxGQELjPog/KQM1EDqmLzQ=;
 b=YjE1Eqv0ZR6yyaA1DvZr9CqmS0NTxu/65MDohTaytp2VxzzB5ali/tEs6PeZgiaF6AZsOKbzLmoDFeRGS5CYqRs8LTQEf+aA0km4zW2dX8gbvfHhZohkyZmTTi9hAiom/Wwcn8lEQOaqmnsZ/EFh5JNt2CyxptnVtpFjICjHsD8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2741.eurprd04.prod.outlook.com (2603:10a6:4:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 02:12:41 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 02:12:40 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com
Subject: [PATCH 0/4] arm64: dts: imx8m: dtb aliases update
Date: Wed, 20 May 2020 10:02:42 +0800
Message-Id: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0099.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::25) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0099.apcprd01.prod.exchangelabs.com (2603:1096:3:15::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3021.23 via Frontend
 Transport; Wed, 20 May 2020 02:12:36 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 31591d5e-9bcc-403c-505f-08d7fc63460c
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2741C54F5CC80208463F57E788B60@DB6PR0402MB2741.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SZvIT+cNPamcFxqNAELrAYJVVSZynZbro46VYoG/n3YwHr4PhvoWYkRrEHBzqlr+IIoQfswV4rbfywwUIP9m/MNCuU20XKZ/CgFyndC6FwOwiQyeJst/Mnu7/ALF6xqApnSBI/f+2EGdmLCtI97vMyhP2hEI2csnhdsPM+OL51NVzRjJmKd3zLAyfbFioCLmznO3J1zlSZvyYmN/u6kVRvKMtdrPoi2akquTZSSAIkUX3qb+KSVAf+e1XcvYV/t27NUbqshAtttwMOVaL7JcZqlO9CO85z3oT/1Ud8myQoTH4DBEJEyzgO/ZUQ9cvdsVkwwFf7B5YQtZbZzQnwOVtqI0EETmfKXrZLnMLiCkxeElcaBhwTQTKqLK458ecu/kORnasBYGn4KDY91x6suaXHb04mtkNZkvHcHYDiMZlOjp4M824WLECS2dVnSAiUXzu18v4mruOpW9nq3jXFyD9F08W8fuOH49UYyPVpkB5HVB2rRZ6RO8j0Nunu92PzobjgQ0iv3X7C1e/ivKdxFPCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(36756003)(8676002)(6512007)(86362001)(6666004)(52116002)(9686003)(66946007)(66556008)(66476007)(8936002)(478600001)(316002)(5660300002)(4744005)(15650500001)(26005)(6486002)(69590400007)(6506007)(4326008)(2616005)(956004)(2906002)(186003)(16526019)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: tCyhM1K8IvEyQO6y8iZ+emTcKC94L27RbIQfz6fmG/n7F+shXQ+//V/MwjqzqWB7WxnvCiIGIkLnkdahN42afO4OSwcLf9/ULov2yJpyR95hH8xBsvGIAJDRDBM11lBaIYWx6QiXZP20i0or59bn7PzmByQcIdfN+FvvrGnLF7wuqCtQEZCvgxXkO+rY/8texp7fCtci3uN4YEUEKJ1V+iZmpaAHKdnVZ6s6tAPSjLal7emHTQtq0V4KrBYd9Dh4Czswdf7tU7kewGnwpRTA1zY+3VdHIkUyy/vVMC7dVTdzC+aJ5qHfRwPgkaWupb7s/pQnY6XevHi7sxVnh9RYVjRUQLHNB6TxYFjVLuqsFuCwjRyjcYnxOcGRQ9a7nG4x8R1uNroDjXSJ4TAePY1S6dRFGUk8f3iZgfcFlQakP6ZeV7s/Zosh5EDifjXnLSG/67rsD8eV/hK7qDEsHEZMDK6X9xEOhq87meCZp9wbx5Bhwl8tIgZ5RBwkpdFmiy70
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31591d5e-9bcc-403c-505f-08d7fc63460c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:12:40.7386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j7/1vRP+eQabKj1pJ/9ZBqoIuhaNxG6MZbc11Vrq8xVzO45nmUlJe8SsYbrzMIk2x8qs3AT3ERkX8p6QTmNJKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191246_722822_F95BF56E 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.89 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.89 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Minor patchset to update device tree aliases

Peng Fan (4):
  arm64: dts: imx8mq: Add mmc aliases
  arm64: dts: imx8mq: Add ethernet alias
  arm64: dts: imx8mm: sort the aliases
  arm64: dts: imx8mp: add i2c aliases

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 16 ++++++++--------
 arch/arm64/boot/dts/freescale/imx8mp.dtsi |  6 ++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi |  3 +++
 3 files changed, 17 insertions(+), 8 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
