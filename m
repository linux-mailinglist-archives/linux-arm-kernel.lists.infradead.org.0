Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0F01DCB66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmwaPX+/NJefIxJ82cYRzwoKolHjVQrHx8yR7YQVGIg=; b=kZ1hmddwaMbtkI
	PmzMuhqTWC1sA38PqaFMTiegWP3MveSFveZBp8bLqRXy8S0w8Rnzh2iDGME2Lf2ImockawJIr/bUI
	1w0EebHpYH3yrV05tBmLg1QHcYmOaGdzss0bc39iJKDB3iZIN36V+mjf8qEH/phWc7C/eOwEIzDza
	3xm5usNCgZUl3Q5Lan73NR3vSKhJVGqwmQgHu2RoKNYjuAKsoEkW5XvQ9SyQL/+dnZvTdn8YBmbu/
	/BpqXIFIp2kTUHhTn94Dxz6As4KCat7myNjHygeD2qkbZgZAaX8tXOXcqSQy1PhZgAyclDLleu1vP
	gT2YsIHNqTvrLnTJLJJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbinp-0008JM-1z; Thu, 21 May 2020 10:51:53 +0000
Received: from mail-eopbgr140044.outbound.protection.outlook.com
 ([40.107.14.44] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbine-0008IE-9C
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:51:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eikGNZQFMKguwJar4gBtl48Myfm/XBNi1ijR9U5GD9cKKuNDNPpc44SKdJDHosxWOwShZEgHSQ+PuOA2RSFMXHb+P2KWogFY4SA6/qav5vKkpysL1/aZfbAK4ebmO/1xSXkIU39WKEnOl//gZYztfqSVVdPFkIk9jxBNm7TEGDm4KXoELqOQXqGV87aOw65VZ+ZXZLg5mPlZfKIKXiHD+ztC7gR5cFZIkicK0/e6L5HancPKrmG1x9vRFQqFLjzesyFc5a/oW2ExQJ86++SQ5IPFQAyV/Pg8oHp6HPVbX2itHoGSaku0UiD+AFwoikjbD9R5MRyA4AImepJ1VgPEqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AeWkf6eAUBtEGcv0/d2oSPrgMHWr/jvGoHLxoyHUAVM=;
 b=fCSzdDe2881+oKcG5FE/8RC+Zj46FsEQd8vLALPWZ6eHy/HHaJlCRPoHDfOcdpdGre7SeYEYNMqPLeaqEl4YA4dc4csQPKnHwAjpbU5Qxy9SSdexiO0GN5CUF7dJNSSSjleCLPRAZtv+gRSNfSew0jqjxm2wyMsQpeR1RyV17872y66eeCX15NAOCIewSf9gD1y/A+wI4grJnshHe7eMxCIAg71YHTia910ZL0G4nsuNOyqsZ/7UTnC/9nxVDhuRBIQqJbress5r6U497jyuz4tw0L+Tjzx9i7FIV+1wl0IAyfRK7EOuzAEDG6PlyoPJVy0LgeWeLU/wges0X7Ccsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AeWkf6eAUBtEGcv0/d2oSPrgMHWr/jvGoHLxoyHUAVM=;
 b=M3IvwfRsmUijYHZZm7ULpccZ0neJ53em6XouTSuqArwPTsbFrVIs6tw0AYFzBUywBqScOsCHWf/l9eFSd8QbX1tP+jYvcZ6jm2BsKQWWat6kwjoYr7TwXuCqg1EourEZcJKe6flTV5dMtou/0vJx0RF5AxtYws3XUvXpEWUWRz8=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4454.eurprd04.prod.outlook.com (2603:10a6:20b:16::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 10:51:37 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 10:51:37 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Robin Gong <yibin.gong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Anson Huang <anson.huang@nxp.com>, Peng Fan
 <peng.fan@nxp.com>
Subject: RE: [PATCH v2 1/2] arm64: dts: imx8mm-evk: correct ldo1/ldo2 voltage
 range
Thread-Topic: [PATCH v2 1/2] arm64: dts: imx8mm-evk: correct ldo1/ldo2 voltage
 range
Thread-Index: AQHWLzeGuEJZhZiDNE+QlTjmZZ7cNKiyXPsA
Date: Thu, 21 May 2020 10:51:37 +0000
Message-ID: <AM6PR04MB49666F2BA7A2AEAB6F04994080B70@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 137a89c0-206d-4ce7-c000-08d7fd74efb4
x-ms-traffictypediagnostic: AM6PR04MB4454:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4454CF2EC41CF4A3F811797F80B70@AM6PR04MB4454.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 041032FF37
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uUXpcARQjZ18pkvw1IOwCJVA/sNllcZLbLeKuz7OGiE5ATZix0VXlXtoSPuk2FZLWiOvRDxPfrrs2F7aFdnXP38E6jQHszO2zyVtpnZss1nEt5TJUSgrvGHo6EKBBBWJD0eINifWIl1/J8f8+/N31u22MvK9QiHNEynUEL20JHqSnhtZa9+M7SnLIS663czEm6dA1CokolPSwjqUQ6Qb4USDcTnTxCgtAioFQ0NmIuiNBPOL5NnLDIHXKrCMQhowUFbXpv4IJPvJscPW9wD5ztD/MrbVxdZQaSxycPZrcnWYsWjtpF4hLL/PlTaYAwxFuslG8hNdplplZkuCUnfSJgt+EQVzAJSIHoZPXzb4ZOu8wN+w1ysFVGwFpBDZZMuk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(4326008)(9686003)(7696005)(52536014)(8676002)(186003)(8936002)(6506007)(55016002)(110136005)(44832011)(26005)(2906002)(86362001)(316002)(76116006)(66476007)(66946007)(64756008)(66446008)(66556008)(54906003)(71200400001)(5660300002)(478600001)(6636002)(33656002)(4744005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: xyYVIDI/BO65G5RfW28efKoJfrObgQFCtDesNSigdBqSR4k+m3BhRnue0WLmNbSgBNz7tKHPZ1eR29x2VeJUFwcZpqhGEXxEtQc70rZnEl3rFNrxwR96JXuFDlTcIuEgANogTaceBm4RYZJhCybb1EWpcjxRGVp/n+8OBO9FtmW8GyF47/81KfTjtDzqstHGEvHkrP1rlYG2mkqct9T6dyo6QDq2ncNpCONnvMENxm1WcwZ2g9KN6s5z/TsgaQdyXNIeVXFyrkxf8i1Qb/IRiqknPQG3uzcp6MeyQZid7D3plOW8d9CZ0hc0v8H+WqDzbcdKGPLUFuGPfiWguwpHmOn8tm8S6u1Hfywe7hA6P3rGGyR3un6AKC1U+UFL4YV/xMsiUJR/P4qyX3wYQ/La9hbVQVmSC5skPXTz6vNiX5zHa1QRKGByJwywcuSwZ7zyRc3boYCJLLOBzL1XKOR+Zc/QlAQZM3ircjV2Uk+6Fp+OjJpnd29rihAFz5zQvC8V
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 137a89c0-206d-4ce7-c000-08d7fd74efb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2020 10:51:37.4699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vl+LKQkhUgwF5QM+ega00kiyswtCYcNiUl0pYMXa2R9nrD7UjMvd3AaEle7t9R8j1TaG/N5tOTS6eBKIZ1WO5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_035142_423229_28C24F4D 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Robin Gong <yibin.gong@nxp.com>
> Sent: Thursday, May 21, 2020 10:18 PM
> 
> Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group
> (1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups have
> been supported at bd718x7-regulator driver, hence, just corrrect the voltage
> range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
> Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mm
> datasheet as the below warning log in kernel:
> 
> [    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
> [    0.999196] LDO2: Bringing 800000uV into 900000-900000uV
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
