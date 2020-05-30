Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA15B1E932D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 20:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjiouWERWr4vjTEss7f985LllVzQ9CBBJbfoiYOmQBg=; b=ieCjtVXayuyC3s
	AP4vjW8d7dAT2keLTKHjI0ZvjPsJwpQCxcmNUcNevVTdDc8nLPVM2nuDN4CNuJiaBcSkOS7bKBTIQ
	CoGqhynr0t6U5tBK2FJDLrZ6ahe4Q/ccSc/XYsHibSyfihGYwVn7FylD+MGoj7oS+CoM3x7jy+fQQ
	KwtOUZJ3eOZQvtKH1Ogpo6qcuK2oUw/UHpON839CyRsjcfNP2aTBEXc4QEX2VhfFClKM8KYSYsL3c
	ggrpE3uxwy6kyP8BAn//7SS2Qhazfj+LlxwUXvMYWtYORZ6zUzoYFxqroFrJGUHQ2+EiE0lH3KAC5
	5pc/q7nHkYdisZe1BDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf6YM-0000dn-DT; Sat, 30 May 2020 18:49:54 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf6Xt-0000V0-17; Sat, 30 May 2020 18:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590864564; x=1622400564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DORpd/m44V/hOair5SZCKQnjQ8cCw8OCk8ciEtA9ceI=;
 b=eGFWd6FgjBg7/TpoxG9kqkFET3C5x7t7Oukj8AuCe+FJw6HtcTdzzwc3
 CdXsaxg1RoVAXbBqRuiAbeTX/JV8kgAdDLUMaUJUABsweNpDp1luGyYAi
 JtJ9UrFOYkQyKFGzs/RZGgEcO8CiWHCdvxDddlPY3f3TkwmsZofzRT6ue
 fJtNrTpZKonj/4Yz0qFXlcDgA+D+C8+vzBjPD3PiHLFxB19bdXb4ok9tj
 tt6jUcVMGIq0bMdVQvQ7uHk+8k7uiz8r0AN6uaeKwKwHGHSWxJc3U+Pxa
 UUEra8/TKtUHbHWB/JeJmUPeQzU1/B7yg5ylsWpSpgG7r6CysHPWWrvOT w==;
IronPort-SDR: svVRHTBOMEK2jIx+tagrNcjGdHef3DkVM3Vjfkd/9vXFIEeY+nD64o14UvA41RUq+GzYCfko9I
 0s8YTcRq7vpGC4T95nAvNSWP5TZt9R9s3kVop9mqgpyH51xDeJfkK/kIYygGne4jP9JCR9QsNv
 AGmWSiaXFdWbcEsVy4+eSv29RxtqpdTwxtVKNCX4kFunO8QGbjwJh3RlrZYzRG9La/UPGsbeQ8
 DMZMlfcLNjqrmWw2BC0PdKRutFZLNU0mURuxCVnH6nF5SbQyMSmcOGGQw75iBlIQaECgcOSZKi
 +CM=
X-IronPort-AV: E=Sophos;i="5.73,452,1583218800"; d="scan'208";a="76861330"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2020 11:49:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 30 May 2020 11:49:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 30 May 2020 11:49:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChyMNXNcQtMhKeral8kidgSxlyrmYc55aUe/JsUrfg038NKP6sOog7e51u3oOSW6AMOdrdleaHpgOf4CXrRRg3bCA26tu59OqGWxKDscmBbT4ATt/SZHyGD8ygI+kCpEUFcB7NYwV1ujMbVqwTE1vFevo9JGypdOkZ6M6t/ihsHgeJhtfEZ0h95NjsnszY+N1GsK7V63xYeyRMDZUYypF5SA23LHiMtXC2v11PA67iWxIQYKuaFc7Rlu/LpdYVuYZuRMwy5Vm/UVF+8YYgXLNHgFyzbfQ+22DqECl7Ps5P2CaH1rChmk42g1+qVemUiwsvDthhe9uJP5ujQn85Sa2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=snak0XMjUHQmgARiHqXJYviibjJcMTcxIaZd8qlRhAI=;
 b=ZmvBrJUdHLGyXrrQ7WS0EHMSDz7g/ZM/veZWnnzmOwKfZNWe6jmqjfAEQbJRjX+CuINJeZGg6gSsmFZ1X2fJ2KnJqLYPWWJJgwmzWMlgSk/0B2BYKe7khmmwb7yCPuZB1yirHy5eKM72WcDYAAZBv1uOeH5M7KZVMvemP2nW7V5uCrJK2KfQPKh4COvwzRorN9EFrdSYb6sbUqyibP33AQus0I5WErXeHcxvp1bvh9Mwr03zn4jm0KdYdlurbR8ibMB+xbm8L7C3MjNRSDZ/U7RbWRHK1Ejm8tv0/aM/juCXzCg4EgroOnniAwzKjIwYQlWbQb++zCLSGe9V6Ae73A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=snak0XMjUHQmgARiHqXJYviibjJcMTcxIaZd8qlRhAI=;
 b=iKqNtcBp49RME86y5v3iTbtNOGvYs0cQBXJK1b++26YvhMGkPbGZZTpvMVMkJUBWYnaV4tiS74GENjLwUuhjb+ARxzWZ8JLlEkDYxsWWivw5ps0cMEC1fG3rGWAkrBVRWXUy4CYtjS4tpp4G1Anvpqcz/C/+KjAHV27JbW2wm48=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4241.namprd11.prod.outlook.com (2603:10b6:a03:1ca::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sat, 30 May
 2020 18:49:21 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3045.018; Sat, 30 May 2020
 18:49:21 +0000
From: <Tudor.Ambarus@microchip.com>
To: <p.yadav@ti.com>
Subject: Re: [PATCH v9 06/19] mtd: spi-nor: sfdp: default to addr_width of 3
 for configurable widths
Thread-Topic: [PATCH v9 06/19] mtd: spi-nor: sfdp: default to addr_width of 3
 for configurable widths
Thread-Index: AQHWMnUxYn2nq2S6PEyjm4N1aAw4D6jBASMA
Date: Sat, 30 May 2020 18:49:21 +0000
Message-ID: <12165309.mSmAnqxVWc@192.168.0.120>
References: <20200525091544.17270-1-p.yadav@ti.com>
 <20200525091544.17270-7-p.yadav@ti.com>
In-Reply-To: <20200525091544.17270-7-p.yadav@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3ac4a8a-9257-48d6-01c9-08d804ca2a8e
x-ms-traffictypediagnostic: BY5PR11MB4241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42411C0338E797E6E6051D17F08C0@BY5PR11MB4241.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lIe+D26JdD/cd/PsekUdW4TX1pbnxdwO1z05ZUYDocMitkpW8+j5cYICXbTN7BpiC6Sxnho5Y9HeMTn0Dy9qRR0RMahRAiWDB+NJIsQjyZ39DXmMkfglvtUByCW+M+npsAt7oOGB9vRGWrd8mH8EA/QF0AdilNCRIFKu6txHu46+Zt9djfk+VrFY77IkOv8PixaXQCoa/vxeZp6ktGaFBDXEOmZCun9tvebDXsdrgZhoQ4Y8wrWbxNNHCCypzou4JwzRQAXpofhhdXYk98ftQGQ0BRX9UDziSI6YoxI4UndKeJcGW+5qHePzUTDaDUvM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(366004)(396003)(39850400004)(76116006)(6916009)(91956017)(8936002)(478600001)(66476007)(66946007)(64756008)(66556008)(66446008)(7416002)(54906003)(26005)(71200400001)(4744005)(2906002)(186003)(8676002)(6486002)(316002)(5660300002)(6512007)(9686003)(86362001)(14286002)(53546011)(4326008)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: US6pN87pdHcLEukQOfDdOA+fZ5a3b5SuaJu5FJVdhhcV1n1dAwXKEsxoAkS0yTB7bwdslIiMU2j+pez/160We7okP5VHwAfqQ+BNcoLb9qgnsZVw28lQaJ/XjBHXLrfUo/QZs5SD7ss0nqviCafW4XWo9EQD1HkhXP/GHjOEsCNqRkQ00kzKTrMvl9+h2xBmTCIJB1AoYrhms0/U/i/kCv/vg8cGBsMyQuqIDOBl1oZLUgIh8eqxLjWJWh4FAp/oRrWA0RrZfsAIJzNi5CK+ZVm2dKhNDxGooU3w1ImKfZCLU8dEk+Lq+cVp6XEo6ST6upywUNusZKRvih6BU2iNmjcDRyC3JWqYwuNTyLbdNLVVXRdrI8Me8EM0M0ZvD5sU1XbrwsP/gZ/2b+UPRjaL/4vgK4yHfr9Z4+9nhBPin7YvsSvk8VhyrZcwPDsyVIGmkO8dPbBja5eheMMp9r3y8kRB1F30UjeI7COK/QIYPbA=
Content-ID: <C5B079A36B8CC4458467974125D42E53@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b3ac4a8a-9257-48d6-01c9-08d804ca2a8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 18:49:21.5120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KTUHqdBuwZHNqdAiyrTUdJqJMJX9bvb+4xW2ECpO+GjZECxO5YKm8GPxc8kG+iUB4GpId7L7tsDW9xKWQhxn6FZSBAcoSMmzkPIAJ9RP1w8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4241
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_114925_140156_9D1F01F9 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexandre.belloni@bootlin.com, masonccyang@mxic.com.tw, vigneshr@ti.com,
 richard@nod.at, nsekhar@ti.com, boris.brezillon@collabora.com,
 michal.simek@xilinx.com, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, May 25, 2020 12:15:31 PM EEST Pratyush Yadav wrote:
> JESD216D.01 says that when the address width can be 3 or 4, it defaults
> to 3 and enters 4-byte mode when given the appropriate command. So, when
> we see a configurable width, default to 3 and let flash that default to
> 4 change it in a post-bfpt fixup.
> 
> This fixes SMPT parsing for flashes with configurable address width. If
> the SMPT descriptor advertises variable address width, we use
> nor->addr_width as the address width. But since it was not set to any
> value from the SFDP table, the read command uses an address width of 0,
> resulting in an incorrect read being issued.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/mtd/spi-nor/sfdp.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
