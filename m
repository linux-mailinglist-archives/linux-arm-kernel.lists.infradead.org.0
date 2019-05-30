Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE452F914
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QLhazyTQVxQQcBW0fE8kHp90xJSHHHABiloq9pvbTeI=; b=jI0OsLSaKx9VQv
	eiEFe/KyN6OOuR8DUWmqhZBqBom11JAaRvvRFC6pYQEYN9c+D19su4o8dhBHm2XaT+B2fJEBmRnhS
	zKbnYrnlY3SdNxwjlOnxY9iK0jsDdhfcxdbYQkxQfECX8/K3IUznDhvfpA7xeV1sUzUYgXmpIC/eX
	6qDUbExAglpEf6GP4DLmf1HfqhbFJO7a1P+ni+HdsCnWbwCybpFIpSIpiSHV/LOPb01kjuP4FOlL9
	3MVmMej9L/5dKZcuUgHN5L8bZnPT/kWx+MV3G2m546/7rZ2sK3eYagmQ+laT3gl76nuPvUiT8v57x
	fKRN27qTmDF/1cFDxplQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWH7K-0003R1-Es; Thu, 30 May 2019 09:12:58 +0000
Received: from mail-it1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWH7A-0003QC-5o
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:12:49 +0000
Received: by mail-it1-x129.google.com with SMTP id g23so7689722iti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 02:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=SkOH+2aVMTTrn2aPrwV+avRtSnS97B7YiqC7EyHZCRc=;
 b=TCI9NGbogYuqDno5cy65AIc2Y5JkjdFNJqV71CEsJJCAon6miJH79zy2P40eKudu/2
 EPQlgKlXXMSHo1FV26GklmDadqYqsfaYRfm6LLksyfGgJFH35XArEI4wRdByueS18Lgd
 LQX7bwaAPZIAlvv0YuQT6jOodxaxii0HNhI0MWflYISsEjFtw8gCkNkvVFeYiHqVg9iO
 DX05D0ZvNy2VxeIGXsov9Nn5nokbN4emZAYYdsp9kk46fPr28fPkeykZW4ucNRnHR8H4
 iryO1Gnt65DueE3Qh3UiDcMd3aD0kkrvLpPPov9+9qgx7cQ39z88lu6v46QPrsuZO91O
 KUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=SkOH+2aVMTTrn2aPrwV+avRtSnS97B7YiqC7EyHZCRc=;
 b=StDWOSWeLJvZDRXGImDrhFHhKnWuAoWpRA8nMfAuXZbNgh+urSUBuboWBQsIyYlgJq
 NUCS9ygT5fHyyj6WcjoRfZm+hwHUi1CWPS2KNvphgVZ17HJAAri2PG8hXn4wDHXdi7pV
 uoXbL7+BPYIAvXOSVPiPjNi/Q1vXGRKgIjXeEwOtpKpucCeey0wzIN8+9amr+Jpc4W/t
 H3GW7NrPUpJfxXEUWXUmGMUqKkWQydgl3KltsewI2HhMMWB3uVU9duJ/toCDmFsLjCzV
 nlCRWRuO3mKcQqA67k7zWRYqOdwAPHJ3B9U8eZ3Mp4b1CvR2mnHtZDI88y6q9jx4FISp
 DxIg==
X-Gm-Message-State: APjAAAVVFARYFY7f2Tn4T1a9ZElj+3ehGrLMs4hMIdatJHGXYxXEuAUN
 B8lGGm3WGM2DgGV8IDXDgq6g8T9inO87PuBuc+0=
X-Google-Smtp-Source: APXvYqzsOH5kpkE91pnnv4EmlCnOH0RsbgadxKuzo2pVvZfhSHd5sOWD7cYrTuC5IsafHDZ063NUcUmcQDWWpzSsnAk=
X-Received: by 2002:a02:b47:: with SMTP id 68mr1549165jad.66.1559207566318;
 Thu, 30 May 2019 02:12:46 -0700 (PDT)
MIME-Version: 1.0
From: Peter Robinson <pbrobinson@gmail.com>
Date: Thu, 30 May 2019 10:12:34 +0100
Message-ID: <CALeDE9Owj-y6CEfjwjavkdCEcTGenMJoKBvDzR+nVMrKVFQmMw@mail.gmail.com>
Subject: Issues with initialising generic crypto implementations earlier on
 ARMv7
To: Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_021248_238860_8C7B5479 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

I'm seeing the crash below on ARMv7 devices, at least the Raspberry Pi
and UDoo Neo (i.MX6SX), with your "crypto: run initcalls for generic
implementations earlier" patch. It's causing the boot to fail very
early on across the ARMv7 devices I've tested on Fedora (I'm the Arm
lead for Fedora. Reverting the patch makes the problem go away. I'm
unsure why initialising it earlier in the boot would cause issues, any
chance you could assist in sorting the issue out? Tested on 5.2 rc1
and rc2.

Regards,
Peter

[1] c4741b23059794bd99beef0f700103b0d983b3fd

[    2.239276] cryptd: max_cpu_qlen set to 1000
[    2.257316] alg: No test for lzo-rle (lzo-rle-generic)
[    2.262883] alg: No test for lzo-rle (lzo-rle-scomp)
[    2.268303] alg: No test for 842 (842-generic)
[    2.273154] alg: No test for 842 (842-scomp)
[    2.299763] Unhandled fault: alignment fault (0x221) at 0xc0eb987e
[    2.306015] pgd = (ptrval)
[    2.308746] [c0eb987e] *pgd=80000000207003, *pmd=00e0071d(bad)
[    2.314650] Internal error: : 221 [#1] SMP ARM
[    2.319137] Modules linked in:
[    2.322228] CPU: 0 PID: 142 Comm: cryptomgr_test Not tainted
5.2.0-0.rc2.git0.1.fc31.armv7hl+lpae #1
[    2.331455] Hardware name: BCM2835
[    2.334902] PC is at gf128mul_init_4k_lle+0x2c/0xa0
[    2.339834] LR is at kmem_cache_alloc_trace+0xc0/0x14c
[    2.345024] pc : [<c071ec8c>]    lr : [<c05d0ab0>]    psr: a0000013
[    2.351355] sp : eafcfcf8  ip : ead04000  fp : ead71dc0
[    2.356632] r10: 00000000  r9 : 00000000  r8 : c0eb987e
[    2.361910] r7 : c0eb987e  r6 : c12576c0  r5 : c0eb987e  r4 : ead03000
[    2.368506] r3 : 00001000  r2 : 00001000  r1 : ead03000  r0 : ead03000
[    2.375103] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment user
[    2.382313] Control: 30c5383d  Table: 00203000  DAC: fffffffd
[    2.388118] Process cryptomgr_test (pid: 142, stack limit = 0x(ptrval))
[    2.394801] Stack: (0xeafcfcf8 to 0xeafd0000)
[    2.399203] fce0:
    ead71600 c0eb987e
[    2.407472] fd00: c12576c0 c0eb987e c0eb987e 00000000 00000000
c0729434 00000010 ead71600
[    2.415742] fd20: c12576c0 c0713f90 ead71d80 00000010 c0bf55c4
c0eb987e 00000000 00000010
[    2.424012] fd40: 00000000 c07134a4 00000000 ead71540 c0bf55c4
eaef5400 eafcfe80 c071aa1c
[    2.432282] fd60: 00000000 00000001 eaef5400 ead71d80 c0c1a89c
ffffffff 00000073 00000400
[    2.440550] fd80: 00000000 00000000 00000000 00000014 00000000
00000000 00000cc0 00000000
[    2.448820] fda0: 00000000 eafcfda4 eafcfda4 00000000 eac01c00
00000000 00000000 eac01c00
[    2.457090] fdc0: 00000084 c070d15c eafcfd30 c05d0824 00000dc0
00000dc0 00000004 c0bf4a14
[    2.465360] fde0: 00000040 eafcfe5c eafcfe80 eafcfe58 ffffffff
eafcfe80 eafcfe18 1503017f
[    2.473630] fe00: c0f3bf27 c0bb9d5c ffffff0f ffff0a00 eac01e00
eadcb180 ffffff0f ffff0a00
[    2.481901] fe20: 00000024 00000000 eae96c00 ead71540 eaef5400
ead71d80 eadcb180 00000000
[    2.490171] fe40: eae96c00 ead71540 eaef5400 ead71d80 eadcb180
00000000 00000000 c071b144
[    2.498441] fe60: ead71540 eae96c00 eadcb180 87c8332f ead71dc0
c0c1a89c c0c1a89c 00000006
[    2.506710] fe80: eafc0030 c0483f9c 0000407f c048610c 0000407f
00000006 eaef5400 0000000e
[    2.514980] fea0: 00000400 c0c1a89c c071b1a0 ffffffff 00000073
c071b250 00000400 eaef5400
[    2.523250] fec0: eaef5400 0000000e eaef5480 c137ae08 00000400
c071a0a4 00000000 eb3c8704
[    2.531519] fee0: 00000001 eafcff50 00000004 c0bbe504 00000009
c121d158 eafcff0c c047aaf0
[    2.539790] ff00: c120a000 eafacb00 eafcff3c c047ac74 c1200018
eafacb00 c120a000 24854451
[    2.548061] ff20: eb3d3140 eafacb00 c120a000 c1236200 eb3d3140
eafacf68 eafcff7c c0bbe3d8
[    2.556331] ff40: ead0de24 00000000 00000001 ead0de20 ead0de24
00000004 ead0de20 eafacb00
[    2.564602] ff60: eafce000 eaef5400 eaeea4c0 eafce000 ead0de20
eaef5400 c0716c34 eadcb35c
[    2.572871] ff80: 00000000 c0716c60 eadcb340 c0473000 eaeea4c0
c0472ef4 00000000 00000000
[    2.581140] ffa0: 00000000 00000000 00000000 c04011f8 00000000
00000000 00000000 00000000
[    2.589408] ffc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[    2.597676] ffe0: 00000000 00000000 00000000 00000000 00000013
00000000 00000000 00000000
[    2.605961] [<c071ec8c>] (gf128mul_init_4k_lle) from [<c0729434>]
(ghash_setkey+0x48/0x5c)
[    2.614325] [<c0729434>] (ghash_setkey) from [<c0713f90>]
(crypto_shash_setkey+0xbc/0xd8)
[    2.622599] [<c0713f90>] (crypto_shash_setkey) from [<c07134a4>]
(crypto_ahash_setkey+0xbc/0xd8)
[    2.631486] [<c07134a4>] (crypto_ahash_setkey) from [<c071aa1c>]
(test_hash_vec_cfg+0x74/0x60c)
[    2.640286] [<c071aa1c>] (test_hash_vec_cfg) from [<c071b144>]
(__alg_test_hash.constprop.0+0x190/0x1ec)
[    2.649875] [<c071b144>] (__alg_test_hash.constprop.0) from
[<c071b250>] (alg_test_hash+0xb0/0xf8)
[    2.658936] [<c071b250>] (alg_test_hash) from [<c071a0a4>]
(alg_test+0x330/0x3f8)
[    2.666504] [<c071a0a4>] (alg_test) from [<c0716c60>]
(cryptomgr_test+0x2c/0x4c)
[    2.673988] [<c0716c60>] (cryptomgr_test) from [<c0473000>]
(kthread+0x10c/0x118)
[    2.681559] [<c0473000>] (kthread) from [<c04011f8>]
(ret_from_fork+0x14/0x3c)
[    2.688856] Exception stack(0xeafcffb0 to 0xeafcfff8)
[    2.693960] ffa0:                                     00000000
00000000 00000000 00000000
[    2.702228] ffc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[    2.710494] ffe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    2.717185] Code: e5930030 ebfac75a e2504000 0a000019 (e895000f)
[    2.723350] ---[ end trace 9839f43693f21333 ]---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
