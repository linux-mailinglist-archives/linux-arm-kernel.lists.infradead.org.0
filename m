Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3341D08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2a8xmEsNup3IdBPGe5qzRipBg8WaD2aGXWzgcm7LUU0=; b=cA3GVuanWyYFh+
	HxagbJT6kSEqSaPQGfkfRM9+BkzBzM0RaNusDsdDLA2K+yXxw3mvCLjnR751ghdJJ/oZI0U4EF3qc
	M5RF5udmyv3C5OUajKYbY3bptxLYYXmgTEdLpO2ksBKycmLU3cqO1U/mIlRUDQWuJIE72Vf0/OMLh
	6FJPjsyWK0pk4Elx5nCExf/bWPQ0dQ1ilvLQ/FwL9Dy1eJ4/whiGN653cdcU+OftItS7ZO323KKYd
	8kzQDZYfQVVRcmgE4ifZFm2PzSU/WPqYcsV/D5MhzdlcJIUqISPNMzWEhRJ+krHe7qJckuaXoGCV7
	C2P3Yq3yobXXGVQe/Isw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxCr-0002ki-9t; Wed, 12 Jun 2019 06:58:01 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxCe-0002kE-H5
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 06:57:50 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5C6vFnG003424
 for <linux-arm-kernel@lists.infradead.org>; Wed, 12 Jun 2019 02:57:47 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t2t1ansce-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 12 Jun 2019 02:57:47 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 12 Jun 2019 07:57:44 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 12 Jun 2019 07:57:40 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5C6vd3m45482136
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 06:57:39 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B9985A4062;
 Wed, 12 Jun 2019 06:57:39 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7C96AA405C;
 Wed, 12 Jun 2019 06:57:38 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.204.79])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 12 Jun 2019 06:57:38 +0000 (GMT)
Date: Wed, 12 Jun 2019 09:57:36 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190611124118.GA4761@rapoport-lnx>
 <3F6E1B9F-3789-4648-B95C-C4243B57DA02@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3F6E1B9F-3789-4648-B95C-C4243B57DA02@lca.pw>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19061206-0012-0000-0000-0000032863F9
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061206-0013-0000-0000-000021616A3E
Message-Id: <20190612065728.GB4761@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-12_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=963 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906120048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_235748_679457_CE3D1513 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mhocko@kernel.org,
 linux-mm@kvack.org, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Jun 11, 2019 at 08:46:45AM -0400, Qian Cai wrote:
> 
> > On Jun 11, 2019, at 8:41 AM, Mike Rapoport <rppt@linux.ibm.com> wrote:
> > 
> > Sorry for the delay, I'm mostly offline these days.
> > 
> > I wanted to understand first what is the reason for the failure. I've tried
> > to reproduce it with qemu, but I failed to find a bootable configuration
> > that will have PGD_SIZE != PAGE_SIZE :(
> > 
> > Qian Cai, can you share what is your environment and the kernel config?
> 
> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> 
> # lscpu
> Architecture:        aarch64
> Byte Order:          Little Endian
> CPU(s):              256
> On-line CPU(s) list: 0-255
> Thread(s) per core:  4
> Core(s) per socket:  32
> Socket(s):           2
> NUMA node(s):        2
> Vendor ID:           Cavium
> Model:               1
> Model name:          ThunderX2 99xx
> Stepping:            0x1
> BogoMIPS:            400.00
> L1d cache:           32K
> L1i cache:           32K
> L2 cache:            256K
> L3 cache:            32768K
> NUMA node0 CPU(s):   0-127
> NUMA node1 CPU(s):   128-255
> Flags:               fp asimd evtstrm aes pmull sha1 sha2 crc32 atomics cpuid asimdrdm
> 
> # dmidecode
> Handle 0x0001, DMI type 1, 27 bytes
> System Information
>         Manufacturer: HPE
>         Product Name: Apollo 70             
>         Version: X1
>         Wake-up Type: Power Switch
>         Family: CN99XX
> 

Can you please also send the entire log when the failure happens?

Another question, is the problem exist with PGD_SIZE == PAGE_SIZE?
 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
