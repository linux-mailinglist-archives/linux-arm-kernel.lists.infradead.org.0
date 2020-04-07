Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D01A0A35
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JttzM5Q8FAShFbGdckZFUt0tQ4jkV5dpVFwxBmgPYaY=; b=LK/4lsrwhhUqF8
	PGUAGU7X0WpvbO0pnUPtDzlMNBHkiiu7cqzhaI0jn6nOsP+zk4LNkBP5Uok35X0IgXTod9A7qOWoP
	WNsCliRqLrUMhm9HB982DelWOLtitjSdgBM4Y5bbU6TOlMPgF4acC44zq94KFFU/s9Rfkb0a9+qBa
	qOuio5cUB22duuHq/sGLUmq4RHGmp8dUtjEy6irSQMuuUZQWzpp8nHlywbR1twkDQjGfR3H8gtJKR
	MuE5pT66PW8XXnQOjNwpknnYv28CkzpHFJQSERejnVK0NqRUBoV49ofDhwqF9CuCc+sGlCuMt4pyK
	2vKoWVN8jyHA5i+M55ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkbU-0006Mt-Qt; Tue, 07 Apr 2020 09:33:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkbJ-0006L4-Tn; Tue, 07 Apr 2020 09:32:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id z7so1033379wmk.1;
 Tue, 07 Apr 2020 02:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VdXdseig1JC7hYsKG08hvusxa6/a4PjFvmwj1PCqWVE=;
 b=BCTnUVnY9ydPXeCcuXlX0gP4wDXnqTWOFivVKneAdskZIhsPUvZYr5mkMDIEqsWM/w
 HCM709DCJfmAemVQvDTU5wBfzxejYRXMPVjJyumfU7EWi0iAcAd8O9sg/Ymw0NJC7PJl
 0DawBQhe/fwljAQzAd9LZJ/lDTlbdDzHuQjSoTds7+4ewm4n1D/aC4qUHUvJNJU9vYOA
 CLokp0dAVLj+XswWT8qRc/x6uG1xOI1bacA/u6frv8c/HbiYv/aR5EPNja6NAn/vvtWd
 /6NB5rOf5O5YQUNz9YFfZiV3PSECfEc3wKeu90V3vbbjp4S3tzIX5WCWBiR6EvAo1bNS
 LBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VdXdseig1JC7hYsKG08hvusxa6/a4PjFvmwj1PCqWVE=;
 b=Ahi0TvA9/zqMv3QhamfoS84mlH+1hDY8JHU6jBjpuPco4VfOPC8bE40n1JP3xg6NHG
 SYvDEO8ir7k9GjeAQdJb+kqgiPKaCSAz3YAgHTrSPH7zsY0NSDDJCUV0CTyFa29ZnE7v
 Dpxw3U3DZo9lCReews6yEJkdh/U3ErAO4+/qh35q5Q/ChXY2hBLwqlxhGZRL6xmkMO94
 WGgIqY11WtwaDtZzLd4iAArdevoLBapiMHprs+fNefIvQXXihm8Sls7PXQfD6L0nZObJ
 AcfdgqSlEgkcZJGvaI3O7oqqckR9tcUeZyIA/MvfoWN7/2PFNuTW7AihvtaqPnFRHXQX
 fIgA==
X-Gm-Message-State: AGi0PuZSFaAP40Nf6pGmxa5x9m2U2T6f6swXLl2PJEx7+xTBW7bOhRAE
 YgU9UIeQw3SUEoMik4osJFs=
X-Google-Smtp-Source: APiQypJuZw5cMHdVTEWcphAoIqDvCosEFGkn7RmxDUYMsKdM0oKVezrFvj9Ee3UjADzAy5iZMOptOg==
X-Received: by 2002:a1c:770a:: with SMTP id t10mr1469989wmi.150.1586251976051; 
 Tue, 07 Apr 2020 02:32:56 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id t67sm1487742wmt.48.2020.04.07.02.32.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 02:32:55 -0700 (PDT)
Date: Tue, 7 Apr 2020 11:32:53 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200407093253.GA4630@Red>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
 <20200406092540.GB31279@Red>
 <20200406093729.GG25745@shell.armlinux.org.uk>
 <20200406201053.GA10931@Red>
 <20200407073117.GH25745@shell.armlinux.org.uk>
 <20200407080144.GA20773@Red>
 <20200407081257.GI25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407081257.GI25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_023257_961101_C18C6B32 
X-CRM114-Status: GOOD (  24.16  )
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

On Tue, Apr 07, 2020 at 09:12:57AM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Apr 07, 2020 at 10:01:44AM +0200, Corentin Labbe wrote:
> > On Tue, Apr 07, 2020 at 08:31:17AM +0100, Russell King - ARM Linux admin wrote:
> > > On Mon, Apr 06, 2020 at 10:10:53PM +0200, Corentin Labbe wrote:
> > > > On Mon, Apr 06, 2020 at 10:37:29AM +0100, Russell King - ARM Linux admin wrote:
> > > > > On Mon, Apr 06, 2020 at 11:25:40AM +0200, Corentin Labbe wrote:
> > > > > > On Mon, Apr 06, 2020 at 10:16:00AM +0100, Russell King - ARM Linux admin wrote:
> > > > > > > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > > > > > > Hello
> > > > > > > > 
> > > > > > > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > > > > > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > > > > > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > > > > > > 
> > > > > > > > But kexec 2.0.18 fail to work:
> > > > > > > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > > > > > > 
> > > > > > > What happens if you omit the dtb argument?
> > > > > > > 
> > > > > > 
> > > > > > No change without dtb
> > > > > > 
> > > > > > I have also tried to add --mem-mim and --mem-max without any change.
> > > > > > I given mem according to what I saw in /proc/iomem
> > > > > > 20000000-9fffffff : System RAM
> > > > > >   20008000-207fffff : Kernel code
> > > > > >   20900000-209a0c87 : Kernel data
> > > > > > So I gave --mem-min 0x30000000 --mem-max 0x9fffffff
> > > > > > Anyway, the result is always the same.
> > > > > 
> > > > > The next step is to enable the early debugging - first in the
> > > > > decompressor - add #define DEBUG to the top of
> > > > > arch/arm/boot/compressed/head.S
> > > > > 
> > > > > Also enable DEBUG_LL in the kernel and use earlyprintk to see if you can
> > > > > get anything from the new kernel.
> > > > > 
> > > > 
> > > > I dont know what happened, but now I always get "Could not find a free area of memory of 0x86c1c0 bytes..." (even with kexec 2.0.18)
> > > > Furthermore, I have added crashkernel=128M to the cmdlist
> > > > I have verified that the reservation is working:
> > > > 20000000-9fffffff : System RAM
> > > >   20008000-207fffff : Kernel code
> > > >   20900000-209a0c87 : Kernel data
> > > >   40000000-47ffffff : Crash kernel
> > > > But even with this reservation, no change.
> > > 
> > > crashkernel is only necessary if you're loading a kenrel image to be
> > > booted when the existing one has crashed. For the problem you're
> > > seeing, it's an unnecessary additional change; please drop that.
> > > 
> > > You could try running kexec with debug enabled to see more information.
> > > 
> > 
> > I am already running with --debug
> 
> That was not reflected in the command lines given to kexec that you
> quoted previously, so I'm now wondering if you're giving me the full
> information.
> 
> In any case, based on the information you've supplied thus far, I have
> no further suggetsions to make.
> 

Sorry I have added --debug after my initial mail.
But I am surprised that no debug output like "MEMORY RANGES" is done (like I got in my first try).
I have started to patch kexec-tools to check it, and debug is enabled.
Furthermore, I got in locate_hole:237 memory_ranges=0.
So the memory region in struct kexec_info is not initialized (and so cannot be printed)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
