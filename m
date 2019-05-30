Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A0E2F908
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zenkeWRdG62Ak6o0PmU7ltFIKHGlBDjzk+KraSZ60Lg=; b=RkUYl44trhts6K
	oQyVOVYS4B+aQjXvwIo26luS+Un0bdhFmJN+A4W61Ps3nLJnym9XTBAiexxVtrKA3yeE1BQy3m/ho
	FXk83LI2Hp04uDKkkrznisQSfjKVBQvjhu4EQulQBAStzF0l+k/KikwfHMV6IBqnz2zf6yJp3arTu
	9UFRKQaGN6Aw4R1O3uDwMVheFmmIKTGqesnQBjNgEHnvpJo4z0YC2jJ9S/bZu1aDrg/nktwBUQMtF
	N2IuWJVmIJRMN/4V7qVSbb137fFzGqbs96xti9u0+UmSWCCL+vsWPwlKi9FNh9lc8tvh9iu5XeehZ
	G+vIZSUL5IKNjEcjPBmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWH5q-0002Lf-2k; Thu, 30 May 2019 09:11:26 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWH5i-0002Kg-AG
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJYQrCYRolNKOT+kADIReP7Hu+oDXsZGUhI9nkBBCx8=;
 b=K6ZMHcHItuOn5+/r0q/vzwFV9fzd66FwQElyYb3EB0vCr7QFVIms1mISZ3ymYduA6ozAZIo7TXeBLIFrCR1F7UmDjYCXv/cjbhAsfz+0Xp3sRVCe9Qs+YQ5F5N4MDU1l49eErGOSgQiXoArKlyau/vF2Rln8DWcZRFw2PoU0GAE=
Received: from VI1PR08MB3790.eurprd08.prod.outlook.com (20.178.15.155) by
 VI1PR08MB3710.eurprd08.prod.outlook.com (20.178.14.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 30 May 2019 09:11:12 +0000
Received: from VI1PR08MB3790.eurprd08.prod.outlook.com
 ([fe80::f0d1:2dd0:9ae5:5b09]) by VI1PR08MB3790.eurprd08.prod.outlook.com
 ([fe80::f0d1:2dd0:9ae5:5b09%7]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 09:11:12 +0000
From: Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon
 <Will.Deacon@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Thread-Topic: [RFC v2 0/7] arm64: return address signing
Thread-Index: AQHVFlFdMRc+5lQn0UyVTO0dGpnP/6aC/YaAgABHdICAABTdAIAACMQA
Date: Thu, 30 May 2019 09:11:12 +0000
Message-ID: <4cec5dda-59ef-cffa-fb18-4c8aa7cffa55@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook> <20190530072507.GA9955@brain-police>
 <CAKv+Gu-frM=YQAjxrW2vmhnXKC=-qd4usTtuX4JTg843_PmNrA@mail.gmail.com>
In-Reply-To: <CAKv+Gu-frM=YQAjxrW2vmhnXKC=-qd4usTtuX4JTg843_PmNrA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P265CA0447.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::27) To VI1PR08MB3790.eurprd08.prod.outlook.com
 (2603:10a6:803:be::27)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ramana.Radhakrishnan@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 617ee785-ae03-43c1-3363-08d6e4dec2e4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR08MB3710; 
x-ms-traffictypediagnostic: VI1PR08MB3710:
nodisclaimer: True
x-microsoft-antispam-prvs: <VI1PR08MB3710956463D4DE21B44E238781180@VI1PR08MB3710.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(39860400002)(346002)(136003)(189003)(199004)(81156014)(8936002)(81166006)(305945005)(186003)(86362001)(65956001)(66066001)(6246003)(65806001)(65826007)(386003)(2616005)(486006)(2906002)(52116002)(5660300002)(8676002)(6506007)(6116002)(3846002)(44832011)(76176011)(26005)(99286004)(476003)(102836004)(53546011)(6636002)(11346002)(68736007)(446003)(7736002)(316002)(6486002)(31686004)(25786009)(4326008)(66476007)(31696002)(6512007)(229853002)(66556008)(14454004)(71200400001)(58126008)(71190400001)(54906003)(6436002)(64126003)(72206003)(64756008)(36756003)(66446008)(66946007)(73956011)(53936002)(256004)(110136005)(14444005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3710;
 H:VI1PR08MB3790.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qa65+6oQtIyeIvtwFkyhFpDYBPZpXhCqhqxR1VCc9IfCwJRZGIZ6y5/yWN2NGtLWCskeTD5iea+0U54UXbyBNQw1vEbtuezUJGop+2UlL6d2Plh3dOyAtZao5juKx19AXTEry80P5vfLP0kXVPITTmtIB++SWXxXjoZewjolgjMXgPLy0JKV1zNyVvKka0JdlsoMrEcEGTPdghjG3MM4ejPNB2/INLTdvWDG0u1uatD/HGUUdhLwJblx8yYoIgfzbzg+8TuxOpaXbxLzb8vwEJ4W3KoE7riHA9mHNZiofRI1/DXbhN0IpP88ByqmDIZ+fS9vRQQxDq0bvg+m1flJWH+h1aTk/BlbHD1ze4OYI6ntSp2tHKj3cqPLUA2Gj+DjHY9vzDsoBVdEIh6kK1LyNae8VeF6v7E7uSzb7TWXN4k=
Content-ID: <552B85431066B94BB45D4F3152356B67@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 617ee785-ae03-43c1-3363-08d6e4dec2e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 09:11:12.6199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ramana.Radhakrishnan@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_021118_410491_8E60E21F 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Diogo Sampaio <Diogo.Sampaio@arm.com>, Luke Cheeseman <luke.cheeseman@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, nd <nd@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/2019 09:39, Ard Biesheuvel wrote:
> On Thu, 30 May 2019 at 09:25, Will Deacon <will.deacon@arm.com> wrote:
>>
>> On Wed, May 29, 2019 at 08:09:23PM -0700, Kees Cook wrote:
>> > On Wed, May 29, 2019 at 08:03:25PM +0100, Kristina Martsenko wrote:
>> > > This series improves function return address protection for the arm64 kernel, by
>> > > compiling the kernel with ARMv8.3 Pointer Authentication instructions. This
>> > > should help protect the kernel against attacks using return-oriented
>> > > programming.
>> >
>> > Can you speak to whether this feature should be enalbed in addition to
>> > or instead of the standard stack canary option?
>>
>> Hmm. That's a really interesting question. Given that PAC is optional in the
>> hardware and behaves as NOPs on older CPUs, I've have thought that we'd need
>> to continue enabling stack canaries regardless. However, that then raises
>> the obvious question as to whether we could patch out the canary code if we
>> detect PAC at runtime, which probably needs compiler help...
>>
>> Then again, perhaps there's benefit in having both features enabled.
>>
>> So I think I agree with your question :)
>>
> 
> PAC only protects the return address, which is arguably the most
> vulnerable piece of data in the stack frame, but not the only one. So
> one question is whether we should take the hit of protecting ourselves
> from stack buffer overrun exploits that manage to overwrite something
> else in the stack frame while leaving the return address alone. I
> don't think doing that adds any value. Or if you are paranoid, you
> could argue that the stack protector also protects against a leak of
> the PAC key. And obviously, you need hardware from the future to use
> PAC :-)
> 
> So while we think we should retain it for the single kernel image, I
> don't see why you would enable the stack protector on, e.g., android
> images built specifically for SOCs that enable PAC in the kernel.

Return address signing using PAC only protects the return address and 
reduces the surface area for ROP oriented attacks on hardware that has 
PAC instructions.

For a single image the answer today I think would be to have both return 
address signing and stack Canaries. In a few years (decades ?) when 
everyone has 8.3 silicon, then maybe canaries can be turned off ?

If someone has control over deployment of kernels
  - Return address signing only if you knew it's on 8.3+ hardware.
  - Stack canaries if only on pre-8.3 hardware


Regards,
Ramana
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
