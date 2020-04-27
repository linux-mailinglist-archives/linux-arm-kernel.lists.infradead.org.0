Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6311BA431
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/svnQ/667WIBYVqlbjs2WZ62g57/oUu+YQZvsZvjCc=; b=Id/N9vqI3LiuO+
	IEWijuDXjKmL0GihJHlINvBasqfNwD0GNOMyU9ExxvHWShLiU+1SgHtUuUQz70NWg2wJ/ldV1HpOw
	w1lMbiwhiw2nHAjGFKQlW+OqCyQxMTCBjX841f/edYrvnNOqsIO2fuT/qo107TeLST89EU669M3MW
	nX0gX0wxKaiNv9N/vAgWaIfp6mx7XxYUHIeVD+cnK7No1G7OKas9uD1N9vL4h0B/+l9e+XVrkdFCQ
	/xRc/UmaEQQd9LMdbRv8rAbg81+iatmtQ5Ow5r9AbqnMBehDYFSFcWORTD11+dwPUV8GejnlvNf6w
	YSTw6eU+qnKi6KcK1l5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3QI-0001kq-2S; Mon, 27 Apr 2020 13:03:46 +0000
Received: from mail-am5eur03on0604.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::604]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3Q9-0001jX-71
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:03:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DtKUeJJ42hlIHE/8E78YGfQitw7ekP0IjzvfdwNKsU2C/wtCm10JzQHZfDv2jJkGhCwbF+hH69Zz/g5RF+UmuKNr2xBdmmf3BzrE4yUD6QYCSVGR6gR/uBp+idblPACfSecqlt1F6w5f7Xt0wO0sca0ZkWqm0EuubskyrI7WF579EbSnFaEm9uzqvSgpPiY1+2MkWxlQxzfQluVtMIY3frkNDyDBKCMdej+9ADjRHCu3ixdnUWX2QGGdhatm9ZGrw0Wjdmek9ekA+Byg1YU9QwEtPJFzjywkVTT3UmLkjoVd2h89+VKyMof7SlI2NvxNDWK0YoBm/40WC0N5hmoXuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dQwiETJDR1WgjLUiWTvjdkmTEOt70g2sz7cDW9wCDeo=;
 b=ByBpldPe5MIYVTqeHlSwqfWH6CY8yXtfnpB/4YPGpklNMsTnsmUUPDQtEj+062+d7lFBV7iXCWPW8XJBV25jIg8jYuNsgxQz9JyTn163UAqdYzV8I7G6TfusLw5u2hraPl8TMOcskwEQMS/4L92uPvXqDT10HunndZ4eD1C4vJGibm16z+klxW7X0k2RWdYIwk8Pw0+PJZHzTuLc2sFSdyMzrmHm+ursU7QqtJbKBVGAUH4LbxtG7xpiYJKrp6fVKcABTHeM0NXSly5nHxcaWVZrYpTTWJxjtfojH9NGLXu94MxUGoPUPErkU8F0ptZUAUDOV7USf3GWQJJJ7VB0rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dQwiETJDR1WgjLUiWTvjdkmTEOt70g2sz7cDW9wCDeo=;
 b=dFXFFuor43cmaeRjQTbIhAvarVwu65SjqdKKSLBOzKxeWZJnKjdcDMYr9J0ToO2XnEyqe2iZuV9jRDKJ5ssnI9ZkHHKa6FLGC3UYtx5xEhhoAm676cn8rrAVrlD4X4obIUgTpsRfneWV4wh4I0/o3omdVvocSstaaHBdeRRR974=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
Received: from AM0PR09MB4067.eurprd09.prod.outlook.com (2603:10a6:208:194::14)
 by AM0SPR01MB0072.eurprd09.prod.outlook.com (2603:10a6:20b:145::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 13:03:32 +0000
Received: from AM0PR09MB4067.eurprd09.prod.outlook.com
 ([fe80::ddb8:cdac:bec3:1247]) by AM0PR09MB4067.eurprd09.prod.outlook.com
 ([fe80::ddb8:cdac:bec3:1247%9]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 13:03:31 +0000
Date: Mon, 27 Apr 2020 15:03:28 +0200
From: Oliver Graute <oliver.graute@kococonnector.com>
To: jason.hui.liu@nxp.com
Subject: Re: arm64: imx8qm: tlb SW workaround for IMX8QM
Message-ID: <20200427130328.GA101181@archlinux.localdomain>
References: <20200427082348.GA98329@archlinux.localdomain>
Content-Disposition: inline
In-Reply-To: <20200427082348.GA98329@archlinux.localdomain>
X-ClientProxiedBy: AM0PR04CA0022.eurprd04.prod.outlook.com
 (2603:10a6:208:122::35) To AM0PR09MB4067.eurprd09.prod.outlook.com
 (2603:10a6:208:194::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (31.17.95.22) by
 AM0PR04CA0022.eurprd04.prod.outlook.com (2603:10a6:208:122::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Mon, 27 Apr 2020 13:03:30 +0000
X-Originating-IP: [31.17.95.22]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b766a1e2-a1ed-4ad4-e31e-08d7eaab6289
X-MS-TrafficTypeDiagnostic: AM0SPR01MB0072:
X-Microsoft-Antispam-PRVS: <AM0SPR01MB0072F1FDBDF94E3FD3909C38EBAF0@AM0SPR01MB0072.eurprd09.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 0386B406AA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR09MB4067.eurprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(396003)(136003)(39830400003)(966005)(26005)(6916009)(16526019)(508600001)(316002)(1076003)(44832011)(956004)(8676002)(186003)(4744005)(5660300002)(4326008)(9686003)(33656002)(6496006)(6486002)(86362001)(81156014)(52116002)(66946007)(66556008)(66476007)(2906002)(8936002)(32563001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XwoUZRrZ5D5x4jijP0mnmxWSyuW0V1sOq/BPpXTToDAJY5NRMqP7vBb7mv0qj8vATF5yotGw7bDjPxb3e0+FfapePGx8jBJkYiQQtqW91pJbXqeZddYlpnnTN34KO8KRd/AfrYiMBc0ElVuQKFq9HKr7lMCz6emW8o34PjinwY9o6S/7dZQ+lIqRBXYohxDCNcgDb0y5KuVEnAMvWioYwlKuAwqMwY3bWmzwgtBUYK2aL8OCvg32+5R02SsevJuFh5XxMJ81Q1r0xMg6aC5XclEtXzFvZQVr5tRpa/+sfdpRWl/tj/i/v4PGPg/lO/WdtoUjANN6pY4avQW2Ju2YCgPaZydfha4xgaJDTZvKHtHbE/lcZrO8Dsu1akkaxZedMIZJAI5TqkEmemtYCDQ49zYQccticg97e7eqR2ALJ8KcbIBFFtrjhujTs6jBWaxlxTIVD9IKEoG2u8aIwlAWuMVyzwb9EhvsxlZTSsw01yEZvaKCCcKMZyOmPTKUDYLy6/f8rGbX5K9iBqgP3uB9HKZNAOahTQUsH+FFgxUvhmW3RBv8S8WEN7iieKfNgCXi
X-MS-Exchange-AntiSpam-MessageData: 3rJ32k3Rv/QwktQ+SQtmdsLBv+mSA4BfhFw/kwCWwXC3vfkdA5shHdByqggpBwbGtTUcYaQDJPRv/aA84osKfLFyZm8JQQcPUPv4ql+5Du/60x/1bUrIeKRJG+GZtURw3PHqijYEtVTj1JiIazjIsUXI9K99iLObKvY82Nl3k4m71adI+Ugfe7vCCMTUboI4AfvKUfNp9ycDA88G/hKd9kp1jZGB/8cvBdvTqEttNrDLPPIHkScE8E6XYH8vuGpxyeLqb/G6RhgYRzdZohbGFFb0SqWanEI7jtlqAHSkelaZ6QvfKt5iiN413oHswamxd8HE7IE5gR+YRguEaX4/shqUbmZ2mGBV/odIj9h3KHnm70Tfqi9z9ugagiRKSDmMivJXQk11MhV2i3ipN+bk+7FJLgBgTsiveywCruh3KgMD3Bd4vm4aUQ5wPYMsmnwDKyzIi9M9xL6y8LMjFD5g07vq6whb1rNYqjIhm43EvVbNWhQ32GIg2MITcjbo0hfYa16BUZ+khSL2tDlacI1zRCdBZosdgWzADTIEAnu3hF+V/DKBBHHH00UVsy1/uaMO15GkEFzFQwQ6hQ3xGPf0KFrKGTGW1ZTj3a6/Vv+DA+gnAO/bOnht12Ln2vMxbhhZqQGCn1rp4VjBgWQ0Zku3U7Y49PAouRZRS+HonWoXMASr/WfBj5sgqlsmzCBABnq8JhW0+2XAC+jER/AyBhCVxgMSWxr12mR2OCKFKc+/IZ2wX6Hsv4iHT+kSXDl8Ylk2SqyANrbbMeGK9Ud5iQFl4+04d45/wh2iSYxLfh4fkp0=
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b766a1e2-a1ed-4ad4-e31e-08d7eaab6289
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2020 13:03:31.1009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eO8ZPxbMBwYLPSM2dIY7UEFIJsc9vGzonoGlanLKts2nqhXLVd5o2XqW7myi8vvF+pToDjxJQmNRN3Ymt34sepJ/t1HSWVey8yepx7ELvmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0SPR01MB0072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_060337_279949_1EBB1CC3 
X-CRM114-Status: UNSURE (   4.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:604 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, anson.huang@nxp.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, oliver.graute@gmail.com, linux-imx@nxp.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/04/20, Oliver Graute wrote:
> Hello,
> 
> is this nxp software workaround already proposed to linux community? can
> someone point me to the discussion if available.
> 
> https://source.codeaurora.org/external/imx/linux-imx/commit/?h=3Dimx_5.4.3_=
> 2.0.0&id=3D593bea4e36d8c8a4fd65ef4f07fb8144dab2de1c

sry for the broken link. Here the right one:

https://source.codeaurora.org/external/imx/linux-imx/commit/?h=imx_5.4.3_2.0.0&id=593bea4e36d8c8a4fd65ef4f07fb8144dab2de1c

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
