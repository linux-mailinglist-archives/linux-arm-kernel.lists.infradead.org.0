Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCD717E299
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pk8q0gy21ewYZCKl9GGFGWM4vIOoyehCuBWMVaSXOl4=; b=DI4udffxOQ22Go
	l9qAQZZ1WhZXbJcpb0rdxMrhKu8lxmFynFXD8E2UQJElHDW0XsGaQyjWWDFvdfK//LAte1cO/hI3V
	A5I0wEovOIVW4pti3RZ+gGfUvAMc0xXvX9mvA8tWf1zloChZ9i3efrWnyf4zEC0OEPt2KfWOZMbyN
	rL5z6BRBiUaqtSymycdbZVx5aFfd5CNC8/g/jTBSpK4L2T9fNY2s/5g2julgdV4PXbN0ILjY7FDif
	JH4yZ6Ae1xmoExzPWqPC4BaZfKQGMe5ogVRX2PyqR12zj/wiq1kHuW6BnW7bGI/S0pwQS0m6O2hfa
	DtBKEl2g/Ecjctq/pV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJVk-0003VI-S0; Mon, 09 Mar 2020 14:36:04 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJVd-0003UW-Ed
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:35:58 +0000
Received: by mail-qk1-x741.google.com with SMTP id f3so9422770qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 07:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5jAy914ctIMdKta9JuUGrpnLf6WaH5WzoC+86aivxiI=;
 b=Vod/MyYbR1Dx57lAsnEqZPeHZr9tyCwDnK+o0lvYZc/yGoeG5Zkw7CZ8kT5elNxeET
 WCvV606gKdzZ5BaBqNV9kFav25u78hItE24J7zWedXDF9RiBY8mnR++LAPYyaSkj8Owm
 TEfN4h6hoWcUKnepRRBhc70Fe1enkjr6IJ1fsj0egtXMsL7MkIWVIikXBhPbUg4DrHrm
 hsLd40H7pWYfheUDbVLO4fds7pnLwPA7aqg0F8lg26nh7bKEjjk+mMAXgWg2T2QPo59U
 T/9xWCGKnn1atfS4StLR0AU9yw+Y+9UfY48Htb8TtnC/IElGiSL6qMjKwcd+pOSrli9+
 nGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5jAy914ctIMdKta9JuUGrpnLf6WaH5WzoC+86aivxiI=;
 b=lCA0SyzwtWaf2e4Wlxly1s05SXVykPG7lO445GoWLo3sRbzeAfbB0FZ4TJtSD9SmAv
 jnJaaR2x34p+szlV7lxXYX2j1tZDDDMCvf+uiBAE1RHx8G3OjuGXh/fXVNAk9uaww4mN
 Qj6FN5Gv+gavU0dW1zvTpXYR64cmdWbVA4ADnPgUkcQZaKYbU8LNiuXFPg6QE4v8ADDb
 kePJxl2stM1afr8qFlRh87X3MJO+TEPXNxr9JhVa8Z41awqSWHVp0ZrVAqo1ZJioulEo
 118zj0qpNLGY2uSMN7RhslrnxNOcyi80qs/lDFKEbNdXwbcguVgWZOdW71+Pn9c4ljk9
 kDBA==
X-Gm-Message-State: ANhLgQ3a/ynXCaplzCMjHSxM4TCi+6DIyarrBJY8R3DCdvVwR1y4FkjM
 aJrMSzVawQ8OgXqEsw7ENU4=
X-Google-Smtp-Source: ADFU+vsKCcBzRKWf1W59h0lUF1gUHp4hBeMziSwnCnlwUZ3NK0Xa2PKr2UG9Epf8gMM6h0BqAQsmmg==
X-Received: by 2002:a37:67c4:: with SMTP id b187mr7681788qkc.209.1583764555383; 
 Mon, 09 Mar 2020 07:35:55 -0700 (PDT)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id p16sm22360496qkp.12.2020.03.09.07.35.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 07:35:53 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailauth.nyi.internal (Postfix) with ESMTP id 0786022148;
 Mon,  9 Mar 2020 10:35:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 09 Mar 2020 10:35:52 -0400
X-ME-Sender: <xms:RlRmXh7AhVcgDalB_YgnDdCKIk9Cw4yFlgdun8y9ZgunLxIiENoeMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddukedgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeeuohhquhhn
 ucfhvghnghcuoegsohhquhhnrdhfvghnghesghhmrghilhdrtghomheqnecuffhomhgrih
 hnpehkvghrnhgvlhdrohhrghenucfkphephedvrdduheehrdduuddurdejudenucevlhhu
 shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhmvg
 hsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejjeekheeh
 hedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:RlRmXvyESB274MuNPqwBvmeuuDIpkZZIsJKS-4GP_DH8P-fo2ApRSA>
 <xmx:RlRmXpc0aLy-UzpXL4M6i3X152o-XVdssVXbhfZUsVQhyQv91Oasfw>
 <xmx:RlRmXsGhCxIzUY-W_t-VC1u3qWDVLhAmhPBAvm0olHuhVrrPsd9iEw>
 <xmx:SFRmXpuz8Gn8qa90c8fLB50qXqcHDDcwz4iSNzcJmKoyhwmQ5ZG-HmWSNEQ>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 03317306130A;
 Mon,  9 Mar 2020 10:35:49 -0400 (EDT)
Date: Mon, 9 Mar 2020 22:35:48 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v3 0/3] PCI: hv: Generify pci-hyperv.c
Message-ID: <20200309143548.GB118238@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200221023344.GJ69864@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
 <20200221104454.GA8595@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221104454.GA8595@e121166-lin.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_073557_517207_9B045274 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, linux-pci@vger.kernel.org,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lorenzo,

On Fri, Feb 21, 2020 at 10:44:54AM +0000, Lorenzo Pieralisi wrote:
> On Fri, Feb 21, 2020 at 10:33:44AM +0800, Boqun Feng wrote:
> > Ping ;-)
> > 
> > Any suggestion or plan on this patchset?
> 
> Hi,
> 
> I shall have a look shortly, thanks.
> 

Any chance you got some time to look into this?

Regards,
Boqun

> Lorenzo
> 
> > Thanks and Regards,
> > Boqun
> > 
> > On Mon, Feb 10, 2020 at 11:39:50AM +0800, Boqun Feng wrote:
> > > Hi,
> > > 
> > > This is the first part for virtual PCI support of Hyper-V guest on
> > > ARM64. The whole patchset doesn't have any functional change, but only
> > > refactors the pci-hyperv.c code to make it more arch-independent.
> > > 
> > > Previous version:
> > > v1: https://lore.kernel.org/lkml/20200121015713.69691-1-boqun.feng@gmail.com/
> > > v2: https://lore.kernel.org/linux-arm-kernel/20200203050313.69247-1-boqun.feng@gmail.com/
> > > 
> > > Changes since v2:
> > > 
> > > *	Rebased on 5.6-rc1
> > > 
> > > *	Reword commit logs as per Andrew's suggestion.
> > > 
> > > *	It makes more sense to have a generic interface to set the whole
> > > 	msi_entry rather than only the "address" field. So change
> > > 	hv_set_msi_address_from_desc() to hv_set_msi_entry_from_desc().
> > > 	Additionally, make it an inline function as per the suggestion
> > > 	of Andrew and Thomas.
> > > 
> > > *	Add the missing comment saying the partition_id of
> > > 	hv_retarget_device_interrupt must be self.
> > > 
> > > *	Add the explanation for why "__packed" is needed for TLFS
> > > 	structures.
> > > 
> > > I've done compile and boot test of this patchset, also done some tests
> > > with a pass-through NVMe device.
> > > 
> > > Suggestions and comments are welcome!
> > > 
> > > Regards,
> > > Boqun
> > > 
> > > Boqun Feng (3):
> > >   PCI: hv: Move hypercall related definitions into tlfs header
> > >   PCI: hv: Move retarget related structures into tlfs header
> > >   PCI: hv: Introduce hv_msi_entry
> > > 
> > >  arch/x86/include/asm/hyperv-tlfs.h  | 41 +++++++++++++++++++++++++++
> > >  arch/x86/include/asm/mshyperv.h     |  8 ++++++
> > >  drivers/pci/controller/pci-hyperv.c | 43 ++---------------------------
> > >  3 files changed, 52 insertions(+), 40 deletions(-)
> > > 
> > > -- 
> > > 2.24.1
> > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
