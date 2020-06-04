Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411031EE912
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 19:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L/kFJwLiXXIolfp4jEUtR21uI8CyzW88pAYMTT6V1Go=; b=NulQ2ZR3Ul5iqmDHfkCaQoz+L
	WOlY8IXctFH6+PZ56fAfJGxKmdziLA69EqajqLM+p8HDvkM0wjo42LZNY2pXVmRoUsO/Vg21Vl9uN
	PpIAW79iLAFxdskmuyNvd5Arn/PNZn+Vh1vXu9Bh1odSCHHkiuMvok/eQ07qqXuN48IGwVKqTm0ki
	KrwOzbdTQUf7vDqlZbWx4X6QyrBLOczNlp0MCuwxBs4/7P6RLAxJkS0JGrSjig+4H472f4yGtblMB
	9XaZlBUaUJl5/OfihqpnMS25nXZqLh+luEH7eHFVkMnoNQ9N+71djUYohgnktPB3Sd/G3L9YbQcjA
	19ZNOWmuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtG4-0004OO-Nr; Thu, 04 Jun 2020 17:02:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtFb-0004Dd-Sk; Thu, 04 Jun 2020 17:01:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0399EAC12;
 Thu,  4 Jun 2020 17:01:56 +0000 (UTC)
Message-ID: <751bbe2512628ff38002db33ce02af051d080cd2.camel@suse.de>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bhupesh Sharma <bhsharma@redhat.com>, John Donnelly
 <john.p.donnelly@oracle.com>
Date: Thu, 04 Jun 2020 19:01:51 +0200
In-Reply-To: <CACi5LpN-+NRnaDoWWWidbzma8BNzmofA5FQBV=cPF1Mc84FpFg@mail.gmail.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
 <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
 <CAJ2QiJJhUCnobrMHui5=6zLzgy3KsoPxrqiH_oYT8Jhb5MkmbA@mail.gmail.com>
 <8463464e-5461-f328-621c-bacc6a3b88dd@huawei.com>
 <8E0D45DC-12BF-437D-A342-03E974D9C6D4@oracle.com>
 <CACi5LpN-+NRnaDoWWWidbzma8BNzmofA5FQBV=cPF1Mc84FpFg@mail.gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_100156_242197_57722715 
X-CRM114-Status: GOOD (  37.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 chenzhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 RuiRui Yang <dyoung@redhat.com>, Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4319794851782101690=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4319794851782101690==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Aei+6G5mX2uAhOaFvVW9"


--=-Aei+6G5mX2uAhOaFvVW9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-04 at 01:17 +0530, Bhupesh Sharma wrote:
> Hi All,
>=20
> On Wed, Jun 3, 2020 at 9:03 PM John Donnelly <john.p.donnelly@oracle.com>
> wrote:
> >=20
> >=20
> > > On Jun 3, 2020, at 8:20 AM, chenzhou <chenzhou10@huawei.com> wrote:
> > >=20
> > > Hi,
> > >=20
> > >=20
> > > On 2020/6/3 19:47, Prabhakar Kushwaha wrote:
> > > > Hi Chen,
> > > >=20
> > > > On Tue, Jun 2, 2020 at 8:12 PM John Donnelly <john.p.donnelly@oracl=
e.com
> > > > > wrote:
> > > > >=20
> > > > > > On Jun 2, 2020, at 12:38 AM, Prabhakar Kushwaha <
> > > > > > prabhakar.pkin@gmail.com> wrote:
> > > > > >=20
> > > > > > On Tue, Jun 2, 2020 at 3:29 AM John Donnelly <
> > > > > > john.p.donnelly@oracle.com> wrote:
> > > > > > > Hi .  See below !
> > > > > > >=20
> > > > > > > > On Jun 1, 2020, at 4:02 PM, Bhupesh Sharma <bhsharma@redhat=
.com>
> > > > > > > > wrote:
> > > > > > > >=20
> > > > > > > > Hi John,
> > > > > > > >=20
> > > > > > > > On Tue, Jun 2, 2020 at 1:01 AM John Donnelly <
> > > > > > > > John.P.donnelly@oracle.com> wrote:
> > > > > > > > > Hi,
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > On 6/1/20 7:02 AM, Prabhakar Kushwaha wrote:
> > > > > > > > > > Hi Chen,
> > > > > > > > > >=20
> > > > > > > > > > On Thu, May 21, 2020 at 3:05 PM Chen Zhou <
> > > > > > > > > > chenzhou10@huawei.com> wrote:
> > > > > > > > > > > This patch series enable reserving crashkernel above =
4G in
> > > > > > > > > > > arm64.
> > > > > > > > > > >=20
> > > > > > > > > > > There are following issues in arm64 kdump:
> > > > > > > > > > > 1. We use crashkernel=3DX to reserve crashkernel belo=
w 4G,
> > > > > > > > > > > which will fail
> > > > > > > > > > > when there is no enough low memory.
> > > > > > > > > > > 2. Currently, crashkernel=3DY@X can be used to reserv=
e
> > > > > > > > > > > crashkernel above 4G,
> > > > > > > > > > > in this case, if swiotlb or DMA buffers are required,
> > > > > > > > > > > crash dump kernel
> > > > > > > > > > > will boot failure because there is no low memory avai=
lable
> > > > > > > > > > > for allocation.
> > > > > > > > > > >=20
> > > > > > > > > > We are getting "warn_alloc" [1] warning during boot of =
kdump
> > > > > > > > > > kernel
> > > > > > > > > > with bootargs as [2] of primary kernel.
> > > > > > > > > > This error observed on ThunderX2  ARM64 platform.
> > > > > > > > > >=20
> > > > > > > > > > It is observed with latest upstream tag (v5.7-rc3) with=
 this
> > > > > > > > > > patch set
> > > > > > > > > > and=20
> > > > > > > > > >=20
https://urldefense.com/v3/__https://lists.infradead.org/pipermail/kexec/202=
0-May/025128.html__;!!GqivPVa7Brio!LnTSARkCt0V0FozR0KmqooaH5ADtdXvs3mPdP3KR=
VqALmvSK2VmCkIPIhsaxbiIAAlzu$
> > > > > > > > > > Also **without** this patch-set
> > > > > > > > > > "
> > > > > > > > > >=20
https://urldefense.com/v3/__https://www.spinics.net/lists/arm-kernel/msg806=
882.html__;!!GqivPVa7Brio!LnTSARkCt0V0FozR0KmqooaH5ADtdXvs3mPdP3KRVqALmvSK2=
VmCkIPIhsaxbjC6ujMA$
> > > > > > > > > > "
> > > > > > > > > >=20
> > > > > > > > > > This issue comes whenever crashkernel memory is reserve=
d
> > > > > > > > > > after 0xc000_0000.
> > > > > > > > > > More details discussed earlier in
> > > > > > > > > >=20
https://urldefense.com/v3/__https://www.spinics.net/lists/arm-kernel/msg806=
882.html__;!!GqivPVa7Brio!LnTSARkCt0V0FozR0KmqooaH5ADtdXvs3mPdP3KRVqALmvSK2=
VmCkIPIhsaxbjC6ujMA$
  without
> > > > > > > > > > any
> > > > > > > > > > solution
> > > > > > > > > >=20
> > > > > > > > > > This patch-set is expected to solve similar kind of iss=
ue.
> > > > > > > > > > i.e. low memory is only targeted for DMA, swiotlb; So a=
bove
> > > > > > > > > > mentioned
> > > > > > > > > > observation should be considered/fixed. .
> > > > > > > > > >=20
> > > > > > > > > > --pk
> > > > > > > > > >=20
> > > > > > > > > > [1]
> > > > > > > > > > [   30.366695] DMI: Cavium Inc. Saber/Saber, BIOS
> > > > > > > > > > TX2-FW-Release-3.1-build_01-2803-g74253a541a mm/dd/yyyy
> > > > > > > > > > [   30.367696] NET: Registered protocol family 16
> > > > > > > > > > [   30.369973] swapper/0: page allocation failure: orde=
r:6,
> > > > > > > > > > mode:0x1(GFP_DMA), nodemask=3D(null),cpuset=3D/,mems_al=
lowed=3D0
> > > > > > > > > > [   30.369980] CPU: 0 PID: 1 Comm: swapper/0 Not tainte=
d
> > > > > > > > > > 5.7.0-rc3+ #121
> > > > > > > > > > [   30.369981] Hardware name: Cavium Inc. Saber/Saber, =
BIOS
> > > > > > > > > > TX2-FW-Release-3.1-build_01-2803-g74253a541a mm/dd/yyyy
> > > > > > > > > > [   30.369984] Call trace:
> > > > > > > > > > [   30.369989]  dump_backtrace+0x0/0x1f8
> > > > > > > > > > [   30.369991]  show_stack+0x20/0x30
> > > > > > > > > > [   30.369997]  dump_stack+0xc0/0x10c
> > > > > > > > > > [   30.370001]  warn_alloc+0x10c/0x178
> > > > > > > > > > [   30.370004]  __alloc_pages_slowpath.constprop.111+0x=
b10/0
> > > > > > > > > > xb50
> > > > > > > > > > [   30.370006]  __alloc_pages_nodemask+0x2b4/0x300
> > > > > > > > > > [   30.370008]  alloc_page_interleave+0x24/0x98
> > > > > > > > > > [   30.370011]  alloc_pages_current+0xe4/0x108
> > > > > > > > > > [   30.370017]  dma_atomic_pool_init+0x44/0x1a4
> > > > > > > > > > [   30.370020]  do_one_initcall+0x54/0x228
> > > > > > > > > > [   30.370027]  kernel_init_freeable+0x228/0x2cc
> > > > > > > > > > [   30.370031]  kernel_init+0x1c/0x110
> > > > > > > > > > [   30.370034]  ret_from_fork+0x10/0x18
> > > > > > > > > > [   30.370036] Mem-Info:
> > > > > > > > > > [   30.370064] active_anon:0 inactive_anon:0 isolated_a=
non:0
> > > > > > > > > > [   30.370064]  active_file:0 inactive_file:0
> > > > > > > > > > isolated_file:0
> > > > > > > > > > [   30.370064]  unevictable:0 dirty:0 writeback:0 unsta=
ble:0
> > > > > > > > > > [   30.370064]  slab_reclaimable:34 slab_unreclaimable:=
4438
> > > > > > > > > > [   30.370064]  mapped:0 shmem:0 pagetables:14 bounce:0
> > > > > > > > > > [   30.370064]  free:1537719 free_pcp:219 free_cma:0
> > > > > > > > > > [   30.370070] Node 0 active_anon:0kB inactive_anon:0kB
> > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > isolated(anon):0kB
> > > > > > > > > > isolated(file):0kB mapped:0kB dirty:0kB writeback:0kB
> > > > > > > > > > shmem:0kB
> > > > > > > > > > shmem_thp: 0kB shmem_pmdmapped: 0kB anon_thp: 0kB
> > > > > > > > > > writeback_tmp:0kB
> > > > > > > > > > unstable:0kB all_unreclaimable? no
> > > > > > > > > > [   30.370073] Node 1 active_anon:0kB inactive_anon:0kB
> > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > isolated(anon):0kB
> > > > > > > > > > isolated(file):0kB mapped:0kB dirty:0kB writeback:0kB
> > > > > > > > > > shmem:0kB
> > > > > > > > > > shmem_thp: 0kB shmem_pmdmapped: 0kB anon_thp: 0kB
> > > > > > > > > > writeback_tmp:0kB
> > > > > > > > > > unstable:0kB all_unreclaimable? no
> > > > > > > > > > [   30.370079] Node 0 DMA free:0kB min:0kB low:0kB high=
:0kB
> > > > > > > > > > reserved_highatomic:0KB active_anon:0kB inactive_anon:0=
kB
> > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > writepending:0kB
> > > > > > > > > > present:128kB managed:0kB mlocked:0kB kernel_stack:0kB
> > > > > > > > > > pagetables:0kB
> > > > > > > > > > bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
> > > > > > > > > > [   30.370084] lowmem_reserve[]: 0 250 6063 6063
> > > > > > > > > > [   30.370090] Node 0 DMA32 free:256000kB min:408kB
> > > > > > > > > > low:664kB
> > > > > > > > > > high:920kB reserved_highatomic:0KB active_anon:0kB
> > > > > > > > > > inactive_anon:0kB
> > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > writepending:0kB
> > > > > > > > > > present:269700kB managed:256000kB mlocked:0kB
> > > > > > > > > > kernel_stack:0kB
> > > > > > > > > > pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB
> > > > > > > > > > free_cma:0kB
> > > > > > > > > > [   30.370094] lowmem_reserve[]: 0 0 5813 5813
> > > > > > > > > > [   30.370100] Node 0 Normal free:5894876kB min:9552kB
> > > > > > > > > > low:15504kB
> > > > > > > > > > high:21456kB reserved_highatomic:0KB active_anon:0kB
> > > > > > > > > > inactive_anon:0kB
> > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > writepending:0kB
> > > > > > > > > > present:8388608kB managed:5953112kB mlocked:0kB
> > > > > > > > > > kernel_stack:21672kB
> > > > > > > > > > pagetables:56kB bounce:0kB free_pcp:876kB local_pcp:176=
kB
> > > > > > > > > > free_cma:0kB
> > > > > > > > > > [   30.370104] lowmem_reserve[]: 0 0 0 0
> > > > > > > > > > [   30.370107] Node 0 DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*=
64kB
> > > > > > > > > > 0*128kB
> > > > > > > > > > 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 0kB
> > > > > > > > > > [   30.370113] Node 0 DMA32: 0*4kB 0*8kB 0*16kB 0*32kB
> > > > > > > > > > 0*64kB 0*128kB
> > > > > > > > > > 0*256kB 0*512kB 0*1024kB 1*2048kB (M) 62*4096kB (M) =3D
> > > > > > > > > > 256000kB
> > > > > > > > > > [   30.370119] Node 0 Normal: 2*4kB (M) 3*8kB (ME) 2*16=
kB
> > > > > > > > > > (UE) 3*32kB
> > > > > > > > > > (UM) 1*64kB (U) 2*128kB (M) 2*256kB (ME) 3*512kB (ME)
> > > > > > > > > > 3*1024kB (ME)
> > > > > > > > > > 3*2048kB (UME) 1436*4096kB (M) =3D 5893600kB
> > > > > > > > > > [   30.370129] Node 0 hugepages_total=3D0 hugepages_fre=
e=3D0
> > > > > > > > > > hugepages_surp=3D0 hugepages_size=3D1048576kB
> > > > > > > > > > [   30.370130] 0 total pagecache pages
> > > > > > > > > > [   30.370132] 0 pages in swap cache
> > > > > > > > > > [   30.370134] Swap cache stats: add 0, delete 0, find =
0/0
> > > > > > > > > > [   30.370135] Free swap  =3D 0kB
> > > > > > > > > > [   30.370136] Total swap =3D 0kB
> > > > > > > > > > [   30.370137] 2164609 pages RAM
> > > > > > > > > > [   30.370139] 0 pages HighMem/MovableOnly
> > > > > > > > > > [   30.370140] 612331 pages reserved
> > > > > > > > > > [   30.370141] 0 pages hwpoisoned
> > > > > > > > > > [   30.370143] DMA: failed to allocate 256 KiB pool for
> > > > > > > > > > atomic
> > > > > > > > > > coherent allocation
> > > > > > > > >=20
> > > > > > > > > During my testing I saw the same error and Chen's  soluti=
on
> > > > > > > > > corrected it .
> > > > > > > > Which combination you are using on your side? I am using
> > > > > > > > Prabhakar's
> > > > > > > > suggested environment and can reproduce the issue
> > > > > > > > with or without Chen's crashkernel support above 4G patchse=
t.
> > > > > > > >=20
> > > > > > > > I am also using a ThunderX2 platform with latest makedumpfi=
le
> > > > > > > > code and
> > > > > > > > kexec-tools (with the suggested patch
> > > > > > > > <
> > > > > > > >=20
https://urldefense.com/v3/__https://lists.infradead.org/pipermail/kexec/202=
0-May/025128.html__;!!GqivPVa7Brio!J6lUig58-Gw6TKZnEEYzEeSU36T-1SqlB1kImU00=
xtX_lss5Tx-JbUmLE9TJC3foXBLg$
> > > > > > > > >).
> > > > > > > >=20
> > > > > > > > Thanks,
> > > > > > > > Bhupesh
> > > > > > >=20
> > > > > > > I did this activity 5 months ago and I have moved on to other
> > > > > > > activities. My DMA failures were related to PCI devices that =
could
> > > > > > > not be enumerated because  low-DMA space was not  available w=
hen
> > > > > > > crashkernel was moved above 4G; I don=E2=80=99t recall the ex=
act platform.
> > > > > > >=20
> > > > > > >=20
> > > > > > >=20
> > > > > > > For this failure ,
> > > > > > >=20
> > > > > > > > > > DMA: failed to allocate 256 KiB pool for atomic
> > > > > > > > > > coherent allocation
> > > > > > >=20
> > > > > > > Is due to :
> > > > > > >=20
> > > > > > >=20
> > > > > > > 3618082c
> > > > > > > ("arm64 use both ZONE_DMA and ZONE_DMA32")
> > > > > > >=20
> > > > > > > With the introduction of ZONE_DMA to support the Raspberry DM=
A
> > > > > > > region below 1G, the crashkernel is placed in the upper 4G
> > > > > > > ZONE_DMA_32 region. Since the crashkernel does not have acces=
s
> > > > > > > to the ZONE_DMA region, it prints out call trace during bootu=
p.
> > > > > > >=20
> > > > > > > It is due to having this CONFIG item  ON  :
> > > > > > >=20
> > > > > > >=20
> > > > > > > CONFIG_ZONE_DMA=3Dy
> > > > > > >=20
> > > > > > > Turning off ZONE_DMA fixes a issue and Raspberry PI 4 will
> > > > > > > use the device tree to specify memory below 1G.
> > > > > > >=20
> > > > > > >=20
> > > > > > Disabling ZONE_DMA is temporary solution.  We may need proper
> > > > > > solution
> > > > >=20
> > > > > Perhaps the Raspberry platform configuration dependencies need
> > > > > separated  from =E2=80=9Cserver class=E2=80=9D Arm  equipment ?  =
Or auto-configured on
> > > > > boot ?  Consult an expert ;-)
> > > > >=20
> > > > >=20
> > > > >=20
> > > > > > > I would like to see Chen=E2=80=99s feature added , perhaps as
> > > > > > > EXPERIMENTAL,  so we can get some configuration testing done =
on
> > > > > > > it.   It corrects having a DMA zone in low memory while crash=
-
> > > > > > > kernel is above 4GB.  This has been going on for a year now.
> > > > > > I will also like this patch to be added in Linux as early as
> > > > > > possible.
> > > > > >=20
> > > > > > Issue mentioned by me happens with or without this patch.
> > > > > >=20
> > > > > > This patch-set can consider fixing because it uses low memory f=
or
> > > > > > DMA
> > > > > > & swiotlb only.
> > > > > > We can consider restricting crashkernel within the required ran=
ge
> > > > > > like below
> > > > > >=20
> > > > > > diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> > > > > > index 7f9e5a6dc48c..bd67b90d35bd 100644
> > > > > > --- a/kernel/crash_core.c
> > > > > > +++ b/kernel/crash_core.c
> > > > > > @@ -354,7 +354,7 @@ int __init reserve_crashkernel_low(void)
> > > > > >                       return 0;
> > > > > >       }
> > > > > >=20
> > > > > > -       low_base =3D memblock_find_in_range(0, 1ULL << 32, low_=
size,
> > > > > > CRASH_ALIGN);
> > > > > > +       low_base =3D memblock_find_in_range(0,0xc0000000, low_s=
ize,
> > > > > > CRASH_ALIGN);
> > > > > >       if (!low_base) {
> > > > > >               pr_err("Cannot reserve %ldMB crashkernel low memo=
ry,
> > > > > > please try smaller size.\n",
> > > > > >                      (unsigned long)(low_size >> 20));
> > > > > >=20
> > > > > >=20
> > > > >    I suspect  0xc0000000  would need to be a CONFIG item  and not
> > > > > hard-coded.
> > > > >=20
> > > > if you consider this as valid change,  can you please incorporate a=
s
> > > > part of your patch-set.
> > >=20
> > > After commit 1a8e1cef7 ("arm64: use both ZONE_DMA and ZONE_DMA32")=EF=
=BC=8Cthe 0-
> > > 4G memory is splited
> > > to DMA [mem 0x0000000000000000-0x000000003fffffff] and DMA32 [mem
> > > 0x0000000040000000-0x00000000ffffffff] on arm64.
> > >=20
> > > From the above discussion, on your platform, the low crashkernel fall=
 in
> > > DMA32 region, but your environment needs to access DMA
> > > region, so there is the call trace.
> > >=20
> > > I have a question, why do you choose 0xc0000000 here?
> > >=20
> > > Besides, this is common code, we also need to consider about x86.
> > >=20
> >=20
> >  + nsaenzjulienne@suse.de

Thanks for adding me to the conversation, and sorry for the headaches.

> >=20
> >   Exactly .  This is why it needs to be a CONFIG option for  Raspberry
> > ..,  or device tree option.
> >=20
> >=20
> >   We could revert 1a8e1cef7 since it broke  Arm kdump too.
>=20
> Well, unfortunately the patch for commit 1a8e1cef7603 ("arm64: use
> both ZONE_DMA and ZONE_DMA32") was not Cc'ed to the kexec mailing
> list, thus we couldn't get many eyes on it for a thorough review from
> kexec/kdump p-o-v.
>=20
> Also we historically never had distinction in common arch code on the
> basis of the intended end use-case: embedded, server or automotive, so
> I am not sure introducing a Raspberry specific CONFIG option would be
> a good idea.

+1

=46rom the distros perspective it's very important to keep a single kernel im=
age.

> So, rather than reverting the patch, we can look at addressing the
> same properly this time - especially from a kdump p-o-v.
> This issue has been reported by some Red Hat arm64 partners with
> upstream kernel also and as we have noticed in the past as well,
> hardcoding the placement of the crashkernel base address (unless the
> base address is specified by a crashkernel=3DX@Y like bootargs) is also
> not a portable suggestion.
>=20
> I am working on a possible fix and will have more updates on the same
> in a day-or-two.

Please keep me in the loop, we've also had issues pointing to this reported=
 by
SUSE partners. I can do some testing both on the RPi4 and on big servers th=
at
need huge crashkernel sizes.

Regards,
Nicolas


--=-Aei+6G5mX2uAhOaFvVW9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7ZKP8ACgkQlfZmHno8
x/5azAf+JvlKZVRHn5L3zfR9xi9/uv/QZz/P6onSPQfvzvr+NQfepcY2PZXGCd4p
AKxaFgAvlxN5IPs/XG2rdUSvfAMrQswrHIAevxTccHcHJ8KiRN0cpGuThDZ2M7sT
8DNXPJS3SL5P7xAxR7zF/qfNcHWsq8V+k5mfXBoChT6vah18OmRwZOfHC0oymoeW
FJTOGbuN1S0zRlsmZY0EmPDF2GS6PkCAwMhZI+KbweOLFq+kDl3nSb+y/3DLqg+5
mja03lrrEj1ZfWjLXtwOuDnDfTqXk8XD/g/5T8MCNk5TcJT2oqHVd+MrMwvAe1nG
/13Dxuq+br1/jGgfi4z9Fwizcn610w==
=84sy
-----END PGP SIGNATURE-----

--=-Aei+6G5mX2uAhOaFvVW9--



--===============4319794851782101690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4319794851782101690==--


