Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7204CC94
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=necOZOIUYyC3PbQoUl2zzKiYuU9oBvtudsF3sRPAWko=; b=NIQ7gmYlWnDbkx
	9wyUx+8W/+1mvySJ8aLSRBx1hje6GdtbTs8QebtVUcFjonZ+sr2GDLSHeZA0Iq0cq8z3mheaAsoLi
	YYi55qtHLN8CngpkVYn3q37Vi9BO0XvsbUbSHWXXNNSWxjb7obNwuQwdyZS5SkgLj2Jdep7VZU71t
	8hpaR3dQMWut2GHpMb+uI+sbfzIfQbjvdXbxX/dLFTwyVOSWMDhCKL41FUxb1t3g1crjXdcRlimIV
	2yhXGO7qwhyu1UD4b+vskwtxCofRXASf6h+lY71byHOO7TJC34COj+dknpYkGFqSJtYBJl7mSMH5r
	l4k56AJPduL+A0zk0hug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdurn-0002vg-Te; Thu, 20 Jun 2019 11:04:32 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdurW-0002vF-Qz
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:04:16 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5KAtZmQ013531; Thu, 20 Jun 2019 04:03:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=pOkZim8xYBMJcNKum28qzWA78cqgAJfAqBwvWLccqj4=;
 b=q/FYdescVefUJjcFiKVOJYiG5WSp0/ZQr30hqCayixGIQj5tisB5+pJxfqIPgIhsOk7n
 7VS8SVzwO7CPeZSEd01iiQ97pKBbwIXmDnfQpWoKc6YSIoOYDrMPXYjTEHF/EzAFejVd
 u0VCpYgmEZsSr5u2LPIChW/FruQOz1U+6H8GaHGF/VOhvjf0YgzJ3SyxuUTRmv4aiQy6
 LgvWoVrXSu5uimP1q0yuGVXfA4tYvGACTm9nI26nWgeYXh2X2UxKg/+t1dD+moE//w/u
 /ck7JXH8Ik5KXzefQ1AlBLrNZ8REmiR6njx+lJot82nOM3tvCMlltnkvNB+XmsMhwFyI Pw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2t7vrk2bgb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 20 Jun 2019 04:03:59 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 20 Jun
 2019 04:03:57 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.57) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 20 Jun 2019 04:03:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pOkZim8xYBMJcNKum28qzWA78cqgAJfAqBwvWLccqj4=;
 b=eyzbQR3uJwt+rdyKzwlMDfpIuwO8OtUXYWL4D/OLRchCw+5w8x+kAdEzL5+o9pGN1bNU8Prtzbw8H5xtUCUAx1stbrgaEW2IwTFtb2mrHPOntUTCNvLtxaJf2dZ/iqdaFKc6Sul92XpBhh8ktYk/a83CW78T92Z5YOG6L4McyeQ=
Received: from BL0PR18MB2339.namprd18.prod.outlook.com (52.132.30.139) by
 BL0SPR01MB0027.namprd18.prod.outlook.com (52.132.24.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Thu, 20 Jun 2019 11:03:52 +0000
Received: from BL0PR18MB2339.namprd18.prod.outlook.com
 ([fe80::985d:732e:687f:23af]) by BL0PR18MB2339.namprd18.prod.outlook.com
 ([fe80::985d:732e:687f:23af%6]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 11:03:52 +0000
From: Jan Glauber <jglauber@marvell.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Thread-Topic: [PATCH v5] arm64: kernel: implement fast refcount checking
Thread-Index: AQHVJ1fYnbZMk7JN4E+qwGbYAty2oQ==
Date: Thu, 20 Jun 2019 11:03:52 +0000
Message-ID: <20190620110344.GA11817@hc>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <CAKv+Gu-eWP7BNSgYzQgrKGdsEHj1pvv9wAhW9jrorj775DJ_-g@mail.gmail.com>
In-Reply-To: <CAKv+Gu-eWP7BNSgYzQgrKGdsEHj1pvv9wAhW9jrorj775DJ_-g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0069.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::22) To BL0PR18MB2339.namprd18.prod.outlook.com
 (2603:10b6:207:44::11)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:8070:8782:2d00:d8e3:25b5:8d22:a2ca]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a2c68e1-9481-4e4d-644e-08d6f56efa61
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0SPR01MB0027; 
x-ms-traffictypediagnostic: BL0SPR01MB0027:
x-microsoft-antispam-prvs: <BL0SPR01MB00271330D91D590A17AB3E3FD8E40@BL0SPR01MB0027.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(396003)(39850400004)(376002)(346002)(366004)(199004)(189003)(8936002)(6916009)(386003)(6436002)(102836004)(76176011)(52116002)(6506007)(68736007)(486006)(446003)(11346002)(476003)(86362001)(4326008)(14444005)(256004)(25786009)(99286004)(6486002)(53936002)(6512007)(9686003)(7736002)(186003)(2906002)(305945005)(6246003)(5660300002)(33656002)(1076003)(71200400001)(71190400001)(66476007)(229853002)(478600001)(14454004)(81166006)(66946007)(73956011)(33716001)(66446008)(54906003)(46003)(64756008)(66556008)(6116002)(81156014)(316002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0SPR01MB0027;
 H:BL0PR18MB2339.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gaLSansSGb55svRboxuJmlfnvS/ADNNUfPrN9VexIN0TnKVAK5FmQijYB2YFe9bZrzNNcsIwSxg0WDDEpCmcFKKcm/1885vFfQ3Q3jaomCIQcDjOIFQDL83oq65Y+24saCQaAgZLYljCqf82aZLmGn3Te83f3QmeU8D7pWjqgsKACbTe0Epp0pvs79bKwX6VSMv16UNZWZvf7jx+0y0pR1XDb6Q9GrLlUSq7mbUbneaisDk7zfHn5J3BStaNI1azuv61xzTorn1LxgiEpxsD788lvPrtboarGsNUItXPXyRmEx0HP5q+/jQyNo645zdIFpzrrAWAY3NoIyXgHh8xUusAlsJllKPMpPjvNbHZS1c5QcOvSG0XQCBUWAo1rv4ZZnzj11J7+/GXky6R3KAogMXiEhpuaeQimGQmeOOliAY=
Content-ID: <438F9EBE7E9D7742B17AEC4FC6B0D427@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a2c68e1-9481-4e4d-644e-08d6f56efa61
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 11:03:52.1964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jglauber@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0SPR01MB0027
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-20_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_040415_071365_CA9F0385 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 12:56:41PM +0200, Ard Biesheuvel wrote:
> (add Andrew, who has been looking at the atomics code as well)
> 
> On Wed, 19 Jun 2019 at 12:54, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >
> > This adds support to arm64 for fast refcount checking, as contributed
> > by Kees for x86 based on the implementation by grsecurity/PaX.
> >
> > The general approach is identical: the existing atomic_t helpers are
> > cloned for refcount_t, with the arithmetic instruction modified to set
> > the PSTATE flags, and one or two branch instructions added that jump to
> > an out of line handler if overflow, decrement to zero or increment from
> > zero are detected.
> >
> > One complication that we have to deal with on arm64 is the fact that
> > it has two atomics implementations: the original LL/SC implementation
> > using load/store exclusive loops, and the newer LSE one that does mostly
> > the same in a single instruction. So we need to clone some parts of
> > both for the refcount handlers, but we also need to deal with the way
> > LSE builds fall back to LL/SC at runtime if the hardware does not
> > support it.
> >
> > As is the case with the x86 version, the performance gain is substantial
> > (ThunderX2 @ 2.2 GHz, using LSE), even though the arm64 implementation
> > incorporates an add-from-zero check as well:
> >
> > perf stat -B -- echo ATOMIC_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
> >
> >       116252672661      cycles                    #    2.207 GHz
> >
> >       52.689793525 seconds time elapsed
> >
> > perf stat -B -- echo REFCOUNT_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
> >
> >       127060259162      cycles                    #    2.207 GHz
> >
> >       57.243690077 seconds time elapsed
> >
> > For comparison, the numbers below were captured using CONFIG_REFCOUNT_FULL,
> > which uses the validation routines implemented in C using cmpxchg():
> >
> > perf stat -B -- echo REFCOUNT_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
> >
> >  Performance counter stats for 'cat /dev/fd/63':
> >
> >       191057942484      cycles                    #    2.207 GHz
> >
> >       86.568269904 seconds time elapsed
> >
> > As a bonus, this code has been found to perform significantly better on
> > systems with many CPUs, due to the fact that it no longer relies on the
> > load/compare-and-swap combo performed in a tight loop, which is what we
> > emit for cmpxchg() on arm64.

Great work! With that series refcount is no longer the top spot for the
open-close testcase on TX2 (with a distro-like config).

Minor unrelated nit - shouldn't the new refcount.h use the modern
SPDX-License-Identifier thing?

--Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
