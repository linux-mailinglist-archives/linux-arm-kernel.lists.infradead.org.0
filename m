Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9201D9A3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruoFgsNdwxXY7mqABsJl6TvLvNldoxhPEbYNbUSy1JA=; b=EvJ1M0iMAGB8vu
	34x988HekvClm6R1c+qLuPKRla6hwlehjjqv+KGfIubQzIOJ7+XKV+LFSB40UggO3vo0FteDGH15U
	FHWMqhcj+K6/8OYI0bMemnLBmrj7XvCwAWbZOdv54bf1TmJdtFKPWcSZ7jHmo8iBwNT3qnjqQAtyq
	4sRbhR+9VbSBX/3rD9yqk1REZr2aMVmr66JSCiT46woSWmlSD+nK3wpW9nd6rWOXQXSEN9zNYFMxz
	r4jraiaAhSvvN5JnHg+Lj3OfGzAxBFtlrBPxE4N4+gyifJQz9mVfWJaFt/5dSWk6JvnxnFXdoeMai
	1P/OCYN1X7P6/xmxETEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Sv-0003OQ-IP; Tue, 19 May 2020 14:43:33 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3Sk-0003Nl-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:43:25 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04JEXLhZ118163; Tue, 19 May 2020 10:43:14 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 313x631nm9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 10:43:14 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04JEXnrJ121424;
 Tue, 19 May 2020 10:43:13 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 313x631nk9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 10:43:13 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04JEUUER023016;
 Tue, 19 May 2020 14:43:11 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma04ams.nl.ibm.com with ESMTP id 313xehhtn0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 14:43:11 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04JEh9aW60883168
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 May 2020 14:43:09 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3A3DF11C04C;
 Tue, 19 May 2020 14:43:09 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3EA2211C04A;
 Tue, 19 May 2020 14:43:08 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.182])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 19 May 2020 14:43:08 +0000 (GMT)
Date: Tue, 19 May 2020 17:43:06 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200519144306.GE1059226@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-19_04:2020-05-19,
 2020-05-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 spamscore=0 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 suspectscore=2 cotscore=-2147483648 malwarescore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005190128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_074323_011657_A87CE82E 
X-CRM114-Status: GOOD (  31.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
Cc: Doug Berger <opendmb@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Cernekee <cernekee@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 09:59:48AM +0200, Arnd Bergmann wrote:
> On Mon, May 18, 2020 at 9:45 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > On Mon, May 18, 2020 at 08:58:36AM -0700, Florian Fainelli wrote:
> > > On 5/7/2020 1:11 PM, Florian Fainelli wrote:
> > > > On 5/7/2020 12:27 AM, Mike Rapoport wrote:
> > > >> On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
> > > >>> From: Gregory Fong <gregory.0xf0@gmail.com>
> > > >>>
> > > >>> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
> > > >>> system memory can be located deep in the 36-bit address space.  Allow
> > > >>> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
> > > >>> the default.
> > > >>>
> > > >>> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
> > > >>> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
> > > >>> commit message text above.  As Arnd pointed out at [2] there doesn't
> > > >>> seem to be any reason to tie this specifically to ARMv7, so this has
> > > >>> been changed to apply to all multiplatform kernels.
> > > >>>
> > > >>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
> > > >>> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
> > > >>>
> > > >>> Cc: Kevin Cernekee <cernekee@gmail.com>
> > > >>> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
> > > >>> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
> > > >>> Signed-off-by: Doug Berger <opendmb@gmail.com>
> > > >>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > > >>> ---
> > > >>>  arch/arm/Kconfig | 5 +++++
> > > >>>  1 file changed, 5 insertions(+)
> > > >>>
> > > >>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > >>> index 5986277296c3..7bb5264a9c3a 100644
> > > >>> --- a/arch/arm/Kconfig
> > > >>> +++ b/arch/arm/Kconfig
> > > >>> @@ -312,6 +312,8 @@ choice
> > > >>>  config ARCH_MULTIPLATFORM
> > > >>>   bool "Allow multiple platforms to be selected"
> > > >>>   depends on MMU
> > > >>> + select ARCH_FLATMEM_ENABLE
> > > >>> + select ARCH_SPARSEMEM_ENABLE
> > > >>
> > > >> The logic in mm/Kconfig is quite convoluted, so selecting
> > > >> ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.
> > > >>
> > > >> On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
> > > >> something like:
> > > >
> > > > Yes indeed, thanks that does allow me to select between flatmem and
> > > > sparsemem from menuconfig correctly now.
> > >
> > > Mike, do you want to make a formal submission to Russell's patch
> > > tracker? If so, feel free to add:
> >
> > I actually hoped to hear from people what do they think about switching
> > over to SPARSEMEM for the multiplatform builds. I think at least v7 CPUs
> > it would make sense.
> 
> It seems that at least s5p/exynos and clps711x (armv4) used to default to
> sparsemem, and that got lost in the multiplatform conversion.
> 
> I also see discontiguous memory ranges in multiple broadcom chips,
> on TI dm8168, ecx-2000 and imx.
> 
> > Russel, Arnd, can you comment please?
> 
> I see no problem with giving users the choice for all multiplatform
> builds. No idea on what the default should be really, i.e. whether
> only v7 configurations should make it the default, or rather none of
> them or all of them.

Me neither :)

I'd say let's move forward with letting user select the memory model for
all multiplaform builds and keep flatmem the default.

Enabling sparsemem (with SPARSEMEM_STATIC) for defconfig build increases
the kernel nearly by 8k and most probably will make things slower.


> Maybe lets leave the default unchanged with flatmem but enable it in
> multi_v7_defconfig and the configurations for chips that are known
> to have discontiguous memory (clps, bcm, imx, exynos, ...).
>
>       Arnd

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
