Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C3B1EF2FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dNMh3ilP83usUhiD4/D+KHpRqWj6pd2mRWdORcRLYw4=; b=qHOGdCZg+Er06oS4w7ZpU2dTx
	Jo8ORdDG3XOQvMaIi5SD5UsiTSwHKbKBO/Bdu+n2kPirIHqQxS6l81hmr9jDqbzw5Oyj7HO+AYc8h
	L1JWgzS4z3ad0HFKcMHjID08L93rg95xS2KT3ohwV/d1w9vz/OjaFeO1dn3ODj1X9Q68i56a9/j0i
	Xbt0ttfnCom4e3wmp5FcOCIme9510McjNWoZ9OaiW3oT+EYv6rlAfCIYl9ENThH1OroJAVrfQUlnp
	H1oKFNrZ7vP3CWfsjDGmydJ31bIJ+QGPFjs2L9Tk+s5piJATRiLESmjf+5GhjRcUmiWVB5xO92vt3
	V1av5FNdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7bw-0005Pn-AC; Fri, 05 Jun 2020 08:21:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7bm-0005OV-VU; Fri, 05 Jun 2020 08:21:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3E9C6AD18;
 Fri,  5 Jun 2020 08:21:48 +0000 (UTC)
Message-ID: <1829b2969f722f19d9afcc913c5054887ca72578.camel@suse.de>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: John Donnelly <John.P.donnelly@oracle.com>, Bhupesh Sharma
 <bhsharma@redhat.com>
Date: Fri, 05 Jun 2020 10:21:41 +0200
In-Reply-To: <de6c7c59-89d2-5b2e-d7ba-50403c4bcaf2@oracle.com>
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
 <751bbe2512628ff38002db33ce02af051d080cd2.camel@suse.de>
 <de6c7c59-89d2-5b2e-d7ba-50403c4bcaf2@oracle.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_012147_311969_1F74B32B 
X-CRM114-Status: GOOD (  30.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============6949622573753106655=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6949622573753106655==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-uSOtOi+SJ+bMj8a3VO+u"


--=-uSOtOi+SJ+bMj8a3VO+u
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-04 at 21:26 -0500, John Donnelly wrote:
> On 6/4/20 12:01 PM, Nicolas Saenz Julienne wrote:
> > On Thu, 2020-06-04 at 01:17 +0530, Bhupesh Sharma wrote:
> > > Hi All,
> > >=20
> > > On Wed, Jun 3, 2020 at 9:03 PM John Donnelly <john.p.donnelly@oracle.=
com>
> > > wrote:
> > > > > On Jun 3, 2020, at 8:20 AM, chenzhou <chenzhou10@huawei.com> wrot=
e:
> > > > >=20
> > > > > Hi,
> > > > >=20
> > > > >=20
> > > > > On 2020/6/3 19:47, Prabhakar Kushwaha wrote:
> > > > > > Hi Chen,
> > > > > >=20
> > > > > > On Tue, Jun 2, 2020 at 8:12 PM John Donnelly <
> > > > > > john.p.donnelly@oracle.com
> > > > > > > wrote:
> > > > > > >=20
> > > > > > > > On Jun 2, 2020, at 12:38 AM, Prabhakar Kushwaha <
> > > > > > > > prabhakar.pkin@gmail.com> wrote:
> > > > > > > >=20
> > > > > > > > On Tue, Jun 2, 2020 at 3:29 AM John Donnelly <
> > > > > > > > john.p.donnelly@oracle.com> wrote:
> > > > > > > > > Hi .  See below !
> > > > > > > > >=20
> > > > > > > > > > On Jun 1, 2020, at 4:02 PM, Bhupesh Sharma <
> > > > > > > > > > bhsharma@redhat.com>
> > > > > > > > > > wrote:
> > > > > > > > > >=20
> > > > > > > > > > Hi John,
> > > > > > > > > >=20
> > > > > > > > > > On Tue, Jun 2, 2020 at 1:01 AM John Donnelly <
> > > > > > > > > > John.P.donnelly@oracle.com> wrote:
> > > > > > > > > > > Hi,
> > > > > > > > > > >=20
> > > > > > > > > > >=20
> > > > > > > > > > > On 6/1/20 7:02 AM, Prabhakar Kushwaha wrote:
> > > > > > > > > > > > Hi Chen,
> > > > > > > > > > > >=20
> > > > > > > > > > > > On Thu, May 21, 2020 at 3:05 PM Chen Zhou <
> > > > > > > > > > > > chenzhou10@huawei.com> wrote:
> > > > > > > > > > > > > This patch series enable reserving crashkernel ab=
ove
> > > > > > > > > > > > > 4G in
> > > > > > > > > > > > > arm64.
> > > > > > > > > > > > >=20
> > > > > > > > > > > > > There are following issues in arm64 kdump:
> > > > > > > > > > > > > 1. We use crashkernel=3DX to reserve crashkernel =
below
> > > > > > > > > > > > > 4G,
> > > > > > > > > > > > > which will fail
> > > > > > > > > > > > > when there is no enough low memory.
> > > > > > > > > > > > > 2. Currently, crashkernel=3DY@X can be used to re=
serve
> > > > > > > > > > > > > crashkernel above 4G,
> > > > > > > > > > > > > in this case, if swiotlb or DMA buffers are requi=
red,
> > > > > > > > > > > > > crash dump kernel
> > > > > > > > > > > > > will boot failure because there is no low memory
> > > > > > > > > > > > > available
> > > > > > > > > > > > > for allocation.
> > > > > > > > > > > > >=20
> > > > > > > > > > > > We are getting "warn_alloc" [1] warning during boot=
 of
> > > > > > > > > > > > kdump
> > > > > > > > > > > > kernel
> > > > > > > > > > > > with bootargs as [2] of primary kernel.
> > > > > > > > > > > > This error observed on ThunderX2  ARM64 platform.
> > > > > > > > > > > >=20
> > > > > > > > > > > > It is observed with latest upstream tag (v5.7-rc3) =
with
> > > > > > > > > > > > this
> > > > > > > > > > > > patch set
> > > > > > > > > > > > and
> > > > > > > > > > > >=20
> >=20
https://urldefense.com/v3/__https://lists.infradead.org/pipermail/kexec/202=
0-May/025128.html__;!!GqivPVa7Brio!LnTSARkCt0V0FozR0KmqooaH5ADtdXvs3mPdP3KR=
VqALmvSK2VmCkIPIhsaxbiIAAlzu$
> > > > > > > > > > > > Also **without** this patch-set
> > > > > > > > > > > > "
> > > > > > > > > > > >=20
> >=20
https://urldefense.com/v3/__https://www.spinics.net/lists/arm-kernel/msg806=
882.html__;!!GqivPVa7Brio!LnTSARkCt0V0FozR0KmqooaH5ADtdXvs3mPdP3KRVqALmvSK2=
VmCkIPIhsaxbjC6ujMA$
> > > > > > > > > > > > "
> > > > > > > > > > > >=20
> > > > > > > > > > > > This issue comes whenever crashkernel memory is res=
erved
> > > > > > > > > > > > after 0xc000_0000.
> > > > > > > > > > > > More details discussed earlier in
> > > > > > > > > > > >=20
> >=20
https://urldefense.com/v3/__https://www.spinics.net/lists/arm-kernel/msg806=
882.html__;!!GqivPVa7Brio!LnTSARkCt0V0FozR0KmqooaH5ADtdXvs3mPdP3KRVqALmvSK2=
VmCkIPIhsaxbjC6ujMA$
> >    without
> > > > > > > > > > > > any
> > > > > > > > > > > > solution
> > > > > > > > > > > >=20
> > > > > > > > > > > > This patch-set is expected to solve similar kind of
> > > > > > > > > > > > issue.
> > > > > > > > > > > > i.e. low memory is only targeted for DMA, swiotlb; =
So
> > > > > > > > > > > > above
> > > > > > > > > > > > mentioned
> > > > > > > > > > > > observation should be considered/fixed. .
> > > > > > > > > > > >=20
> > > > > > > > > > > > --pk
> > > > > > > > > > > >=20
> > > > > > > > > > > > [1]
> > > > > > > > > > > > [   30.366695] DMI: Cavium Inc. Saber/Saber, BIOS
> > > > > > > > > > > > TX2-FW-Release-3.1-build_01-2803-g74253a541a mm/dd/=
yyyy
> > > > > > > > > > > > [   30.367696] NET: Registered protocol family 16
> > > > > > > > > > > > [   30.369973] swapper/0: page allocation failure:
> > > > > > > > > > > > order:6,
> > > > > > > > > > > > mode:0x1(GFP_DMA),
> > > > > > > > > > > > nodemask=3D(null),cpuset=3D/,mems_allowed=3D0
> > > > > > > > > > > > [   30.369980] CPU: 0 PID: 1 Comm: swapper/0 Not ta=
inted
> > > > > > > > > > > > 5.7.0-rc3+ #121
> > > > > > > > > > > > [   30.369981] Hardware name: Cavium Inc. Saber/Sab=
er,
> > > > > > > > > > > > BIOS
> > > > > > > > > > > > TX2-FW-Release-3.1-build_01-2803-g74253a541a mm/dd/=
yyyy
> > > > > > > > > > > > [   30.369984] Call trace:
> > > > > > > > > > > > [   30.369989]  dump_backtrace+0x0/0x1f8
> > > > > > > > > > > > [   30.369991]  show_stack+0x20/0x30
> > > > > > > > > > > > [   30.369997]  dump_stack+0xc0/0x10c
> > > > > > > > > > > > [   30.370001]  warn_alloc+0x10c/0x178
> > > > > > > > > > > > [   30.370004]  __alloc_pages_slowpath.constprop.11=
1+0xb
> > > > > > > > > > > > 10/0
> > > > > > > > > > > > xb50
> > > > > > > > > > > > [   30.370006]  __alloc_pages_nodemask+0x2b4/0x300
> > > > > > > > > > > > [   30.370008]  alloc_page_interleave+0x24/0x98
> > > > > > > > > > > > [   30.370011]  alloc_pages_current+0xe4/0x108
> > > > > > > > > > > > [   30.370017]  dma_atomic_pool_init+0x44/0x1a4
> > > > > > > > > > > > [   30.370020]  do_one_initcall+0x54/0x228
> > > > > > > > > > > > [   30.370027]  kernel_init_freeable+0x228/0x2cc
> > > > > > > > > > > > [   30.370031]  kernel_init+0x1c/0x110
> > > > > > > > > > > > [   30.370034]  ret_from_fork+0x10/0x18
> > > > > > > > > > > > [   30.370036] Mem-Info:
> > > > > > > > > > > > [   30.370064] active_anon:0 inactive_anon:0
> > > > > > > > > > > > isolated_anon:0
> > > > > > > > > > > > [   30.370064]  active_file:0 inactive_file:0
> > > > > > > > > > > > isolated_file:0
> > > > > > > > > > > > [   30.370064]  unevictable:0 dirty:0 writeback:0
> > > > > > > > > > > > unstable:0
> > > > > > > > > > > > [   30.370064]  slab_reclaimable:34
> > > > > > > > > > > > slab_unreclaimable:4438
> > > > > > > > > > > > [   30.370064]  mapped:0 shmem:0 pagetables:14 boun=
ce:0
> > > > > > > > > > > > [   30.370064]  free:1537719 free_pcp:219 free_cma:=
0
> > > > > > > > > > > > [   30.370070] Node 0 active_anon:0kB inactive_anon=
:0kB
> > > > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > > > isolated(anon):0kB
> > > > > > > > > > > > isolated(file):0kB mapped:0kB dirty:0kB writeback:0=
kB
> > > > > > > > > > > > shmem:0kB
> > > > > > > > > > > > shmem_thp: 0kB shmem_pmdmapped: 0kB anon_thp: 0kB
> > > > > > > > > > > > writeback_tmp:0kB
> > > > > > > > > > > > unstable:0kB all_unreclaimable? no
> > > > > > > > > > > > [   30.370073] Node 1 active_anon:0kB inactive_anon=
:0kB
> > > > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > > > isolated(anon):0kB
> > > > > > > > > > > > isolated(file):0kB mapped:0kB dirty:0kB writeback:0=
kB
> > > > > > > > > > > > shmem:0kB
> > > > > > > > > > > > shmem_thp: 0kB shmem_pmdmapped: 0kB anon_thp: 0kB
> > > > > > > > > > > > writeback_tmp:0kB
> > > > > > > > > > > > unstable:0kB all_unreclaimable? no
> > > > > > > > > > > > [   30.370079] Node 0 DMA free:0kB min:0kB low:0kB
> > > > > > > > > > > > high:0kB
> > > > > > > > > > > > reserved_highatomic:0KB active_anon:0kB
> > > > > > > > > > > > inactive_anon:0kB
> > > > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > > > writepending:0kB
> > > > > > > > > > > > present:128kB managed:0kB mlocked:0kB kernel_stack:=
0kB
> > > > > > > > > > > > pagetables:0kB
> > > > > > > > > > > > bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
> > > > > > > > > > > > [   30.370084] lowmem_reserve[]: 0 250 6063 6063
> > > > > > > > > > > > [   30.370090] Node 0 DMA32 free:256000kB min:408kB
> > > > > > > > > > > > low:664kB
> > > > > > > > > > > > high:920kB reserved_highatomic:0KB active_anon:0kB
> > > > > > > > > > > > inactive_anon:0kB
> > > > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > > > writepending:0kB
> > > > > > > > > > > > present:269700kB managed:256000kB mlocked:0kB
> > > > > > > > > > > > kernel_stack:0kB
> > > > > > > > > > > > pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0k=
B
> > > > > > > > > > > > free_cma:0kB
> > > > > > > > > > > > [   30.370094] lowmem_reserve[]: 0 0 5813 5813
> > > > > > > > > > > > [   30.370100] Node 0 Normal free:5894876kB min:955=
2kB
> > > > > > > > > > > > low:15504kB
> > > > > > > > > > > > high:21456kB reserved_highatomic:0KB active_anon:0k=
B
> > > > > > > > > > > > inactive_anon:0kB
> > > > > > > > > > > > active_file:0kB inactive_file:0kB unevictable:0kB
> > > > > > > > > > > > writepending:0kB
> > > > > > > > > > > > present:8388608kB managed:5953112kB mlocked:0kB
> > > > > > > > > > > > kernel_stack:21672kB
> > > > > > > > > > > > pagetables:56kB bounce:0kB free_pcp:876kB
> > > > > > > > > > > > local_pcp:176kB
> > > > > > > > > > > > free_cma:0kB
> > > > > > > > > > > > [   30.370104] lowmem_reserve[]: 0 0 0 0
> > > > > > > > > > > > [   30.370107] Node 0 DMA: 0*4kB 0*8kB 0*16kB 0*32k=
B
> > > > > > > > > > > > 0*64kB
> > > > > > > > > > > > 0*128kB
> > > > > > > > > > > > 0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB =3D 0kB
> > > > > > > > > > > > [   30.370113] Node 0 DMA32: 0*4kB 0*8kB 0*16kB 0*3=
2kB
> > > > > > > > > > > > 0*64kB 0*128kB
> > > > > > > > > > > > 0*256kB 0*512kB 0*1024kB 1*2048kB (M) 62*4096kB (M)=
 =3D
> > > > > > > > > > > > 256000kB
> > > > > > > > > > > > [   30.370119] Node 0 Normal: 2*4kB (M) 3*8kB (ME)
> > > > > > > > > > > > 2*16kB
> > > > > > > > > > > > (UE) 3*32kB
> > > > > > > > > > > > (UM) 1*64kB (U) 2*128kB (M) 2*256kB (ME) 3*512kB (M=
E)
> > > > > > > > > > > > 3*1024kB (ME)
> > > > > > > > > > > > 3*2048kB (UME) 1436*4096kB (M) =3D 5893600kB
> > > > > > > > > > > > [   30.370129] Node 0 hugepages_total=3D0 hugepages=
_free=3D0
> > > > > > > > > > > > hugepages_surp=3D0 hugepages_size=3D1048576kB
> > > > > > > > > > > > [   30.370130] 0 total pagecache pages
> > > > > > > > > > > > [   30.370132] 0 pages in swap cache
> > > > > > > > > > > > [   30.370134] Swap cache stats: add 0, delete 0, f=
ind
> > > > > > > > > > > > 0/0
> > > > > > > > > > > > [   30.370135] Free swap  =3D 0kB
> > > > > > > > > > > > [   30.370136] Total swap =3D 0kB
> > > > > > > > > > > > [   30.370137] 2164609 pages RAM
> > > > > > > > > > > > [   30.370139] 0 pages HighMem/MovableOnly
> > > > > > > > > > > > [   30.370140] 612331 pages reserved
> > > > > > > > > > > > [   30.370141] 0 pages hwpoisoned
> > > > > > > > > > > > [   30.370143] DMA: failed to allocate 256 KiB pool=
 for
> > > > > > > > > > > > atomic
> > > > > > > > > > > > coherent allocation
> > > > > > > > > > > During my testing I saw the same error and
> > > > > > > > > > > Chen's  solution
> > > > > > > > > > > corrected it .
> > > > > > > > > > Which combination you are using on your side? I am usin=
g
> > > > > > > > > > Prabhakar's
> > > > > > > > > > suggested environment and can reproduce the issue
> > > > > > > > > > with or without Chen's crashkernel support above 4G
> > > > > > > > > > patchset.
> > > > > > > > > >=20
> > > > > > > > > > I am also using a ThunderX2 platform with latest
> > > > > > > > > > makedumpfile
> > > > > > > > > > code and
> > > > > > > > > > kexec-tools (with the suggested patch
> > > > > > > > > > <
> > > > > > > > > >=20
> >=20
https://urldefense.com/v3/__https://lists.infradead.org/pipermail/kexec/202=
0-May/025128.html__;!!GqivPVa7Brio!J6lUig58-Gw6TKZnEEYzEeSU36T-1SqlB1kImU00=
xtX_lss5Tx-JbUmLE9TJC3foXBLg$
> > > > > > > > > > > ).
> > > > > > > > > > Thanks,
> > > > > > > > > > Bhupesh
> > > > > > > > > I did this activity 5 months ago and I have moved on to o=
ther
> > > > > > > > > activities. My DMA failures were related to PCI devices t=
hat
> > > > > > > > > could
> > > > > > > > > not be enumerated because  low-DMA space was not  availab=
le
> > > > > > > > > when
> > > > > > > > > crashkernel was moved above 4G; I don=E2=80=99t recall th=
e exact
> > > > > > > > > platform.
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > For this failure ,
> > > > > > > > >=20
> > > > > > > > > > > > DMA: failed to allocate 256 KiB pool for atomic
> > > > > > > > > > > > coherent allocation
> > > > > > > > > Is due to :
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > 3618082c
> > > > > > > > > ("arm64 use both ZONE_DMA and ZONE_DMA32")
> > > > > > > > >=20
> > > > > > > > > With the introduction of ZONE_DMA to support the Raspberr=
y DMA
> > > > > > > > > region below 1G, the crashkernel is placed in the upper 4=
G
> > > > > > > > > ZONE_DMA_32 region. Since the crashkernel does not have a=
ccess
> > > > > > > > > to the ZONE_DMA region, it prints out call trace during
> > > > > > > > > bootup.
> > > > > > > > >=20
> > > > > > > > > It is due to having this CONFIG item  ON  :
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > CONFIG_ZONE_DMA=3Dy
> > > > > > > > >=20
> > > > > > > > > Turning off ZONE_DMA fixes a issue and Raspberry PI 4 wil=
l
> > > > > > > > > use the device tree to specify memory below 1G.
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > Disabling ZONE_DMA is temporary solution.  We may need prop=
er
> > > > > > > > solution
> > > > > > > Perhaps the Raspberry platform configuration dependencies nee=
d
> > > > > > > separated  from =E2=80=9Cserver class=E2=80=9D Arm  equipment=
 ?  Or auto-
> > > > > > > configured on
> > > > > > > boot ?  Consult an expert ;-)
> > > > > > >=20
> > > > > > >=20
> > > > > > >=20
> > > > > > > > > I would like to see Chen=E2=80=99s feature added , perhap=
s as
> > > > > > > > > EXPERIMENTAL,  so we can get some configuration testing d=
one
> > > > > > > > > on
> > > > > > > > > it.   It corrects having a DMA zone in low memory while c=
rash-
> > > > > > > > > kernel is above 4GB.  This has been going on for a year n=
ow.
> > > > > > > > I will also like this patch to be added in Linux as early a=
s
> > > > > > > > possible.
> > > > > > > >=20
> > > > > > > > Issue mentioned by me happens with or without this patch.
> > > > > > > >=20
> > > > > > > > This patch-set can consider fixing because it uses low memo=
ry
> > > > > > > > for
> > > > > > > > DMA
> > > > > > > > & swiotlb only.
> > > > > > > > We can consider restricting crashkernel within the required
> > > > > > > > range
> > > > > > > > like below
> > > > > > > >=20
> > > > > > > > diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> > > > > > > > index 7f9e5a6dc48c..bd67b90d35bd 100644
> > > > > > > > --- a/kernel/crash_core.c
> > > > > > > > +++ b/kernel/crash_core.c
> > > > > > > > @@ -354,7 +354,7 @@ int __init reserve_crashkernel_low(void=
)
> > > > > > > >                        return 0;
> > > > > > > >        }
> > > > > > > >=20
> > > > > > > > -       low_base =3D memblock_find_in_range(0, 1ULL << 32,
> > > > > > > > low_size,
> > > > > > > > CRASH_ALIGN);
> > > > > > > > +       low_base =3D memblock_find_in_range(0,0xc0000000,
> > > > > > > > low_size,
> > > > > > > > CRASH_ALIGN);
> > > > > > > >        if (!low_base) {
> > > > > > > >                pr_err("Cannot reserve %ldMB crashkernel low
> > > > > > > > memory,
> > > > > > > > please try smaller size.\n",
> > > > > > > >                       (unsigned long)(low_size >> 20));
> > > > > > > >=20
> > > > > > > >=20
> > > > > > >     I suspect  0xc0000000  would need to be a CONFIG item  an=
d not
> > > > > > > hard-coded.
> > > > > > >=20
> > > > > > if you consider this as valid change,  can you please incorpora=
te as
> > > > > > part of your patch-set.
> > > > > After commit 1a8e1cef7 ("arm64: use both ZONE_DMA and ZONE_DMA32"=
)=EF=BC=8Cthe
> > > > > 0-
> > > > > 4G memory is splited
> > > > > to DMA [mem 0x0000000000000000-0x000000003fffffff] and DMA32 [mem
> > > > > 0x0000000040000000-0x00000000ffffffff] on arm64.
> > > > >=20
> > > > >  From the above discussion, on your platform, the low crashkernel=
 fall
> > > > > in
> > > > > DMA32 region, but your environment needs to access DMA
> > > > > region, so there is the call trace.
> > > > >=20
> > > > > I have a question, why do you choose 0xc0000000 here?
> > > > >=20
> > > > > Besides, this is common code, we also need to consider about x86.
> > > > >=20
> > > >   + nsaenzjulienne@suse.de
> > Thanks for adding me to the conversation, and sorry for the headaches.
> >=20
> > > >    Exactly .  This is why it needs to be a CONFIG option for  Raspb=
erry
> > > > ..,  or device tree option.
> > > >=20
> > > >=20
> > > >    We could revert 1a8e1cef7 since it broke  Arm kdump too.
> > > Well, unfortunately the patch for commit 1a8e1cef7603 ("arm64: use
> > > both ZONE_DMA and ZONE_DMA32") was not Cc'ed to the kexec mailing
> > > list, thus we couldn't get many eyes on it for a thorough review from
> > > kexec/kdump p-o-v.
> > >=20
> > > Also we historically never had distinction in common arch code on the
> > > basis of the intended end use-case: embedded, server or automotive, s=
o
> > > I am not sure introducing a Raspberry specific CONFIG option would be
> > > a good idea.
> > +1
> >=20
> >  From the distros perspective it's very important to keep a single kern=
el
> > image.
> >=20
> > > So, rather than reverting the patch, we can look at addressing the
> > > same properly this time - especially from a kdump p-o-v.
> > > This issue has been reported by some Red Hat arm64 partners with
> > > upstream kernel also and as we have noticed in the past as well,
> > > hardcoding the placement of the crashkernel base address (unless the
> > > base address is specified by a crashkernel=3DX@Y like bootargs) is al=
so
> > > not a portable suggestion.
> > >=20
> > > I am working on a possible fix and will have more updates on the same
> > > in a day-or-two.
> > Please keep me in the loop, we've also had issues pointing to this repo=
rted
> > by
> > SUSE partners. I can do some testing both on the RPi4 and on big server=
s
> > that
> > need huge crashkernel sizes.
> >=20
> > Regards,
> > Nicolas
> >=20
> Hi Nicolas,
>=20
>=20
> You want want to review this topic with the various email threads . It=
=20
> has been a long journey.

Will do, thanks!

Regards,
Nicolas


--=-uSOtOi+SJ+bMj8a3VO+u
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7aAJUACgkQlfZmHno8
x/7P3Af9GriSLNLwiJ6mP1Wz3FaQS9zrZv1y2ipqBNijUzySFEw/OPyV7MWduvCR
H7ugjhSe0VsKQO8aPgskNyE2Fk+WQ7BgPInJLfE50/KPcvoEy32pUzXEtCMnBOVA
gfjuKHBo10OGv2ytQgTGLdr7y1n/J1vsSpJqZm0rQ18zu4kTqJKKo86iI1+MgKEk
S2UawOQxOiKIdHZ5iVHI/kdPkCwTrqxx0fkNhcpyDUuIHaMe0IyAX9FK3u4BJIfp
DObetzAJ95AIzZYSsMNZuNPH3BqgX0pg05F5TFUN7B0AsmsyNcWHNSsTYP9ZATBJ
aTRJe5xO6wYuhCBugrhRu5QDlQwBQg==
=ezKH
-----END PGP SIGNATURE-----

--=-uSOtOi+SJ+bMj8a3VO+u--



--===============6949622573753106655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6949622573753106655==--


