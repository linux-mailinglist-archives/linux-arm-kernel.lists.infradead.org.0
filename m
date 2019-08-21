Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E697A9730E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2drg4BWS9/77OGoQI+aXXZYllFqlBrYgmWhBHTxxL4=; b=ogP1+BdxT19T7y
	NBM8KvqeGm+tJ9WQhdepqdgbtk9z11e2V1R5SZ8bIF55xVkFh/1sYuReXqQWsof1BDPCfuLzOMkot
	6AhR4B+2JfHUNwxJr7UjWbgfIMv3hJY1EzMXw1gx6dHD+rlAp7wxoRY8vShfRsECE5XHL11Cjn39e
	OUj7M6pk7BgZ2G6vnDuhh2GpRbw7Y+ot1udo0lrTruYkg+MMEw5MZ0Ndq0780hwz3VZkT0V40j5cQ
	ujKYnVIqGxbQvOw1Z6yZ3Wr4AULWaeAC5bTb5dzuuwlIdNzJIlTkHAjU/ZJJPE25q8PznQn1CTjg0
	LjEbSxvM+C0XsFn5pzcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KmP-0005Ms-2m; Wed, 21 Aug 2019 07:11:37 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Km0-0005MU-1C
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:11:13 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L7811T084503
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 03:11:10 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ugyfjm7sd-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 03:11:10 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 21 Aug 2019 08:11:08 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 08:11:05 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7L7B46f58982482
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:11:04 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 049D6A4040;
 Wed, 21 Aug 2019 07:11:04 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0275FA404D;
 Wed, 21 Aug 2019 07:11:03 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 07:11:02 +0000 (GMT)
Date: Wed, 21 Aug 2019 10:11:01 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the
 kernel base
References: <20190802053744.5519-1-clin@suse.com>
 <20190820115645.GP13294@shell.armlinux.org.uk>
 <CAKv+Gu_0wFw5Mjpdw7BEY7ewgetNgU=Ff1uvAsn0iHmJouyKqw@mail.gmail.com>
 <20190821061027.GA2828@linux-8mug>
 <CAKv+Gu8Yny8cVPck3rPwCPvJBvcZKMHti_9bkCTM4H4cZ_43fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Yny8cVPck3rPwCPvJBvcZKMHti_9bkCTM4H4cZ_43fg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082107-0008-0000-0000-0000030B5CB5
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082107-0009-0000-0000-00004A29864A
Message-Id: <20190821071100.GA26713@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_001112_198824_8E72CCF4 
X-CRM114-Status: GOOD (  39.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Juergen Gross <JGross@suse.com>, Joey Lee <JLee@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Chester Lin <clin@suse.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:35:16AM +0300, Ard Biesheuvel wrote:
> On Wed, 21 Aug 2019 at 09:11, Chester Lin <clin@suse.com> wrote:
> >
> > On Tue, Aug 20, 2019 at 03:28:25PM +0300, Ard Biesheuvel wrote:
> > > On Tue, 20 Aug 2019 at 14:56, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Fri, Aug 02, 2019 at 05:38:54AM +0000, Chester Lin wrote:
> > > > > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > > > > index f3ce34113f89..909b11ba48d8 100644
> > > > > --- a/arch/arm/mm/mmu.c
> > > > > +++ b/arch/arm/mm/mmu.c
> > > > > @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
> > > > >               phys_addr_t block_start = reg->base;
> > > > >               phys_addr_t block_end = reg->base + reg->size;
> > > > >
> > > > > +             if (memblock_is_nomap(reg))
> > > > > +                     continue;
> > > > > +
> > > > >               if (reg->base < vmalloc_limit) {
> > > > >                       if (block_end > lowmem_limit)
> > > > >                               /*
> > > >
> > > > I think this hunk is sane - if the memory is marked nomap, then it isn't
> > > > available for the kernel's use, so as far as calculating where the
> > > > lowmem/highmem boundary is, it effectively doesn't exist and should be
> > > > skipped.
> > > >
> > >
> > > I agree.
> > >
> > > Chester, could you explain what you need beyond this change (and my
> > > EFI stub change involving TEXT_OFFSET) to make things work on the
> > > RPi2?
> > >
> >
> > Hi Ard,
> >
> > In fact I am working with Guillaume to try booting zImage kernel and openSUSE
> > from grub2.04 + arm32-efistub so that's why we get this issue on RPi2, which is
> > one of the test machines we have. However we want a better solution for all
> > cases but not just RPi2 since we don't want to affect other platforms as well.
> >
> 
> Thanks Chester, but that doesn't answer my question.
> 
> Your fix is a single patch that changes various things that are only
> vaguely related. We have already identified that we need to take
> TEXT_OFFSET (minus some space used by the swapper page tables) into
> account into the EFI stub if we want to ensure compatibility with many
> different platforms, and as it turns out, this applies not only to
> RPi2 but to other platforms as well, most notably the ones that
> require a TEXT_OFFSET of 0x208000, since they also have reserved
> regions at the base of RAM.
> 
> My question was what else we need beyond:
> - the EFI stub TEXT_OFFSET fix [0]
> - the change to disregard NOMAP memblocks in adjust_lowmem_bounds()
> - what else???

I think the only missing part here is to ensure that non-reserved memory in
bank 0 starts from a PMD-aligned address. I believe this could be done if
EFI stub, but I'm not really familiar with it so this just a semi-educated
guess :)
 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/commit/?h=next&id=0eb7bad595e52666b642a02862ad996a0f9bfcc0

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
