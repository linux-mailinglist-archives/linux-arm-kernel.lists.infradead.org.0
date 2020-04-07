Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE5B1A08D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcSYcnwSUF5c2jsCuEPACB9EthMsDc/W2K9IRwBJxjw=; b=oG19CZ9UjSaVjm
	2C56j43IzBuNDGe3boQS+0jrSilCFrEaDE2Og7a0En15iE8etQfiHxMlgZDq7zXenMPGbFI5J74qx
	Y4whrRKUckJtMxpotXvU0gDOqXf0bcJqECa7jMdL/ykqat07l89DVfhSbUYzHuP1VVYXM+8QWgzx9
	EY3Si156sJ16AgcMWWJPGryoohprP+2yQBIaPl0C/8MLspptvH54oUehthAFdXPyRifXfyB19hcgE
	Iwe0JsXu4tAkMaZO2wgZoUP19VpCauvMLyl/rsNtykb59Wjf6GRXbMMd0XsP94TdAC6IVdFv/yufJ
	dwHumJHIg/kRQdULBM+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjBI-0001EY-LT; Tue, 07 Apr 2020 08:02:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjBA-0001Ck-Tn; Tue, 07 Apr 2020 08:01:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id r26so798111wmh.0;
 Tue, 07 Apr 2020 01:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=G+sVYGdrgciOIyEUzjtYrjQlBCZb9nKDuvRS4LNAffc=;
 b=Qd1u5BWiAFEF5eIkYtQ1aW0zarMMS8/WjeHsBw0RB/FWcWrTM1Atvp8Lz3K48EdY/N
 ieEIwA2Z1hZa+6lfyxhxSt72gWI+loQE6Q6J7WS9TQq18TPhfbqbqZsvN09fPs5ZDFAh
 qOwyiyAOMfsviVHWPPLwZC3R9ipYE1vcsLYNTCuXl9mpwoDyTbJIL/3oBOX3ay6NqH9d
 XIyPzKzIYeHGYlODQVmvHgHLOjDpS3PA3Jr8e9+sa3H0KU6qU9yAuQLo4BkFYDbSNvS5
 PDJn0+/WGkqMGv/DXK31kSVhHauzwgwgY9GjcbnVCLtPtl2NyRo33U/WoA/dnTO8dYyq
 B+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G+sVYGdrgciOIyEUzjtYrjQlBCZb9nKDuvRS4LNAffc=;
 b=S1X9sHj4e5uJIzJ8aIaOudJHMc+QKrmRbbzBGNwscfAObro2M/5lAi4+H4ewhDzqYR
 IXI+tbE6LjR+7kMFJCg7uSvirnP0/W1kZyar60hSxWVzUoq7jgb79F5ML2KNe2fC7+DS
 edz0r55r49HVMKOFT9fNqeixzAZ6Dfs0phCxwU7wFaLGuTRNzVYOQ9jYig9IAZ0vGb5K
 /0X9EEssIc07M+ZXHS+JwtEmXZx9kVvCT707aycdd0znkdCsPlB28QFs5Rqg49F5sDmu
 GZ407Q2iwuRGwhUppt3yQhd8ahwICG/epNUpkZAfVJWDWFfC03UkxHL+ICZUHFNWXRt7
 1bMA==
X-Gm-Message-State: AGi0PuYvk5qiDV3Phw1vjvJG04lR9Bfs7sIQ166A8IXREiuTaOEwzxds
 q/7cVQDdyIVfPcOJ0K0maCpFBmzv
X-Google-Smtp-Source: APiQypJ9A3980VQ+KaUlU3du9ayaETdW8cUmPckCAt5+8KvV1MmMZZ85OIJta6+2YdWtSn1ALKPBfQ==
X-Received: by 2002:a1c:5401:: with SMTP id i1mr1089001wmb.172.1586246507989; 
 Tue, 07 Apr 2020 01:01:47 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id k9sm12166115wrn.89.2020.04.07.01.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 01:01:46 -0700 (PDT)
Date: Tue, 7 Apr 2020 10:01:44 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200407080144.GA20773@Red>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
 <20200406092540.GB31279@Red>
 <20200406093729.GG25745@shell.armlinux.org.uk>
 <20200406201053.GA10931@Red>
 <20200407073117.GH25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407073117.GH25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_010152_960967_53270ABE 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 08:31:17AM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Apr 06, 2020 at 10:10:53PM +0200, Corentin Labbe wrote:
> > On Mon, Apr 06, 2020 at 10:37:29AM +0100, Russell King - ARM Linux admin wrote:
> > > On Mon, Apr 06, 2020 at 11:25:40AM +0200, Corentin Labbe wrote:
> > > > On Mon, Apr 06, 2020 at 10:16:00AM +0100, Russell King - ARM Linux admin wrote:
> > > > > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > > > > Hello
> > > > > > 
> > > > > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > > > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > > > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > > > > 
> > > > > > But kexec 2.0.18 fail to work:
> > > > > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > > > > 
> > > > > What happens if you omit the dtb argument?
> > > > > 
> > > > 
> > > > No change without dtb
> > > > 
> > > > I have also tried to add --mem-mim and --mem-max without any change.
> > > > I given mem according to what I saw in /proc/iomem
> > > > 20000000-9fffffff : System RAM
> > > >   20008000-207fffff : Kernel code
> > > >   20900000-209a0c87 : Kernel data
> > > > So I gave --mem-min 0x30000000 --mem-max 0x9fffffff
> > > > Anyway, the result is always the same.
> > > 
> > > The next step is to enable the early debugging - first in the
> > > decompressor - add #define DEBUG to the top of
> > > arch/arm/boot/compressed/head.S
> > > 
> > > Also enable DEBUG_LL in the kernel and use earlyprintk to see if you can
> > > get anything from the new kernel.
> > > 
> > 
> > I dont know what happened, but now I always get "Could not find a free area of memory of 0x86c1c0 bytes..." (even with kexec 2.0.18)
> > Furthermore, I have added crashkernel=128M to the cmdlist
> > I have verified that the reservation is working:
> > 20000000-9fffffff : System RAM
> >   20008000-207fffff : Kernel code
> >   20900000-209a0c87 : Kernel data
> >   40000000-47ffffff : Crash kernel
> > But even with this reservation, no change.
> 
> crashkernel is only necessary if you're loading a kenrel image to be
> booted when the existing one has crashed. For the problem you're
> seeing, it's an unnecessary additional change; please drop that.
> 
> You could try running kexec with debug enabled to see more information.
> 

I am already running with --debug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
