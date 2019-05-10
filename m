Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CF019E14
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEBXnaC7mJY0bLX2jn9DN9cAOUyvonR+fMYMcucSrqU=; b=oRt6jaQpL9saJX
	NrIBJyEtL9jBfJKqJaUu7MUCbVdf/frJhZMP+jiP54oCsYzwx40AWmS6rNw/lbi9Z/tdZALCHDMfa
	VUEvVJPyybMl/0X05ZVE9t6v12Yt5WuwLAPbO+bpcbDA2m2vB9uqS9WKqUCdHQ7GOi2T04bHpmaaY
	8lABjtmKsHFtAcsvJCC04Zj9+9+b3G3YIdOEzU9LsLlCkhYxZxtiNmzkmghqqPtRzZbHJLNIK8dJH
	FI2FWdymOmdmC3UeRiACgmk/715Jb8GRFNAvMmycocqrz9aGZ9g6gpAEJ8NsaJ1cdvL68p2zEenhY
	E0yKzF7qehc0BtBDZn3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5WQ-0008Rj-Qg; Fri, 10 May 2019 13:25:10 +0000
Received: from mail-db5eur01on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::626]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5WE-0008RD-Vz
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=edyNThoWb6MawErspnFC9saZzQTIZ1PGZMeCvj04IrE=;
 b=rQC5Z2OLInGdwqctgc9yXYMuVYjV1IpH2PMKyNsHuLmG4P70sGNzNpR3GJ6JCTw/tpnkzd5oE0HWqi5zsRuEVwPxEfBzAmn4Kwq7DkWWdATXrxpXL4VyNQs0IaeQ+Q04F4+fJr/TyGsg4ST+65PsOa61OhGQyqcfYYCr+xcfnxs=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2351.eurprd04.prod.outlook.com (10.169.133.154) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Fri, 10 May 2019 13:24:55 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 13:24:55 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: RE: [ARMv8] kernel entry point
Thread-Topic: [ARMv8] kernel entry point
Thread-Index: AdUEvuqU9yX+ipLHQpGN/Ynvsv3fqAAARNfgAAAI6oAAnLr6MA==
Date: Fri, 10 May 2019 13:24:55 +0000
Message-ID: <VI1PR0401MB249619B2D7FE6F0EA7AEAE7AF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <VI1PR0401MB2496E0C9DF38720B251C5D32F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB24965B8DFAC68CFA27CFEBB4F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB2496C34266F4220813AFA05EF1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0401MB2496C34266F4220813AFA05EF1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34cd6d08-f60c-402b-5360-08d6d54ae484
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2351; 
x-ms-traffictypediagnostic: VI1PR0401MB2351:
x-microsoft-antispam-prvs: <VI1PR0401MB2351061648706C04C10A9B5DF10C0@VI1PR0401MB2351.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(366004)(346002)(13464003)(199004)(189003)(7696005)(54906003)(110136005)(25786009)(33656002)(8936002)(81166006)(81156014)(476003)(8676002)(486006)(11346002)(53936002)(99286004)(74316002)(7736002)(316002)(76176011)(6246003)(305945005)(66066001)(9686003)(446003)(55016002)(4326008)(66946007)(86362001)(73956011)(26005)(5660300002)(64756008)(186003)(66446008)(66476007)(102836004)(66556008)(52536014)(14454004)(68736007)(6506007)(53546011)(3846002)(44832011)(6436002)(71190400001)(6116002)(2906002)(71200400001)(256004)(76116006)(229853002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2351;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SJeRpRDGMBfRwBHiLAQn/Jg8vXnQ14qB68dtnztysnKGivm3QDhxA3xJ4vVvJIRkg0bxxtno4fON34hC8hr4gotpaympsVVxkoj3vFZCZoyDpjCZUPxDgvQzqnMOwC59g7D9FhU8X09UfA1zjQveEXBvUxvZRNkq6njAhZ0erUevNKddiMYQzHN0rb01en4RjVydH7tPMMz3ZoUriq62/MSXmYyoZwjSlCaETkhlGYJWFFCjvtsH5PF76UhluslkHKFBf5qJ3rbG4u0/nUQxVXgYtLDmNCaeQJdoYZCGm+0QBJj08Ft/veB0g8lzItGQpdXsZLTYGbQ0+tfHodCWueL33w9BW9/kNTb6Q3DyPr8xfqCTKItYoFrlycQPwKLRxsQcbY4laLbTdHVB6cgUfyzdzRwDYUKTQaVmfxEQPNM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34cd6d08-f60c-402b-5360-08d6d54ae484
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 13:24:55.6876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062459_122283_213B3914 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:626 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Wasim Khan <wasim.khan@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Ard,
Hi Ard,

Can you please check below mail? We are not able to boot linux loading Image at 16MB offset (0x81000000) from DDR start address (0x80000000)
I have tested with both u-boot as well as atf.

This issue is occurring with latest kernel (5.1) Image.
If I revert kernel code to commit a7f8de168ace ("arm64: allow kernel Image to be loaded anywhere in physical memory "), then this issue doesn't occur.

Do you know why the support of "loading kernel Image anywhere in memory" has been removed in latest kernel ?

Regards,
Pankaj Bansal

> -----Original Message-----
> From: Pankaj Bansal
> Sent: Tuesday, 7 May, 2019 04:03 PM
> To: 'Catalin Marinas' <catalin.marinas@arm.com>; 'Will Deacon'
> <will.deacon@arm.com>
> Cc: 'linux-arm-kernel@lists.infradead.org' <linux-arm-
> kernel@lists.infradead.org>; Varun Sethi <V.Sethi@nxp.com>
> Subject: [ARMv8] kernel entry point
> 
> Hi Catalin/Will et. Al,
> 
> I am s/w engineer from NXP India Pvt. Ltd.
> I am facing an issue while booting linux on our ARMv8 based platform.
> In our platform DDR address starts from 0x80000000.
> If I load kernel image @ address 0x80080000 and then try to boot linux image
> from this address, then linux is booting fine.
> BUT if I load kernel image @ address 0x81000000 and then try to boot linux
> image from this address, then linux is not booting.
> I have tried to boot linux using u-boot as well as arm trusted firmware.
> Linux is not booting with either of these if the linux load address is 0x81000000.
> 
> I get no kernel logs like "[    0.000000] Booting Linux on physical CPU 0x0"
> 
> The linux version that I am using is 4.14.53 Can you please help me in debugging
> this issue?
> 
> Regards,
> Pankaj Bansal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
