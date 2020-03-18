Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC0F1892C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSxm1wtfPbgYOuPjtfe+MDzA91f0+KvUWEyDY+6TLIc=; b=lFpXCKiC4yujC0
	a9lBWVdlr5svKYwxXUAbigRKWxY15+yZ2RqR7lFtoSVxMLQTZtJJNqmma6r+wcg+V+ClKi40IGoDq
	TSr6F6CNsgNaB7GYGrlsu8EZDp14EKwBePMfk+glro1xYGnKgE5fyoQyoyflylQvTsSm9C7I/N52a
	B3RwwMWybrdjao4YMSu38ZNpkfVS29GKQXytY1Wok2L7U5yMYX+eOm97X7ThuvyP7tSs6NKFvPI2r
	jFLxlO01bur1VDCw5XTh9R30Vca7KvBpEMjEhf/IGx7nfYUir/qDpo7rosdTXmHDJ4EdyW8u+8q1b
	bIxrui1A1+RDTvU9WJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMPW-0004Ez-Vm; Wed, 18 Mar 2020 00:18:15 +0000
Received: from mail-eopbgr770120.outbound.protection.outlook.com
 ([40.107.77.120] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMPJ-0004E8-SJ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 00:18:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hy77cvv+malbcyrxLEoi6e1E8b6buRGyGfjAuYd+h+TIxgrNwee6Szv0VjYTHZR8PjkJfXEpyLVP5pXogLvb9v5NnZyiHd1BtDPVcJbIQfnLavRTSLFma1MGUbUNWmmBYH7btj3c+N1Sedo9v8JHLoWvTxsCrIDAAh239fEK7H4z2BNN+wHRYlA1645S2r7teZNwhPKyMEuIewpHVOSwu9cyAigBjZCI8skq8h/i2s9qwOdLxIvT/UP4kIB7FoCEgExHeEXqDYhcijZKxFD5p+TD/aqmaZ5Tyb2+yEbYUf+ZavvVUt2rsorGiqIqAXVC/n1lBO/KvaQGqPxhd2RDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvHEQkwcYm+7QAi+r6uTyzhyE4KB2u8dQNEmo+rIuJ4=;
 b=DD9F737v8cztkscd6g07tHNLQli3PvwJN0d5kELC0jX4uwgwei82cs3BLxUBZCa8hGIbrR0YGoI1Wb8WNJyYyV5OcDFDNOYkowHl69qDF+nxu+oIRkkXM34iD91v0ueVhOzfmhdlX+lmeiNm0mST8/xLqeoMxPyHXaBGb576g4aILrfOZd70XJ6nHsOvSFwcN0gjfsra3xhzvuzweuGeTSc2gFaVB972Qn/oEmgJFbdRNoeq+q84fnpcfvGgFxcdMiqmf9pw4gAD2x6DQ3eS8T/3DfkkO5VwVn+5uum7HBpSLTs2yBmdjmiGzLF2v/WqKHhC4X9rYwsJ5pwxK3uMIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvHEQkwcYm+7QAi+r6uTyzhyE4KB2u8dQNEmo+rIuJ4=;
 b=OYZA0aRrjyn1rh7oEzCHI0EGqX27Aa4MzesL/VgUDfHUmDWJKSaCvaC0hZCOE/k4/Z1af5bxt1K1MHIpz2S35qk7UvfZhlXMVoQtPZnBQrld47pbwr50Uli5o1hr26iYUcaSOuHC8l61WO2GD7PQBfy6QiFhfRAQ1OfnCmjklt8=
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com (2603:10b6:302:a::16)
 by MW2PR2101MB1082.namprd21.prod.outlook.com (2603:10b6:302:a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.7; Wed, 18 Mar
 2020 00:17:59 +0000
Received: from MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156]) by MW2PR2101MB1052.namprd21.prod.outlook.com
 ([fe80::71ee:121:71bd:6156%9]) with mapi id 15.20.2835.003; Wed, 18 Mar 2020
 00:17:52 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH v6 07/10] arm64: hyperv: Initialize hypervisor on boot
Thread-Topic: [PATCH v6 07/10] arm64: hyperv: Initialize hypervisor on boot
Thread-Index: AQHV+hZK6CjhbGAo+02bGeTm+6xNTahK5fEAgAKKHkA=
Date: Wed, 18 Mar 2020 00:17:52 +0000
Message-ID: <MW2PR2101MB1052281E5B197F2AA8E4D622D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-8-git-send-email-mikelley@microsoft.com>
 <CAK8P3a0+uBsurfQ4smjPDGkJQSkMe-TxJ4cWR_EZXgDR4-bAWQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0+uBsurfQ4smjPDGkJQSkMe-TxJ4cWR_EZXgDR4-bAWQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-03-18T00:17:50.1944546Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=e59fc9d4-f8cd-4b2e-b09b-d342f5fdb9c4;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f19328fd-92fd-4dfd-cb7c-08d7cad1cca8
x-ms-traffictypediagnostic: MW2PR2101MB1082:|MW2PR2101MB1082:|MW2PR2101MB1082:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW2PR2101MB1082C6B1D3C2EB76541CF2A4D7F70@MW2PR2101MB1082.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(199004)(10290500003)(55016002)(478600001)(7696005)(5660300002)(9686003)(54906003)(2906002)(7416002)(8990500004)(53546011)(33656002)(52536014)(6506007)(6916009)(76116006)(71200400001)(186003)(66946007)(66476007)(66446008)(64756008)(66556008)(4326008)(8676002)(316002)(86362001)(81156014)(8936002)(81166006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW2PR2101MB1082;
 H:MW2PR2101MB1052.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vGYh/1fvtv/YhUVqZSDkITewYYnL70MSNfknuutc4eKxdZefL+5fdp47Bs426dktVRnMG+g9qBET+icqrZBCZQ1ahBH0ZMp/LWkbRc/FdAy108IfyI6dZMqZO0ZiPhfYhJI4mxCp7CAnyCa/+wUs921zX0tZBuHerENpUSmAQrS14Jw+32BkYVZRCDgt0o966omD/xCBOI94XWNUrYLeuWXnPAcxwbdaYLuxSyqRvpCE6/UAMlY6YkMZT4Lmwbh2juP2Zi1HtTGi7o69KJZwyz5/DuI8fKi8hnnKgYEtRX6wPRcAIjBT8OYsOdOUe63lVNZext+nV7ZpGtb3EdgkLNtAvfGtTiuFOLL4YspMZs8dGSs+0XIWet0CNWYO0I8tuJX6hkS+N8wqLAl9dYqeSzcLOxNu9DoFG0PUzhnlGdK1PflSzk0IbUBuzp0xdsd1
x-ms-exchange-antispam-messagedata: IRDj5V1OO6EYvLyo5qAJSB6mabYxEga6awbmDCceQWmNf2CE370W6uSUozlRXZ5XFbR6nNksh5ly5dtl3SPaWj1L1Mr03nBfOIjB9HTha79o+0qoDZmTjXDUGav6pkvjEMQ1Ot6zohMamEUB57bpwg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f19328fd-92fd-4dfd-cb7c-08d7cad1cca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 00:17:52.4415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RF5DN/C7txRqQhWX33fo8RFIKSg5W3I+vB5v6xC+VQz6CDdzPDxkOiaEz6NCkLINFbAapVv4m1fNpbDRku4H3cRZmnFr439HTQhhw2terDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR2101MB1082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_171801_921343_426FD0EF 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.120 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 linux-arch <linux-arch@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Boqun Feng <boqun.feng@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Andy Whitcroft <apw@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de> Sent: Monday, March 16, 2020 1:30 AM
> 
> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> >
> > Add ARM64-specific code to initialize the Hyper-V
> > hypervisor when booting as a guest VM. Provide functions
> > and data structures indicating hypervisor status that
> > are needed by VMbus driver.
> >
> > This code is built only when CONFIG_HYPERV is enabled.
> >
> > Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> > ---
> >  arch/arm64/hyperv/hv_core.c | 156
> ++++++++++++++++++++++++++++++++++++++++++++
> 
> As you are effectively adding a new clocksource driver here, please move the
> code to drivers/clocksource and send the patch to the respective maintainers
> (added to Cc here), splitting it out from the rest of the patch.
> 
> You should also describe why your platform doesn't just use the normal
> architected timer interface.
> 
> > +TIMER_ACPI_DECLARE(hyperv, ACPI_SIG_GTDT, hyperv_init);
> 
> This looks like it registers a driver for the same device as the normal
> arch timer. Won't that clash?
> 
>      Arnd

There is a Hyper-V clocksource driver in drivers/clocksource/hyperv_timer.c.
It is architecture independent and works for both x86 and ARM64.

The requirement here is really for a place to hang the general Hyper-V
initialization code.   On the x86 side, there's infrastructure already in place
to do hypervisor initialization, but nothing corresponding on the ARM64 side.
The TIMER_ACPI_DECLARE hook is admittedly a temporary approach, and I'm
happy to hear if someone has a better way to handle this.

FWIW, Hyper-V doesn't currently virtualize the ARM arch counter/timer for
guest VMs.  The Hyper-V synthetic counter/timer in the Hyper-V clocksource
driver is used on both ARM64 and x86.  But this Hyper-V init code doesn't actually
touch the GTDT device, so it won't interfere with the ARM arch counter/timer
when a future Hyper-V version does virtualize it.

Michael
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
