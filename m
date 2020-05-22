Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B581DED98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 18:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j5Wc0PbkQD+cqerjsbRSkxek6TGuIq0FpnpV9yu4wo=; b=MBCCQ7VLCytzZg
	tT/7gVvcF14StD0KktmqvvyJ8RFIY56jjMxf0H+kR3HHA/m7MItU8nGs6/l1V/g/VMZTsjDSJa9pf
	Hqot/GHw/tCSKGKArjuQs+A+9gigTeksLEXmpJtl3yxV1TcBDNlbgCoRaFNs5f/sl0L3+utq5QkaX
	3ZjzaUeXBX5hOdFxW2HB7wsosOIlQYLuc53DZiE7zqjg0mdTMyXH2F8woVCb5Z7EhS5s7U9IUyc0A
	+69m4lPTIQGVS3DX6N/vO+vfQyPM6M9fbvyiwXoTpQJkCKYSd3Nn35vmg4aQxX901PquiNPAeAVlk
	pCSPoXGlKT6iJ7mHiyHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAnm-0002LN-Gp; Fri, 22 May 2020 16:45:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAne-0002KZ-6e
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 16:45:35 +0000
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB11420738
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590165933;
 bh=gWcAx6dytA0EAxqcY3HTX1YnP6kIv4ty1exXdCROqww=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tGki03yjNbya2Lh/bCN9h0iri/nzH+Vq4KqH3d9PtZz1S0Agw4aarziU175F+WuYY
 gI+uyvvHJRZg/Yw410lxNK6x004ZGodzg1huJUcmElYKAaTxMIy+T6DRQANn0wZluY
 LqHXKHCeIKAn7ZWwsLaqgyF096FGeQWKEXA9fu9Y=
Received: by mail-oi1-f179.google.com with SMTP id d191so9798807oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 09:45:33 -0700 (PDT)
X-Gm-Message-State: AOAM530v3Z8LJe51ySlOtPOd1uwGVn+515bOeJOZvZylVgnPwbkxXhV1
 TJZmzxniZGGmeNqSaJQsWdAfl82CE9aG5u6yEw==
X-Google-Smtp-Source: ABdhPJyOIimoTTwn+DzTuswuMPzoMXeeAcfiCDmfEtU2Ls/bR0MREniW3isAwKRLWPh6rvnW8cASk2bhta+/P+05dzU=
X-Received: by 2002:aca:f084:: with SMTP id o126mr3346182oih.106.1590165933079; 
 Fri, 22 May 2020 09:45:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-8-kishon@ti.com>
 <20200520213434.GA583923@bogus> <3f9cf6e5-94f8-4c54-aaee-c181b0e79f1f@ti.com>
In-Reply-To: <3f9cf6e5-94f8-4c54-aaee-c181b0e79f1f@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 22 May 2020 10:45:21 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+qcgKvauJ-GjsnmmpmRusyEJ6pRDpBOQKOadig4XfsxQ@mail.gmail.com>
Message-ID: <CAL_Jsq+qcgKvauJ-GjsnmmpmRusyEJ6pRDpBOQKOadig4XfsxQ@mail.gmail.com>
Subject: Re: [PATCH v4 07/14] PCI: cadence: Add new *ops* for CPU addr fixup
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_094534_283288_233F59E8 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, PCI <linux-pci@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 5:35 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Rob,
>
> On 5/21/2020 3:04 AM, Rob Herring wrote:
> > On Wed, May 06, 2020 at 08:44:22PM +0530, Kishon Vijay Abraham I wrote:
> >> Cadence driver uses "mem" memory resource to obtain the offset of
> >> configuration space address region, memory space address region and
> >> message space address region. The obtained offset is used to program
> >> the Address Translation Unit (ATU). However certain platforms like TI's
> >> J721E SoC require the absolute address to be programmed in the ATU and not
> >> just the offset.
> >
> > Once again, Cadence host binding is broken (or at least the example is).
> > The 'mem' region shouldn't even exist. It is overlapping the config
> > space and 'ranges':
> >
> >             reg = <0x0 0xfb000000  0x0 0x01000000>,
> >                   <0x0 0x41000000  0x0 0x00001000>,
> >                   <0x0 0x40000000  0x0 0x04000000>;
> >             reg-names = "reg", "cfg", "mem";
> >
> >             ranges = <0x02000000 0x0 0x42000000  0x0 0x42000000  0x0 0x1000000>,
> >                      <0x01000000 0x0 0x43000000  0x0 0x43000000  0x0 0x0010000>;
> >
> >
> > 16M of registers looks a bit odd. I guess it doesn't matter
> > unless you have a 32-bit platform and care about your virtual
> > space. Probably should have been 3 regions for LM, RP, and AT looking
> > at the driver.
>
> The "mem" region in never ioremapped. However $patch removes requiring to add
> "mem" memory resource.

I was referring to ioremapping 'reg' region.

> >
> > Whatever outbound address translation you need should be based on
> > 'ranges'.
>
> You mean we don't need to add "new *ops* for CPU addr fixup"?. The issue is
> ranges provides CPU address and PCI address. The CPU will access whatever is
> populated in ranges to access the PCI bus. However while programming the ATU,
> we cannot use the CPU address provided in ranges directly (in some platforms)
> because the controller does not see the full address and only the lower 28bits.

Okay, that is clearer as to what the difference is. I think this
should be 2 patches. One dropping 'mem' usage and using a mask and the
2nd making the mask per platform.

Really, the parent node of the PCI controller should probably have
'ranges' and you could extract a mask from that. Looks like that is
what you had for DRA7... I'm not sure if ABI stability is important
for the Cadence platform. I'd assume that's just some IP eval system
and probably not?

Why do you need an ops here? All you need is a mask value.

> This similar restriction was there with Designware (mostly an integration
> issue) and we used *ops* to fixup the address that has to be programmed in ATU.
> The Designware initially used a wrapper so that ranges property can be directly
> used [1]. However this approach was later removed in [2]
>
> [1] -> https://lore.kernel.org/patchwork/patch/468523/
> [2] -> https://lkml.org/lkml/2015/10/16/232

So while you had the data for a mask in DT, the driver now hardcodes it?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
