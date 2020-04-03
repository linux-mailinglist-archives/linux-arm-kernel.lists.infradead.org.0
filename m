Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B574719D2B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKTJKsvGOT63n/FRpMwOQ9fBBW3JuwW7fxx1vnh/2Yc=; b=mJ3FSmHJbNO/Vo
	dBU4BfzxKSgUctBbJfjHcVVInmX5jHudfkWFLFsl3SV6IDJluSTvS+xNs1unj0nUIlmw8xZ8EG95x
	IMrn6MvhD+oWlq3Kfmh4IkKDZBIiNVvDxR245ggDdDJ+Wv3E27ALd7Ku0ZpBGZyKpCSOmuZZhFGgP
	zDteN8UDFUUdmUZgZyjAN+d/diLKLNHeciC4WYORgVTyMbKnU0Xy0XEKwXraPzlp3T3nubvD65ihc
	nnrhCMgKIz3YqWwt88dFKSCGW2o27J6ZSA44VBeDGdQJBIgfos/ADqJneU0/WjaU8r1GdG3yzod8U
	rq/nIlitAOrNGT48rgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKI1s-0003ef-Eh; Fri, 03 Apr 2020 08:50:20 +0000
Received: from mail-eopbgr1410093.outbound.protection.outlook.com
 ([40.107.141.93] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKI0T-0002q5-QZ; Fri, 03 Apr 2020 08:48:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lcPInuR9mQyNN80YhFvUE3kg4rccqEfsAOcNJWokcZLgFHSyCAk4mvbKwYjPZeCfV4dK0JIAAFHEv/SG/CsYfTdtSMSf9K5LK1Stl0di+dhpAKmFOXKEGxnIgm6BulPPjCrk0TBqJKwCgVbG5YYQLO1CnG1V3GLdChkcNQaozM+bT+vOZ4KVk+ovD4BX3f1z3+IQYjiT10eM1gTQarQT3VHNKfZgEntwB7OWftY0rDgcZsR1McvOmWZaLgIeAp/mJtoVBoUQTi6DOsZvJzonCCHdYXz4jNQKD5tiIcEUWUTNTnqdrahg7HpcS9/yDzYKJeDBIa8BO2JP5wuPdpIJUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYDi0WYdl8Y9n341xK/dbmK5j+NLoQJx3pDfdWmXmKs=;
 b=MzqGylJks9Ey88hDPtffImhGqW9/LDF1eyMR7nSGsjV0xAr3uZ4uI/PiczyTnqvFQ6I43g9l9gUB5dNfAAp1d+s8+1mOgk7B6fNTrguqC0d1CPCDK+3+r/TEM0RzuGmHujZN5WeYs+qWjds/WExS92fnCBmL0BkcIgl/+lN+MYwCuTLATmvagAFpcdL6FdIA8RCaWudhExFXEXG6XwSIZ0EUfULWEVN2w6lB7pfEFNyz0c5OItzbD0Tiy218IITGCezggOFK+Bxw7vbLyDQl4OkboAzpgzAAKK4ijXebsFjtKUzWbvi9LfTdOdoOxGdkFd5MJapfz0NWSG++nKuDFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYDi0WYdl8Y9n341xK/dbmK5j+NLoQJx3pDfdWmXmKs=;
 b=qoPbpNmwjZDKHvW2jLi6SCzRf07KmSRfGfg7jn87TDLFH6O2CwiUFnZU9qBVulM0hqDjDi9r/CdwbFM9OKy/ql9F+hSOfhfvPKJyhYg1JHrDb8BVp1Q/sDkMZDBEVWq2s3UqDFT9nqallOSwIPFpCrEz0eeINdXHqkNMXhjmJZo=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB4958.jpnprd01.prod.outlook.com (20.179.186.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 3 Apr 2020 08:48:50 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2878.017; Fri, 3 Apr 2020
 08:48:50 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut
 <marek.vasut+renesas@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: RE: [PATCH v6 11/11] MAINTAINERS: Add file patterns for rcar PCI
 device tree bindings
Thread-Topic: [PATCH v6 11/11] MAINTAINERS: Add file patterns for rcar PCI
 device tree bindings
Thread-Index: AQHWCSaHWfzlO1127kSwO6dW2/hRnqhnFrJw
Date: Fri, 3 Apr 2020 08:48:50 +0000
Message-ID: <TYAPR01MB45446CB6C15F21121B4EE5F1D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-12-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1585856319-4380-12-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fda6a567-7a52-4fe4-18be-08d7d7abd509
x-ms-traffictypediagnostic: TYAPR01MB4958:|TYAPR01MB4958:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB49582E03F17A9922FE2F5F41D8C70@TYAPR01MB4958.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(55236004)(110136005)(107886003)(5660300002)(7696005)(2906002)(8676002)(186003)(9686003)(4744005)(86362001)(71200400001)(81166006)(66476007)(64756008)(76116006)(54906003)(4326008)(66446008)(6506007)(8936002)(55016002)(66556008)(81156014)(316002)(66946007)(33656002)(52536014)(7416002)(478600001)(26005)(921003)(1121003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I6kN8UnYuB8S+Dgwz+58MEGHCXiAPObrsn5/Y20SXqvVPreY2CRgaD8+2mdm4hHY5yHwvH3ey5Iy7rfkPGabrH9o5KI1CKH6HNHJnGZjfk1tDILywV5dTzRNW6GIp/IUcqcXhbsB/Cn0SYLki0IBnD1/Iif+84mfaZumWbkOP+pH0rG8551sNMQElNQE1LkNCv7/GRQtK14fxpAxj8ZAQLLwwE051jXcoKxymjRjTs7eD0A9ii7mvFzYGTrvXC48Y/5G5ajaSsX1J7TdREzaQVjZO03MbC8AOdrgXJku9fJVik7QPgLZLNsWz6BBcLP04jUP+ho1M9iHaNOPTE15PV76PcxEQ6oxBrxm8BZpCAl30dv6vHrmoI55m+Hv2HXCNsC9Sc406ObvdrWlubGZFuU4AH1RzXOr0YKWJXr00pnrt83to7gCiS8w5f53CtVDIP51qq0c2YGS3Mn5XkwRL72nJ6QkHzNiQo/D8JtirQhD5GksuCR37abYBPylaJZo
x-ms-exchange-antispam-messagedata: 5bMSN/F8TKATq7sYKec+KWwoLX1FtZGLSihUCG2VGuWUuaizp05erKzkPHKPqxeQydZ60oNbaNLt3u5x5/ba4dF1ZoP9Epus5Us7v0lD4Q9yq8sIOtAbTOAQeodCKzcllyMRhfLbrXmExydvB46e+Q==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fda6a567-7a52-4fe4-18be-08d7d7abd509
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 08:48:50.7508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LVNqRszSfe97JNek1fWLEYdlDGkAIfUcMmmqPsySW2i0lyQxKHsd/zrDZaOVS4DiDsKpZJsyOG/0TETH1AfGN4tnCCgqZs5Dnh3p8Wnoj3uC8ds3+YrietVZFKHzMsUB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_014853_871720_5575F75C 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.93 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Heiko Stuebner <heiko@sntech.de>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar-san,

> From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> 
> Add file pattern entry for rcar PCI devicetree binding, so that when
> people run ./scripts/get_maintainer.pl the rcar PCI maintainers could also
> be listed.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
