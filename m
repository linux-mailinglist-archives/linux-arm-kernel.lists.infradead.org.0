Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12C3B035
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhVUd3D9KBXcquj+3Wr0vGITpK5fDjuF2Rr2NWaBJyY=; b=nYD6U+Pj0ktRDh
	CQhSyc5VD1lG1GCjc+36QPWPDBHuxTJLlR26ogJKPXbkIV6E3uHJ0FcOu7kWuuw06UqMdASOtSNu5
	TBhJcfNF8sl8btb7rV3Rz4MwJsZ6ADXNa7IJ2Ec1MC1ndlG9/2Ce2g+S1JXFIa7hZztdoHiXfmhvV
	DpvW+wCkbKVY9al+0CVOu7I3O0p4NpZMsqb6t8tY9Pjn2jCDezJ8a09OksFM5e0VCk/P7+hVyleOy
	XRSV3SNG1B3QCTEQVxxN4zImJ2S7Kq0MZx8CJAaUuIJcPpYT5917KA4h6VGSJOKEFe64pEs+Xjmjr
	ppFfz88tWlLf/zQNn3lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFMJ-0001g5-AT; Mon, 10 Jun 2019 08:08:51 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFM7-0001fO-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:08:40 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5A86fco026644
 for <linux-arm-kernel@lists.infradead.org>; Mon, 10 Jun 2019 04:08:35 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t1k62gsb4-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 10 Jun 2019 04:08:34 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <sathnaga@linux.vnet.ibm.com>; 
 Mon, 10 Jun 2019 09:08:32 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 10 Jun 2019 09:08:30 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x5A88N4l28639566
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 08:08:23 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B3098A4054;
 Mon, 10 Jun 2019 08:08:29 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2F757A405F;
 Mon, 10 Jun 2019 08:08:28 +0000 (GMT)
Received: from sathnaga86 (unknown [9.85.68.20])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon, 10 Jun 2019 08:08:27 +0000 (GMT)
Date: Mon, 10 Jun 2019 13:38:25 +0530
From: Satheesh Rajendran <sathnaga@linux.vnet.ibm.com>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <1560145722.obq2bpepl8.astroid@bobo.none>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560145722.obq2bpepl8.astroid@bobo.none>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-TM-AS-GCONF: 00
x-cbid: 19061008-0012-0000-0000-00000326DB75
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061008-0013-0000-0000-0000215FCCDC
Message-Id: <20190610080825.GA11397@sathnaga86>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-10_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=698 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906100058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_010839_164951_6A9C5C7C 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Satheesh Rajendran <sathnaga@linux.vnet.ibm.com>
Cc: linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 03:49:48PM +1000, Nicholas Piggin wrote:
> Nicholas Piggin's on June 10, 2019 2:38 pm:
> > +static int vmap_hpages_range(unsigned long start, unsigned long end,
> > +			   pgprot_t prot, struct page **pages,
> > +			   unsigned int page_shift)
> > +{
> > +	BUG_ON(page_shift != PAGE_SIZE);
> > +	return vmap_pages_range(start, end, prot, pages);
> > +}
> 
> That's a false positive BUG_ON for !HUGE_VMAP configs. I'll fix that
> and repost after a round of feedback.

Sure, Crash log for that false positive BUG_ON on Power8 Host.

[    0.001718] pid_max: default: 163840 minimum: 1280
[    0.010437] ------------[ cut here ]------------
[    0.010461] kernel BUG at mm/vmalloc.c:473!
[    0.010471] Oops: Exception in kernel mode, sig: 5 [#1]
[    0.010481] LE PAGE_SIZE=64K MMU=Hash SMP NR_CPUS=2048 NUMA PowerNV
[    0.010491] Modules linked in:
[    0.010503] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-rc3-ga7ee9421d #1
[    0.010515] NIP:  c00000000034dbd8 LR: c00000000034dc80 CTR: 0000000000000000
[    0.010527] REGS: c0000000015bf9a0 TRAP: 0700   Not tainted  (5.2.0-rc3-ga7ee9421d)
[    0.010537] MSR:  9000000002029033 <SF,HV,VEC,EE,ME,IR,DR,RI,LE>  CR: 22022422  XER: 20000000
[    0.010559] CFAR: c00000000034dc88 IRQMASK: 0
[    0.010559] GPR00: c00000000034dc80 c0000000015bfc30 c0000000015c2f00 c00c000001fd0e00
[    0.010559] GPR04: 0000000000000000 0000000000002322 0000000000000000 0000000000000040
[    0.010559] GPR08: c000000ff9080000 0000000000000400 0000000000000400 0000000000000100
[    0.010559] GPR12: 0000000042022422 c0000000017a0000 00000001035ae7d8 0000000000000400
[    0.010559] GPR16: 0000000004000000 800000000000018e c000000000ee08c8 0000000000000000
[    0.010559] GPR20: 0000000000010000 0000000000002b22 0000000000000b20 0000000000000022
[    0.010559] GPR24: c0000007f92c7880 0000000000000b22 0000000000010000 c00a000000000000
[    0.010559] GPR28: c008000000000000 0000000004000000 ffffffffffffffff 0000000000000b20
[    0.010664] NIP [c00000000034dbd8] __vmalloc_node_range+0x1f8/0x410
[    0.010677] LR [c00000000034dc80] __vmalloc_node_range+0x2a0/0x410
[    0.010686] Call Trace:
[    0.010695] [c0000000015bfc30] [c00000000034dc80] __vmalloc_node_range+0x2a0/0x410 (unreliable)
[    0.010711] [c0000000015bfd30] [c00000000034de40] __vmalloc+0x50/0x60
[    0.010724] [c0000000015bfda0] [c00000000101e54c] alloc_large_system_hash+0x200/0x304
[    0.010738] [c0000000015bfe60] [c0000000010235bc] vfs_caches_init+0xd8/0x138
[    0.010752] [c0000000015bfee0] [c000000000fe428c] start_kernel+0x5c4/0x668
[    0.010767] [c0000000015bff90] [c00000000000b774] start_here_common+0x1c/0x528
[    0.010777] Instruction dump:
[    0.010785] 60000000 7c691b79 418200dc e9180020 79ea1f24 7d28512a 40920170 8138002c
[    0.010803] 394f0001 794f0020 7c095040 4181ffbc <0fe00000> 60000000 3f400001 4bfffedc
[    0.010826] ---[ end trace dd0217488686d653 ]---
[    0.010834]
[    1.010946] Kernel panic - not syncing: Attempted to kill the idle task!
[    1.011061] Rebooting in 10 seconds..

Regards,
-Satheesh.
> 
> Thanks,
> Nick
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
