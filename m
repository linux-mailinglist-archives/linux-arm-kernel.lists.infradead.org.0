Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CDEBD870
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/iKT726go/fZ4B7UF0H/qKPCpu24C9SPgdT3juCxck=; b=gd0YDG4NBoS3vf
	fxrPXjMGJmqGf+frfztxivXl6IjQ1zxAVgKCSzZVUSHTC9ExTdQvm0vZtA9Epo0Gs2rylSX3HSIg0
	Dm9q9M7yCpqdzLqEMkzEjhzERMWeeSGLYeYQ4RDfK0mbwBXvktxQzrahK5gwzE1IsLQfPAq/iA2Ai
	79E8Sdu/1nwLu7bzd0OH5eVrQO+2rXl/B+yG/+D8Lx3HlZbBOy4aixoa/Go+nm4qNq2NP+CueIXaU
	twOj+zEGWEVr7HzBIgKL2/86eGsnwW+GIXCRTRqvDyMz+Rp3pBfVBNGTAEJ49tM9FrcvFTq/6NK2/
	Zn0snBPLlaYBfhUAyEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD10X-00029h-VR; Wed, 25 Sep 2019 06:42:38 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD10K-00029N-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:42:26 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8P6bO4A069891
 for <linux-arm-kernel@lists.infradead.org>; Wed, 25 Sep 2019 02:42:22 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2v809f5mj0-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 25 Sep 2019 02:42:22 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 25 Sep 2019 07:42:20 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 25 Sep 2019 07:42:18 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8P6gH2n22478876
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 25 Sep 2019 06:42:17 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 65C5AA405B;
 Wed, 25 Sep 2019 06:42:17 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C8B88A4055;
 Wed, 25 Sep 2019 06:42:16 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.8.153])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 25 Sep 2019 06:42:16 +0000 (GMT)
Date: Wed, 25 Sep 2019 09:42:15 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
References: <1548057848-15136-1-git-send-email-rppt@linux.ibm.com>
 <CAHCN7x+Jv7yGPoB0Gm=TJ30ObLJduw2XomHkd++KqFEURYQcGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+Jv7yGPoB0Gm=TJ30ObLJduw2XomHkd++KqFEURYQcGg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19092506-0012-0000-0000-000003504C83
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19092506-0013-0000-0000-0000218ADF03
Message-Id: <20190925064214.GB1857@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-25_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909250066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_234224_628522_943353C5 
X-CRM114-Status: GOOD (  28.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 etnaviv@lists.freedesktop.org, linux-mm@kvack.org,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(updated CC)

Hi,

On Tue, Sep 24, 2019 at 12:52:35PM -0500, Adam Ford wrote:
> On Mon, Jan 21, 2019 at 2:05 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> > Hi,
> >
> > v2 changes:
> > * replace some more %lu with %zu
> > * remove panics where they are not needed in s390 and in printk
> > * collect Acked-by and Reviewed-by.
> >
> >
> > Christophe Leroy (1):
> >   powerpc: use memblock functions returning virtual address
> >
> > Mike Rapoport (20):
> >   openrisc: prefer memblock APIs returning virtual address
> >   memblock: replace memblock_alloc_base(ANYWHERE) with memblock_phys_alloc
> >   memblock: drop memblock_alloc_base_nid()
> >   memblock: emphasize that memblock_alloc_range() returns a physical address
> >   memblock: memblock_phys_alloc_try_nid(): don't panic
> >   memblock: memblock_phys_alloc(): don't panic
> >   memblock: drop __memblock_alloc_base()
> >   memblock: drop memblock_alloc_base()
> >   memblock: refactor internal allocation functions
> >   memblock: make memblock_find_in_range_node() and choose_memblock_flags() static
> >   arch: use memblock_alloc() instead of memblock_alloc_from(size, align, 0)
> >   arch: don't memset(0) memory returned by memblock_alloc()
> >   ia64: add checks for the return value of memblock_alloc*()
> >   sparc: add checks for the return value of memblock_alloc*()
> >   mm/percpu: add checks for the return value of memblock_alloc*()
> >   init/main: add checks for the return value of memblock_alloc*()
> >   swiotlb: add checks for the return value of memblock_alloc*()
> >   treewide: add checks for the return value of memblock_alloc*()
> >   memblock: memblock_alloc_try_nid: don't panic
> >   memblock: drop memblock_alloc_*_nopanic() variants
> >
> I know it's rather late, but this patch broke the Etnaviv 3D graphics
> in my i.MX6Q.
 
Can you identify the exact patch from the series that caused the
regression?

> When I try to use the 3D, it returns some errors and the dmesg log
> shows some memory allocation errors too:
> [    3.682347] etnaviv etnaviv: bound 130000.gpu (ops gpu_ops)
> [    3.688669] etnaviv etnaviv: bound 134000.gpu (ops gpu_ops)
> [    3.695099] etnaviv etnaviv: bound 2204000.gpu (ops gpu_ops)
> [    3.700800] etnaviv-gpu 130000.gpu: model: GC2000, revision: 5108
> [    3.723013] etnaviv-gpu 130000.gpu: command buffer outside valid
> memory window
> [    3.731308] etnaviv-gpu 134000.gpu: model: GC320, revision: 5007
> [    3.752437] etnaviv-gpu 134000.gpu: command buffer outside valid
> memory window
> [    3.760583] etnaviv-gpu 2204000.gpu: model: GC355, revision: 1215
> [    3.766766] etnaviv-gpu 2204000.gpu: Ignoring GPU with VG and FE2.0
> [    3.776131] [drm] Initialized etnaviv 1.2.0 20151214 for etnaviv on minor 0
> 
> # glmark2-es2-drm
> Error creating gpu
> Error: eglCreateWindowSurface failed with error: 0x3009
> Error: eglCreateWindowSurface failed with error: 0x3009
> Error: CanvasGeneric: Invalid EGL state
> Error: main: Could not initialize canvas
> 
> 
> Before this patch:
> 
> [    3.691995] etnaviv etnaviv: bound 130000.gpu (ops gpu_ops)
> [    3.698356] etnaviv etnaviv: bound 134000.gpu (ops gpu_ops)
> [    3.704792] etnaviv etnaviv: bound 2204000.gpu (ops gpu_ops)
> [    3.710488] etnaviv-gpu 130000.gpu: model: GC2000, revision: 5108
> [    3.733649] etnaviv-gpu 134000.gpu: model: GC320, revision: 5007
> [    3.756115] etnaviv-gpu 2204000.gpu: model: GC355, revision: 1215
> [    3.762250] etnaviv-gpu 2204000.gpu: Ignoring GPU with VG and FE2.0
> [    3.771432] [drm] Initialized etnaviv 1.2.0 20151214 for etnaviv on minor 0
> 
> and the 3D gemos work without this.
> 
> I don't know enough about the i.MX6 nor the 3D accelerator to know how
> to fix it.
> I am hoping someone in the know might have some suggestions.

Can you please add "memblock=debug" to your kernel command line and send
kernel logs for both working and failing versions? 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
