Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E675110B275
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3dUucrgK/8oyAbdTFiiOzWagBZjMd39Zh7aolsE818=; b=OBebS6+nPn27iB
	+T1dTH34Gp9Q9fJq7l7saki3NyAPUydjTq9FJyxO3x1eg5Xdt63mI9Sr7t6qXxES77czixktfeKmB
	l03Vkk68JbB6mGg4/NnTdNaZs8GvGxH3y8vk3lArpw/limCcT/oG/3aBYNbph+ENVIAYtqXpkLYjL
	S67YxZfEJklOmz1hn03tqMjc3IWD3ufBU3hySdsOBg/HfaST/imNZyZz/3rH/0VmTbHEWPcdXuJp1
	RY6xhV0yQcnuwWn+fbA61syJPM5oE51BWKg2AuoKkCCKCb+VyEJR3BsnyQ/6nWTe6wQFYZ9vuzbP7
	4gwPMEvgLYrtZl7IAycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzIg-0000cf-Hq; Wed, 27 Nov 2019 15:32:18 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzIV-0000cB-78
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:32:08 +0000
Received: by mail-ed1-x543.google.com with SMTP id a24so20036925edt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 07:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xep35NOUiSEhnzznO79e2fvbBNLtDBMI+/zstnlMPYc=;
 b=aTIeH/BzHrCwyIraGx4HfI21tiaCubyUHiuQLrXwGLSUKVjrY+ps0pcmHy4eRlm3PN
 tfitfqcvNJ3HUbAvxjz2HdEovCrH1HSvt6qWxfxsn8svACC2PNmYiYZzDkqLIyvPD6dc
 SYbo+KHbjyt8Gx0q6nOilLA1ErlqeWRysumRcNDAwNmxity5rmmVIGyPcg216/ETEdi2
 FVU2F3dSV6nNMy3ZkFOkTupdiy6zg7MY2h6uBYIHGOtj5Mi/BVhJfvPAqUFMhZ8chHHM
 LM7sC4fo5gcgcFmNR+aeax3OQJQyxyaxAW5JiCFgFEy33LjEUzX6TT964OfF+8/eCNRz
 3NNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xep35NOUiSEhnzznO79e2fvbBNLtDBMI+/zstnlMPYc=;
 b=DF5BkiFlC6bSTemVHx7jc3FkwTnfO+VjzdMSaUIIPoIOKADYKmiSPE8GgD7WGNnYZH
 5UjaDoHD1sYHGB16De1fLIjz/kwCRKNEAJipL+wdj4F9c8QJU+gJ08mx1rZg5nvRp2Ez
 OZi20cuPSIwFC0IFBAyaHoVOQMZkjlImmmlvTbEH7ota7us7FuYGZUGGeAMsf2yXVHGt
 hyU8Gu5Q7MW1D95WqS2gMNEAdEdikhU8ISIII5HNe1Whk1yI7ggcAddQtQmPvukn7R5r
 aIPIVs1xpYA6bHN4RfkgpJ1ZpoW38hBBOKR2LruY3RnxH1dy3VgyEFjVfRX+wze/xhx4
 ATtA==
X-Gm-Message-State: APjAAAXfYgCWHEN7zVW1nsZc3oXWtZtfBGo9AKNJzFSY7gmj0MOjE7V4
 e03bYtLlIVlDIfarjljXPP149A9kBQFOO0dnA3cBGQ==
X-Google-Smtp-Source: APXvYqw+fdhDVDwoSsZuVb3eLmS5SoW5oV0ma0DwgE4YGBgMCjVO3YAn2ZeKw6HasOpTNrIjFoMuZFR2WFJKRJ/d0OA=
X-Received: by 2002:a17:906:a2d0:: with SMTP id
 by16mr1286976ejb.322.1574868725771; 
 Wed, 27 Nov 2019 07:32:05 -0800 (PST)
MIME-Version: 1.0
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-4-pasha.tatashin@soleen.com>
 <20191127151154.GC51937@lakrids.cambridge.arm.com>
In-Reply-To: <20191127151154.GC51937@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 27 Nov 2019 10:31:54 -0500
Message-ID: <CA+CK2bDDom_pwLC-ABwDw66ynyELH3f3NdjUEdhr1LYLkgWJvg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: remove the rest of asm-uaccess.h
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_073207_277646_376BECAF 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 10:12 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Thu, Nov 21, 2019 at 09:24:06PM -0500, Pavel Tatashin wrote:
> > The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
> > are the last two macros defined in asm-uaccess.h.
> >
> > Replace them with C wrappers and call C functions from
> > kernel_entry and kernel_exit.
>
> For now, please leave those as-is.
>
> I don't think we want to have out-of-line C wrappers in the middle of
> the entry assembly where we don't have a complete kernel environment.
> The use in entry code can also assume non-preemptibility, while the C
> functions have to explcitily disable that.

I do not understand, if C function is called form non-preemptible
context it stays non-preemptible. kernel_exit already may call C
functions around the time __uaccess_ttbr0_enable is called (it may
call post_ttbr_update_workaround), and that C functions does not do
explicit preempt disable:

> We can certainly remove the includes of <asm/asm-uaccess.h> elsewhere,
> and maybe fold the macros into entry.S if it's not too crowded.

I can do this as a separate patch.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
