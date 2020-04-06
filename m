Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7D219F272
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiXF31fuDPgcKMYka6FGnfuRlN7Lo2Yczvs1TG1GP9A=; b=IZ/b4rF6OzglH6
	aVYsbQSdxBUXsXO9uP0j6t5ml/7PLrFCass+nOnTrj1MlimieT9c+6RQflBAdwK1Wzt/IyhCOEZYV
	+ibqkPctM2jRyq0G6Bu+6PzfmCHrksIbeNeRpVbERWQZwaccJ6d4vYOIgP318ehWcaG6LS+eKAWMK
	2inf7KekQbHJTJgdk5UMO5ILw2Dl7OeP5fM+0YSYrJcZdqLQEJseUA6+2ouysW9qrwZnKrkrSBuQF
	uYb20XBd5TrC3ihZONgMKFJkR2ZjgMrzr3XEIFIgVWsesr+70YYyAD4gE/TVZLhU6LAYNeUAl+pB9
	nZhFvUM86bGKxu7brZhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLO0w-00005x-GZ; Mon, 06 Apr 2020 09:25:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLO0l-0008Vt-V3; Mon, 06 Apr 2020 09:25:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id 65so16556096wrl.1;
 Mon, 06 Apr 2020 02:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tWjzg+BVrz3TNNIkAGcAPM3G1GTTyThKxry/5V7utII=;
 b=smLxfdnrwlbOaIv5M/k3oW4eMRWpaErrmcjTYxdTlW6dTt4uoklsAsspG0o+iKjoEr
 6IX1hf3EMvtGOa2XM9/WtTl3RgRIv2RQbXtuMZbE4IIyZc8Vt9JVEAwh5fWAeRhjQf4F
 43pkmDEhlo1bViU/N2Q4/9YATxjB6ix6DfZtAh5z8UdyfojtrQk7nnPYuhLmG21OwUb6
 Iwnn1KdAvEZyVXGp3avOU+cg/VmrNttm6GqiZps0YzwI+kGupXCrTPJOJpGYGaHvlvyG
 DMQzYvoaCtQP8ww1Qy/r6CO6QlCGUfhC9sddAn2khZCgzUsw277rkD8DuupgSVt36y1A
 agJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tWjzg+BVrz3TNNIkAGcAPM3G1GTTyThKxry/5V7utII=;
 b=EFn1bWAKDaqhy9uWZjuCPB1cCBB1BPOJAmqINxA5J4XFC9+ZDlSBWxKw0qybVsHaW8
 kByrBrOhsukoxE0Doac4KBssGhkXr2ujAFlBegMisRVCcc2ZhhDmTnK5LUUmJ2N9cI8i
 pKLDm6/+8L+QRuf0DVvJW4RcY0LwACR0kQTDXjJAdySYFP5175JEFx8GLGFweDXclp0Z
 6VC12yNiY2kpvdt0lH+PDPL49UThG+a5L8711TThka5ks2p+i2TuOhAmvBuIbsPq7H9N
 vpjYmOEkew4s1sIm2XjNctO+ZwumEPOvG/3Uq05Dm8NNi2WcpYEYJmKyh7BLt8o+/WBL
 +/7A==
X-Gm-Message-State: AGi0PuY27L5VK/URflBBRIbgMULfx+BVxzLqTAKtiBWKuZOAuCpMZxda
 eyG7ODQnJDKQtQMXwUNJgZ4=
X-Google-Smtp-Source: APiQypJr80FWnUWhXdf19n79QpElYuaGdiscr01AfN/mEfARb35P67bfTbUVDJCeH2vTKkDWoE+6aw==
X-Received: by 2002:adf:f1ce:: with SMTP id z14mr23069597wro.68.1586165142423; 
 Mon, 06 Apr 2020 02:25:42 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 v186sm24100784wme.24.2020.04.06.02.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 02:25:41 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:25:40 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200406092540.GB31279@Red>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406091600.GF25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_022544_005875_3542C979 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 10:16:00AM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > Hello
> > 
> > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > 
> > But kexec 2.0.18 fail to work:
> > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> 
> What happens if you omit the dtb argument?
> 

No change without dtb

I have also tried to add --mem-mim and --mem-max without any change.
I given mem according to what I saw in /proc/iomem
20000000-9fffffff : System RAM
  20008000-207fffff : Kernel code
  20900000-209a0c87 : Kernel data
So I gave --mem-min 0x30000000 --mem-max 0x9fffffff
Anyway, the result is always the same.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
