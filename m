Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FE313514E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 03:24:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCXcCTeExQ9Fk62YhUzFsXUBmKnqVQaHRtZyeaKiSgI=; b=svfaHffPm1KiLD
	qDUXMJOgUMPclK73dWMCBnQY+lZbvSjzmn2ClyjZdWMusJ8GJXSOmmt7wqP6HOy/PHa9azDu5lwF1
	+CdSZr2BIPxv22Yu3h7jYdb5KQyZpXTeIoHdTZqE8WkOOAj2Bf/OIRAGLVGXol5KmCNCvtnGs1Wjj
	V0a78FElQ0/aOdIkbKWse5JUXT88/r0J0uxdsynasxUaSWMYHOD0+yoZReYSzEetqWad5h0dm9l5c
	Bd7mK/PlHhIXa0+hsPw+Zae8X3O+8n9oayNskQvH0QRnwUP3eljel24nn3J6OLyMZ8JDbATgiiMSx
	o/0xLT+Ngh0NKko7Wt1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipNUQ-00078v-BR; Thu, 09 Jan 2020 02:24:02 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipNUH-00077u-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 02:23:55 +0000
Received: by mail-oi1-x244.google.com with SMTP id c77so4582192oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 18:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vpKaB37AOhauoPCsPH8bCGxpP6t6MKruJ0CgWLMvrAQ=;
 b=eJuCns1dXxBhRe1TlIMfPzPKNzHTMfprez4L1XuLDNKaTvgwktSOZtLd9ECSFDVMWJ
 6YJiyTT5//7FJfppJyPR8URJDhZ7/oJecMDnrt7OraKYbdSek5ZWsjmLI3fC3zEVDpc4
 VxLXsFULGwn+yMCS60UNZsWdNUFJ+Y1Xl0/wYY8/YjZfJ2xysocjML6rtpH485bTlvHW
 xyfkOKkP2sDZurOG6An86U7m/E9Zj+XL40lz2YrjEoH15IkM5502qzJkjcGAXnFdXku+
 kaQNhnFWCIAueDv2LdxPd9iCrg8Pivakfc0bTpzWQ79rR3yroEQmCubGCK1Denn8ScYC
 Br1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vpKaB37AOhauoPCsPH8bCGxpP6t6MKruJ0CgWLMvrAQ=;
 b=Xh0xvsj8wco7zSIAszxK6ZqsoxmHsDkxRKAkXVHcoLXtG/gSYWd2oVWuSL6w8fc6q+
 ULl+5O7Ef83kbpYq8FhTqCB0vXAOlMOcU7EKBNq/mcw1NaC8h059MOmmGzkk7q2JOwcd
 BmmApJmo0UAgQCqMjvtOniX5Y5jo2bGz/cXMPUJNzfIE2UO3J0y/J8gKqJbDE4k+s+Q+
 ayl9AXILJA6CZ1FwcQo3pw4J0TFeO6NFwSDlL370IUVdl+44gDCTQn/h8ZBo8rlu0AXg
 H3fyRupJ2kbdzDY/zlpI0u3qh1JCyzJDMcI+GELOwK9B8pRIdTaMPpPDBF/BVfpRZIIj
 dbCw==
X-Gm-Message-State: APjAAAXBNeLDkrHqSz23uW+ATKhoYAlgOfgLO/styCcLC13VNZoUeaFV
 5YnKEtoGz36+sp1PBI6P/dDoroyOu/aOwxrVdKvJPQ==
X-Google-Smtp-Source: APXvYqyrjfLuM3Ikl0VFoqq+4wnh7pbPU3Lx3LyfVTtVIDSYzNAFc6LUwH5lVk6ZGkPQiEswGf9zja02f8W2MC6dPrY=
X-Received: by 2002:a54:4f8d:: with SMTP id g13mr1337770oiy.43.1578536627730; 
 Wed, 08 Jan 2020 18:23:47 -0800 (PST)
MIME-Version: 1.0
References: <20191224044146.232713-1-saravanak@google.com>
 <201912252258.5LQtnCYg%lkp@intel.com>
In-Reply-To: <201912252258.5LQtnCYg%lkp@intel.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 8 Jan 2020 18:23:11 -0800
Message-ID: <CAGETcx90nkOQXgKWtTSg7SRZCTmH9RQijYsZLP6CWpHCmW1Mxw@mail.gmail.com>
Subject: Re: [PATCH v2] efi: arm: defer probe of PCIe backed efifb on DT
 systems
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_182353_683833_C9B519BC 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Android Kernel Team <kernel-team@android.com>, kbuild-all@lists.01.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 25, 2019 at 6:46 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Saravana,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on efi/next]
> [cannot apply to rockchip/for-next keystone/next arm64/for-next/core arm-soc/for-next shawnguo/for-next clk/clk-next arm/for-next linux-rpi/for-rpi-next at91/at91-next v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Saravana-Kannan/efi-arm-defer-probe-of-PCIe-backed-efifb-on-DT-systems/20191225-182253
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> config: arm64-alldefconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    drivers/firmware/efi/arm-init.o: In function `efifb_add_links':
> >> arm-init.c:(.text+0x64): undefined reference to `of_pci_range_parser_init'
>    arm-init.c:(.text+0x64): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `of_pci_range_parser_init'
> >> arm-init.c:(.text+0x78): undefined reference to `of_pci_range_parser_one'
>    arm-init.c:(.text+0x78): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `of_pci_range_parser_one'

Ard,

Not sure what's going on here. of_pci_range_parser_init() and
of_pci_range_parser_one() has a stub if CONFIG_OF_ADDRESS isn't
defined. So not sure why the bot is reporting "undefined symbol".
Thoughts?

Also, thoughts on my patch?

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
