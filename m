Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC7C1E7C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 07:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2t96bxwox6yVXYEdTmvERHUaScX/X4Du01wGanciTc=; b=ogrzkwpmG5pgKc
	WceKknoW/Jk3+fqv4JlbpJAqQDIwKNnjIHYJ2JOWd5Hfe1+Bgur5iYKqLWZrRAqGYWmeQ+/Q9mJS6
	2SAbV7W1GxfONyYIPNp3n9QZSDAHxw5eywZUMaUiH2EoeBEXxSX8JXeL1962B38UqLo2aosWlAi9H
	r9mSiJdq8Mgc1gSOcIHNB8my/8oeNwxfKiQ4/Ys1HcYmwh9spfhJfcHvxPV6ITgqzJm89JUi8cbwR
	IiXyDfGxFBJixpqQFnr1wQFmnMmUafqdiiVeFSrvZCKMO1KXC2FBH25+A6UcGoPnfI/SNRE/lbTJs
	KhIA+GDMtf43rRFtGjxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQm2e-00068Q-Mv; Wed, 15 May 2019 05:01:24 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQm2W-00067O-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 05:01:18 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4F4vS1G128219
 for <linux-arm-kernel@lists.infradead.org>; Wed, 15 May 2019 01:01:12 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sg926q4ks-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 15 May 2019 01:01:12 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 15 May 2019 06:01:10 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 15 May 2019 06:01:03 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4F512xp42795236
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 May 2019 05:01:02 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8CD14A4057;
 Wed, 15 May 2019 05:01:02 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 36EDBA406E;
 Wed, 15 May 2019 05:01:01 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 15 May 2019 05:01:01 +0000 (GMT)
Date: Wed, 15 May 2019 08:00:59 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
 <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
 <155786794318.14659.2925897827978978040@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155786794318.14659.2925897827978978040@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19051505-0028-0000-0000-0000036DCC02
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19051505-0029-0000-0000-0000242D606A
Message-Id: <20190515050059.GA4081@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-15_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905150031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_220116_634891_BFD39BAC 
X-CRM114-Status: GOOD (  32.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 02:05:43PM -0700, Stephen Boyd wrote:
> Quoting Hsin-Yi Wang (2019-05-13 04:14:32)
> > On Mon, May 13, 2019 at 4:59 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > 
> > >
> > > This makes the fdt mapped without the call to meblock_reserve(fdt) which
> > > makes the fdt memory available for memblock allocations.
> > >
> > > Chances that is will be actually allocated are small, but you know, things
> > > happen.
> > >
> > > IMHO, instead of calling directly __fixmap_remap_fdt() it would be better
> > > to add pgprot parameter to fixmap_remap_fdt(). Then here and in kaslr.c it
> > > can be called with PAGE_KERNEL and below with PAGE_KERNEL_RO.
> > >
> > > There is no problem to call memblock_reserve() for the same area twice,
> > > it's essentially a NOP.
> > >
> > Thanks for the suggestion. Will update fixmap_remap_fdt() in next patch.
> > 
> > However, I tested on some arm64 platform, if we also call
> > memblock_reserve() in kaslr.c, would cause warning[1] when
> > memblock_reserve() is called again in setup_machine_fdt(). The warning
> > comes from https://elixir.bootlin.com/linux/latest/source/mm/memblock.c#L601
> > ```
> > if (type->regions[0].size == 0) {
> >   WARN_ON(type->cnt != 1 || type->total_size);
> >   ...
> > ```
> > 
> > Call memblock_reserve() multiple times after setup_machine_fdt()
> > doesn't have such warning though.
> > 
> > I didn't trace the real reason causing this. But in this case, maybe
> > don't call memblock_reserve() in kaslr?
> > 
> 
> Why not just have fixmap_remap_fdt() that maps it as RW and reserves
> memblock once, and then call __fixmap_remap_fdt() with RO after
> early_init_dt_scan() or unflatten_device_tree() is called? Why the
> desire to call memblock_reserve() twice or even three times?

There's no desire to call memblock_reserve() twice. It's just that leaving
the call for it in kaslr rather than in setup_arch() may end up with
unreserved FDT because kaslr was disabled or even compiled out.

I've suggested to use fixmap_remap_fdt() everywhere because IMHO this
improves readability and allows to un-export __fixmap_remap_fdt().

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
