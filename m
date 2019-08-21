Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8FB96FC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQIDHBNX2nAdRm2EW5qf3HFLYdaiMmOfb31z+QOJUJs=; b=ELuOb3PImzo0rk
	jh39kPgsdIo9MJB6d+wnX4KEVteD+ipLie6YmQFnxDHYwjIUJRjKHUTjVBaZkEe1csaeMYNA7mtah
	N1twlMpkCjBsg0LqJES87GPVAbmy2kIJ2UqzutybqEJZ3+SR/gtBNUZgOh1LLTq+n0Llci+Zwt7Sg
	IGbKJ/V115pxTfV3/3LCB5qMXxjhzF+OWgMloxqGbG606a8rm+fH1KauQHxgiYFOUydxZaYJtqcP8
	NpZ8m2qrxRSC8vVQKT5azQLRLRRDywQmwleVKCcpcc9rglsjvG25sVPdkwHYU63sxMVKOGNEhaRrv
	ZBAb6Q1SdlBZLd93tC4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ghb-0002dw-5q; Wed, 21 Aug 2019 02:50:23 +0000
Received: from mail-eopbgr690078.outbound.protection.outlook.com
 ([40.107.69.78] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GhT-0002dZ-A6
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:50:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/3qvSrGTjkEgWeY4df7hRfinClfkVuToQkua4IGFh6COyf6peXRzgCdAQ0yJ02d291O9ATfEFyTQi0tgrgyawDi7z3Ptl+4HvXZRh9Y7oCt56NlQSc9WYXnb/ucLnuttUftecYu5ygmNK90Iqt3rSVwmqqD1smdrnF6Tz1RxKUKW5PoDYogmJUqCpKIHYBaGvs8anWbX6W3TBrxCLsdrwYEIUN0UCXLZO+G8ESGG4Yptvn+23dJ4XNSPyATLH8dAR5ShHwoBm/cpHD7VABBqzhsMr065DaPhJnBDI1WuC95PofEMPwZY4Y7hewC7K6Yv8XDlztuPooBm0E5RZ3F9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSEe01lJKSGwrdqp+XWy/X703fpPJkGSOShx94rrULo=;
 b=cZQpBTy448RrFc8jL7KI8VQqJ1cfuKGHshl57vg2YVwqwnu1UsgcTaN6VUqHvO8PJBKjYpkhh8gmzDTFS3G9jH/JtjmDOUFK38peXY+Ee9cotl3xmE0hdphKVmRaUrY4YAayqnymF/kyQA75psbdz47xUbEHqieV8MuGQbEBC317mcajaPrMgAMbCXbqSSiJ9egYJM8TVtTGTeiKCOt9IyJnRrSWqOL3SWasRXauX17A6hp3ibx03P92A6T2sqI3IkrJ/+3Pa7KllCTfpbzVP/JWn5atsNSsl/y5er0ozrPznTK2HP4KgnmzpAH3kX489wFQHG0DXj2BDiFuPAamPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SSEe01lJKSGwrdqp+XWy/X703fpPJkGSOShx94rrULo=;
 b=E3pI+EzmD7LGsZi8OCm6dfQlNTwQM/RbtaEnVomYQmzrzrTHIH1uRJMLDq6Lm+ApycT/s3Exe6/j2EiXoWVLSgGCF/gon1VBVBpky/5Fs+L9yKkdKFWZnmiyTLy3dOkbwSLJrhkFbyEfwo3+Z8u8R7dcYcRxQ0wklefa9DqQRpg=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4134.namprd03.prod.outlook.com (20.177.184.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 02:50:12 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Wed, 21 Aug 2019
 02:50:12 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 2/3] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Topic: [PATCH v2 2/3] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Index: AQHVVwrOlWp5wQEBs0CTmAwXsgLkUqcE3FSAgAAIv4A=
Date: Wed, 21 Aug 2019 02:50:12 +0000
Message-ID: <20190821103857.14d2a40d@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114224.0c8963c4@xhacker.debian>
 <20190821110739.fb3ab6b69423dff64a3b4a29@kernel.org>
In-Reply-To: <20190821110739.fb3ab6b69423dff64a3b4a29@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0158.jpnprd01.prod.outlook.com
 (2603:1096:402:1::34) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcb2cc99-586c-4500-c248-08d725e24999
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB4134; 
x-ms-traffictypediagnostic: BYAPR03MB4134:
x-microsoft-antispam-prvs: <BYAPR03MB4134C73B72F146E76CE139C5EDAA0@BYAPR03MB4134.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(376002)(346002)(39860400002)(189003)(199004)(52116002)(71200400001)(14454004)(71190400001)(99286004)(2906002)(66946007)(66556008)(64756008)(66446008)(6486002)(66476007)(386003)(6506007)(229853002)(476003)(6116002)(3846002)(54906003)(256004)(1076003)(11346002)(86362001)(478600001)(446003)(486006)(6436002)(9686003)(6512007)(53936002)(6246003)(186003)(7736002)(26005)(25786009)(5660300002)(305945005)(4326008)(316002)(8936002)(7416002)(8676002)(81156014)(81166006)(102836004)(50226002)(6916009)(76176011)(66066001)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4134;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IpoFs2USXlJnGXGqJrA1oHlY9W17zu9bpgDB1oiFlwWSFJsFTmfko29+Nsf38IyEVI9+K9D+DIpl1cdLm1MmrZJZ0hW+etsS1RhtIXr/Hd9yVzTaPgUSlxxRrMQS2gcKG8zyf99G1pi3YoMTivrmRFd/TprPL1gvBKJiOFDcUB6GiPQK0/Nd4JBpie20KOqi359RfgQie3qPrAt3/tP3xrh2sGD30VtOlhAeajFD6XPZL4LntoObBPKB5273kdm7AcJvaMqe4h4JhqclJVOnNVsy/Zfg5J4Aj1oJNzDZvueTxXur+10DZXb9qt9PCmgoGFHIzl/OAE4M0XPwl4+06VpZ/ZO8M72TdNIDJjqBgq1Qg7cMkUDGbUtmTaSiBsgg80HnVXv/gF091lQQiEVNUYLARTc2W3P6NmEL+tL3IGw=
x-ms-exchange-transport-forked: True
Content-ID: <729B9B6589E3D843922E38EC366DDC75@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb2cc99-586c-4500-c248-08d725e24999
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 02:50:12.6193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o7dkFLErusU4mcytO2IQxK6HafDLamLdzY0ZclNC7U4pBRcjhpcVk6UM0jWWZuTpaCDItfs2BJkNMM7EFdwIow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195015_356995_7C14E405 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.78 listed in list.dnswl.org]
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
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, 21 Aug 2019 11:07:39 +0900 Masami Hiramatsu wrote:

> 
> 
> Hi Jisheng,
> 
> On Tue, 20 Aug 2019 03:53:31 +0000
> Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:
> 
> > For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
> > correspondingly.  
> 
> Either KPROBES_ON_FTRACE=y or not, ftrace_location() check must be
> done correctly. If it failed, kprobes can modify the instruction
> which can be modified by ftrace.
> 
> >
> > Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> > ---
> >  kernel/kprobes.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> > index 9873fc627d61..3fd2f68644da 100644
> > --- a/kernel/kprobes.c
> > +++ b/kernel/kprobes.c
> > @@ -1484,15 +1484,19 @@ static inline int check_kprobe_rereg(struct kprobe *p)
> >
> >  int __weak arch_check_ftrace_location(struct kprobe *p)
> >  {
> > -     unsigned long ftrace_addr;
> > +     unsigned long ftrace_addr, addr = (unsigned long)p->addr;
> >
> > -     ftrace_addr = ftrace_location((unsigned long)p->addr);
> > +#ifdef CONFIG_KPROBES_ON_FTRACE
> > +     addr = ftrace_call_adjust(addr);
> > +#endif
> > +     ftrace_addr = ftrace_location(addr);  
> 
> No, this is not right way to do. If we always need to adjust address
> before calling ftrace_location(), something wrong with ftrace_location()
> interface.
> ftrace_location(addr) must check the address is within the range which
> can be changed by ftrace. (dyn->ip <= addr <= dyn->ip+MCOUNT_INSN_SIZE)

yeah! I will try Naveen's suggestion, I.E patch kprobe_lookup_name() instead.

Thanks

> 
> 
> >       if (ftrace_addr) {
> >  #ifdef CONFIG_KPROBES_ON_FTRACE
> >               /* Given address is not on the instruction boundary */
> > -             if ((unsigned long)p->addr != ftrace_addr)
> > +             if (addr != ftrace_addr)
> >                       return -EILSEQ;
> >               p->flags |= KPROBE_FLAG_FTRACE;
> > +             p->addr = (kprobe_opcode_t *)addr;  
> 
> And again, please don't change the p->addr silently.
> 
> Thank you,
> 
> >  #else        /* !CONFIG_KPROBES_ON_FTRACE */
> >               return -EINVAL;
> >  #endif
> > --
> > 2.23.0.rc1
> >  
> 
> 
> --
> Masami Hiramatsu <mhiramat@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
