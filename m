Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DF944C8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 21:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHbTp9f5aVIbq1CpQJJnsCk47CqTiBBzeAhKEc9mbmg=; b=fyLcRuMa8V4WKA
	RCqTDP1K2tNEafOgQgh+KJUuiRNjw7k5LIdAshhvMqWzPkfEQSyShqfyK3yBitVDqIjl3KYfzN/Hc
	XOYWhpGS3ZS9Z7ySZ/wVk33+LCjneA69kPGXkS76sa3USAVA1CIQ7100dn2hIw+ZvYXAD78NMBPIK
	V0JnJNegEfLj/uNHmJdbLNYe3x0uY/xneeopygRLRaFqEZMIEuLJjsMyFXJWIq2Om/X2i4IHOsVpy
	7nNb2kK194R+nkjLTdL4Cws1IkD0bqwf9GMgvycOAw57a7nncqqWS93Dg8z87Cq5vxXdD2lewIaUp
	oQ1NUpD4NgGj1YO4zzrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVea-0006m2-D8; Thu, 13 Jun 2019 19:44:56 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVeK-0006kK-DP
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 19:44:42 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5DJb4a4108596
 for <linux-arm-kernel@lists.infradead.org>; Thu, 13 Jun 2019 15:44:39 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t3tj6ws85-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 13 Jun 2019 15:44:38 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 13 Jun 2019 20:44:37 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 13 Jun 2019 20:44:32 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5DJiVjb30933166
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 19:44:31 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5E1755204F;
 Thu, 13 Jun 2019 19:44:31 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.204.162])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 2222252051;
 Thu, 13 Jun 2019 19:44:30 +0000 (GMT)
Date: Thu, 13 Jun 2019 22:44:28 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190613121100.GB25164@rapoport-lnx>
 <1560432156.5154.11.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560432156.5154.11.camel@lca.pw>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19061319-0008-0000-0000-000002F38C7A
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061319-0009-0000-0000-00002260940A
Message-Id: <20190613194427.GC25164@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-13_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906130146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_124440_586209_89C8F58C 
X-CRM114-Status: GOOD (  28.11  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 mhocko@kernel.org, linux-mm@kvack.org, vdavydov.dev@gmail.com,
 hannes@cmpxchg.org, cgroups@vger.kernel.org, akpm@linux-foundation.org,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 09:22:36AM -0400, Qian Cai wrote:
> On Thu, 2019-06-13 at 15:11 +0300, Mike Rapoport wrote:
> > The log Qian Cai posted at [1] and partially cited below confirms that =
the
> > failure happens when *user* PGDs are allocated and the addition of
> > __GFP_ACCOUNT to gfp flags used by pgd_alloc() only uncovered another
> > issue.
> > =

> > I'm still failing to reproduce it with qemu and I'm not really familiar
> > with slub/memcg code to say anything smart about it. Will keep looking.
> > =

> > Note, that as failures start way after efi_virtmap_init() that allocate=
s a
> > PGD for efi_mm, there are no real fixes required for the original serie=
s,
> > except that the check for mm =3D=3D &init_mm I copied for some reason f=
rom
> > powerpc is bogus and can be removed.
> =

> Yes, there is more places are not happy with __GFP_ACCOUNT other than efi=
_mm.
> For example,

Here we allocate the pgd for a user process and it should be accounted.

Actually, the whole point of changing the gfp flags in arm64::pgd_alloc()
was to enable the accounting for memory occupied by user pgds, just like
x86 and powerpc do.

> [=A0=A0132.786842][ T1501] kobject_add_internal failed for pgd_cache(49:s=
ystemd-
> udevd.service) (error: -2 parent: cgroup)
> [=A0=A0132.795589][ T1889] CPU: 9 PID: 1889 Comm: systemd-udevd Tainted:
> G=A0=A0=A0=A0=A0=A0=A0=A0W=A0=A0=A0=A0=A0=A0=A0=A0=A05.2.0-rc4-next-20190=
613+ #8
> [=A0=A0132.807356][ T1889] Hardware name: HPE Apollo
> 70=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/C01_APACHE_MB=A0=A0=A0=A0=A0=A0=
=A0=A0=A0, BIOS L50_5.13_1.0.9 03/01/2019
> [=A0=A0132.817872][ T1889] Call trace:
> [=A0=A0132.821017][ T1889]=A0=A0dump_backtrace+0x0/0x268
> [=A0=A0132.825372][ T1889]=A0=A0show_stack+0x20/0x2c
> [=A0=A0132.829380][ T1889]=A0=A0dump_stack+0xb4/0x108
> [=A0=A0132.833475][ T1889]=A0=A0pgd_alloc+0x34/0x5c
> [=A0=A0132.837396][ T1889]=A0=A0mm_init+0x27c/0x32c
> [=A0=A0132.841315][ T1889]=A0=A0dup_mm+0x84/0x7b4
> [=A0=A0132.845061][ T1889]=A0=A0copy_process+0xf20/0x24cc
> [=A0=A0132.849500][ T1889]=A0=A0_do_fork+0xa4/0x66c
> [=A0=A0132.853420][ T1889]=A0=A0__arm64_sys_clone+0x114/0x1b4
> [=A0=A0132.858208][ T1889]=A0=A0el0_svc_handler+0x198/0x260
> [=A0=A0132.862821][ T1889]=A0=A0el0_svc+0x8/0xc
> =

> > =

> > I surely can add pgd_alloc_kernel() to be used by the EFI code to make =
sure
> > we won't run into issues with memcg in the future.
> > =

> > [=A0=A0=A082.125966] Freeing unused kernel memory: 28672K
> > [=A0=A0=A087.940365] Checked W+X mappings: passed, no W+X pages found
> > [=A0=A0=A087.946769] Run /init as init process
> > [=A0=A0=A088.040040] systemd[1]: System time before build time, advanci=
ng clock.
> > [=A0=A0=A088.054593] systemd[1]: Failed to insert module 'autofs4': No =
such file or
> > directory
> > [=A0=A0=A088.374129] modprobe (1726) used greatest stack depth: 28464 b=
ytes left
> > [=A0=A0=A088.470108] systemd[1]: systemd 239 running in system mode. (+=
PAM +AUDIT
> > +SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT
> > +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2
> > default-hierarchy=3Dlegacy)
> > [=A0=A0=A088.498398] systemd[1]: Detected architecture arm64.
> > [=A0=A0=A088.506517] systemd[1]: Running in initial RAM disk.
> > [=A0=A0=A089.621995] mkdir (1730) used greatest stack depth: 27872 byte=
s left
> > [=A0=A0=A090.222658] random: systemd: uninitialized urandom read (16 by=
tes read)
> > [=A0=A0=A090.230072] systemd[1]: Reached target Swap.
> > [=A0=A0=A090.240205] random: systemd: uninitialized urandom read (16 by=
tes read)
> > [=A0=A0=A090.251088] systemd[1]: Reached target Timers.
> > [=A0=A0=A090.261303] random: systemd: uninitialized urandom read (16 by=
tes read)
> > [=A0=A0=A090.271209] systemd[1]: Listening on udev Control Socket.
> > [=A0=A0=A090.283238] systemd[1]: Reached target Local File Systems.
> > [=A0=A0=A090.296232] systemd[1]: Reached target Slices.
> > [=A0=A0=A090.307239] systemd[1]: Listening on udev Kernel Socket.
> > [=A0=A0=A090.608597] kobject_add_internal failed for pgd_cache(13:init.=
scope)
> > (error: -2 parent: cgroup)
> > [=A0=A0=A090.678007] kobject_add_internal failed for pgd_cache(13:init.=
scope)(error:
> > -2 parent: cgroup)
> > [=A0=A0=A090.713260] kobject_add_internal failed for pgd_cache(21:syste=
md-tmpfiles-
> > setup.service) (error: -2 parent: cgroup)
> > [=A0=A0=A090.820012] systemd-tmpfile (1759) used greatest stack depth: =
27184 bytes
> > left
> > [=A0=A0=A090.861942] kobject_add_internal failed for pgd_cache(13:init.=
scope) error:
> > -2 parent: cgroup)
> > =A0
> > > Thanks,
> > > Mark.
> > > =

> > =

> > [1] https://cailca.github.io/files/dmesg.txt
> > =


-- =

Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
