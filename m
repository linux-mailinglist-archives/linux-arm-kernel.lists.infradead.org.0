Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F42E4321
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 07:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpSSyKvzkzEZHocDIdaIRC4P2tBsUlAk7LhGGvUPXDE=; b=j9+s9VrLNciLgS
	zSWP6iIHiDn4qBB7DkYu7sN8x8DXOcjmB2YWrQiVJalr8Rdkr0qsouZGn2WQ/K1jXCzb5UQ7Igkv9
	7UTFsFyHjQMPRhH37QeeULpcNvgeBPJA4rR0eUdeA+dHSza+KRGvcjczPCW21ykRgNhiY6mIPh103
	ZetiCh0az0wSLL0gUgTYaoSekAZ3wQ5cX41V5d0JZkpGjrVIc688F0/u9V1hDAcxNoT0pse6zdmCi
	zHkxJneTYLEtMrKsEx+MT0xlv2VEI+pNEKOqeiObERRhJu85CTuud/Rx3ae83DrYnKWkgW7FCSYxn
	j0XyNeo+Li+LcUxR38OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNsXG-0006BM-IX; Fri, 25 Oct 2019 05:53:18 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNsX4-0006A4-6m
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 05:53:07 +0000
Received: by mail-qk1-x742.google.com with SMTP id w2so718476qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 22:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=1iOcwXtGM80ggiAcn0tWj6rY4y3FXj3/K8+9W6cybNQ=;
 b=Zqxn3o9ynPwH66+Qcr9vdGz6gSYyudkpi+Z2Oz0jbhfPz7rA3PabNWQQCma5I+yARn
 eBlST1wXQLW765R9cjQEb7jShJbR5OSNoXMUXkknkPBFMVf5yWXTtaUsuk9Rd2PxzAmh
 q2AJBIMYQ1hbRT2IEgL/DenzigssaRzaLPngNDd0uNGZNn5VPmHDNtWOe5i7LU6gxGms
 DG+cRAyxM2Yo5dTFUbyEjy/oXZ60fHMnjOKMvqPhtEVeXP3HjJ0d5mzbSpqHawcBlByH
 TzKbaZfTQCyPdzEsLR/gqo/nNF6hyedXePJbHFV1sF38FX0OXhfyWuYjlDSDd9K5Iode
 sxFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=1iOcwXtGM80ggiAcn0tWj6rY4y3FXj3/K8+9W6cybNQ=;
 b=QnfHAhR2kWOZVkZpbnGOPSN7j1JS04ia+gGvKtnvH/IdAw43Ma1LPgu0Gk5mjqbv1U
 P2sKb0zi1nRq0I+ZgRNsiUoebRwkSdQN3qTltPzVtRx9itz7hEtqT8EYuJiZfwP7qodX
 Embzm+HmvuKRWhsmHXen1aAqHNfLVxj0eptx/EcI91CtfSIFa6npLtER/rL8NuKeuQHq
 mOuPMcggL/WR9NYm3hf5RLVXPBCWuDhzPEj33fkxU5v3UnEaL9ejuR9wzESxSKXaRvOy
 a6xT94/leJLHpKoUB8WcK5EuAIQMm/sIqmERJwuoCC85IIZH2w76T+PwH/97AR8KPT23
 83ZQ==
X-Gm-Message-State: APjAAAV2hQo3VpDqrccpgZTEnRZNSMxhIVOXigC6CFkDJ4dT45ei7HAj
 tcMI0pPmAoY1BUG2Oln1PMahew==
X-Google-Smtp-Source: APXvYqx2Df+s9byE/wNVstFnjLEksyrVQg6dm5A3OEDXYMZmbJ9PH0J1MBt8U1ezq/VXB9h6sxXS6Q==
X-Received: by 2002:a05:620a:a8d:: with SMTP id
 v13mr1326244qkg.113.1571982780765; 
 Thu, 24 Oct 2019 22:53:00 -0700 (PDT)
Received: from [10.250.15.239] ([76.191.34.78])
 by smtp.gmail.com with ESMTPSA id e12sm517936qth.55.2019.10.24.22.52.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Oct 2019 22:53:00 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V7] mm/debug: Add tests validating architecture page table
 helpers
Date: Fri, 25 Oct 2019 01:52:59 -0400
Message-Id: <69256008-2235-4AF1-A3BA-0146C82CCB93@lca.pw>
References: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
In-Reply-To: <ccdd4f7a-c7dc-ca10-d30c-0bc05c7136c7@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
X-Mailer: iPhone Mail (17A878)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_225306_251526_3C915550 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Oct 24, 2019, at 11:45 PM, Anshuman Khandual <Anshuman.Khandual@arm.com> wrote:
> 
> Nothing specific. But just tested this with x86 defconfig with relevant configs
> which are required for this test. Not sure if it involved W=1.

No, it will not. It needs to run like,

make W=1 -j 64 2>/tmp/warns
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
