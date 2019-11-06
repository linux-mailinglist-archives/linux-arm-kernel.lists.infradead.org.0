Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DFAF1D0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 18:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/B+yY2JEJm18yJu9AtgA6s4OphzkuTu8FlYqi5iQsHI=; b=Ri9/SouYR5CS2H
	fxtO4BnT1SscYRbUB5ve9gv7Qwua2memhgSnEPtpNnXxyeyi5UkvSlIIyIeaO1Pn3ptBhZeMqSl82
	hfjgLGrHHrkuEBAbrqWwuxlanfdiP0oUte4EIX0WGTOHcn/Cpn02mp3Z7VGHhmnt0ey18AIlWR+gX
	Hv+bx69D21++7E8yswiGUgd+kwjyMPKJy9ugRB4IEcyw5WjQjlI9n5jMA5E8cEkkFwoFxGm9MVFqe
	PMDR45I9QqQstI7a2CnDb0N/GwAmADeG8qE6A1BKipI+PrMfwTGUHeCJMyhC7Oc+ImcwsQmDDNgY1
	dOkhYkRlCLDIA4d0mMoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSPaU-0006uq-Id; Wed, 06 Nov 2019 17:59:22 +0000
Received: from mail-eopbgr760128.outbound.protection.outlook.com
 ([40.107.76.128] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSPaL-0006uO-Ld
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 17:59:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jt0jM4ikrHPfQexJYG7C4Kwc/biujYhETTmaaq6U3mmF2hfvFJWpDIUwmA9+C75qR07sbArxorypsnasbX3z7/Ra/+djMTGa9n2CoE7t4KmvVkuO41iS6uwll4v2ZwDk2KmTChq180st7YJeRgazoq8kA221ojMuNdBvakeQaviSbIwpjiCr+V1EHReBgG5uin7o3SDLDC0g+RuJOEnyj1FZP8jq/yWCsb2Hh2yjyrkliQbasNqUhtZks6bmLJtQawAX97TjAxVDFQtXifF/pVKFa8kwMJRFw4yGy6jvVMKLKaoHfXLDtd1HIn9JVAW/pQuBEERKOULp4W6swC+a3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jyxzDweRQO11hgtDzyq44VWbKQe/y3Y8EhZtzqC+464=;
 b=Xa8TbBlSsiSIcRNYzwvLSllKj51BK/5BdMfVy7RArQO401c7YXHVyy+wkedtmo5cQF+JU4ZrmOrdhnnwq9WeEx+Y4U1agzhnwtfKroGh/gfVFniR4dgsaaLZgWVwQejCOaSFi2QfotN4UU+6MwSt/D4bTlEJiyk7t+4ELMmr1tNYEmQzGSedTr4B7KU/eVVSk5AdGngRdJf1TEwdoCsb9Gg/ndRtTJfUFy6USf+mxEmzCj4lS0/IaqaHt8dzxs5pYFBmSGwc52mDxzX7sZsPYnkQGK5iUrsBUVCZf3b8JVLviqkE5jE5wfn1PAYe/T1s0l/8HNys/znBL84kmarfsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jyxzDweRQO11hgtDzyq44VWbKQe/y3Y8EhZtzqC+464=;
 b=jkZBEe+5Zz6xWW/6eVLHyG+vcbS6BJDaquSdGSR/A6NHczcfd8sRgcFen2Pa/Arb5anXNvz9iQJNWf9GlafhX1Dc4w/0jHTiezRkA7zc7PAXvA8EcsthLi8QhhxYjhgx0bKjutMu5bcMZUDHblqp58IPQpEPbdR+S0tcDBkBNcM=
Received: from DM5PR21MB0137.namprd21.prod.outlook.com (10.173.173.12) by
 DM5PR21MB0140.namprd21.prod.outlook.com (10.173.173.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.9; Wed, 6 Nov 2019 17:59:11 +0000
Received: from DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::9cc3:f167:bb63:799]) by DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::9cc3:f167:bb63:799%5]) with mapi id 15.20.2451.013; Wed, 6 Nov 2019
 17:59:11 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Topic: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Index: AQHVlIunJ+Hzurh+rUem3N3TxZQeRKd+ayBw
Date: Wed, 6 Nov 2019 17:59:10 +0000
Message-ID: <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
 <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
In-Reply-To: <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-11-06T17:59:08.9751666Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=1a5259d0-6f61-4c4e-9b97-52eb3d9574c6;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [167.220.2.5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1aaaaaf5-8516-4521-456c-08d762e306fc
x-ms-traffictypediagnostic: DM5PR21MB0140:|DM5PR21MB0140:|DM5PR21MB0140:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR21MB0140FA2A2CF943ED850E419ED7790@DM5PR21MB0140.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(476003)(55016002)(4326008)(25786009)(71190400001)(71200400001)(66066001)(6246003)(2906002)(81156014)(8676002)(81166006)(6916009)(14444005)(7416002)(256004)(6436002)(8936002)(7736002)(6116002)(3846002)(305945005)(10090500001)(52536014)(229853002)(9686003)(5660300002)(74316002)(486006)(102836004)(53546011)(446003)(6506007)(11346002)(33656002)(86362001)(316002)(186003)(54906003)(26005)(66946007)(7696005)(66476007)(76176011)(64756008)(22452003)(10290500003)(76116006)(66556008)(8990500004)(66446008)(478600001)(99286004)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR21MB0140;
 H:DM5PR21MB0137.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N4bdsSK1vh8U5CUJ6fSD8lodY1PY0l0m08GQgBnK+544DjAk17lv1EPG7KaIflBK9x1cyh1M3PlFtvU/rOBFojVWmbu1Ya+ukjeN2h8TuErUp7KO5qUJR57FIaNnXNOGPyXhAtgV9UAbQvW/pzpd73b4FImGGQeOw1SnpR77ujvFP3HXFR7Wym6IFU08vdicMJFkcaihJ5Vak/ulcvJlrpXXe06xzZZ7PKs0S95hbbKma8wwKW0uEjHKE2EsZXJCd/qj/3k5d4lwVAik/Pb3jA5HTsGG/JtFBFMnhsKoArDQj4NTP3434AvCO9+FyVysMKzdp8sqqzW+t/Kb0KpgMiXLnRttCCanutDMP2/0qIdXPdjHDtPmFrB9zkP3NF0n+2U2GuY7qYF7ZU1ymXQ4dH6L+qHpPSVyAImtDR13G6FTgXiy3479rKSHBSVkjCGx
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aaaaaf5-8516-4521-456c-08d762e306fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 17:59:10.9759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M69MtHxTCc2w8fuRftAyDjswJyj3e+eaiTxwmApNLNtNLiPn8ye9j6XFFb4CIkAKrKKoTmKuTliunpzQQCLugFglBF58FZCOJvqrLCISqsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR21MB0140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_095913_784729_A76EFEC3 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.128 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "boqun.feng" <boqun.feng@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 vkuznets <vkuznets@redhat.com>, KY Srinivasan <kys@microsoft.com>,
 "will@kernel.org" <will@kernel.org>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <maz@kernel.org>  Sent: Wednesday, November 6, 2019 2:20 AM
> 
> On 2019-10-03 20:12, Michael Kelley wrote:
> > Add ARM64-specific code to make Hyper-V hypercalls and to
> > access virtual processor synthetic registers via hypercalls.
> > Hypercalls use a Hyper-V specific calling sequence with a non-zero
> > immediate value per Section 2.9 of the SMC Calling Convention
> > spec.
> 
> I find this "following the spec by actively sidestepping it" counter
> productive. You (or rather the Hyper-V people) are reinventing the
> wheel (of the slightly square variety) instead of using the standard
> that the whole of the ARM ecosystem seems happy to take advantage
> of.
> 
> I wonder what is the rational for this. If something doesn't quite
> work for Hyper-V, I think we'd all like to know.
> 

I'll go another round internally with the Hyper-V people on this
topic and impress upon them the desire of the Linux community to
have Hyper-V adopt the true spirit of the spec.  But I know they are
fairly set in their approach at this point, regardless of the technical
merits or lack thereof.  Hyper-V is shipping and in use as a commercial
product on ARM64 hardware, which makes it harder to change.  I
hope we can find a way to avoid a complete impasse ....

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
