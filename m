Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FFA1CC0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 17:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMg1CEf6fBXnBIL4JFZcyt4a9EsYMV2OuKEVUGs2hIs=; b=iavgeOy70AUP/F
	q0cbu39aP+rtQBHdhrmKUH35gwnbt0gV6BNt0MnrEuakrg1HTYVuDgaYI7Rv761/YMkJf3S3O4k4w
	6FL/i2GLtwfKSxv/idT60nOObfQZN+HjZn8CJztZTeYmmE5GHdMptbF0ZR+da8vUov6fVKf2B7OwU
	I2r5Q8aI0MhoMYeGyU51rouUwrxOBNqZNBJ4Y9rNh0XYvLuB/85tbbQonb2TxxC/kthIPWjJl1ciu
	3EF+5Gt3lz3p+LVxz/fnFtZR3RLBxGNJddYhIjNVCPmuIVZ+sPfPSud4gHyGMuwGfd27M6LfbTsYA
	6q8/VDDlLQLGtjGb4zlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZZl-0008Ng-B2; Tue, 14 May 2019 15:42:45 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZZe-0008N4-I1
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 15:42:40 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4EFf4IB110733
 for <linux-arm-kernel@lists.infradead.org>; Tue, 14 May 2019 11:42:37 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sg03xsbn5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 14 May 2019 11:42:36 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 14 May 2019 16:42:34 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 14 May 2019 16:42:28 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4EFgRUt61341910
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 15:42:27 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 130254C040;
 Tue, 14 May 2019 15:42:27 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B24674C052;
 Tue, 14 May 2019 15:42:25 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 14 May 2019 15:42:25 +0000 (GMT)
Date: Tue, 14 May 2019 18:42:24 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
 <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19051415-0020-0000-0000-0000033C9A11
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19051415-0021-0000-0000-0000218F56C0
Message-Id: <20190514154223.GA11115@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-14_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905140110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_084238_596203_45E6E825 
X-CRM114-Status: GOOD (  30.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Will Deacon <will.deacon@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 07:14:32PM +0800, Hsin-Yi Wang wrote:
> On Mon, May 13, 2019 at 4:59 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> 
> >
> > This makes the fdt mapped without the call to meblock_reserve(fdt) which
> > makes the fdt memory available for memblock allocations.
> >
> > Chances that is will be actually allocated are small, but you know, things
> > happen.
> >
> > IMHO, instead of calling directly __fixmap_remap_fdt() it would be better
> > to add pgprot parameter to fixmap_remap_fdt(). Then here and in kaslr.c it
> > can be called with PAGE_KERNEL and below with PAGE_KERNEL_RO.
> >
> > There is no problem to call memblock_reserve() for the same area twice,
> > it's essentially a NOP.
> >
> Thanks for the suggestion. Will update fixmap_remap_fdt() in next patch.
> 
> However, I tested on some arm64 platform, if we also call
> memblock_reserve() in kaslr.c, would cause warning[1] when
> memblock_reserve() is called again in setup_machine_fdt(). The warning
> comes from https://elixir.bootlin.com/linux/latest/source/mm/memblock.c#L601
> ```
> if (type->regions[0].size == 0) {
>   WARN_ON(type->cnt != 1 || type->total_size);
>   ...
> ```
> 
> Call memblock_reserve() multiple times after setup_machine_fdt()
> doesn't have such warning though.

I'm not sure if early console is available at the time kaslr_early_init()
is called, but if yes, running with memblock=debug may shed some light.
 
> I didn't trace the real reason causing this. But in this case, maybe
> don't call memblock_reserve() in kaslr?

My concern that this uncovered a real bug which might hit us later.

> [1]
> [    0.000000] WARNING: CPU: 0 PID: 0 at
> /mnt/host/source/src/third_party/kernel/v4.19/mm/memblock.c:583
> memblock_add_range+0x1bc/0x1c8
> [    0.000000] Modules linked in:
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.38 #125
> [    0.000000] pstate: 600001c5 (nZCv dAIF -PAN -UAO)
> [    0.000000] pc : memblock_add_range+0x1bc/0x1c8
> [    0.000000] lr : memblock_add_range+0x30/0x1c8
> [    0.000000] sp : ffffff9b5e203e80
> [    0.000000] x29: ffffff9b5e203ed0 x28: 0000000040959324
> [    0.000000] x27: 0000000040080000 x26: 0000000000080000
> [    0.000000] x25: 0000000080127e4b x24: 0000000000000000
> [    0.000000] x23: 0000001b55000000 x22: 000000000001152b
> [    0.000000] x21: 000000005f800000 x20: 0000000000000000
> [    0.000000] x19: ffffff9b5e24bf00 x18: 00000000ffffffb8
> [    0.000000] x17: 000000000000003c x16: ffffffbefea00000
> [    0.000000] x15: ffffffbefea00000 x14: ffffff9b5e3c17d8
> [    0.000000] x13: 00e8000000000713 x12: 0000000000000000
> [    0.000000] x11: ffffffbefea00000 x10: 00e800005f800710
> [    0.000000] x9 : 000000000001152b x8 : ffffff9b5e365690
> [    0.000000] x7 : 6f20646573616228 x6 : 0000000000000002
> [    0.000000] x5 : 0000000000000000 x4 : 0000000000000000
> [    0.000000] x3 : 0000000000200000 x2 : 000000000001152b
> [    0.000000] x1 : 000000005f800000 x0 : ffffff9b5e24bf00
> [    0.000000] Call trace:
> [    0.000000]  memblock_add_range+0x1bc/0x1c8
> [    0.000000]  memblock_reserve+0x60/0xac
> [    0.000000]  fixmap_remap_fdt+0x4c/0x78
> [    0.000000]  setup_machine_fdt+0x64/0xfc
> [    0.000000]  setup_arch+0x68/0x1e0
> [    0.000000]  start_kernel+0x68/0x380
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
