Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF77435C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tr7pmhfluxBRJT3TYBEHVw1hFIE5h2qPGrTObry/IrM=; b=MxJ44idg0uje+y
	8JFJAI4GR2psqUMNMtBjYXPhjr3afAIWsTBluJQxkw8bAO8Sujeh3O7boQIq5RJ0MsqTk1Vw/Lhwp
	VJf6S1Xw0Scoi3M1fz97lQa2LmbueMqEGpRmpl9v/1M2gvPAaBQAFAW8o0wtGYFYezxXOzbwCsTyg
	ClGhcv6f9m0+13nflz9u0iebiWcPEcVPgFcJzTOmKYZeovB2TnwQLwphl8qIaGYRw7kQSPKqJkVKA
	0zGB1oS0GPfc9hTyrhFEBraKqkJTFhOTTWGUJ9EqmGszSdz0LlHNnVkhQKiIoSiLTviUg8PTeEZih
	ZvNB8mE6GoNAJXTmYHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbOZn-0003lW-0B; Thu, 13 Jun 2019 12:11:31 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbOZY-0003kv-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:11:18 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DC3HuT106149
 for <linux-arm-kernel@lists.infradead.org>; Thu, 13 Jun 2019 08:11:12 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t3p590dvf-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 13 Jun 2019 08:11:12 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 13 Jun 2019 13:11:10 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 13 Jun 2019 13:11:05 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5DCB4pl49152030
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 12:11:04 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 43EDFA4040;
 Thu, 13 Jun 2019 12:11:04 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 063E1A4055;
 Thu, 13 Jun 2019 12:11:03 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.204.162])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 13 Jun 2019 12:11:02 +0000 (GMT)
Date: Thu, 13 Jun 2019 15:11:01 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611100348.GB26409@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19061312-0028-0000-0000-00000379FAD3
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061312-0029-0000-0000-00002439F36A
Message-Id: <20190613121100.GB25164@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=7 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906130095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_051116_412038_2BA187CA 
X-CRM114-Status: GOOD (  39.26  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, linux-mm@kvack.org,
 Qian Cai <cai@lca.pw>, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, akpm@linux-foundation.org,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(added Roman)

On Tue, Jun 11, 2019 at 11:03:49AM +0100, Mark Rutland wrote:
> On Mon, Jun 10, 2019 at 01:26:15PM -0400, Qian Cai wrote:
> > On Mon, 2019-06-10 at 12:43 +0100, Will Deacon wrote:
> > > On Tue, Jun 04, 2019 at 03:23:38PM +0100, Mark Rutland wrote:
> > > > On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
> > > > > The commit "arm64: switch to generic version of pte allocation"
> > > > > introduced endless failures during boot like,
> > > > > =

> > > > > kobject_add_internal failed for pgd_cache(285:chronyd.service) (e=
rror:
> > > > > -2 parent: cgroup)
> > > > > =

> > > > > It turns out __GFP_ACCOUNT is passed to kernel page table allocat=
ions
> > > > > and then later memcg finds out those don't belong to any cgroup.
> > > > =

> > > > Mike, I understood from [1] that this wasn't expected to be a probl=
em,
> > > > as the accounting should bypass kernel threads.
> > > > =

> > > > Was that assumption wrong, or is something different happening here?
> > > > =

> > > > > =

> > > > > backtrace:
> > > > > =A0 kobject_add_internal
> > > > > =A0 kobject_init_and_add
> > > > > =A0 sysfs_slab_add+0x1a8
> > > > > =A0 __kmem_cache_create
> > > > > =A0 create_cache
> > > > > =A0 memcg_create_kmem_cache
> > > > > =A0 memcg_kmem_cache_create_func
> > > > > =A0 process_one_work
> > > > > =A0 worker_thread
> > > > > =A0 kthread
> > > > > =

> > > > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > > > ---
> > > > > =A0arch/arm64/mm/pgd.c | 2 +-
> > > > > =A01 file changed, 1 insertion(+), 1 deletion(-)
> > > > > =

> > > > > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > > > > index 769516cb6677..53c48f5c8765 100644
> > > > > --- a/arch/arm64/mm/pgd.c
> > > > > +++ b/arch/arm64/mm/pgd.c
> > > > > @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
> > > > > =A0	if (PGD_SIZE =3D=3D PAGE_SIZE)
> > > > > =A0		return (pgd_t *)__get_free_page(gfp);
> > > > > =A0	else
> > > > > -		return kmem_cache_alloc(pgd_cache, gfp);
> > > > > +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
> > > > =

> > > > This is used to allocate PGDs for both user and kernel pagetables (=
e.g.
> > > > for the efi runtime services), so while this may fix the regression=
, I'm
> > > > not sure it's the right fix.
> > > > =

> > > > Do we need a separate pgd_alloc_kernel()?
> > > =

> > > So can I take the above for -rc5, or is somebody else working on a di=
fferent
> > > fix to implement pgd_alloc_kernel()?
> > =

> > The offensive commit "arm64: switch to generic version of pte allocatio=
n" is not
> > yet in the mainline, but only in the Andrew's tree and linux-next, and =
I doubt
> > Andrew will push this out any time sooner given it is broken.
> =

> I'd assumed that Mike would respin these patches to implement and use
> pgd_alloc_kernel() (or take gfp flags) and the updated patches would
> replace these in akpm's tree.
> =

> Mike, could you confirm what your plan is? I'm happy to review/test
> updated patches for arm64.

The log Qian Cai posted at [1] and partially cited below confirms that the
failure happens when *user* PGDs are allocated and the addition of
__GFP_ACCOUNT to gfp flags used by pgd_alloc() only uncovered another
issue.

I'm still failing to reproduce it with qemu and I'm not really familiar
with slub/memcg code to say anything smart about it. Will keep looking.

Note, that as failures start way after efi_virtmap_init() that allocates a
PGD for efi_mm, there are no real fixes required for the original series,
except that the check for mm =3D=3D &init_mm I copied for some reason from
powerpc is bogus and can be removed.

I surely can add pgd_alloc_kernel() to be used by the EFI code to make sure
we won't run into issues with memcg in the future.

[   82.125966] Freeing unused kernel memory: 28672K
[   87.940365] Checked W+X mappings: passed, no W+X pages found
[   87.946769] Run /init as init process
[   88.040040] systemd[1]: System time before build time, advancing clock.
[   88.054593] systemd[1]: Failed to insert module 'autofs4': No such file =
or directory
[   88.374129] modprobe (1726) used greatest stack depth: 28464 bytes left
[   88.470108] systemd[1]: systemd 239 running in system mode. (+PAM +AUDIT
+SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT
+GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2
default-hierarchy=3Dlegacy)
[   88.498398] systemd[1]: Detected architecture arm64.
[   88.506517] systemd[1]: Running in initial RAM disk.
[   89.621995] mkdir (1730) used greatest stack depth: 27872 bytes left
[   90.222658] random: systemd: uninitialized urandom read (16 bytes read)
[   90.230072] systemd[1]: Reached target Swap.
[   90.240205] random: systemd: uninitialized urandom read (16 bytes read)
[   90.251088] systemd[1]: Reached target Timers.
[   90.261303] random: systemd: uninitialized urandom read (16 bytes read)
[   90.271209] systemd[1]: Listening on udev Control Socket.
[   90.283238] systemd[1]: Reached target Local File Systems.
[   90.296232] systemd[1]: Reached target Slices.
[   90.307239] systemd[1]: Listening on udev Kernel Socket.
[   90.608597] kobject_add_internal failed for pgd_cache(13:init.scope) (er=
ror: -2 parent: cgroup)
[   90.678007] kobject_add_internal failed for pgd_cache(13:init.scope)(err=
or: -2 parent: cgroup)
[   90.713260] kobject_add_internal failed for pgd_cache(21:systemd-tmpfile=
s-setup.service) (error: -2 parent: cgroup)
[   90.820012] systemd-tmpfile (1759) used greatest stack depth: 27184 byte=
s left
[   90.861942] kobject_add_internal failed for pgd_cache(13:init.scope) err=
or: -2 parent: cgroup)
 =

> Thanks,
> Mark.
> =


[1] https://cailca.github.io/files/dmesg.txt

-- =

Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
