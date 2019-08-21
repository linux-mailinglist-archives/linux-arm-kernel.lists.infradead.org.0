Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A90C96F3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVZu0TXWd2214mZv7HncEbufbi6ElEQ/YRqU+drzUnA=; b=tbYUt4ABprnW8u
	qxOXBFWmk9jW7GG50K2Nhnr/yko4WZLoS6sAQ/XUDPR1uJCQwJISiWAPIrnPWuV2mHtbHpBZSzWfl
	Ao5MxyLW9ULHjNIEryP8Yzd3BxPQOop3Phpu6iWARRr+x7xfQQcbUGLMRW8Jd34dIhPaCU/Gc5phs
	Du2sUWbb7F0RnfpnSKd4IGP/7fxZr8jI7SVUDDEEs/sLQa1L+3b6JReVvlf7FUfFQbBE8neISNtoO
	Ph3MFXf/YDIdI0+6/g+oUAqptkaHSzIDoYJsSSW0FeTStT/EwemCn/4nduDz5877rMTcM3X+SArdJ
	H5vEuDZ128LwK91RDuPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0G3v-0002ql-Jf; Wed, 21 Aug 2019 02:09:23 +0000
Received: from mail-eopbgr750071.outbound.protection.outlook.com
 ([40.107.75.71] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0G3m-0002qS-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:09:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EkJf9SJjTeFdjKCd8yRtxLX/lUBs63l5SYrDfkQZG4cDcFKpq8aillHgPxVyxfjtTrTuJEFmeYwbizG2hOYOyatCZ7TByI3xntt7jzIpYVyqlHtnandfw3JAqozB7RQk9Z7rh+BWQAV2GDhRWc4WbbUallQiTy7HnyX4Quh+48+KNtJVmQX/SA004wIdSQEvcd2ArceCYeejMDk1uVEH26ksHugN88rr7ocj2GR++9NTKDKnBhfCQlQANfhzGGuqPqzygcvwSQeNUAM8JDjYhVZrYjcBGrRM+K/ZVNmBOIppriGNK+X4SnC+ngEFnYio3AhrCSOQbPxdYYgXklW4WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rg5V4KIiFC4h1rp2jN9bS9pv2shUGDwX3sNbL4AKjTI=;
 b=fQhn+7BJBTO0zTn4zQVvHVfPyFgGnLs0robF1w6xQGXR72zaokXuIF4NJKhlqxo6IWIvbZqdcimcivyw5arNqmkddbU1616VTZcmSqzwb90/mA5CZlwdPYY+RqxpEEyQ6jztmEuXb4vnUd9aXy3CA2UPSBaS/AYVfAJLqXbUsUtczRXVuaijfU10KwfY69cktexG80yLHkShuP6tuzvpV7mpZa2nyOp5z3xuSiN6HIs9GXp3tvM0n7unXIdhtvIPcPvnGl0LceBlMKlOB9IWd68bYMOG5wnZbZQf73EGsCaQDMKM8d1YJpxOnEK4uKomIMOEa1evQ7cHfA+WsLpehA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rg5V4KIiFC4h1rp2jN9bS9pv2shUGDwX3sNbL4AKjTI=;
 b=euKxpOo8JV3NKIFZJwokdEIuCg7qrVQMY9Rka9B6eaqFaxrDxLizH2NIuKs3x3QFI3GdkAPmMlGw/HkYlB7/BGI3fGTgGIuRiMod/mBUZta+rlOxOLJGu0fUEJ5K+fEVoP7yL0fTFJLPXaF57JtxzaJVskB0fJSO3NHcxfviPJA=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3574.namprd03.prod.outlook.com (52.135.213.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 02:09:11 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Wed, 21 Aug 2019
 02:09:10 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Topic: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Index: AQHVVwqiEXrXfYjUc0SG3b0/wT6us6cDu4YAgACFhgCAAJchgIAAAL+A
Date: Wed, 21 Aug 2019 02:09:10 +0000
Message-ID: <20190821095527.729b2b0d@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114109.4624d56b@xhacker.debian>
 <alpine.DEB.2.21.1908201050370.2223@nanos.tec.linutronix.de>
 <20190820165152.20275268@xhacker.debian>
 <20190821105247.f0236d2c04b2c0c4d4e1847e@kernel.org>
In-Reply-To: <20190821105247.f0236d2c04b2c0c4d4e1847e@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0210.jpnprd01.prod.outlook.com
 (2603:1096:404:29::30) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67fd10f7-a471-4cc1-3f3c-08d725dc8e3d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB3574; 
x-ms-traffictypediagnostic: BYAPR03MB3574:
x-microsoft-antispam-prvs: <BYAPR03MB3574972D034A5BEBA292D3CEEDAA0@BYAPR03MB3574.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(366004)(396003)(39860400002)(54534003)(189003)(199004)(478600001)(76176011)(102836004)(14454004)(53936002)(316002)(7736002)(7416002)(1076003)(25786009)(446003)(11346002)(2906002)(476003)(4326008)(486006)(26005)(54906003)(52116002)(6246003)(99286004)(86362001)(386003)(6506007)(305945005)(186003)(6916009)(66946007)(8936002)(8676002)(66446008)(5660300002)(64756008)(71200400001)(256004)(14444005)(66556008)(66476007)(71190400001)(6116002)(66066001)(3846002)(6486002)(229853002)(50226002)(6512007)(9686003)(6436002)(81156014)(81166006)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3574;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iETVAJMaw8V7kKA66OhWKk8NhTg4JHz/JgWRLQP10VQnzgDquJ17BaZjXmfS6XQg45n98dh2nz2W6cg3X/qCJXzqxJx3dqDJsGtqwwis58NtFRh3pjFhCKXDwHqLJF4tfGvVWsuNn8sltyTLH7OKmk/9zMw4Aj10CyT0/7JEQq2Rm6nMIYqDq4izlvv0fqMoFPeCdcDEZnv+MgcGoYXpr51D4eb/+kFm71UUfuDGMa7c9EslyOYZVDhO+qTZNDzYcnLs5j1CoyKgLguQkTo7jH8tvRNBZI0ffZBUC6qipiEAVRH8c7bwlvWRQB2RiVFXVTMerO2ueEvPLWCegwWHr70ybGGOy1UvLm+T3MFW4L/rKDwcgISJU/FLS3K78VHLb5d/V12Rc9tAALTC+WMmsPVucc/oo9nyPdOrBbkeY/I=
x-ms-exchange-transport-forked: True
Content-ID: <0201144BB45AB64793AC6F3ED43EFCDF@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67fd10f7-a471-4cc1-3f3c-08d725dc8e3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 02:09:10.6615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zJPNmnEX7RMFUaDOm9sVUWc+KcP7rYY1TYtLSvq9K18I1NviyHWMfGhH5OIWoqvro026lLNg60bKKVkafc1nng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3574
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_190914_834847_C4BBE31F 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, 21 Aug 2019 10:52:47 +0900 Masami Hiramatsu wrote:
> 
> 
> Hi Jisheng,
> 
> On Tue, 20 Aug 2019 09:02:59 +0000
> Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:
> 
> > Hi Thomas,
> >
> > On Tue, 20 Aug 2019 10:53:58 +0200 (CEST) Thomas Gleixner wrote:
> >  
> > >
> > >
> > > On Tue, 20 Aug 2019, Jisheng Zhang wrote:
> > >  
> > > > This is to make the x86 kprobe_ftrace_handler() more common so that
> > > > the code could be reused in future.  
> > >
> > > While I agree with the change in general, I can't find anything which
> > > reuses that code. So the change log is pretty useless and I have no idea
> > > how this is related to the rest of the series.  
> >
> > In v1, this code is moved from x86 to common kprobes.c [1]
> > But I agree with Masami, consolidation could be done when arm64 kprobes
> > on ftrace is stable.  
> 
> We'll revisit to consolidate the code after we got 3rd or 4th clones.
> 
> >
> > In v2, actually, the arm64 version's kprobe_ftrace_handler() is the same
> > as x86's, the only difference is comment, e.g
> >
> > /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> >
> > while in arm64
> >
> > /* Kprobe handler expects regs->pc = ip + 1 as breakpoint hit */  
> 
> As Peter pointed, on arm64, is that really 1 or 4 bytes?
> This part is heavily depends on the processor software-breakpoint
> implementation.

Per my understanding, the "+1" here means "+ one kprobe_opcode_t".

> 
> >
> >
> > W/ above, any suggestion about the suitable change log?  
> 
> I think you just need to keep the first half of the description.
> Since this patch itself is not related to the series, could you update
> the description and resend it as a single cleanup patch out of the series?
> 

Got it. Will do today.

Thanks a lot

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
