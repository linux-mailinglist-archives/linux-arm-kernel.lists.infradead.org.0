Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418B2F8895
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rXeMOpAt215EI1tHt4YJMn3IxrQYzEe4Mi6a2mDZ9E=; b=P/rvObC6Ltj0bY
	41oto9eVuLr4F9fMH9lwLr+gXmaP+a8Er4Q6MHA8vEpmUm7arKo0r+Yw8iaARemQFmkl55FYS7B6p
	+Brs6pzYtM6I/VuW3J/2V1J0IdzQjwzxcelj70n2wwGKPGAAEcE2TtXr1knCZ78irw4hf0sPthZHO
	b854dzCGo5VAR3+J+yPLdNKjTjRg9B64YH4QK2YGluQuPPbr3Rvy5T+ONrw8aZe5owZXdcv3sJLyb
	kKJh38qBLePDr2MGWDk8bz3eFLMvxfm30rbC+QNe/0+z8/beaHvdRCi/HvfIQL9JHc5j9TlmNSo7t
	ad5CROV58KRwgUO8FcBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPhy-0003d7-5X; Tue, 12 Nov 2019 06:31:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPgd-0001S6-Oe; Tue, 12 Nov 2019 06:30:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id z10so11837308wrs.12;
 Mon, 11 Nov 2019 22:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lAYMmo1eJk0nu5Pp/QFztO4nECppTXXyiwDmyLApAMU=;
 b=CmNQS9o057m02iB3aVZCvD9IKuX8qvcKJgJUgyo4KExtj2bJGSViNfCsIbt5SiuwMO
 vuoCblpkhQtIhImySY2l9xgcSalma2cLx/gmbDWtxOG+KeWeZqQREyCEiZtz2MaeiTEY
 RldTTXX6x5mGp2gTJOMJKKnH3ErtuhTGJVb/oxnV4qflBhEKc0iGhFu9X9Z6Ewwj/nv7
 RJ+bk94WWdoFyERGDm1828mxsXI6cvzgXYdmifbVY3rPGuNlfG2Jz7tz9D0yBEL7amvI
 N9XaeSRhLvOl3rh+bmOKbDc4uYMU01us4xdrDKX0UOdp1yr6ys5I9p7y6gCnhALJgHcw
 WXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lAYMmo1eJk0nu5Pp/QFztO4nECppTXXyiwDmyLApAMU=;
 b=rmoyZX8sA295iz9Z7wImEeOsk62c58KdhXYLWjMSaEtxp21kYHlsmNY26EYkHIV9+a
 mQjGBlYFiA3vxVTKju8r3iBN59r0ResLPN1nJEN4opDC8T+89PuT4ebHsyfoCepynvzB
 xU5vvbbrxqmTWlenjFyPKBm7tcxNd0sms3xx9gGma1V6hK+XQXYAEUdBkFXj/s2BiNeg
 Wa+RCdm4LQZGo1pwAYYbmqVZoXDMmJrewtH93g7z5IwRxprnesrv5qTWI8pKs0Wvq56m
 s5XUYA/2y9HUpZHCK+IpF24KIZkLQB7eCLCPFvon8bxD4cabEt3us1YVTfan4jATpFB9
 1f9A==
X-Gm-Message-State: APjAAAX4UYutoZE9PNnMou7lJQpsBvWdcSdeWcSZ9f7pIWvqzyac6mL4
 jyoKzVxm59aQogPXwgat2U4=
X-Google-Smtp-Source: APXvYqwg7II6op5rkcQCA+kVGqp8JW9qmm3wOv2otknPBBGlW4hCTPNNQNQ0ueZUnows/DjxDY46Ng==
X-Received: by 2002:adf:ab4c:: with SMTP id r12mr23079230wrc.3.1573540195668; 
 Mon, 11 Nov 2019 22:29:55 -0800 (PST)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id 19sm40418570wrc.47.2019.11.11.22.29.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:54 -0800 (PST)
Date: Tue, 12 Nov 2019 07:29:51 +0100
From: Ingo Molnar <mingo@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V9] mm/debug: Add tests validating architecture page
 table helpers
Message-ID: <20191112062951.GA100264@gmail.com>
References: <1573532326-24084-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573532326-24084-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222959_854360_C95A24AF 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.7 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
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


* Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> +config DEBUG_VM_PGTABLE
> +	bool "Debug arch page table for semantics compliance"
> +	depends on MMU
> +	depends on DEBUG_VM
> +	depends on ARCH_HAS_DEBUG_VM_PGTABLE
> +	help
> +	  This option provides a debug method which can be used to test
> +	  architecture page table helper functions on various platforms in
> +	  verifying if they comply with expected generic MM semantics. This
> +	  will help architecture code in making sure that any changes or
> +	  new additions of these helpers still conform to expected
> +	  semantics of the generic MM.
> +
> +	  If unsure, say N.

Since CONFIG_DEBUG_VM is generally disabled in distro kernel packages, 
why not make this 'default y' to maximize testing coverage? The code size 
increase should be minimal, and DEBUG_VM increases size anyway.

Other than that this looks good to me:

  Reviewed-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
