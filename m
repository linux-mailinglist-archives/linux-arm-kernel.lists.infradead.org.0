Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16868F0B2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 01:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=km50h2ncZuRgQRTGC8av5poBL/82KFRyVA41KkETVPw=; b=HnXVlmwa/FCJwG
	PLqdCsdVZzpcGN0tMWJjrow8gPWCNzkZMLeQ1SfrebADkft3mrZhrpfPyvxcPDP/2HfngMmtNUX1o
	/lgWPRVrEN1sHCmTxgpJXgDisb8PKVHfcRrb+gl6e2W/gBqsyXzC4eDd4mi8zFrKEpVsKLeFQHJkh
	TzOK2s/xLHQmNIH/eTcRAJ5j56nTc8awlCgyg9rymnxBo6z7Vt9N3lfZpQfWNPwhWL+BHN1Dr00P/
	XtYxQju2yNExHJ4I1bA8LP0kWt1TxjLTd7wfoNXckhdLKeLCctwpA1QUGdY7COdaw+dT65iKLHv84
	v4R6B0JWEz/QX7E8bTMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS9Mv-0002il-UL; Wed, 06 Nov 2019 00:40:17 +0000
Received: from mail-eopbgr790131.outbound.protection.outlook.com
 ([40.107.79.131] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS9Mn-0002DJ-72
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 00:40:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YdFxiRaxkpvJ5vN34yAKueaYCA0YHrv4XjjeqP+22FbyaLaj8EBipkhLYkx+MpCxKD+QwrWdo5HLfpM+Pio7E3NoOf42DD4jhExvx3F0ACNpOrizHbFYOYzMjwZl5eN/qPXL7H1cWUbPjVdrCKLoW9W8kvw8gS5zDRh099YECP4W0C/IY43EHdr/l5Iv0O5My+9KNexWeOdm0CxRTV4dCEAHSV1ikuc1OzbnXT5DmNMEZkxXTa/dx1ug9SccMT1F7zBujNWGWicR4VznqTz+nSyzPVCH+jPpgAN4s+9pARUDLr2/sGIRt/hIbm8tZ6Fy0XwtJzozhzkOxR3SVlbebQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw/iJjUaB7Zgd3IuIPZ87gZW+5d2qkZacf4u91TH+/o=;
 b=kuXAJyTJ1IZOfa2hoQbyvHwWJUTmIFiZVjKTlnQiMYSLAsxbiV4PLMvBzuC/2G56Dk4SeZZyR9fLEd7kHlBoTzsL3wqO/JvDp1ClmmpNJX9SLPtHE9frmM/ggkWwvePFwVhNs/iD5r48/4sggS9wsd8XTifVIYfSi7xUwwTUk1cplCk3xG87EJiSxKdEzpPzZvmYhH6z6E1TymWa6IzkbrlXgNE/m9jZYuLtIB2SZA8ccZe1P7Ht7AFLR0r7B2/btcpqnISbJHHKeO0KynFubX46STCxbJTuT7Wdl0F8JYCV8LZTAUhKdCx8/Qo4V+oz8+NPLKYWpA6IZpyXwFnYdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw/iJjUaB7Zgd3IuIPZ87gZW+5d2qkZacf4u91TH+/o=;
 b=IB0Gn/teGOpoGUUdjG6LAGzS5ACUzqoCak9mdb2P2O0fck1P2sSoOo/Ak0emkhDXZ6VmFY2wQvpsrVRmc3dmmtdC0STuPjnLn52t1kMLRIAOafN9UoJFRXwtD3wApEfaAxrOybvWPLjb/FE+QUpA6PvjRbFK8MF3QlHOFyzJW4M=
Received: from CY4PR21MB0136.namprd21.prod.outlook.com (10.173.189.18) by
 CY4PR21MB0134.namprd21.prod.outlook.com (10.173.189.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 00:40:04 +0000
Received: from CY4PR21MB0136.namprd21.prod.outlook.com
 ([fe80::c012:a072:ce15:ebd6]) by CY4PR21MB0136.namprd21.prod.outlook.com
 ([fe80::c012:a072:ce15:ebd6%6]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 00:40:04 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: boqun.feng <boqun.feng@gmail.com>
Subject: RE: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Topic: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
Thread-Index: AQHVeh04Ms529Em9Uk+lYQprCDUhuKd6nqIAgALhQ3A=
Date: Wed, 6 Nov 2019 00:40:04 +0000
Message-ID: <CY4PR21MB013693817F4AF4EFA6A4DCD3D7790@CY4PR21MB0136.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
 <20191104043632.GB182@boqun-laptop.fareast.corp.microsoft.com>
In-Reply-To: <20191104043632.GB182@boqun-laptop.fareast.corp.microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-11-06T00:40:02.7590240Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=c2e5f6c0-4cbd-4c50-86dc-7e3599d1293f;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bdcd0305-18d9-430e-b869-08d76251ddc8
x-ms-traffictypediagnostic: CY4PR21MB0134:|CY4PR21MB0134:|CY4PR21MB0134:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <CY4PR21MB0134F75215C550D2C7DE5797D7790@CY4PR21MB0134.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(39860400002)(346002)(136003)(189003)(199004)(6436002)(9686003)(86362001)(55016002)(4326008)(6246003)(33656002)(8676002)(81166006)(446003)(81156014)(186003)(25786009)(76176011)(52536014)(316002)(102836004)(7696005)(8936002)(26005)(3846002)(22452003)(11346002)(6116002)(6506007)(229853002)(8990500004)(2906002)(7416002)(99286004)(54906003)(6916009)(256004)(476003)(66066001)(7736002)(486006)(107886003)(66946007)(5660300002)(305945005)(66446008)(66556008)(478600001)(64756008)(71200400001)(66476007)(10290500003)(71190400001)(74316002)(14454004)(10090500001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR21MB0134;
 H:CY4PR21MB0136.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +fvLJ51TRo36T+u6Hhw5o8bcpGG2dosvVSHlmAP+bWt28lxABZ5WYxRs/64U7lo0lJy0wzLaGH86riEcQr4LFb+ok9hmsOZxxMM0zehiFhfwSAKDlcClYTDGs8CusbBew/QGz51HNYmR1tbaCQPAmZiFDmMU4EqRWrZ06rD2qCvl4XjaX1d1MTFCtvhj2A+r0RJGzA5P3zzjdJlCUvNAbQx9UIhIa+JHsIv92Hk890SJxaAhe+UgEFFIOD5DaAMdQiLgRtmFGlw9m74XgvpUlOoMZMS7sXKzRjEl7uqNO5+KyCpfft6Al9NOeV/oL8F2b0B1JyU7kJJpucddMKbD5QcJgUI1kkt0jXMBPVHx7bq3tnti7MyqO2YyfvIk++jVzLQNPx1TahH7qrbSsXY4zXEd5tG56LLfVFG6QudY8iU4ezpJPrEhApEb6GlH6aiX
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdcd0305-18d9-430e-b869-08d76251ddc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 00:40:04.7227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PhsGnRKv7t0sfu4vQc0Pe7AqDTdtlBCaI15xLA1ov9pP3cYtxL0X7Nh1nS/QxMn0bdHXgrklkd+tw2KJ5upsqvk0q87alveT4F6gdAvQ8sI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR21MB0134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_164009_780590_1E6C0BE3 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.131 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "maz@kernel.org" <maz@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
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

From: Boqun Feng <boqun.feng@gmail.com> Sent: Sunday, November 3, 2019 8:37 PM
>
> > diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
> > index d646582..2469421 100644
> > --- a/arch/arm64/Kbuild
> > +++ b/arch/arm64/Kbuild
> > @@ -3,4 +3,5 @@ obj-y			+= kernel/ mm/
> >  obj-$(CONFIG_NET)	+= net/
> >  obj-$(CONFIG_KVM)	+= kvm/
> >  obj-$(CONFIG_XEN)	+= xen/
> > +obj-$(CONFIG_HYPERV)	+= hyperv/
> 
> I did a kernel built with CONFIG_HYPERV=m today, and found out this line
> should be (similar to x86):
> 
> 	+obj-$(subst m,y,$(CONFIG_HYPERV))      += hyperv/
> 
> , otherwise, when CONFIG_HYPERV=m, files in arch/arm64/hyperv/ will be
> compiled as obj-m, and symbols defined in those files cannot be
> used by kernel builtin, e.g. hyperv_timer (since CONFIG_HYPERV_TIMER=y
> in this case).

Agreed.  I'll fix that in the next version.

> 
> A compile/link error I hit today is:
> 
> | /home/boqun/linux-arm64/drivers/clocksource/hyperv_timer.c:98: undefined reference
> to `hv_set_vpreg'
> | aarch64-linux-gnu-ld: /home/boqun/linux-arm64/drivers/clocksource/hyperv_timer.c:98:
> undefined reference to `hv_set_vpreg'

I'm not seeing this error.  I'm building natively on an ARM64 system, though
the environment and tools are perhaps a couple of years old.   Are you still
able to reproduce the above error?  And is it only complaining about
'hv_set_vpreg', or also about similar functions like 'hv_get_vpreg' that
are very parallel?

> 
> [...]
> 
> Besides, another problem I hit when compiled with CONFIG_HYPERV=m is:
> 
> | ERROR: "screen_info" [drivers/hv/hv_vmbus.ko] undefined!
> 
> , which can be fixed by the following change.
> 
> Regards,
> Boqun
> 
> ---------------->8
> diff --git a/arch/arm64/kernel/efi.c b/arch/arm64/kernel/efi.c
> index d0cf596db82c..8ff557ae5cc6 100644
> --- a/arch/arm64/kernel/efi.c
> +++ b/arch/arm64/kernel/efi.c
> 
> @@ -55,6 +55,7 @@ static __init pteval_t create_mapping_protection(efi_memory_desc_t
> *md)
> 
>  /* we will fill this structure from the stub, so don't put it in .bss */
>  struct screen_info screen_info __section(.data);
> +EXPORT_SYMBOL(screen_info);
> 
>  int __init efi_create_mapping(struct mm_struct *mm, efi_memory_desc_t *md)
>  {

Agreed.  I can reproduce the same problem, and will fix it as you suggest.

Michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
