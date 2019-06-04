Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F6D34970
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GF8gkyDRhuRZajp6cLVgYKswsEf4KAUkF8fZ2SAlkSs=; b=npuK4Usi0Yt+aa
	fmeqJ27KmAYcKfRO1Zs38zlBO4jkLeUbe5MpoROWi+jM1BzTETSYek5dScgOw9RkybL+5/82mppVZ
	7HSeeC1aYIvOgfJe9mmHhKf5sbF15uE4aMKH+NwZN5q6BbpWQkORy+NtQvH6LXpPTezOdR76mcqCj
	yHrDX8T0o+lG5YkSKzrTYU5pvQU5cOueY4ZI7Yl7KhK/fveL9Kq2iSlEWivKennNjapu4cfjAFTXK
	hbG40dDLO5McytRp3f17w8QqgqlJTFb/AIqKSUQq6ds8YMhqOYKo7M/1qX7+2maWSuGlvqQQlCFLO
	hLL+0lIVsS2sR1lCoaWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9rO-0007Im-Nn; Tue, 04 Jun 2019 13:52:18 +0000
Received: from mail-eopbgr30054.outbound.protection.outlook.com ([40.107.3.54]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9rG-0007I1-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wc4I6lHiikeaBfwPmfX3O8sT7n60F1R+malBQwuCTVM=;
 b=tGzTcLzhaNL+75gHC/gXtt7L3YdPNRq8ZUPkdpZelfSg3jnmN1ojrnkasNgpmncwrq8rMW7r0uzorRV27B64djX1KlkdAjtPCwP4K5K14sODlDt6xzhvqgM0ZNRTi2EBchChMDIvjlq8n/ztPZveorTIOFuO8j0LzB8LwgGlw3w=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3547.eurprd08.prod.outlook.com (20.177.120.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Tue, 4 Jun 2019 13:52:05 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e%7]) with mapi id 15.20.1943.018; Tue, 4 Jun 2019
 13:52:05 +0000
From: Luke Cheeseman <Luke.Cheeseman2@arm.com>
To: Will Deacon <Will.Deacon@arm.com>, Kees Cook <keescook@chromium.org>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Thread-Topic: [RFC v2 0/7] arm64: return address signing
Thread-Index: AQHVFpUc/rgDNN2VskO3NnZrQSLUJKaDbxPOgABkqICAAAF0IIAAIh2AgAEAJQCAA49dgIABPYAAgAHGiNQ=
Date: Tue, 4 Jun 2019 13:52:05 +0000
Message-ID: <DB7PR08MB386551397577B574DBA7F874BF150@DB7PR08MB3865.eurprd08.prod.outlook.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905300851.4A68705B0@keescook>
 <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905301058.CA55245A0@keescook>
 <20190531092202.GA19208@fuggles.cambridge.arm.com>
 <201906020843.140EC55FB@keescook>,
 <20190603104018.GA27947@fuggles.cambridge.arm.com>
In-Reply-To: <20190603104018.GA27947@fuggles.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Luke.Cheeseman2@arm.com; 
x-originating-ip: [217.140.106.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35f9a32c-ca80-4676-7613-08d6e8f3d46b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3547; 
x-ms-traffictypediagnostic: DB7PR08MB3547:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB7PR08MB354777283E18BE354568B17DBF150@DB7PR08MB3547.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0058ABBBC7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(51914003)(40434004)(189003)(199004)(71200400001)(71190400001)(110136005)(478600001)(9686003)(229853002)(2906002)(6306002)(446003)(256004)(6436002)(33656002)(53936002)(55016002)(7736002)(11346002)(54906003)(316002)(305945005)(5024004)(14444005)(86362001)(486006)(476003)(14454004)(81156014)(7696005)(8936002)(72206003)(966005)(66446008)(73956011)(66946007)(66476007)(66556008)(64756008)(68736007)(186003)(74316002)(3846002)(6116002)(4326008)(52536014)(8676002)(25786009)(99286004)(26005)(5660300002)(66066001)(81166006)(6506007)(102836004)(76176011)(6246003)(53546011)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3547;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0G5EBpcbOrmnLvar3gwpgPyILavxDU0iHSX/uQFC20IFpCGMKcFXiAvSk3A+qKiACDSOc2WzC5tn/3/SqG1bHrMo1EG8TWvW1uTeD+6U8sb0FE295cwnpme7nGRlcHAohWZeXin7g8n7h9/wfztEJFqKaAyuAN2PTMYJP/gtfMtqEE0lEKI1SFPdwYgNmwmX3NU4wnWyRNyrq8lYEMqC8I3SbZe+7sGN3aWS8l3CBiykKzsg50esf5H6inAb/ummlsmbr6jJ0epO8ruKs+JnLn+vfrgGAYqLYb1vwpoh7N5fI5++1v4LYhA/jQXzFNk7r1qU/+ZaUUlxe8GGzwcsC1ZYz3CWYPWzCfs43aYOs0/3IP4c1mEWxpf3y420Gks4JMSmyuKmiz5jjJaq+JCJW58TOMXDBHQeL2xI254tx0Y=
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35f9a32c-ca80-4676-7613-08d6e8f3d46b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2019 13:52:05.6364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Luke.Cheeseman2@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3547
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_065210_669349_BEBF26C3 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Christof Douma <Christof.Douma@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

It was suggested to me that forcing the compiler to inline the function may be another way to avoid writing the function in a separate file and not have the concerns of switching keys in a function. For example:

void __attribute__((always_inline)) switch_keys() {
  // do something
}


int main() {
  switch_keys(42);
}


switch_keys is always inlined so you don't get the pac/aut pair. Is this something that is useful?

For the feature request for disabling branch protection (https://bugs.llvm.org/show_bug.cgi?id=42095) is there a time frame you need this within?

Thanks,
Luke


From: Will Deacon <will.deacon@arm.com>
Sent: 03 June 2019 11:40
To: Kees Cook
Cc: Luke Cheeseman; Kristina Martsenko; Luke Cheeseman; Diogo Sampaio; linux-arm-kernel@lists.infradead.org; Amit Kachhap; Ard Biesheuvel; Catalin Marinas; Dave P Martin; Mark Rutland; Ramana Radhakrishnan; Suzuki Poulose; Kristof Beyls; Christof Douma
Subject: Re: [RFC v2 0/7] arm64: return address signing


On Sun, Jun 02, 2019 at 08:43:55AM -0700, Kees Cook wrote:
> On Fri, May 31, 2019 at 10:22:02AM +0100, Will Deacon wrote:
> > On Thu, May 30, 2019 at 11:05:15AM -0700, Kees Cook wrote:
> > > On Thu, May 30, 2019 at 04:55:08PM +0000, Luke Cheeseman wrote:
> > > > The semantics of this attribute are straightforward enough but it
> > > > raises some questions. One question being why would I want to turn off
> > > > BTI (also controlled by this option) for one function in a file? Which
> > > > gets a bit odd.
> > >
> > > It's about leaving very early CPU startup functions in the kernel from
> > > getting marked up (since they are running before or during the PAC setup).
> > >
> > > > I don't know if the alternatives have been suggested but it's
> > > > possible to achieve the result you seem to be after (a function without
> > > > return address signing) in a couple of ways. First and foremost,
> > > > separating the function out into it's own file and compiling with
> > > > -mbranch-protection=none. Alternatively, writing the function in assembly
> > > > or perhaps even a naked function with inline assembly.
> > >
> > > Fair enough. :) Thanks for the clarification. Yeah, split on compilation
> > > unit could work. (In the future, though, having the attribute flexibility
> > > would be nice.)
> > >
> > > Kristina, would it be feasible to split these functions into a separate
> > > source file? (There doesn't seem to be a need to inline them, given
> > > they're not performance sensitive and only used once, etc?)
> >
> > Right, and we could call it kernel.c
> >
> > Sarcasm aside, please fix this in the toolchain. Moving logically unrelated
> > functions into one file just because the toolchain doesn't yet support this
> > feature just messes up the codebase and removes the incentive to get this
> > implemented properly. After all, you need something to do now that asm goto
> > is out of the way, right? ;)
>
> LLVM tracking bug created...
> https://bugs.llvm.org/show_bug.cgi?id=42095

Thanks, Kees!

Will

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
