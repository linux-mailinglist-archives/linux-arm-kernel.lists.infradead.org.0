Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3F619FED1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 22:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkkx9P3UfUHAPm2jt5KltgnzxnvV/hyHFj9H46uASCg=; b=SnKbcQTOOD4R28
	wSU+xWMe16i7jQ8Ts6FttlZOAN11In9rh2sPgJLN+lJ3h1rIKr/bIxqs3HeN7MHk801fAWa0tvAuh
	9ADmYvxMQnYdIdJqIQj6HhNr3VCa5utaNHeYiMwcm89XhEUrHWshGmHTqsMTphBMOrvoLV2kOChNe
	P8rGJwLGgWqR/z6n4xWfDOVJkvJ9pt5S1FEtBbFBHOV4oLL7NazOfyn12mlbS0H98w4WjId2eSAe/
	Jv4x3h0OxjrIUX9zCpQyoggXQN3GfoVfOakGYdHnoBwt4pquQwSXt+X5WQF7nV0cjYJMdqOu/vlEx
	XSv60LfRuZ0/f5mbbSOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLY69-00054g-FH; Mon, 06 Apr 2020 20:11:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLY5B-0003xJ-Tx; Mon, 06 Apr 2020 20:10:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id a25so1101507wrd.0;
 Mon, 06 Apr 2020 13:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K7m04/RQydC05lMdwFzvqDrhS51YkIpWaYRwOu8BZiw=;
 b=VhpKxJPfkPEOFMUFhDw7AIgwNKbEy3WIlk/4P99t/ywfNvy5PYbqWzYc6pJ95ZC0/K
 QxNJljDjWn+XUlGscu1TN6fSe0iuHAUoAqA9xC65cKn5NzRaldqvDvsUM12HtW8KC3e1
 HolrruDn3bNVpj/RgWCUCQxo1wn7jkXR1aSOENbG3ye3Xh0/GFWWvMjSHmmkYrpxwaTN
 82naDkM7QvYfBokhgqyYWli9uRNhAAgRmv011RcZS12aaFf5jj5NtnFeSJP1aJAw+JZf
 j2I3x8l5pZkMSwYjuiZVGrX+4wo/nU/EvJ+d0kdmTw0FkQ8tzHWWurHzh+7oECZHwK+7
 6zww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K7m04/RQydC05lMdwFzvqDrhS51YkIpWaYRwOu8BZiw=;
 b=rojW4eQ5ReHLcJxZ/SR1gR492wyFYyfPC6PKZxIh26epqTBeYtNabFwh0IRLursbzk
 bXJN5N3SmDc0X4BN/sTxzw03r9sCgp1RyFHS9V6OhKdgQalYGAec2zsZwJv+Vrf/azB/
 pNYiCHXr49Hb8jX/3mQEN49JUSdDm4HOB9dLDL3URQasBf8jbeoInCZVTakFBHlDPYEN
 DXt3tbYYY2cKCp/DeQe/T7gSQjpemDaZ++pHmeBf0PTnkFTy/CZZw8Xds9XEDDHAqd2K
 H/NnvPLdYElaqH4k1IY/ElvMXHMZOgCJdffxHPxG6a7tuZ80mk/0OcRJCfnJ7Mn8uPh6
 BmhQ==
X-Gm-Message-State: AGi0PuYVtRJBEMdhf6n37AkyEiygHUmpEi8r0UfzvEdnGL5HqJ90bSJc
 Nfcn4z7PmR+ZwYU3/0kevaI=
X-Google-Smtp-Source: APiQypKS1KZuF0Y6bJWDK84a832JwPLWyZ706L64ZntZUnsCdvv4UgFSB9mODdX75JRUmEK5dO8Qjw==
X-Received: by 2002:a05:6000:e:: with SMTP id
 h14mr1084034wrx.128.1586203855805; 
 Mon, 06 Apr 2020 13:10:55 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id z21sm727473wml.47.2020.04.06.13.10.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 13:10:54 -0700 (PDT)
Date: Mon, 6 Apr 2020 22:10:53 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: Trying to kexec on Allwinner A80
Message-ID: <20200406201053.GA10931@Red>
References: <20200406082720.GA31279@Red>
 <20200406091600.GF25745@shell.armlinux.org.uk>
 <20200406092540.GB31279@Red>
 <20200406093729.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406093729.GG25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_131057_973488_414D72BF 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Mon, Apr 06, 2020 at 10:37:29AM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Apr 06, 2020 at 11:25:40AM +0200, Corentin Labbe wrote:
> > On Mon, Apr 06, 2020 at 10:16:00AM +0100, Russell King - ARM Linux admin wrote:
> > > On Mon, Apr 06, 2020 at 10:27:20AM +0200, Corentin Labbe wrote:
> > > > Hello
> > > > 
> > > > I am trying to add the last missing Allwinner Soc in kernelci: the A80.
> > > > But this SoC does not have any way to be used in kernelci, no USB nor network in uboot.
> > > > So I have tried to fake uboot since the kernel has network support and run the new kernel via kexec.
> > > > 
> > > > But kexec 2.0.18 fail to work:
> > > > kexec --force /tmp/kernel --initrd /tmp/ramdisk --dtb /tmp/dtb --command-line='console=ttyS0,115200n8 root=/dev/ram0 earlycon=uart,mmio32,0x7000000 ip=dhcp'
> > > 
> > > What happens if you omit the dtb argument?
> > > 
> > 
> > No change without dtb
> > 
> > I have also tried to add --mem-mim and --mem-max without any change.
> > I given mem according to what I saw in /proc/iomem
> > 20000000-9fffffff : System RAM
> >   20008000-207fffff : Kernel code
> >   20900000-209a0c87 : Kernel data
> > So I gave --mem-min 0x30000000 --mem-max 0x9fffffff
> > Anyway, the result is always the same.
> 
> The next step is to enable the early debugging - first in the
> decompressor - add #define DEBUG to the top of
> arch/arm/boot/compressed/head.S
> 
> Also enable DEBUG_LL in the kernel and use earlyprintk to see if you can
> get anything from the new kernel.
> 

I dont know what happened, but now I always get "Could not find a free area of memory of 0x86c1c0 bytes..." (even with kexec 2.0.18)
Furthermore, I have added crashkernel=128M to the cmdlist
I have verified that the reservation is working:
20000000-9fffffff : System RAM
  20008000-207fffff : Kernel code
  20900000-209a0c87 : Kernel data
  40000000-47ffffff : Crash kernel
But even with this reservation, no change.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
