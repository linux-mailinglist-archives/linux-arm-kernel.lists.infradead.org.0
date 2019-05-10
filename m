Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC42219F65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 16:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xilMkxhd7DLBeZqVhJ5Fbv1qi3dh8PAoeIL066ND/8=; b=DwnQ/IwvrNhkAj
	vibWRcg39S8DrIASjmV/Ju3tSNshwrRMQ0M2e/wuTb+6v6mKrERMDsI0F84DKQsOaQ+vIbDjx+QE8
	oE29ZWLFrDlRuU0C0DC+A3FOe1UEsvVz3pFYv2rKLgC6wafH6V1xQjK/wz3GJqUTppHbDa+61iaBA
	4zRMVs/PNQHBUOnPMt7AmhhzQ+Om3gJrnWodYeYubQd5X64EJmXitDeADtOUujhvxoG4jWlHcZiro
	ucnj5j0C4u0vY9Y/N4fsb/skKGWWIbJLpZlNKNqUFHLu3kEtCiRmdn8YXQOs235DrtkLyvUso2akA
	rOxwF0JZe09Qep8hLInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6dk-0005tH-W6; Fri, 10 May 2019 14:36:49 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6de-0005sv-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 14:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xbG/7dCj4Y0whXQsbneyReciE3xzuaNaaIDY+SdODWA=;
 b=s8hDtMZlOZD+chy9b+bm92WrQKp4k9cU5bTSIhK4xX/MI69KR63SwbvyUnTd7pETClaven4xBjSUKHYzHY9ebGbB0RBfsOY9et29ueX0LfEqbJ7OR8VGFCSPxx+QxXnzAvpx8t20EIU0RDHNQqzw++gseqBouVWYjZWnZga9p2M=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2592.eurprd04.prod.outlook.com (10.168.65.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 14:36:37 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 14:36:37 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: RE: [ARMv8] kernel entry point
Thread-Topic: [ARMv8] kernel entry point
Thread-Index: AdUEvuqU9yX+ipLHQpGN/Ynvsv3fqAAARNfgAAAI6oAAnLr6MAAAuKUAAAFA41A=
Date: Fri, 10 May 2019 14:36:37 +0000
Message-ID: <VI1PR0401MB249634BF7CE811C707833CA8F10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <VI1PR0401MB2496E0C9DF38720B251C5D32F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB24965B8DFAC68CFA27CFEBB4F1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB2496C34266F4220813AFA05EF1310@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <VI1PR0401MB249619B2D7FE6F0EA7AEAE7AF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20190510134032.GB51370@lakrids.cambridge.arm.com>
In-Reply-To: <20190510134032.GB51370@lakrids.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.0.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2af7844a-c438-4fd5-01ba-08d6d554e8cb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2592; 
x-ms-traffictypediagnostic: VI1PR0401MB2592:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR0401MB25921A872F1400059D849C24F10C0@VI1PR0401MB2592.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(39860400002)(346002)(376002)(366004)(199004)(13464003)(189003)(6246003)(486006)(66476007)(66556008)(4326008)(44832011)(52536014)(11346002)(446003)(7736002)(73956011)(305945005)(476003)(66446008)(64756008)(66946007)(76116006)(33656002)(2906002)(53546011)(14444005)(256004)(66066001)(6506007)(71190400001)(71200400001)(102836004)(54906003)(53936002)(81156014)(7696005)(8676002)(74316002)(6916009)(5660300002)(9686003)(8936002)(81166006)(3846002)(6306002)(6116002)(14454004)(25786009)(6436002)(316002)(478600001)(966005)(99286004)(229853002)(86362001)(45080400002)(68736007)(55016002)(26005)(76176011)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2592;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OfJH0SMN3uURqzAjoY/OZkxXM04vRYT01QfRQmBZ30fKtQRP2XT/WfZ9CfdH1y9OUqi4pkbdG4EqgOdAZ6bChwl6y4ilrraRi0vWryrD5S3t1jdYsPTWVF5hOpAeY7Sc1rp2uu2sy8XAu16/qtEK28YVTiHKfCiJynmuEt8D4FwxS2tpsrA0+8V/CAYGTPYE+zFXGygr1pQB4qvZmaMEVzd6QFx3mxsK/q4/4fEjD+ax7pbsndXE748zSTP9oWPabNfVSkc1Ywq/InC0ALHSeAmWHAeu9lnXltRTqVZQcCBxTEz9ldCQKSp3optWBk/SLICDwQAiLRucC7ULGDUuKT0CFupCkUtHQLVS1yjOit+g+NN1wYXzGcQy1C0W2JECj768tlZG6D6AdzxS/RtnnwLHTIL0AerHHnb6jQ0fXLQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2af7844a-c438-4fd5-01ba-08d6d554e8cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 14:36:37.7079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2592
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_073642_176952_1ACC08E2 
X-CRM114-Status: GOOD (  29.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wasim Khan <wasim.khan@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

> -----Original Message-----
> From: Mark Rutland <mark.rutland@arm.com>
> Sent: Friday, 10 May, 2019 07:11 PM
> To: Pankaj Bansal <pankaj.bansal@nxp.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>; Will Deacon
> <will.deacon@arm.com>; Ard Biesheuvel <ard.biesheuvel@linaro.org>; Wasim
> Khan <wasim.khan@nxp.com>; Varun Sethi <V.Sethi@nxp.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [ARMv8] kernel entry point
> 
> Hi Pankaj,
> 
> On Fri, May 10, 2019 at 01:24:55PM +0000, Pankaj Bansal wrote:
> > + Ard,
> > Hi Ard,
> >
> > Can you please check below mail? We are not able to boot linux loading
> > Image at 16MB offset (0x81000000) from DDR start address (0x80000000)
> > I have tested with both u-boot as well as atf.
> >
> > This issue is occurring with latest kernel (5.1) Image.  If I revert
> > kernel code to commit a7f8de168ace ("arm64: allow kernel Image to be
> > loaded anywhere in physical memory "), then this issue doesn't occur.
> 
> That commit allows the 2MiB base to be arbitrary, but the text_offset must still
> be taken into account. That's all documented in:
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel
> .org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2Ftree%
> 2FDocumentation%2Farm64%2Fbooting.txt%3Fh%3Dv5.1%23n125&amp;data=
> 02%7C01%7Cpankaj.bansal%40nxp.com%7C045f77d8202040db896108d6d54d1
> 5f2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636930924443311
> 148&amp;sdata=nOHlA67bfSc21hS0kTnHGJ%2BqxSa2KvAGnRPq7%2FEQgmg%3
> D&amp;reserved=0
> 
> .. where we say:
> 
> | The Image must be placed text_offset bytes from a 2MB aligned base
> | address anywhere in usable system RAM and called there. The region
> | between the 2 MB aligned base address and the start of the image has
> | no special significance to the kernel, and may be used for other purposes.
> | At least image_size bytes from the start of the image must be free for
> | use by the kernel.
> 
> ... and where text_offset is defined in the Image header:
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel
> .org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2Ftree%
> 2FDocumentation%2Farm64%2Fbooting.txt%3Fh%3Dv5.1%23n73&amp;data=0
> 2%7C01%7Cpankaj.bansal%40nxp.com%7C045f77d8202040db896108d6d54d15
> f2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6369309244433111
> 48&amp;sdata=Zw2JQ176V6cFXz%2BFcS1uJuYkCZUISjHI%2Bb3HNnkf30k%3D&a
> mp;reserved=0
> 
> On a contemporary defconfig kernel, text_offset is 0x80000, so
> 0x81000000 is not a valid address to load the kernel at.
> 
> I suspect that things will work if you load your kernel at 0x81080000.

Thank you for this tip. It worked.

> 
> I would strongly recommend you use a bootloader that parses the kernel Image
> header, and respects text_offset automatically.

I am using u-boot. I don't know if uboot takes into account text_offset in kernel Image header.
I don't think it's there, otherwise uboot would have given an error to respect the load address requirements.
I will ask uboot maintainer if such checks (load address = 2MB aligned + text_offset) can be added in uboot.
Thanks again for your help.

> 
> Thanks,
> Mark.
> 
> >
> > Do you know why the support of "loading kernel Image anywhere in
> > memory" has been removed in latest kernel ?
> >
> > Regards,
> > Pankaj Bansal
> >
> > > -----Original Message-----
> > > From: Pankaj Bansal
> > > Sent: Tuesday, 7 May, 2019 04:03 PM
> > > To: 'Catalin Marinas' <catalin.marinas@arm.com>; 'Will Deacon'
> > > <will.deacon@arm.com>
> > > Cc: 'linux-arm-kernel@lists.infradead.org' <linux-arm-
> > > kernel@lists.infradead.org>; Varun Sethi <V.Sethi@nxp.com>
> > > Subject: [ARMv8] kernel entry point
> > >
> > > Hi Catalin/Will et. Al,
> > >
> > > I am s/w engineer from NXP India Pvt. Ltd.
> > > I am facing an issue while booting linux on our ARMv8 based platform.
> > > In our platform DDR address starts from 0x80000000.
> > > If I load kernel image @ address 0x80080000 and then try to boot
> > > linux image from this address, then linux is booting fine.
> > > BUT if I load kernel image @ address 0x81000000 and then try to boot
> > > linux image from this address, then linux is not booting.
> > > I have tried to boot linux using u-boot as well as arm trusted firmware.
> > > Linux is not booting with either of these if the linux load address is
> 0x81000000.
> > >
> > > I get no kernel logs like "[    0.000000] Booting Linux on physical CPU 0x0"
> > >
> > > The linux version that I am using is 4.14.53 Can you please help me
> > > in debugging this issue?
> > >
> > > Regards,
> > > Pankaj Bansal
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-
> kernel&amp;data=02%7C0
> >
> 1%7Cpankaj.bansal%40nxp.com%7C045f77d8202040db896108d6d54d15f2%7C
> 686ea
> >
> 1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636930924443311148&amp;sda
> ta=Ykm
> > rBwDOYYLdrOtWFDeBxY2on3xwBP%2F8O1seKm9aiio%3D&amp;reserved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
