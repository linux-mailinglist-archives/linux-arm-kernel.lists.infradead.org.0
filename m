Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EA95EF4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 00:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A21/8ltLNXGEkI0H6Q6HHG8RdtAnnY0gV+pwZxQlBns=; b=Obp5sO5B1fNWL9
	C2KDq37aWSH8gG8fuYLfkhyFV2WTHrRJ8NNoo8LDwKxhXSDWBRc+JKAxOFdY0I2WAtjL2I/1hWZ48
	XVkIOemT97KvEbA85cEqEulCtWyuC+3d5wHFVBDApW7hjvJx3/n+igKEEDVAw2QilI+V/jT9ESJ30
	TRCqJTUv9w4A/AKOJbeeAb4Mw2PT/7ltDNc6cgkgGeY8fVdWm5MvN+197hcqMNNW0fYOcHUWHtDxS
	Q+cueJ4ax3N4RvpQW8cpiIj/P9eIuCSsJWZC8wdbCnNxv5HWpIAmiZKjGuvWHYxWe3WytAzgXNraK
	Vcca7Kvo/aHAKOTJlB8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioCB-0005E0-LZ; Wed, 03 Jul 2019 22:57:47 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hioBu-0005Cj-BG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 22:57:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so8828652iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 15:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=uJUFOB1+pEjI3tqctrrTDNSdgarQtW2/vrE2Xz2pZ+I=;
 b=mlmuaMzWXwGNHTh1m9kPgfFo2Tw4pDtMkFdH4Q8+iwU6WOvBBv+g+2gbbLw3KWFaqb
 7FLAJSeHJgfzvHDK607Tlpd1IPoKX4mLRsWOcFka5tUNQoVMczZpTuh4/w9bFwzUXmPy
 UuCtSXoCq+HxS1tFFUH0y6rS8oD7aTWevTQPPr6ajTGvc9FGNDQrr3XF7LflhJeAMWGe
 SAmyBrF5/20cB6m7c25cdcrCzB28DIl9S1l7bCcUpCLgUd8bNVkX+R1x2h/BvXuYjhMZ
 YAUMvPh7JwSlOBjQVaVRhrOUuJHYb9xQ1QCSO3s9QqsWqosKNro4zaqPQrztFo4bJFQk
 bflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=uJUFOB1+pEjI3tqctrrTDNSdgarQtW2/vrE2Xz2pZ+I=;
 b=DrunqhvVr8bXXJm9TGMZq4Q01mFMHjF7AHCsIuZM1HnqfekeMUaP0SThwh8Y3J69Dl
 Sx4zPTJ3pRU1mrMp2BcYoqfI4hR6je+ABxfuqnUnb8G5rj18lR6NGfparR/com/2ZDEJ
 BqVrrXGfYl7GJpe80dzrjsgRAsyYIhEEms359alm5fjRQrOBsp4+YWsqEc34VZZ47JlO
 u60g3iiwCmRGtpFMqrGOqX53hZNNPBcg2St6aJr148iyJZLlGUGzBEUGn4vvptHBHJCA
 dBxO/KfOVNCTWevVQ1YNPVdPlBpuKh/CGPewI2bEIiCj3d3X2mbl5y+BBj8wNWR4ccvw
 BDRQ==
X-Gm-Message-State: APjAAAX5ILPkMYE4r5UTVGthqgh97EAisrSLUCVLlhma1Zh95rJ1UpTO
 nHjG4iX1HFzuWVZmoYw4Vo1+Bg==
X-Google-Smtp-Source: APXvYqyCZRuDgBNhLr4vL06qazVYpkUtLUhcx0drufzzinnuyuFvTR6JEyWtD29EbtSghjg4j3uMvQ==
X-Received: by 2002:a5e:9747:: with SMTP id h7mr1968603ioq.299.1562194647999; 
 Wed, 03 Jul 2019 15:57:27 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a7sm3741904iok.19.2019.07.03.15.57.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 15:57:27 -0700 (PDT)
Date: Wed, 3 Jul 2019 15:57:26 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v3 0/2] Hugetlbfs support for riscv
In-Reply-To: <20190701175900.4034-1-alex@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907031344330.10620@viisi.sifive.com>
References: <20190701175900.4034-1-alex@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_155730_455130_A402C962 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "H . Peter Anvin" <hpa@zytor.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

Thanks for writing and testing these patches, and thanks for your patience 
waiting for reviews and testing.

On Mon, 1 Jul 2019, Alexandre Ghiti wrote:

> This series introduces hugetlbfs support for both riscv 32/64. Riscv32           
> is architecturally limited to huge pages of size 4MB whereas riscv64 has         
> 2MB/1G huge pages support. Transparent huge page support is not                  
> implemented here, I will submit another series later.                            
>                                                                                  

[ ... ]

> This series was validated using libhugetlbfs testsuite ported to riscv64         
> without linker script support.                                                   
> (https://github.com/AlexGhiti/libhugetlbfs.git, branch dev/alex/riscv).          
>                                                                                  
> - libhugetlbfs testsuite on riscv64/2M:                                          
>   - brk_near_huge triggers an assert in malloc.c, does not on x86.               

I was able to reproduce the 2MB megapages test results on rv64 QEMU.  On a 
HiFive Unleashed, though, a few more tests fail:

- icache_hygiene fails ("icache unclean")

  # LD_LIBRARY_PATH=obj64 ./tests/obj64/icache-hygiene
  Starting testcase "./tests/obj64/icache-hygiene", pid 732
  SIGILL at 0x15559fff80 (sig_expected=0x15559fff80)
  SIGILL at 0x1555dfff80 (sig_expected=0x1555dfff80)
  SIGILL at 0x15561fff80 (sig_expected=0x15561fff80)
  SIGILL at 0x15565fff80 (sig_expected=0x15565fff80)
  SIGILL at 0x15569fff80 (sig_expected=0x15569fff80)
  SIGILL at 0x1556dfff80 (sig_expected=(nil))
  FAIL   SIGILL somewhere unexpected
  #

- One of the heapshrink tests fails ("Heap did not shrink")

  # LD_PRELOAD="obj64/libhugetlbfs_privutils.so obj64/libhugetlbfs.so tests/obj64/libheapshrink.so" HUGETLB_MORECORE_SHRINK=yes HUGETLB_MORECORE=yes tests/obj64/heapshrink
  Starting testcase "tests/obj64/heapshrink", pid 753
  FAIL    Heap did not shrink
  #

Some of these may be related to the top-down mmap work, but there might be 
more work to do on actual hardware.

> - libhugetlbfs testsuite on riscv64/1G:                                          
>   - brk_near_huge triggers an assert in malloc.c, does not on x86.               
>   - mmap-gettest, mmap-cow: testsuite passes the number of default free          
>     pages as parameters and then fails for 1G which is not the default.          
>     Otherwise succeeds when given the right number of pages.                     
>   - map_high_truncate_2 fails on x86 too: 0x60000000 is not 1G aligned           
>     and fails at line 694 of fs/hugetlbfs/inode.c.                               
>   - heapshrink on 1G fails on x86 too, not investigated.                         
>   - counters.sh on 1G fails on x86 too: alloc_surplus_huge_page returns          
>     NULL in case of gigantic pages.                                              
>   - icache-hygiene succeeds after patch #3 of this series which lowers           
>     the base address of mmap.                                                    
>   - fallocate_stress.sh on 1G never ends, on x86 too, not investigated.          

I can reproduce some of these here on QEMU.  But for reasons that are 
unclear to me, 1G gigapages aren't working on the HiFive Unleashed here.

In any case, these patches are clearly a good start, so I've queued 
them for v5.3.


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
