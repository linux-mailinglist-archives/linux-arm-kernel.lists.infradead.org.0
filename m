Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B5417D202
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 07:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTpGiGg2yI70uOMnP4poFP46kApz+2kWqBjT9dJCTOg=; b=PjVBDWq7lkZ40K
	jbdViqd92U9Jh7RFQlxMtFfEqoCQ5c7ZddRR7jEsyM4v2UI6T3SjtfP/T/GxMjj4AxAClabPt0o7C
	La+8YPnswJe2KZ7T03dyn0SjBJTbPXeVNF/Mr/ysbGOu62JX6Zs2c8jWYDhRtAZeVC9EP5y8rcZgv
	iwzEKPQnF52HOHJewOcrP30hq/5jOz36Wxe5jY9xmmZcfzjFwTvKWLEXPfgaYWejSb+OwrBP1Bf/H
	HuFDd5WilIzUpJG0R03ZIeLBR+jFKeFoZ7sxgqitSr5Sn08LeCiFOkZsHLbzx1yTbT/sz+HXymq+o
	GCmes0ZPkrllPEajCauA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAp5r-0002aC-AE; Sun, 08 Mar 2020 06:07:19 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAp5j-0002Zm-Do
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 06:07:13 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02864kM8027595; Sat, 7 Mar 2020 22:06:25 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=zIFKKHEGW+vn11Hf3a1dMwqMiRnNbSOpSezFNbnFG8o=;
 b=FORN1mGRqG7tS1PsE2n4uGFgaXPL1mmMET/W/fhgkzsNyMO2ljJ/8w5QiiNicRbh6LDG
 cw9HGUvdYdsZ01e0C1qurJLMUse4FRf5wRrFCAALnZvRfZW7AX77ULookAMMtMMKPwCv
 HDnmP38d1VlknMqOUxus6Fl1l+xRvGiG542VKlOnUS7ierEDy8ouhfPPcfTQZJ4dpxPG
 ddN9a48XWx08pLdMSY66ra3UgeM9FfEzbSzUUOhVQAjhogtbdr2HN6ZLOKv2tQwUl2f7
 Q9PK0R+dCuEyk2U4pI7GYx0cWVPHln7+JZso/kzQQQGjHbYHlKYY+wWuckd+eVSn0MRj 4A== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj9e1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 22:06:25 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 22:06:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 22:06:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPUtT8yLcmlSYo0+9yogdd4oGCr7qu9H1ywuqL7bDlL/NUTxSketBvSE94zwqkTqh6LBnv66ODGiECrFRF2FgW9VpuS+onNROyJhF27bCCOYsfylfMGo+pYD7RlTsqSGM/NG/Ou8GV3lXbdDQn60aMARZruNK2uIoIt1m9GejBI/Sat9tEShl3xHQvOAgtuWl+5P70PPNOaAj5oHUDcjOxl0sht9CSJkVDv5WnnBezZVqwLfpYndNhiiwv4664hxBJvhLumIA1cPm+GB32HFsXsR0ImcOUja5TJKLYCZIBxrJPWMGcZFdazhUBOe1Efq/8eInVRW00OjEBAa21scMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zIFKKHEGW+vn11Hf3a1dMwqMiRnNbSOpSezFNbnFG8o=;
 b=W0cOY73doUwnyFMsw2xOf4g+MuSYpMFvlu2lIoC0PjOKIW+JGKeGd2OrkiHhf/xuJajquNlyOV7LDgT1vWZsuZvnTbpZ9W/V9A/whsBsMi49TjGpBohODnzc201neJpFiMj1W/4+UcBurA5pNL7voQ7zP+ELEYLr6dMeqIk4GDI1ZxkMomgfSTpCIPXWBa/UgWn2KAVnq2T1bfBznuZPHaIx4N/yhTxxAqJhlZblhfX6ODxt3RBOG00TQU8PqLCYccgMJ7js2uw1T6WWOenmsKQFhLba9U8DfgFAzABq3VlxeiEkhmfez+ClcgBOH2mklCTOtkaRkocC3aUUJmUOiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zIFKKHEGW+vn11Hf3a1dMwqMiRnNbSOpSezFNbnFG8o=;
 b=D+8S9RS9T/Trm/Mvx6Ho6qvV8azrc/vy0b3Q3088Uv+4QtSz4lhCS/nVMHvVMb1rfUCjce3EaafbpuwL+aXl0cdN8dEukH0oVbrn7Q8kFCL5bNEt/rhfjf2OV55N/K2by0EOLgGrjELvgSh0KhJCUViprp93eNYPTYVszbSyXTQ=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2662.namprd18.prod.outlook.com (2603:10b6:a03:130::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Sun, 8 Mar
 2020 06:06:20 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 06:06:20 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>
Subject: Re: [EXT] Re: [PATCH 03/12] task_isolation: userspace hard isolation
 from kernel
Thread-Topic: [EXT] Re: [PATCH 03/12] task_isolation: userspace hard isolation
 from kernel
Thread-Index: AQHV8j73SZ7gA0FMRkuOSCw4mVFsAKg7sr2AgAKII4A=
Date: Sun, 8 Mar 2020 06:06:19 +0000
Message-ID: <5b819b1a8c3a4c9c2361ff10a31ac91df1851b83.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <36d84b8dd168a38e6a56549dedc15dd6ebf8c09e.camel@marvell.com>
 <20200306152632.GB8590@lenoir>
In-Reply-To: <20200306152632.GB8590@lenoir>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fda5adf1-ee54-41b8-b341-08d7c326d24e
x-ms-traffictypediagnostic: BYAPR18MB2662:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB26624A47E63058FB1F817E0FBCE10@BYAPR18MB2662.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39840400004)(366004)(396003)(189003)(199004)(316002)(2906002)(54906003)(6486002)(7416002)(5660300002)(86362001)(478600001)(186003)(8936002)(71200400001)(36756003)(4326008)(66946007)(26005)(81166006)(6916009)(6506007)(76116006)(2616005)(91956017)(66476007)(81156014)(8676002)(66556008)(66446008)(6512007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2662;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EE9BGWrC1sXMUU31FqMJeThnubd+j4PBwVvTaEBzu7mrg/a0hmiJC01hsXRwlzljEiMqWs5aSWa60Wjij+lnq6eKePDVMCImdKm0NRXL7EdSND9MXjWIwjVlkkkDarFqa3lXWKSGezPX8RcY1ND9iVHDHtVo5ou8dksQkjD/qgIIGQIkHDI7y8ETpGm/ZIoaWyEFuW+Fc8lLQ3655LkeyIV605ifNbYj955aMNzygnpmRBD1VzLp3h1ndbFuST0Q1yVzBfKIDrnLeQeE1vY7mCqsSKGdfM+WJ5wJi3BimIsZLJU45Sf92/DJN27REJlcgu4I4zntjb+/o46iZc0ncSPZ0EOQZbV1J0Q683VESltgH8GarD7U6tWmn3nv/r8KCTKzYc58t5gKFPgV7/N1VAPV2AaZTOy4JW/D3AJ0jXpG4+ATnH2wAg/jpYfwSw4G
x-ms-exchange-antispam-messagedata: xRIxEzv9npUjnbJdOiPeOMPNH6YSwGqkppbI8Oa6wkgmW7/EejkJKz+BUq+OMrV2/V9wwk+gdfKuckgTBL89QDgbnPsYDMxNywysVErHadBR16hEeCqrG0t9BellOd7PNvOGOlCoMqaH6V4ISvO/vg==
Content-ID: <3ED4782FA3D7DB4CB3FB6ACA8D014FFC@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fda5adf1-ee54-41b8-b341-08d7c326d24e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 06:06:19.9182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AMA2aDtZ6kxf2ig/DNXk2uF/RCocVQu+DIt/40YGMs0mGl9W9eewTlV+ztjyil10c0DSRU4h7o2UQit7s0XZ6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2662
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-08_01:2020-03-06,
 2020-03-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_220711_645276_95DA4BAB 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>, Prasun
 Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 16:26 +0100, Frederic Weisbecker wrote:
> On Wed, Mar 04, 2020 at 04:07:12PM +0000, Alex Belits wrote:
> > 		do {
> > +			/* Make sure we are reading up to date values
> > */
> > +			smp_mb();
> > +			ind = ind_counter & 1;
> > +			snprintf(buf_prefix, sizeof(buf_prefix),
> > +				 "isolation %s/%d/%d (cpu %d)",
> > +				 desc->comm[ind], desc->tgid[ind],
> > +				 desc->pid[ind], cpu);
> > +			desc->warned[ind] = true;
> > +			ind_counter_old = ind_counter;
> > +			/* Record the warned flag, then re-read
> > descriptor */
> > +			smp_mb();
> > +			ind_counter = atomic_read(&desc->curr_index);
> > +			/*
> > +			 * If the counter changed, something was
> > updated, so
> > +			 * repeat everything to get the current data
> > +			 */
> > +		} while (ind_counter != ind_counter_old);
> > +	}
> 
> So the need to log the fact we are sending an event to a remote CPU
> that *may be*
> running an isolated task makes things very complicated and even racy.

The only reason why the result of this would be wrong, is the race
between multiple causes of breaking isolation of the same task or race
with the task exiting isolation on its own at the same time (and
possibly re-entering it, or even another task entering on the same CPU
core). This is possible, however for all practical purposes we are
still logging an isolation-breaking event that happened while a real
isolated task was running. We should keep in mind the possibility that
this isolation-breaking event could be preempted by another isolation
breaking cause, and all of them will be recorded even if only one ended
up causing fast_task_isolation_cpu_cleanup() to be called on the target
CPU core.

> How bad would it be to only log those interruptions once they land on
> the target?
> 

For the purpose of determining the cause of isolation breaking -- very
bad. Early versions of this made people tear their hair out trying to
divine, where some IPI came from. Then there was a monstrosity that did
some rather unsafe manipulations with task_struct, however it was only
suitable as a temporary mechanism for development. This version keeps
things consistent and only shows up when there is something that should
be reported.

> Thanks.

Thanks!

-- 
Alex
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
