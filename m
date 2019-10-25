Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48129E45AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmHUUl97g3B5pqZKhdhweNj6gA93jXLPBCQMaKKGBAc=; b=pCgsqrlxUpSaLB
	HcNXCX6qg7DLv9bH5gEz40xjkFxCj0rsDY+ctz1cJXjF9ESOyIy2QA+IfK7VcCAlIN24g/9BeN+He
	9xW+3syOYVJUrZ5T3zV+gYzksU5QlyF4KGckd6rqvwWEeYu/rLzg+o0LHzlasrdROoJ8bvuHT5KcK
	SIXzUy/3r1IWCKASgRSUwc1I8rLxZGLIStOlyMcgfuQeWAllJNOl6KUU8rzOaZr3m/FPCQriMpvUF
	GQS3vQpJk2GVlvJF+fO41175aY9GPDbstsLljGLL/6hyuSBuIlwvALOLfgItR8HtTl1ZaZkNKpEc0
	RnVaLTBsgUqXB9RHIABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuuL-0004hK-0s; Fri, 25 Oct 2019 08:25:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNutt-0004Xm-Ih
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:24:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id p4so1243258wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QJej2zrE0QBqg+iZe6C/nm9jF4Wofv1H//Qo71L/Lag=;
 b=Kf2QBuVDRfq6+w0N7DCDZImKcWFxzkw3pvVhiEdnzg1XkUgGeTTSWLT/AXDil240QQ
 hoyIRS/bK4lqFnlz87IYHANGs4Xws7dB93EvJssGohry3bsXOshEno6Dqk4BPaPnfpRY
 MW1z665u1spkHgC4bGahdMT464TLw+1YH8Z8lmyJ1nskaMZZ46OQsKn2jmmBRxe0Ncvr
 RfQX4whxGZGnyVjXC+tZgkm3LVXnhyuhXcBmsUKSK8o7DckMmoVIGMkNC1lf4WASjicO
 /1VKnZn2qgrQn2r3sA6XsMoV6YvwKEEDchmOtm6V2itNyqrXRr+3KxQQLEV90vCR7S6U
 0kew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QJej2zrE0QBqg+iZe6C/nm9jF4Wofv1H//Qo71L/Lag=;
 b=aEU8ICUwsEozvlyUq6EKZOoX/y1nyRlRL8cVNUnNlwhgxZVHY5YrZi8SLefFR7U4jZ
 +OeNreFni5LBwfBNcWrhLZoMGoF39T7nSbZbKuVIXIYdTWLgAgHYsDmUSmQM2hbCM/WG
 TC2MfDfyC4Gab7Q1oVA9wqz7LEvYxDcqLwInWsp4qTtJEtOOjjVzV/qv4RSi6OTmfcsy
 yDCW+tXLNFYzC0o0jlCSbvjohO8Vj99OVB84k8acMm17aFYMs7Z3Fj308C/cxV11LKNB
 ZbiwVFRX+C1kOrgca3SkL5IVn+gJHzSZG614pSpedkQvz9SZ8Xw/ee+zcAR6vRRQg3XE
 pXIg==
X-Gm-Message-State: APjAAAVeS+MTlUOZr5mKAFAo9ZOq1YQNlG6zd3oEvGp4YwwmhGXrTjR1
 m+2WUEebdqcC8btcJhTlzXxKbA==
X-Google-Smtp-Source: APXvYqyVbVYhcUVjlWsHAWMsNSTmIYOz09PiXSzKL+kucF3259sySENSkNokb9u6ffLnyHFkS8YN/A==
X-Received: by 2002:a5d:4aca:: with SMTP id y10mr1692223wrs.292.1571991887824; 
 Fri, 25 Oct 2019 01:24:47 -0700 (PDT)
Received: from [66.102.1.109] ([149.199.62.131])
 by smtp.gmail.com with ESMTPSA id b5sm1290058wmj.18.2019.10.25.01.24.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 01:24:47 -0700 (PDT)
Subject: Re: [PATCH 06/12] microblaze: use pgtable-nopmd instead of
 4level-fixup
To: Mike Rapoport <rppt@kernel.org>, linux-mm@kvack.org
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-7-git-send-email-rppt@kernel.org>
From: Michal Simek <monstr@monstr.eu>
Message-ID: <aa7df5a1-5022-bc82-8816-74c956e2fd90@monstr.eu>
Date: Fri, 25 Oct 2019 10:24:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571822941-29776-7-git-send-email-rppt@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_012449_745931_8EA6525B 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 23. 10. 19 11:28, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> microblaze has only two-level page tables and can use pgtable-nopmd and
> folding of the upper layers.
> 
> Replace usage of include/asm-generic/4level-fixup.h and explicit definition
> of __PAGETABLE_PMD_FOLDED in microblaze with
> include/asm-generic/pgtable-nopmd.h and adjust page table manipulation
> macros and functions accordingly.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/microblaze/include/asm/page.h    |  3 ---
>  arch/microblaze/include/asm/pgalloc.h | 16 ----------------
>  arch/microblaze/include/asm/pgtable.h | 32 ++------------------------------
>  arch/microblaze/kernel/signal.c       | 10 +++++++---
>  arch/microblaze/mm/init.c             |  7 +++++--
>  arch/microblaze/mm/pgtable.c          | 13 +++++++++++--
>  6 files changed, 25 insertions(+), 56 deletions(-)

I have take a look at this and when this is applied on the top of
5.4-rc2 there is not a problem.
But as was reported by 0-day there is compilation issue on the top of
mmotm/master tree and I am able to replicate it.
It means there are other changes in Andrew's tree which are causing it.

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
