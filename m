Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF4CB1A91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmvKOOuqbGhHzWkzFUr9mhYQ8jbNpUBrmy0PxK86Yj8=; b=K+ki2JkUvUgCu3
	DayYp4kj18sPSUKL2KTpS8nOJM8tO2fRyVQY3BNWgvaHFc3HbugALE9Md4CIFs3+ExYCp1glN74kq
	uvqaJCEDrT9pkDSTAMnXBYvpE1WNQABBqLt0DAS7jK8IJ4VwxtkZsLmlDho7eNmpPREgvBaJE54/H
	Kd2Yl7vr+UYcX2WSsqqTZ04PJ504w1kS0H5QNNwX17lhJB5vb735iHiurnfuQ/z2Luz+0nMbc77xi
	EZK2lAa/xr2CKiJR/NPGQw40hLt+IuT29FKfuIaNjwa3olSqZa5S+NtZX6s/bnXuXmp0oedK/pSlK
	ec6o+j22ptlFFxxT5Spg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8he8-0000Q2-Rt; Fri, 13 Sep 2019 09:13:41 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hdZ-0000On-6T
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 09:13:06 +0000
Received: by mail-ed1-x543.google.com with SMTP id f19so26375064eds.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 02:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GEliFawsGnvWaq/wjC8o7X+uw8pCAUzjjDt3si5wKpw=;
 b=cuhllGlp2MOrdGub8Xg9DSnbN4UNbu5MAj+tu2g8/hUaiRvqMMOHfTNwMUyS5pk0Wh
 Cr/5CrT44vV+Lu6MEqICuL5EsXflVt2aB1CYOvw49Ff95R0+EpyudeDA0c1SjKiSBgvJ
 j392DdO8k5wtN6+t0Mq4Pin3skB6EB7fqWabfD22XoO9Zau3MU3BJhMVCPaEwzZDcctL
 3Z1utSLzZkSKBXiuC7y0bwtRfMC6JHyQJ4KI6FWcJD3QstGxSDpCFQt7SWa9ffXb7iM8
 Ka/YoQxle3ll0z8qQj2WsoJL1cViPtFo+jeRDT45DkakRyYbR2vwrsjhDwiP9OSANs1/
 05gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GEliFawsGnvWaq/wjC8o7X+uw8pCAUzjjDt3si5wKpw=;
 b=a8pYadsoSg6OJzPXoaSf9c+8zVb+5/pTynndc9H4na3wbkhUYbsbWy5sz/paL9q2Nm
 MQYbKkxWETmg9H4aFsoMPpid/TrEYczCrYzjhWjiyy7hdX1Abqh/oK5mzqsN213nuNq0
 9IqvHXoRmD+6c5f3P7x1NUs5RB06nigultb7UXP6jkoQSWQdPVpOsaq0LqVMA8xLN3wS
 ooJTOfzunprisRi4OWQXMtkHJEllvqV+n9dP2GotXXdHcC146+OmN02ESsFQtqrLonqs
 gEiSPomXsHz+sVVHGywVS2dIXd6otGkqUzpmiykKf0cfZUXIGkJ/s/dPrqjPOwJ0L4/w
 ezZA==
X-Gm-Message-State: APjAAAVlPk3xelBTBv6TMnA5afq7seOCuhfBpB/oOu312E/7vVecrpHl
 2zhTrMAikGqCRFf6XcAQ1iwRJg==
X-Google-Smtp-Source: APXvYqz9+Jjoiq6EpEOnNn2ue7LgRH298IcNtOZjCAdMkVz1fw1ulTQ0FfVWoOu1Q7FOQkoJoXJfvw==
X-Received: by 2002:aa7:da59:: with SMTP id w25mr44834467eds.143.1568365983857; 
 Fri, 13 Sep 2019 02:13:03 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id oo23sm3092469ejb.64.2019.09.13.02.13.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 02:13:03 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 3271B10160B; Fri, 13 Sep 2019 12:13:05 +0300 (+03)
Date: Fri, 13 Sep 2019 12:13:05 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating
 architecture page table helpers
Message-ID: <20190913091305.rkds4f3fqv3yjhjy@box>
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <ab0ca38b-1e4f-b636-f8b4-007a15903984@c-s.fr>
 <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <502c497a-9bf1-7d2e-95f2-cfebcd9cf1d9@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_021305_238745_9978402B 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 02:32:04PM +0530, Anshuman Khandual wrote:
> =

> On 09/12/2019 10:44 PM, Christophe Leroy wrote:
> > =

> > =

> > Le 12/09/2019 =E0 08:02, Anshuman Khandual a =E9crit=A0:
> >> This adds a test module which will validate architecture page table he=
lpers
> >> and accessors regarding compliance with generic MM semantics expectati=
ons.
> >> This will help various architectures in validating changes to the exis=
ting
> >> page table helpers or addition of new ones.
> >>
> >> Test page table and memory pages creating it's entries at various leve=
l are
> >> all allocated from system memory with required alignments. If memory p=
ages
> >> with required size and alignment could not be allocated, then all depe=
nding
> >> individual tests are skipped.
> >>
> > =

> > [...]
> > =

> >>
> >> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> >> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> >> ---
> >> =A0 arch/x86/include/asm/pgtable_64_types.h |=A0=A0 2 +
> >> =A0 mm/Kconfig.debug=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 |=A0 14 +
> >> =A0 mm/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 1 +
> >> =A0 mm/arch_pgtable_test.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 | 429 ++++++++++++++++++++++++
> >> =A0 4 files changed, 446 insertions(+)
> >> =A0 create mode 100644 mm/arch_pgtable_test.c
> >>
> >> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/includ=
e/asm/pgtable_64_types.h
> >> index 52e5f5f2240d..b882792a3999 100644
> >> --- a/arch/x86/include/asm/pgtable_64_types.h
> >> +++ b/arch/x86/include/asm/pgtable_64_types.h
> >> @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
> >> =A0 #define pgtable_l5_enabled() 0
> >> =A0 #endif /* CONFIG_X86_5LEVEL */
> >> =A0 +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
> >> +
> > =

> > This is specific to x86, should go in a separate patch.
> =

> Thought about it but its just a single line. Kirill suggested this in the
> previous version. There is a generic fallback definition but s390 has it's
> own. This change overrides the generic one for x86 probably as a fix or as
> an improvement. Kirill should be able to help classify it in which case it
> can be a separate patch.

I don't think it worth a separate patch.

-- =

 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
