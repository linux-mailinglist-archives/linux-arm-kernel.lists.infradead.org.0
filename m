Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC94E85C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7p0yXmLMoUbFYQ4agnRBnW1HXNx9S58/FYKJ9keFeE=; b=EQRD4nNSiaZT0l
	N5fcreZupvhHTRefvrWiyH/A6cU2l+H+U7SXV/H5MI8Lv8DTqZndvKMa1cY81iDPWArcee8ufYSiC
	ViMBYybZEdpn3hw78yijfGikIFo0zOonSmkLdSl/In8dSyjRhpXkDc3r6C47kXmQOI/Gk6UJvl3nj
	FSmD0m4AIx443+pw6J0w90e+2cCSTkxHx0n4BYRZs79IE94CoBrxW5pIY+yBSvjCMx9r7oiCNr82I
	4lvtfhbFRphVPbGCbKh6FJcpOyX/zzu1WPMomlQLa5AZowLcxZDtnen0UxoPmMod/oCVV+yw0wffP
	t5eRv+yz59P/GDe2BWDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOop-0001nx-Ry; Tue, 29 Oct 2019 10:33:43 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOmR-0008Ci-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:31:17 +0000
Received: by mail-qt1-x843.google.com with SMTP id x14so9090206qtq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 03:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9SS4b78ehrP4a9/DZbJX4AGCB0l2oYRtncqtM2VcVgs=;
 b=G/LkZ5EFLI13fNYweg2QLrX9wPwyX1HFJIpSnMQHTrMXQvOr8WcBlj7L6PpPDNjdgP
 i5InJ9pIYo4M2+ahXyCmJkm0/aSmAFV1b0ddTRW1LgRG7OVGwCri8wGtJhq7q7n0OHXS
 /62wwsP9sjkBXi1sfsKUBwKdoX3XI/7IX8CepjzvKNmSryJQnKF34LTh2GQ9WhtDP2dt
 IXSVXKbxiNcS5b+rYkiVMk/YKYGmnfMv31SeMxHd7e0Hp2u4HSyq7youtj+T3jqrMDT3
 TABjTwTyDtWr5DElB4lPasN8uyXQjZI6Au4SUlUuoJnmXJBOg31XRn9SRwxaflUvjklQ
 6j8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9SS4b78ehrP4a9/DZbJX4AGCB0l2oYRtncqtM2VcVgs=;
 b=kVqxdT/IrYM2zwLnPryxwUTov8YU4yXIu4JSDTa/UHOvf11RzGWh+f5bsgQ8KoCgEf
 6KaEGZYDRxU2p29AVIheoLQv4X0MnZgtVNBQS//SRuNG9JmkRYu6q98PxlMDDNgMOaJX
 PKGA6+9Lki345JnyI5DQLKs+NpqJxY1skw0APcgzz3CQhdZpvdS6crRTJ9mL5i63/4g/
 zRBTdZAhABO4FES72voJU4d86TrMUqsj/pP17ROrhRNcrRHQa3wqjwzQUYsp2EjQNpqq
 aMmL261bu85G019fbImdbXct4R9MBDIMrouB5gDoULneNpiB9VpGGHdCDmEFKlmnCD/S
 XmGw==
X-Gm-Message-State: APjAAAW8TxkxMXmGyRhszbsgp+51TCTXKwQXeINLxPQitHlltzwqb+7K
 ZsIwqm/EEEe7cMM28npdbRLTqw==
X-Google-Smtp-Source: APXvYqxu87KxuRTj39OXWAVjw/WFzSDMbE3Up95oGqmF/PZSf0Vx1vPkAAaomtV6kZQFzmiTSl4zEw==
X-Received: by 2002:a0c:f6d2:: with SMTP id d18mr6856697qvo.155.1572345072935; 
 Tue, 29 Oct 2019 03:31:12 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id t1sm7346140qkm.121.2019.10.29.03.31.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Oct 2019 03:31:12 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V8] mm/debug: Add tests validating architecture page table
 helpers
Date: Tue, 29 Oct 2019 06:31:11 -0400
Message-Id: <B6AAFA3F-745D-48E2-98CC-CFB30934CE39@lca.pw>
References: <1572240562-23630-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1572240562-23630-1-git-send-email-anshuman.khandual@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
X-Mailer: iPhone Mail (17A878)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033115_765834_0C622916 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Oct 28, 2019, at 1:29 AM, Anshuman Khandual <Anshuman.Khandual@arm.com> wrote:
> 
> This adds tests which will validate architecture page table helpers and
> other accessors in their compliance with expected generic MM semantics.
> This will help various architectures in validating changes to existing
> page table helpers or addition of new ones.
> 
> This test covers basic page table entry transformations including but not
> limited to old, young, dirty, clean, write, write protect etc at various
> level along with populating intermediate entries with next page table page
> and validating them.
> 
> Test page table pages are allocated from system memory with required size
> and alignments. The mapped pfns at page table levels are derived from a
> real pfn representing a valid kernel text symbol. This test gets called
> right after page_alloc_init_late().
> 
> This gets build and run when CONFIG_DEBUG_VM_PGTABLE is selected along with
> CONFIG_VM_DEBUG. Architectures willing to subscribe this test also need to
> select CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE which for now is limited to x86 and
> arm64. Going forward, other architectures too can enable this after fixing
> build or runtime problems (if any) with their page table helpers.
> 
> Folks interested in making sure that a given platform's page table helpers
> conform to expected generic MM semantics should enable the above config
> which will just trigger this test during boot. Any non conformity here will
> be reported as an warning which would need to be fixed. This test will help
> catch any changes to the agreed upon semantics expected from generic MM and
> enable platforms to accommodate it thereafter.

This looks like a perfect candidate to streamline with the new kunit framework, no?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
