Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8F915B87D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzXxhAgjOOI8d0ja+8CnyqprzeTQ59tN/9R37yUOdCo=; b=jTm6nDRnuvP0B5
	AuuZsCS1dafhtVZCFZ32L0Xn9JvWFp+/P+flAl1aZ9aYgccROoT27VVuyPGwCKfIGMGPQLoSBXxOt
	8Vl2gDPM34k5lj/7f4ciPM1H9YiXfSstAvc10Ccs8XqW8SRTqluwERt9KjSg8F4QYREUngjHPsn3q
	cVHTsPbht3I188zQLXDZdJaGGgbN/gfcCsYq2auwmeeE6VJ7eQDfbpyYoO7QVhPT89Nwqmdhx18Tt
	QLl8wnTIFiPtKPl7a5inmzGc62QtTArA45Fy/bSe4A9TQZcjoS2v3AR335kGtGszo8sbADDhQKEx3
	EZz/i2Yn7qJ3RhtGk0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25wy-0003yp-TK; Thu, 13 Feb 2020 04:18:04 +0000
Received: from mail-eopbgr1300109.outbound.protection.outlook.com
 ([40.107.130.109] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25we-0003rc-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:17:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOgId8NpaESfPbT2uw9zDVbfwrAbxR/LkYDoleKnXMY464V+WFCZJqzTQjcQrdxa4PuJJawjNDo9ahe59MCEvugrkv+mPjJFtYqoqQJfusUIvTPN/PGRaQ82q5lMcej7axNKq90jWJl2/V6Y65Pa4UbPK2/iYGpg9AK6GnQdTcybpa3VzfOGZtzjWT0oaqgRNoHBx3VVem+vDs1oBFJvObaxQFhUd/bEm/XrSRz8mgzKLEemsc65xDWx+D9t+pSzx1cPNt1XfDdnINrFvLojSaj0JjAoG67/cIQOZ3Q1h5cVdq9s0RERHbvqQZXX9zYmaUgyqyQzAOAMZ/gUamn/LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhazV96agvSym5/swGpJTEfl06tVYLR7neqKuc6XiA0=;
 b=FFfv499KuDohuDR+CnffgXWG48lsqRnBk0HOEGgOtE3Wp2UAnRXAKNoAc9NX5RISmnJ9d2ed18LVwL62KGqHnrQvAdeKIQiUD1rhL5s1N0UsBAMBsBUpQHstddaDPMNYRGb7n1ftCieD9GajzycnXotlgulAs3B+nB4QfvEXibqxshWoJcinvZXAP5ZKApri5h9IFU0+2qjheL8geZytJcMwsY8fw8OubKoomCO9cClGWCQ8W/RTbNDkRgkCCSnfRkxR9tzKsfKQbzLWWEE5+a23RU2/yAMhMdxJzec6+j9I3fzVYyac25nQ0xxLG8D4hWMP8wNi8xaziFCkJpWH8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhazV96agvSym5/swGpJTEfl06tVYLR7neqKuc6XiA0=;
 b=forC6p5oaU/IXLskOqMfxCVcr+xnipR1DQr4PbF/Jadk6t9qob89S4iNNRHU0la4zjZ1XgeHIuNU3gZ0fjZtEdBcPv9OhuNGsk+y9AF0Gy3UsWrbHU9zOKHDpBSz2+PW4TGWs+62tpltLlTCbp4w0AKcOY0lVfGscmr5t33l3oQ=
Received: from HK0P153MB0148.APCP153.PROD.OUTLOOK.COM (52.133.156.139) by
 HK0P153MB0290.APCP153.PROD.OUTLOOK.COM (52.132.236.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.2; Thu, 13 Feb 2020 04:17:35 +0000
Received: from HK0P153MB0148.APCP153.PROD.OUTLOOK.COM
 ([fe80::58ea:c6ae:4ea3:8432]) by HK0P153MB0148.APCP153.PROD.OUTLOOK.COM
 ([fe80::58ea:c6ae:4ea3:8432%5]) with mapi id 15.20.2750.007; Thu, 13 Feb 2020
 04:17:35 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Boqun Feng <boqun.feng@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Thread-Topic: [PATCH v3 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Thread-Index: AQHV38PcCYEihm8LGkypLG2suczj/6gYgpLQ
Date: Thu, 13 Feb 2020 04:17:34 +0000
Message-ID: <HK0P153MB01481A125819FC7660E067AFBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200210033953.99692-3-boqun.feng@gmail.com>
In-Reply-To: <20200210033953.99692-3-boqun.feng@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-02-13T04:17:33.3488632Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=c6c12c33-5c6b-437f-95f0-285da880dd41;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:7f70:c129:4d3:3571:d407]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a2a32696-248f-40e1-d9c3-08d7b03ba74c
x-ms-traffictypediagnostic: HK0P153MB0290:|HK0P153MB0290:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <HK0P153MB0290D7D19D4B406B75C30FF7BF1A0@HK0P153MB0290.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(189003)(199004)(316002)(76116006)(5660300002)(7416002)(64756008)(71200400001)(186003)(66556008)(52536014)(66946007)(7696005)(33656002)(8936002)(66476007)(66446008)(8676002)(81156014)(81166006)(6506007)(8990500004)(478600001)(54906003)(110136005)(10290500003)(2906002)(9686003)(86362001)(4326008)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:HK0P153MB0290;
 H:HK0P153MB0148.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mT+C4Qij0/cNDjCIy55z7j8ZjQ96/1xTPqEFMkjyMpU8ArESajz8b/D92y3RTpHathdIWAcgxdGMb/X0TtkcV5a3PVKnFw9XNFiMtc6VMPjAqybmZArzeK4n0pfU6JB+8g4jrBoRlC5aa2ONMgP0HY6tr/XDwOVw7daLd2Lm0bigqNsQKjWsWo+ocqbl8lus91522YVmjI3/+txMnu6zybs2McRHaenXmYrPLYIXxwhmxpUPz4meaf56ZurKvHAvqBoNP4iulrr0Dum6i07DImFL1eR3RNW8nTV0AbccF+1EFWa9xdGZuRF4WKfOI1MoCmiP0Q4/rDvGNCeMwmQiGYTSQzPicQ83mcsDR40neV1ibNDhu2KRpaeei0etTlUttocISKGdm3yenrLCGRMBKR/fBe5RNaQj12kLxkXcdh4/I7AblUuEZQSXq+nRwf+N
x-ms-exchange-antispam-messagedata: UTCjriGZHYh+j5vs+EgDqkoOXDrZVrSvu5LagDADqypm+DCojyW+8mppBi6ohha1nBP9AjwuTtli/yLlvtnpoZrKiSwwPGcdPtSDNDVNf73wmCtZStgZiMabl/MrDgyF5NZ4A+JRAmb/ge3C7hBVJ+GBmNNWjKk7gmoW3N88eYycgdpqW6AeoBfdtOb/xDSMOcClDPaHVIY++wj1U/TQHg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2a32696-248f-40e1-d9c3-08d7b03ba74c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 04:17:34.8417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FajJjxFHylXX5XtV5losspsayECg6k4OLEHGlJxJP4fqhAEFvB26yddi4BJWoiv5CQZOlDuy3ijUfFMDRXXBWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0P153MB0290
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_201744_906030_FD1E7CBB 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, "x86@kernel.org" <x86@kernel.org>,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, KY Srinivasan <kys@microsoft.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: linux-hyperv-owner@vger.kernel.org
> <linux-hyperv-owner@vger.kernel.org> On Behalf Of Boqun Feng
> Sent: Sunday, February 9, 2020 7:40 PM
> 
> Currently, retarget_msi_interrupt and other structures it relys on are
> defined in pci-hyperv.c. However, those structures are actually defined
> in Hypervisor Top-Level Functional Specification [1] and may be
> different in sizes of fields or layout from architecture to
> architecture. Let's move those definitions into x86's tlfs header file
> to support virtual PCI on non-x86 architectures in the future. Note that
> "__packed" attribute is added to these structures during the movement
> for the same reason as we use the attribute for other TLFS structures in
> the header file: make sure the structures meet the specification and
> avoid anything unexpected from the compilers.
> 
> Additionally, rename struct retarget_msi_interrupt to
> hv_retarget_msi_interrupt for the consistent naming convention, also
> mirroring the name in TLFS.
> 
> diff --git a/arch/x86/include/asm/hyperv-tlfs.h
> b/arch/x86/include/asm/hyperv-tlfs.h
> +
> +struct hv_device_interrupt_target {
> +	u32 vector;
> +	u32 flags;
> +	union {
> +		u64 vp_mask;
> +		struct hv_vpset vp_set;
> +	};
> +} __packed;
> +
> +/* HvRetargetDeviceInterrupt hypercall */

Reviewed-by: Dexuan Cui <decui@microsoft.com>

Just a small thing: would it be slightly better if we change the name 
in the above line to HVCALL_RETARGET_INTERRUPT ? 

HVCALL_RETARGET_INTERRUPT is a define, so it may help to locate the
actual value of the define here. And, HVCALL_RETARGET_INTERRUPT is
used several times in the patchset so IMO we'd better always use
the same name.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
