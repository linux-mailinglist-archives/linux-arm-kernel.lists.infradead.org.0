Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9F81C1D8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 21:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ka/wBsCPI5E8cjCHiCpuAuSYf7mU15alFQBhxZdoCcg=; b=uaHuZgOzEy7M6h
	blPAM+ncCXag7gZ77pGfY9B0iErETgEa3xX85HcnCdPtTme10x8/yCWxNCqtVKV5nRltW/IJq/CWa
	7aZIRHeNvzcd2rJCDeDNM/UegN1VdfX/lwE2TT6L9Uxhd64Wa3QigjnGAQGx2Gh/koezr2Lc88G0H
	+5/XfPx1VsryIFx+QWo2+7kM+oXWTjJlKbDOvuTazTrtOzTmJZxDH3lRf/M9UIu/5kgAhT/BcOa8h
	GeojIiRXvHb75SG2W7RHAiIGoe6vlYLqYN/Us9fElgs85Yy3gn2tAivva/i4rZL2yUbLabJ5NMM+Q
	pXf0Ks10kSF5/SNLUTjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUax8-0001AG-VH; Fri, 01 May 2020 19:04:02 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUax3-00018y-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 19:03:58 +0000
Received: by mail-ot1-x342.google.com with SMTP id j26so3370753ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 12:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=landley-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dV5C6Mdo+d2z1U4ixXFwa14iL+t03v6nPukDTsNC/Pw=;
 b=rZ0wZNpFKPj00rZsGXQ/OEy65W5RTZI1U2mldKOKzrK3O8YxNmuwVKAmgNGlrMSPJh
 dQ3h/11zRchfbBtSsQytLXthXnqjbswFFdOTKhvnJz2vylobGQeZ+LFvJofa3n+r2q6h
 dCWQyfMflvlzhIlaKHECXHUiyMqYb5bOSgYxPZbKUIJ6kUtcquH4lk62KWBOPOZ0l2ly
 3GJhN0ZjLbVF5/vkNCtpBlDafYpeOL+d8ft0arZhky+HvLzbqIp0tD5btouJClcvo4hf
 7MIo2rkjDqc6lk3WUSAmT2r4xYoI+Vso+T69h2J6g+m95bxiajkPrGm0RbCSU1AKatT5
 HKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dV5C6Mdo+d2z1U4ixXFwa14iL+t03v6nPukDTsNC/Pw=;
 b=G8vSKbQsdqUwB5vUsvUJBTB779Z4ZDXHYcYXCquOWJDU7rVblOKXr9RTQFfEfDMkud
 ZoQ1QQ/DQMij9GtNEUwUKU6BePMdLnYOkUYtNks+zQT6WCS/czrRfndBpOph5rgQAtI5
 JYbPix+vcBv4Rgo0Ans36QS1Ml9eLCdN7urS0DoHUvUvAofTy3o9xlc6xQyxdrWzJmCV
 /UDjP3kHRRLkB30T7pnLJ4Xx0f6f8oIx1MJRtyyFR7JV/Wqf8aiEy3Rl30a1jKMwwaHi
 hkxeNJgvKwVvMlDpKXscWN8Ih3fRniVadx7kSXOpLTQwlvq0u4EsNpnryhJ/RflwI6Nf
 XNfQ==
X-Gm-Message-State: AGi0PuaP/Za+eP54NSbdzMfFXsv00q9rn5uzSfvgPrqoDQgThkl4p7iq
 yflDDf9ndAWdptJ54h44oNqScg==
X-Google-Smtp-Source: APiQypLpF0Ox0IO/qISGXS4LdidPlSkHRJysHJEBrOjiMzScpLoC5A3dEhhOSPrJ9hvlNYHsOmtChQ==
X-Received: by 2002:a05:6830:20d9:: with SMTP id
 z25mr4236191otq.254.1588359834043; 
 Fri, 01 May 2020 12:03:54 -0700 (PDT)
Received: from [192.168.86.21] ([136.62.4.88])
 by smtp.gmail.com with ESMTPSA id c26sm1024801otl.49.2020.05.01.12.03.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 12:03:53 -0700 (PDT)
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
To: Greg Ungerer <gerg@linux-m68k.org>, Rich Felker <dalias@libc.org>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
 <CAHk-=wgpoEr33NJwQ+hqK1dz3Rs9jSw+BGotsSdt2Kb3HqLV7A@mail.gmail.com>
 <31196268-2ff4-7a1d-e9df-6116e92d2190@linux-m68k.org>
 <20200430145123.GE21576@brightrain.aerifal.cx>
 <6dd187b4-1958-fc40-73c4-3de53ed69a1e@linux-m68k.org>
From: Rob Landley <rob@landley.net>
Message-ID: <cff13fb7-5045-4afd-e1d3-58af99d81d5a@landley.net>
Date: Fri, 1 May 2020 14:09:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <6dd187b4-1958-fc40-73c4-3de53ed69a1e@linux-m68k.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_120357_216318_527EF1C9 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Salter <msalter@redhat.com>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-sh list <linux-sh@vger.kernel.org>, Jann Horn <jannh@google.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Oleg Nesterov <oleg@redhat.com>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/1/20 1:00 AM, Greg Ungerer wrote:
>> This sounds correct. My understanding of FLAT shared library support
>> is that it's really bad and based on having preassigned slot indices
>> for each library on the system, and a global array per-process to give
>> to data base address for each library. Libraries are compiled to know
>> their own slot numbers so that they just load from fixed_reg[slot_id]
>> to get what's effectively their GOT pointer.

fdpic is to elf what binflt is to a.out, and a.out shared libraries were never
pretty. Or easy.

>> I'm not sure if anybody has actually used this in over a decade. Last
>> time I looked the tooling appeared broken, but in this domain lots of
>> users have forked private tooling that's not publicly available or at
>> least not publicly indexed, so it's hard to say for sure.
> 
> Be at least 12 or 13 years since I last had a working shared library
> build for m68knommu. I have not bothered with it since then, not that I
> even used it much when it worked. Seemed more pain than it was worth.

Shared libraries worked fine with fdpic on sh2 last I checked, it's basically
just ELF PIC with the ability to move the 4 segments (text/rodata/bss/data)
independently of each other. (4 base pointers, no waiting.)

I don't think I've _ever_ used shared binflt libraries. I left myself
breadcrumbs back when I was wrestling with that stuff:

  https://landley.net/notes-2014.html#07-12-2014

But it looks like that last time I touched anything using elf2flt was:

  https://landley.net/notes-2018.html#08-05-2018

And that was just because arm's fdpic support stayed out of tree for years so I
dug up binflt and gave it another go. (It sucked so much I wound up building
static pie for cortex-m, taking the efficiency hit, and moving on. Running pie
binaries on nommu _works_, it's just incredibly inefficient. Since the writeable
and readable segments of the ELF are all relative to the same single base
pointer, you can't share the read-only parts of the binaries without address
remapping, so if you launch 4 instances of PIE bash on nommu you've loaded 4
instances of the bash text and rodata, and of course none of it can even be
demand faulted. In theory shared libraries _do_ help there but I hit some ld.so
bug and didn't want to debug a half-assed solution, so big hammer and moved on
until arm fdpic got merged and fixed it _properly_...)

Rob

P.S. The reason for binflt is bare metal hardware engineers who are conceptually
uncomfortable with software love them, because it's as close to "objcopy -O
binary" as they can get. Meanwhile on j-core we've had an 8k ROM boot loader
that loads vmlinux images and does the ELF relocations for 5 years now, and ever
since the switch to device tree that's our _only_ way to feed a dtb to the
kernel without statically linking it in, so it's ELF all the way down for us.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
