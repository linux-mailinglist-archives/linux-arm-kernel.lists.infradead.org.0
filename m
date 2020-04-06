Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9499019F194
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kTrrK1gwmIxeVTmiRRCMU5bkT/+FdnZbkz+yQsIRPrg=; b=kCAsYyPp1cp2rE
	cG5qpZ0z7rYC0EKevKqhTGld+f7aXgyfUQTQIpQP2GjcIkiAZRYzi1NvZHR6bGVmTONHrE7uejFx7
	hpGh8z4I/DTMr/r6RbNjAILupIGFYMLYicOEiXHdCAtnrh7bFosNBZhFQegvyKdMpzGgmdnZ+LBrj
	8xmUoQzByOojk0s3fG50Fu61bnmctkQE2ny8ydUOILF+E7xdq2jQeA4qz11mkvbianFQVsyH1kzb2
	NlHW7IRPmBmWwD8dl+Nhl3HII4wa6SyYrv1URNfiSji+lsnjL4gV+5IcJLh0lJd/o68MIKu6e+m0e
	dCGxOrs4qlHiwkecb3JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLN6V-0003Gq-MS; Mon, 06 Apr 2020 08:27:35 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLN6K-0003FD-TC; Mon, 06 Apr 2020 08:27:26 +0000
Received: by mail-wr1-x431.google.com with SMTP id g3so14020059wrx.2;
 Mon, 06 Apr 2020 01:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=55a3ErFUzwi21OsaY2azC2jkNniTZaL9xFoaJMyXUts=;
 b=vZnUnwZQ1qXHKPZWX9+n3t/3eu+4bLYPi6ploQCBGr2mO6XDyM+5moogDuVDP5C2E0
 0fWMGbfcau+ZSAOFIMEtSHXueEnHV++vJN+YCDqRJyiF2EuYCIWyOpzLYn1U4aFLSuzM
 rOR75n4gmmGORVuj3EQgVQFfBJmtjls9BN4lixj3Pf7rzDSoQzhLh3MCdS+lQct3KzGX
 4dCXSxEt0ATG1uiz1vQcMavWBrh9LtDK8/VPJefOXf1COF7IuGnhHz1hy/OQ5tfbvreU
 yQdz6C1+IeKUnmNLrxF3RwVQKZPsVW+3foLqVTM4EMnDrlzlNcOMbFlT0EFxMuhk/M/K
 GHJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=55a3ErFUzwi21OsaY2azC2jkNniTZaL9xFoaJMyXUts=;
 b=a9idL34UCQyXZI5m7wsq/k68rHx1hTTeCBsL30Kop757bk1X+uhnv1q6uMRP/rG37x
 IQE+PISOWwJMwxZ/HLXCftxmsK+epKwSj6nRicJ+ycPnAhWvp+ROqg6EomOtwTrIu+xS
 FaQCS0Ybd8I+hDmq/vQQ7J1RpHYwRddLD4kiR5LCXzR/Tn/3ljEOhnHxTKLSSYR2I8/+
 7C5JMnh6bhyPOsRNvsvRThBykxCNms6LW7D3xBpaGDQXzXkce0WgGW3qw/ejA41k2+3Z
 x875eMVwK0/VjlnjFd6SHGWOj0a9S1vxOtjAllMzh2+4Z9cGt5opZy9hzwqqDvgGdeoG
 ZgXg==
X-Gm-Message-State: AGi0PuZw2HiacYaKSZ6jQn5uB/Ach3JkIFl8IVYe+8aD2g9bSyW5cQLD
 lYOgge+6L7/skN4VvozafhY=
X-Google-Smtp-Source: APiQypJLN67xNTSrQ/sLaRRm40PviBXbgVl5KjikszA4PoZlueozEyPgWcG4LCvJHjec39ZOyIFK2Q==
X-Received: by 2002:a05:6000:1205:: with SMTP id
 e5mr24179604wrx.73.1586161642322; 
 Mon, 06 Apr 2020 01:27:22 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id f3sm24957862wmj.24.2020.04.06.01.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 01:27:21 -0700 (PDT)
Date: Mon, 6 Apr 2020 10:27:20 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: ebiederm@xmission.com, kexec@lists.infradead.org
Subject: Trying to kexec on Allwinner A80
Message-ID: <20200406082720.GA31279@Red>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_012724_945511_DD91D3D8 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
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
Cc: wens@csie.org, linux-arm-kernel@lists.infradead.org, mripard@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

I am trying to add the last missing Allwinner Soc in kernelci: the A80.
But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.

But kexec 2.0.18 fail to work:
kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
syscall kexec_file_load not available.
Try gzip decompression.
kernel: 0xb6535008 kernel_size: 0x853200
MEMORY RANGES
0000000020000000-000000009fffffff (0)
zImage header: 0x016f2818 0x00000000 0x00853200
zImage size 0x853200, file size 0x853200
zImage requires 0x00864200 bytes
  offset 0x0000bae4 tag 0x5a534c4b size 8
Decompressed kernel sizes:
 text+data 0x0158b3a0 bss 0x000632f0 total 0x015ee690
Resulting kernel space: 0x01def5a0
Kernel: address=0x20008000 size=0x01def5a0
Initrd: address=0x21df8000 size=0x0090b6fa
DT    : address=0x22704000 size=0x00005c09
kexec_load: entry = 0x20008000 flags = 0x280000
nr_segments = 3
segment[0].buf   = 0xb6535008
segment[0].bufsz = 0x853204
segment[0].mem   = 0x20008000
segment[0].memsz = 0x854000
segment[1].buf   = 0xb5c29008
segment[1].bufsz = 0x90b6fa
segment[1].mem   = 0x21df8000
segment[1].memsz = 0x90c000
segment[2].buf   = 0x4db50
segment[2].bufsz = 0x5c09
segm[   71.039126] kexec_core: Starting new kernel
ent[2].mem   = 0[   71.044712] Disabling non-boot CPUs ...
x22704000
segment[2].memsz = 0x6000
[   71.489070] Bye!


I have tried also kexec-2.0.20
Try gzip decompression.
zImage header: 0x00000000 0x000019b4 0x00001000
zImage requires 0x008641c0 bytes
Could not find a free area of memory of 0x86c1c0 bytes...
Cannot load /tmp/kernel

What can I do for made it working ? I probably need to give it some memory address, but I am a bit loss.

Thanks
Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
