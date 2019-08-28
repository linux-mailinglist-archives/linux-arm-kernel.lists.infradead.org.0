Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDCF9F8CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLPYXFDlGdirK10pL+KixxzF0ybzsFkED59QpXTbGeE=; b=EFAb7TPtxgh/wo
	mmtkbOaf5CSabQaEesqza6pE7yILfxi5vH9Zf55SEefCbjNY8kv0ooLDiTVj/oSci64nEXPa32CMd
	AjbFwdkOlIfRTBw8udVvCE25ex+Nw5IkGAkIvfbb7O5ldpQi+mCiWIsDuPCgHbQMLJIzducz9ITu1
	zE7E7JtUploRsjTYEtVtAPCw2uZXFfU30R9/C9lYhphQJfdtckwGdN7nGwYiDQ2iOe2fj31XcLPuc
	8KlPGA8ZS6iOeS44V950JeadYdheOeixJDS3k5dXTawj1zvK4udYTE8Lj2zDqKQUToMzuIMC9wVMn
	BTTExrq5fqwRJGeSA04A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oir-0006Gp-SW; Wed, 28 Aug 2019 03:34:13 +0000
Received: from mail-eopbgr680130.outbound.protection.outlook.com
 ([40.107.68.130] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oig-0006GV-5a
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 03:34:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVeWzvlWHvcBw2NpBLQMwzQkemGWr6a9JVN+OQyWIjqTT9yfBk2/8i5ejzZG655VKFzwE6RIzCDxkd0Ww395EteTI/6NSE3PWL4OhdPu+necxYBT5Rt20mpnIcVZhlZ9AvSuz0eKKN3Pe72/W/uPrwZGC0kH3kdIgz9U01cQ3ugaOruo2z7KjmmMSCGGvpaJZz2ESrDgpdEXEDGbj+UYbvh9zDGGFuJAMV5fUSplramAGnWjJNThcq332XnN10eLQ855Goh9PFJ16dz2b2HVdoj/g9aiJXCv1jbVsxaLEi4ZiG0K2mzuGYdg0kf073J0mcAJ4Mhj8joMHru8BzJcVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FS1L3rsQGfFeNKHOGgPsLUtZP9N+fdtdluU9yHkAEL8=;
 b=Ju1ETHFJEuDttGkS+I6VETikTJuj/b7rP12tc0OSLdQxddMVrmY77uHddthMNnwcG00RtdcbqmTaW8VkdXqhEBjMb61XyeNzISrBHnBNQrzE/Mk2bLhCKvKsxSsUduU8/3mXuWg3ZVwnQUAXIOGUuVdcpVzNUDmoM1gInw6Ysw+bQiobhz0oB/mct5OAZAxoCqm3rgbqNkmhav33SiKirgL3sTMlmF9r/b68EVcD/1YDo4Oth5r5uIkHRqIN68rCuhaOLyZJBbXvwyEP9LZL7zj/BrPXu2uMc7DW5VmRwp0yPCo7UAEXTdBnZBxLDKBdhHUyhx7cXwTNWzVoAC97Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FS1L3rsQGfFeNKHOGgPsLUtZP9N+fdtdluU9yHkAEL8=;
 b=Fz7QnOBrMu1IrUYN4WqPSNumzF7XHz8CR7Z8GKVBRL8XjmSEYzIiYMJ3NyrbobEwfVQ6aKrFu7SGhV9pWItHGAYwDgArCobH0RlsZTCTcqENUK9BFxaxWXoebjO9Gd4fX32cqDe94baIK+yJ/7EAjz/a+hexnIMkCJcKLAHG8hg=
Received: from DM5PR21MB0137.namprd21.prod.outlook.com (10.173.173.12) by
 DM5PR21MB0170.namprd21.prod.outlook.com (10.173.173.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.3; Wed, 28 Aug 2019 03:33:58 +0000
Received: from DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::c437:6219:efcc:fb8a]) by DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::c437:6219:efcc:fb8a%7]) with mapi id 15.20.2241.000; Wed, 28 Aug 2019
 03:33:58 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: RE: [PATCH v4 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Topic: [PATCH v4 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Index: AQHVTJXUFtv+Ew2tU0qrx4VqyHzNjKcQCEKw
Date: Wed, 28 Aug 2019 03:33:58 +0000
Message-ID: <DM5PR21MB01372CD06B64AA668A65D18CD7A30@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-08-28T03:33:55.9748967Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=47f122f0-5357-4ad2-964b-c033be97f336;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d784ab6-b9ae-43e2-5edf-08d72b688faa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR21MB0170; 
x-ms-traffictypediagnostic: DM5PR21MB0170:|DM5PR21MB0170:|DM5PR21MB0170:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR21MB0170EB3FD8702E59CB35AF3CD7A30@DM5PR21MB0170.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(199004)(189003)(53936002)(71190400001)(7736002)(1511001)(71200400001)(55016002)(66066001)(86362001)(81156014)(81166006)(6436002)(8676002)(9686003)(5660300002)(6116002)(64756008)(66946007)(186003)(66556008)(8936002)(76116006)(66446008)(6506007)(7696005)(2501003)(33656002)(10090500001)(74316002)(2906002)(22452003)(8990500004)(76176011)(486006)(6246003)(2201001)(110136005)(25786009)(26005)(476003)(6636002)(66476007)(7416002)(446003)(102836004)(3846002)(14444005)(14454004)(4326008)(99286004)(229853002)(11346002)(305945005)(52536014)(10290500003)(54906003)(256004)(316002)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR21MB0170;
 H:DM5PR21MB0137.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g289PjByq/L+98eVurs98T+zF18V/ZAcRRhwkydFL+hkuzfvlWEZuyx9dPzb7N02dt4JA33U6Ku4N1Wu5ETrJ8rdJo4Q/BgzI2OojjN96NLcwQVmbm5bUVIG7EVR4dktat8Jq/H5Jp2oKkDZ43Or1tBqylvWd/Y/pv8gycfOSksvms1hj3tT4Zd1KCPIP+xg/Yu7GcvXZdHBRxuaKfuDQAdD0wcSBoWm48fMFMgD6D92ZSDiQGi3vDAXBvEDQ14vQFfUHlFtTBNpORN6YBEGaCGfBO+Rgd6F/966JX70oJM9Y/yPtq/lmN1kJAJMq4RX+Rm1gpgCfeYd0zDN9FM3Ir4LSeCgxm+nTBGBQIpgVarbvamaXv9LnOLluCtxr6G2vzhHUI7+njSzhEcK7IqVKhqBKK2xC/gtRX/h6ZzFxa0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d784ab6-b9ae-43e2-5edf-08d72b688faa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:33:58.1125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hH88CJDhuH7RDy2/RkYAkQVhLC3xEjAHJis53gB8/BxdqETpCLxW58d/+96cGCmpUscFjukCEEkUu/9EpFzfYiF/pjAByzeN7OzK8PiMEnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR21MB0170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_203402_297273_B5E2FB62 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Kelley <mikelley@microsoft.com>  Sent: Tuesday, August 6, 2019 1:31 PM
> 
> This series enables Linux guests running on Hyper-V on ARM64
> hardware. New ARM64-specific code in arch/arm64/hyperv initializes
> Hyper-V, including its interrupts and hypercall mechanism.
> Existing architecture independent drivers for Hyper-V's VMbus and
> synthetic devices just work when built for ARM64. Hyper-V code is
> built and included in the image and modules only if CONFIG_HYPERV
> is enabled.
> 
> The eight patches are organized as follows:
> 1) Add include files that define the Hyper-V interface as
>    described in the Hyper-V Top Level Functional Spec (TLFS), plus
>    additional definitions specific to Linux running on Hyper-V.
> 
> 2 thru 6) Add core Hyper-V support on ARM64, including hypercalls,
>    interrupt handlers, kexec & panic handlers, and core hypervisor
>    initialization.
> 
> 7) Update the existing VMbus driver to generalize interrupt
>    management across x86/x64 and ARM64.
> 
> 8) Make CONFIG_HYPERV selectable on ARM64 in addition to x86/x64.
> 

I'm hoping to get some feedback from the ARM64 maintainers on this
series.  Previous feedback has been incorporated, so it should be
close to being able to go in.

Michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
