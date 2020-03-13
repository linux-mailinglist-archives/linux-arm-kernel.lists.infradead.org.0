Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD167184CD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfHa6F45p8Su8hJJmCKUKRY3GTjdbjcU/8UrYPSKlxY=; b=NkFjD6b3mGdM2q
	JWEkzjyqPGShlr0DEwvi9yBDFMSeQtGft4q3kH/D+uc5AudMs8KSJmysfit8LrFsEiN1KMHya67Ed
	1LkazRWH/hYvicnjhi+jTtP0+wNV04KCuvNSdc0cxVT6PuiEsO/Y/OwMAR7/6MlUV7/VPwnnxer0g
	UCd9YaqI4jotVlIVtEVup97g02t4Fjqzil5zRaQFR4JkmFfr2jLjC27hiEwTnITSNB9eXH3uT+BCH
	VIF40aJB1c7BhS3kKr6plFpLQvuXLKJTwYUjCe0ArCQyFyy13nTBzaWd1Uf/IruC4AJBV7GY0rT8q
	jlyIPbRnPy8MdH8R9dTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnTe-0003oA-CE; Fri, 13 Mar 2020 16:48:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnTV-0003n5-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:47:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id c7so5316099pgw.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KV6MXizQl2EQtb2GS7sc4PeNvf+1aSQqTf3SkUL8FCs=;
 b=FZC5iuQBEjOOouPc7R4fBUJh/Vyuhen8RnJnZDyJTxNAxIHvMlCB9DGm9Q1te7ElLk
 E7Y4XK+19BxYhEhL3hcfKGhkGd+4DxGVrxpXNBb0bRxEwbtqISwK/oQ59vsGs9gEhaFN
 VpikV7y82/akhBkyhIc2R/3CL94yT60HY1pGeFhrpTsYrFl7CM/czaE8qndB7tFi0xtK
 A4tf6XDok9PKYgqfTjKg/EfPg9buqIX7DCL3xiBmavdRAAp3n1SdqZiCf3FsWEjBns9o
 xLmZnIMwtaZlY+Hjg3d/OELWSZ8Lc3R8WRNr0JdP5a0WiEToA5GWSlDn2Yy2Q7xwDQ4e
 QVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=KV6MXizQl2EQtb2GS7sc4PeNvf+1aSQqTf3SkUL8FCs=;
 b=hArP8Cb9z2YjHBkNYqBGeJ64ou86MbZ5d5JXX10KCxkIizF1yCX3q+zPRGM235IoNn
 mXUh1MBXd7FDzZukJZMhPsuGR7nO5RajTCEKBXNdKR01QOvR6+2v5yfH9+q6Qwcr6Db6
 UlBcpU+9OEEYm/YuCcUhZSZZDiltk1jiiF88KbrOmpHfyHh6wVc9KSAj/FnkhcFro8eG
 JIHlnCDnDVTifviRH4O9M90v22QOM4CKQM1vHi23BCEOp6VMKQO8ZGR5pYI+2RxHHh75
 I/gHXBg65itI3fiF70XIqt/TBhmNnEdA7b2MG9GwNWG6bsY7WX0A/DqCEHO4A1+pAzzc
 uvpA==
X-Gm-Message-State: ANhLgQ0VIlD9spWWcs/KDjpg+wRfqGmX+hFqi4z1alRoqzqeyr5fcQJg
 ULwMVqqPoNdRLTqfqU6bTg0=
X-Google-Smtp-Source: ADFU+vuPO3GHP9BVqhQV8CoSMSeBWz+CnESs00u/cLxaePjAv/lamoVNtFMUduN+GLB/NM/UHIzEVA==
X-Received: by 2002:a63:112:: with SMTP id 18mr13704404pgb.116.1584118073221; 
 Fri, 13 Mar 2020 09:47:53 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id l11sm12279036pjy.44.2020.03.13.09.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 09:47:52 -0700 (PDT)
Date: Fri, 13 Mar 2020 09:47:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200313164751.GA30134@roeck-us.net>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_094754_007947_375E248B 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 05:27:53PM +0530, afzal mohammed wrote:
> request_irq() is preferred over setup_irq(). Invocations of setup_irq()
> occur after memory allocators are ready.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> remove_irq() has been replaced by free_irq() as well.
> 
> There were build error's during previous version, couple of which was
> reported by kbuild test robot <lkp@intel.com> of which one was reported
> by Thomas Bogendoerfer <tsbogend@alpha.franken.de> as well. There were a
> few more issues including build errors, those also have been fixed.
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

This patch causes all my mips qemu emulations to hang during boot. This affects
all mips, mips64, mipsel, and mipsel64 emulations.

Reverting this patch fixes the problem.

Example log:

...
Failed to request irq 23 (timer)
clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112584971 ns
sched_clock: 32 bits at 100MHz, resolution 9ns, wraps every 21474814971ns
Console: colour dummy device 80x25
printk: console [tty0] enabled
printk: bootconsole [uart8250] disabled

[ silence ]

Bisect log attached.

Guenter

---
# bad: [2e602db729948ce577bf07e2b113f2aa806b62c7] Add linux-next specific files for 20200313
# good: [2c523b344dfa65a3738e7039832044aa133c75fb] Linux 5.6-rc5
git bisect start 'HEAD' 'v5.6-rc5'
# bad: [acfda12b3a9b7b8d8cb4ff5f6ff0e48f688e254c] Merge remote-tracking branch 'spi-nor/spi-nor/next'
git bisect bad acfda12b3a9b7b8d8cb4ff5f6ff0e48f688e254c
# bad: [bfd143114215b2c553277ee8ae4a8b8a6201de2e] Merge remote-tracking branch 'pstore/for-next/pstore'
git bisect bad bfd143114215b2c553277ee8ae4a8b8a6201de2e
# good: [9e771e47962b731c28d1b0a12967f711bf5cc281] Merge remote-tracking branch 'scmi/for-linux-next'
git bisect good 9e771e47962b731c28d1b0a12967f711bf5cc281
# bad: [cee36340e05bf662d19cb845708fa881369ed583] Merge remote-tracking branch 'xtensa/xtensa-for-next'
git bisect bad cee36340e05bf662d19cb845708fa881369ed583
# bad: [95c7851a03071bd2374b84b4f0079b3dcae30614] Merge remote-tracking branch 'nds32/next'
git bisect bad 95c7851a03071bd2374b84b4f0079b3dcae30614
# good: [43a3834a7d0fbb9116649185ff0926968cc553d5] Merge remote-tracking branch 'tegra/for-next'
git bisect good 43a3834a7d0fbb9116649185ff0926968cc553d5
# good: [8fae22fc750017fdf998ec3aa1315741fd3de857] Merge remote-tracking branch 'h8300/h8300-next'
git bisect good 8fae22fc750017fdf998ec3aa1315741fd3de857
# good: [e798861fd7b297370a8dd7b8dad2e139c1d08446] Merge remote-tracking branch 'm68knommu/for-next'
git bisect good e798861fd7b297370a8dd7b8dad2e139c1d08446
# bad: [ac8fd122e070ce0e60c608d4f085f7af77290844] MIPS: Replace setup_irq() by request_irq()
git bisect bad ac8fd122e070ce0e60c608d4f085f7af77290844
# good: [f6541f347bba6edbcbb1c930f802bb80b0c56468] MIPS: configs: Cleanup old Kconfig options
git bisect good f6541f347bba6edbcbb1c930f802bb80b0c56468
# good: [e5096625bc6bd9e3a0d5f7f9d7ecebda0383c7f5] MIPS: pic32mzda: Drop pointless static qualifier
git bisect good e5096625bc6bd9e3a0d5f7f9d7ecebda0383c7f5
# good: [172a37e9d011510aee37f62cc5ac4e53e49d17bb] arch/mips: change duplicated word in NUMA help text
git bisect good 172a37e9d011510aee37f62cc5ac4e53e49d17bb
# good: [792a402c2840054533ef56279c212ef6da87d811] MIPS: OCTEON: irq: Fix potential NULL pointer dereference
git bisect good 792a402c2840054533ef56279c212ef6da87d811
# first bad commit: [ac8fd122e070ce0e60c608d4f085f7af77290844] MIPS: Replace setup_irq() by request_irq()

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
