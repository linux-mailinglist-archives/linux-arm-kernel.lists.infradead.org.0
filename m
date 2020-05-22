Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9ED1DF0D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 22:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTMyHld8T/9w9rlJ4BM0TaBDi/L6NteOXNSm25+rfjc=; b=dx9LQmYSToUp46
	K5tdAciWDWBFsN8xUNPfoiG9N6U9mynWtaKDuCIl6WCgv99t9XdHKdhKTyxy2oH4l6+UdAa0Ut7x+
	UJBUCXjru7EPMcz9zg1sWZSvM8O4+sUMbUbacpEJDEQYnFlIWr9E9gxi/kZmAtUrytJqvHBSq1w4I
	J7R0LDj04nuhTn9ESGl0wHcpdFlVyiRTsdHJFwLtIJKMyUKMmy0Vw8jQkKMoi+Alko9YrmWHlQCWh
	L0i8r6PnigAXIa4twuUWHBk63PHuJqqS3IbE9dPkE0eNGGTqJ7njN9ybDDpvHJUMdGjc8nyV4KvHO
	6Me1V+XrSi8Teon3m7fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcEgi-0003nh-32; Fri, 22 May 2020 20:54:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcEgX-0003eW-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 20:54:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so3071556wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 13:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D8vPQ+rhVkKINBUw604Lf8+3nDO8iih7oCPV3U1KEGM=;
 b=FrSDf40EzMKW9WEEDib/QKYlE443PY/IWkEqPxuF7kyE3zFEx5xY37e8pjrX8EgKNb
 WwUuh/s9m37mez/j3HCMpxYAh8QcO9ELxdWYQbfQozaoagvTMLyAYXYri4Cp+UWCspjo
 11/6VV8LPwjFpBGvxrDyGNYWWuHPoa6Qu+tVXBZsREkfdgVNOOh067+OT0IgDAzMC9d7
 MtfGcreQjqgfUS4kLgD1lj4u0xd8BdsvfHFijLYf2rhvrCiuC6G6VRehKXk5qzC299fq
 jgfHJ9jd1H++vr1GbdeWGiB/mj+uXg9uOuxJOci2JBzPRgn+wbfxtdZINXnDtgDSV+ih
 b4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=D8vPQ+rhVkKINBUw604Lf8+3nDO8iih7oCPV3U1KEGM=;
 b=akFJq7mOoh5sZBSTH7gO+ZM7AU3R944EjShjt8jl13xAC3+KIWFcs8UPbkTKMFSTfG
 TMM8LLpp0aSv+XCrDW63wROLGeVsxLDAYp3vycWVGatxzDIo5YDWgEoLTSZIU7LOfURt
 X5o0XGesBgf20v9hqay51r9FDdjas7GeIZAfTbMlly2baCma0cc7eDS/CjupblO7jcGB
 qjlyxESeYAYIKN4yFGBhAc34hXL9ZUMLzt2e/gzV+qD0XNpbLnWTPQpYeHcsTD/iOdOJ
 36pcUd7fzM3CVM7dKnIcx2TFYhq5lC4S281q8UmF5hvHFKe59CW0YIG+/buYhKmzUSa0
 VKyQ==
X-Gm-Message-State: AOAM530EAZWeVvTJsYtZnplTvWwT6wwNyy7i2YCbhn+PYGMI0mBU4hmr
 kHGuRbZxZ8lqQXdOUt8ztdOQZvf4
X-Google-Smtp-Source: ABdhPJxGjDXXMVYukmEfuAruf9wdamuDdOQCdvU5t7q4F5mylSVh40b7UdS3JXEFJ6UFSl5jLIhO+g==
X-Received: by 2002:a05:6000:100d:: with SMTP id
 a13mr4806548wrx.317.1590180864632; 
 Fri, 22 May 2020 13:54:24 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id g187sm10433598wmf.30.2020.05.22.13.54.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 13:54:23 -0700 (PDT)
Subject: Re: [soc:mediatek/dt] BUILD REGRESSION
 189881af810d452b592ee958db43eb4c57df9803
To: kbuild test robot <lkp@intel.com>, arm@kernel.org
References: <5ec7b744.ZcxrA/L/3+XSTqYO%lkp@intel.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5c53e7b7-4caa-06b9-8a9f-b3a29f008bb7@gmail.com>
Date: Fri, 22 May 2020 22:54:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5ec7b744.ZcxrA/L/3+XSTqYO%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_135429_897530_6E1BB331 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
Hi Arnd and Olof,

On 22/05/2020 13:28, kbuild test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  mediatek/dt
> branch HEAD: 189881af810d452b592ee958db43eb4c57df9803  arm: dts: mt2701: Add usb2 device nodes
> 
> Error/Warning in current branch:
> 
> ERROR: Input tree has errors, aborting (use -f to force output)
> 
> Error/Warning ids grouped by kconfigs:
> 
> recent_errors
> `-- arm-randconfig-r035-20200520
>     `-- ERROR:Input-tree-has-errors-aborting-(use-f-to-force-output)

Can you please explain me how to reproduce this. I'm not able to deduce that
form this email. I can then look into this and how to fix it. Although up to now
I don't understand where the relation with my dts32 changes is.

Regards,
Matthias

> 
> elapsed time: 7969m
> 
> configs tested: 274
> configs skipped: 59
> 
> arm                                 defconfig
> arm                              allyesconfig
> arm                              allmodconfig
> arm                               allnoconfig
> arm64                            allyesconfig
> arm64                               defconfig
> arm64                            allmodconfig
> arm64                             allnoconfig
> sparc                            allyesconfig
> mips                             allyesconfig
> m68k                             allyesconfig
> sh                             sh03_defconfig
> arm                         vf610m4_defconfig
> h8300                               defconfig
> m68k                          hp300_defconfig
> powerpc                     pq2fads_defconfig
> parisc                           alldefconfig
> sh                   sh7770_generic_defconfig
> arm                        mvebu_v7_defconfig
> arm                            u300_defconfig
> mips                  cavium_octeon_defconfig
> microblaze                          defconfig
> powerpc64                        alldefconfig
> arm                      integrator_defconfig
> arc                     nsimosci_hs_defconfig
> powerpc                     mpc5200_defconfig
> arm                        clps711x_defconfig
> mips                           xway_defconfig
> mips                        maltaup_defconfig
> arm                            hisi_defconfig
> um                                  defconfig
> arm                     davinci_all_defconfig
> sh                          r7780mp_defconfig
> arm                           sunxi_defconfig
> arm                            mmp2_defconfig
> mips                     loongson1c_defconfig
> arm                          ep93xx_defconfig
> arc                        nsimosci_defconfig
> um                                allnoconfig
> sh                   secureedge5410_defconfig
> sh                        apsh4ad0a_defconfig
> powerpc                          allmodconfig
> s390                          debug_defconfig
> sh                         ap325rxa_defconfig
> c6x                                 defconfig
> h8300                    h8300h-sim_defconfig
> arc                      axs103_smp_defconfig
> mips                        qi_lb60_defconfig
> ia64                         bigsur_defconfig
> openrisc                    or1ksim_defconfig
> sh                          lboxre2_defconfig
> powerpc                      chrp32_defconfig
> sh                          polaris_defconfig
> c6x                        evmc6457_defconfig
> arm                           corgi_defconfig
> mips                     cu1000-neo_defconfig
> arm                          ixp4xx_defconfig
> arm                            mps2_defconfig
> sh                         microdev_defconfig
> mips                              allnoconfig
> arm                          exynos_defconfig
> mips                         db1xxx_defconfig
> arm64                            alldefconfig
> sh                           sh2007_defconfig
> arm                         bcm2835_defconfig
> sparc                       sparc32_defconfig
> ia64                             alldefconfig
> sh                         ecovec24_defconfig
> arm                         shannon_defconfig
> riscv                    nommu_k210_defconfig
> powerpc                      ppc64e_defconfig
> parisc                generic-32bit_defconfig
> arc                              alldefconfig
> sh                     sh7710voipgw_defconfig
> arm                            pleb_defconfig
> h8300                            alldefconfig
> microblaze                      mmu_defconfig
> powerpc                      ppc44x_defconfig
> mips                         tb0219_defconfig
> parisc                              defconfig
> s390                             allyesconfig
> m68k                        m5307c3_defconfig
> mips                           mtx1_defconfig
> arm                         mv78xx0_defconfig
> arm                        oxnas_v6_defconfig
> arc                        vdk_hs38_defconfig
> sh                           se7751_defconfig
> arm                       netwinder_defconfig
> arm                          iop32x_defconfig
> mips                          ath25_defconfig
> arm                             pxa_defconfig
> arm                        mini2440_defconfig
> alpha                               defconfig
> mips                          malta_defconfig
> arm                         assabet_defconfig
> m68k                                defconfig
> arm                           h3600_defconfig
> ia64                              allnoconfig
> mips                      loongson3_defconfig
> mips                malta_kvm_guest_defconfig
> arc                            hsdk_defconfig
> arc                           tb10x_defconfig
> powerpc                           allnoconfig
> sh                          sdk7786_defconfig
> arm                           u8500_defconfig
> sparc64                          allyesconfig
> mips                          lasat_defconfig
> mips                         tb0287_defconfig
> powerpc                      mgcoge_defconfig
> um                           x86_64_defconfig
> powerpc                  storcenter_defconfig
> sh                            shmin_defconfig
> powerpc                         ps3_defconfig
> sparc64                             defconfig
> arm                        keystone_defconfig
> m68k                        m5272c3_defconfig
> parisc                           allyesconfig
> mips                     decstation_defconfig
> mips                       lemote2f_defconfig
> powerpc                      tqm8xx_defconfig
> arm                        shmobile_defconfig
> arm                           stm32_defconfig
> powerpc                       holly_defconfig
> mips                         tb0226_defconfig
> mips                         rt305x_defconfig
> sh                           se7750_defconfig
> arm                         s3c6400_defconfig
> arm                          pcm027_defconfig
> powerpc                       ppc64_defconfig
> h8300                       h8s-sim_defconfig
> m68k                       m5208evb_defconfig
> sh                           se7721_defconfig
> mips                   sb1250_swarm_defconfig
> powerpc                    amigaone_defconfig
> parisc                generic-64bit_defconfig
> c6x                         dsk6455_defconfig
> arm                        multi_v5_defconfig
> xtensa                           alldefconfig
> arm                       spear13xx_defconfig
> sh                   rts7751r2dplus_defconfig
> mips                        nlm_xlr_defconfig
> sh                            migor_defconfig
> powerpc                     mpc512x_defconfig
> nds32                               defconfig
> arm                          moxart_defconfig
> um                               allyesconfig
> mips                          rb532_defconfig
> arm                          imote2_defconfig
> i386                              allnoconfig
> i386                             allyesconfig
> i386                                defconfig
> i386                              debian-10.3
> ia64                             allmodconfig
> ia64                                defconfig
> ia64                             allyesconfig
> m68k                             allmodconfig
> m68k                              allnoconfig
> m68k                           sun3_defconfig
> nios2                               defconfig
> nios2                            allyesconfig
> openrisc                            defconfig
> c6x                              allyesconfig
> c6x                               allnoconfig
> openrisc                         allyesconfig
> nds32                             allnoconfig
> csky                             allyesconfig
> csky                                defconfig
> alpha                            allyesconfig
> xtensa                           allyesconfig
> h8300                            allyesconfig
> h8300                            allmodconfig
> xtensa                              defconfig
> arc                                 defconfig
> arc                              allyesconfig
> sh                               allmodconfig
> sh                                allnoconfig
> microblaze                        allnoconfig
> mips                             allmodconfig
> parisc                            allnoconfig
> parisc                           allmodconfig
> powerpc                          allyesconfig
> powerpc                          rhel-kconfig
> powerpc                             defconfig
> x86_64               randconfig-a005-20200517
> x86_64               randconfig-a003-20200517
> x86_64               randconfig-a006-20200517
> x86_64               randconfig-a004-20200517
> x86_64               randconfig-a001-20200517
> x86_64               randconfig-a002-20200517
> i386                 randconfig-a006-20200518
> i386                 randconfig-a005-20200518
> i386                 randconfig-a001-20200518
> i386                 randconfig-a003-20200518
> i386                 randconfig-a004-20200518
> i386                 randconfig-a002-20200518
> i386                 randconfig-a006-20200519
> i386                 randconfig-a005-20200519
> i386                 randconfig-a001-20200519
> i386                 randconfig-a003-20200519
> i386                 randconfig-a004-20200519
> i386                 randconfig-a002-20200519
> i386                 randconfig-a006-20200517
> i386                 randconfig-a005-20200517
> i386                 randconfig-a003-20200517
> i386                 randconfig-a001-20200517
> i386                 randconfig-a004-20200517
> i386                 randconfig-a002-20200517
> i386                 randconfig-a001-20200520
> i386                 randconfig-a004-20200520
> i386                 randconfig-a006-20200520
> i386                 randconfig-a003-20200520
> i386                 randconfig-a002-20200520
> i386                 randconfig-a005-20200520
> x86_64               randconfig-a003-20200519
> x86_64               randconfig-a005-20200519
> x86_64               randconfig-a004-20200519
> x86_64               randconfig-a006-20200519
> x86_64               randconfig-a002-20200519
> x86_64               randconfig-a001-20200519
> x86_64               randconfig-a016-20200518
> x86_64               randconfig-a012-20200518
> x86_64               randconfig-a015-20200518
> x86_64               randconfig-a013-20200518
> x86_64               randconfig-a011-20200518
> x86_64               randconfig-a014-20200518
> x86_64               randconfig-a013-20200520
> x86_64               randconfig-a015-20200520
> x86_64               randconfig-a016-20200520
> x86_64               randconfig-a012-20200520
> x86_64               randconfig-a014-20200520
> x86_64               randconfig-a011-20200520
> i386                 randconfig-a012-20200518
> i386                 randconfig-a014-20200518
> i386                 randconfig-a016-20200518
> i386                 randconfig-a011-20200518
> i386                 randconfig-a015-20200518
> i386                 randconfig-a013-20200518
> i386                 randconfig-a012-20200517
> i386                 randconfig-a016-20200517
> i386                 randconfig-a014-20200517
> i386                 randconfig-a011-20200517
> i386                 randconfig-a013-20200517
> i386                 randconfig-a015-20200517
> i386                 randconfig-a012-20200519
> i386                 randconfig-a014-20200519
> i386                 randconfig-a016-20200519
> i386                 randconfig-a011-20200519
> i386                 randconfig-a015-20200519
> i386                 randconfig-a013-20200519
> i386                 randconfig-a013-20200520
> i386                 randconfig-a012-20200520
> i386                 randconfig-a015-20200520
> i386                 randconfig-a011-20200520
> i386                 randconfig-a016-20200520
> i386                 randconfig-a014-20200520
> riscv                            allyesconfig
> riscv                             allnoconfig
> riscv                               defconfig
> riscv                            allmodconfig
> s390                              allnoconfig
> s390                             allmodconfig
> s390                                defconfig
> x86_64                              defconfig
> sparc                               defconfig
> sparc64                           allnoconfig
> sparc64                          allmodconfig
> um                               allmodconfig
> x86_64                    rhel-7.6-kselftests
> x86_64                                   rhel
> x86_64                               rhel-7.6
> x86_64                         rhel-7.2-clear
> x86_64                                    lkp
> x86_64                              fedora-25
> x86_64                                  kexec
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
