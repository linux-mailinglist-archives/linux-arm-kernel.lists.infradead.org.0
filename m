Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA84151429
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 03:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4OtM++zk+fZUI2WATk8TLtZQ5knuSp+QMnGwERJOME=; b=BoeautSeoxQCNu
	SCgoeAlF0EsQrSQSba4CKXR1/uXLI8uEaF1OBbo83bb5Up72K9OhE1mC2XxdXm5XMjawBWQMVNedb
	TUR8Ep3DPP0UcYtASL6Mvb8hYO21WSDDORh+yZVJvI/VfuZPE4o6TndkcpiN+P7Bliq10BtMOVVds
	0DifIeXa+EFBVDwz4Jm8jxwMITE8X92zYzV88G2Es6E3y6A0o6rjwnvGeLrqUtSwdHNifqyi7fcWl
	6UUFzZEqcp3IC+L6HgfdmHPIly7d7jp3CDwv7TbeKq4D+4wxlX59SYh36HLVR3Jdpky+kaQZ/I7xQ
	SL9uHP7NqOModNONuu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iynrK-0006PO-TC; Tue, 04 Feb 2020 02:22:38 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iynrC-0006OS-Jq
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 02:22:32 +0000
Received: by mail-qv1-xf43.google.com with SMTP id dc14so7844574qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 18:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+7bNDkzYQObh2nR2oGbuE4Dpd0rtrc7Ng0f3Nsbx0is=;
 b=m5yVxar/U8syjDQWSw87By9g8yzUYQf7wttomeou+XraVPd7q6Unrpdz2RlocmovZ5
 GYkArBneH9e1IFHBW1qKfqDyvotGHGbmOKl8xpHnr0kwVHNcXUM+NfEYkVIHjBOe/jpA
 lvgXe39I0B6MW1MRpvSwFKnX2W/gZxF55LS/362DdvVw6FHBbnD8G3Xu1HUKgww5eCYQ
 vqZis0NnSNY36O97WGO9Kemk4Oo11iGkz6o4w/hMxfpEJ+PE61okSoFPwckx1i756vhW
 FKN5HD3/G5itpv4x2bbKjGKUCQKMMQulHQW7HGu5JcPCMa5hGp4A03ii346QQKUxMKeq
 QWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+7bNDkzYQObh2nR2oGbuE4Dpd0rtrc7Ng0f3Nsbx0is=;
 b=WwhvNI015z6Wr7m71BP5Bx1PkLY51uvNQoKrZm8chJdhSFKS5vfGP3mIHaAVwXiR3y
 JjyhbrBF445SRTZOjrSuJlQTug17z+nPb46yA6CqHlQ2ylKJqvhV8ina7CgmSGSGzLQx
 ISasVTtXHpc3xmu+/FLk1YTAfDv7LDUuM051At+/yJCUqofMT6LqrqfKMHajxYTi6ZWP
 /gn5KMhI9ZK5q7jYPr8AbIB4prBfhuDQYXugJnmlWUdWurMOTV/3jEpDfkbuVNyLiG5m
 XetvB8sIvYr3nEqhkmwgJhq5Y7M1AFSsYph547F2FabEp/YCNhfq4LrUOK8SRvfxFLjo
 k7TQ==
X-Gm-Message-State: APjAAAXItenvAUp4LW9hus3xbyexhk2KncynhW5wftTYqHFdbjTU567d
 wef4IMvtAVICd1LZA6VJOiE=
X-Google-Smtp-Source: APXvYqzseWAXn508OZu6/LH11PnekWyK3CLv5IOOZVn0+EH0AtuUIsi/FVxiEve5zsRqV9wvlwvijA==
X-Received: by 2002:a05:6214:162c:: with SMTP id
 e12mr25020577qvw.3.1580782947998; 
 Mon, 03 Feb 2020 18:22:27 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id w24sm10923234qts.3.2020.02.03.18.22.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 18:22:27 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 91C6321D26;
 Mon,  3 Feb 2020 21:22:26 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 21:22:26 -0500
X-ME-Sender: <xms:YNU4Xmowd6HWnVT6dy_HxbxIBs5KN6Auhiy_VWxy9ToftOgTAQ6F8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeekgdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepuehoqhhunhcu
 hfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucffohhmrghinh
 epihhnfhhrrgguvggrugdrohhrghenucfkphephedvrdduheehrdduuddurdejudenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnod
 hmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejjeek
 heehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrg
 hmvg
X-ME-Proxy: <xmx:YNU4XhiuFOpkyXZAqllNI2BrqRetE_5DfP1rcXKO9PXrOzLBMCnNgQ>
 <xmx:YNU4Xq9l5JoQklMWaq7fB5Obzz0lNoBvvpMOZd2Ju47GooYO2hCaXg>
 <xmx:YNU4XlW1bie1w9CJ0Ga3oVN065fa-luZPf3pssfAx5CI9kZ7OmTA_Q>
 <xmx:YtU4Xk0FmGTG-BF4UFvPenn2YWCpiLoZT3Ymbj25IMOOjkjMDJb0gZ9aFuA>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6A34F30605C8;
 Mon,  3 Feb 2020 21:22:24 -0500 (EST)
Date: Tue, 4 Feb 2020 10:22:22 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: Re: [PATCH v2 1/3] PCI: hv: Move hypercall related definitions into
 tlfs header
Message-ID: <20200204022222.GI83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-2-boqun.feng@gmail.com>
 <20200203092525.GC20189@big-machine>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203092525.GC20189@big-machine>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_182230_679301_98E9CA58 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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

On Mon, Feb 03, 2020 at 09:25:25AM +0000, Andrew Murray wrote:
> On Mon, Feb 03, 2020 at 01:03:11PM +0800, Boqun Feng wrote:
> > Currently HVCALL_RETARGET_INTERRUPT and HV_PARTITION_ID_SELF are defined
> > in pci-hyperv.c. However, similar to other hypercall related definitions
> > , it makes more sense to put them in the tlfs header file.
> 
> Nit: please keep the comma attached to the previous word - even if that
> means you need to move the word with it to the next line to maintain line
> limits.
> 
> > 
> > Besides, these definitions are arch-dependent, so for the support of
> > virtual PCI on non-x86 archs in the future, move them into arch-specific
> > tlfs header file.
> > 
> > Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> > ---
> >  arch/x86/include/asm/hyperv-tlfs.h  | 3 +++
> >  drivers/pci/controller/pci-hyperv.c | 6 ------
> >  2 files changed, 3 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
> > index 5f10f7f2098d..739bd89226a5 100644
> > --- a/arch/x86/include/asm/hyperv-tlfs.h
> > +++ b/arch/x86/include/asm/hyperv-tlfs.h
> > @@ -376,6 +376,7 @@ struct hv_tsc_emulation_status {
> >  #define HVCALL_SEND_IPI_EX			0x0015
> >  #define HVCALL_POST_MESSAGE			0x005c
> >  #define HVCALL_SIGNAL_EVENT			0x005d
> > +#define HVCALL_RETARGET_INTERRUPT		0x007e
> >  #define HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE 0x00af
> >  #define HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST 0x00b0
> >  
> > @@ -405,6 +406,8 @@ enum HV_GENERIC_SET_FORMAT {
> >  	HV_GENERIC_SET_ALL,
> >  };
> >  
> > +#define HV_PARTITION_ID_SELF                    ((u64)-1)
> > +
> >  #define HV_HYPERCALL_RESULT_MASK	GENMASK_ULL(15, 0)
> >  #define HV_HYPERCALL_FAST_BIT		BIT(16)
> >  #define HV_HYPERCALL_VARHEAD_OFFSET	17
> > diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> > index 9977abff92fc..aacfcc90d929 100644
> > --- a/drivers/pci/controller/pci-hyperv.c
> > +++ b/drivers/pci/controller/pci-hyperv.c
> > @@ -406,12 +406,6 @@ struct pci_eject_response {
> >  
> >  static int pci_ring_size = (4 * PAGE_SIZE);
> >  
> > -/*
> > - * Definitions or interrupt steering hypercall.
> > - */
> > -#define HV_PARTITION_ID_SELF		((u64)-1)
> > -#define HVCALL_RETARGET_INTERRUPT	0x7e
> > -
> 
> Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>
> 

Thanks! I will fix the comma thing and add your Reviewed-by in next
version.

Regards,
Boqun

> >  struct hv_interrupt_entry {
> >  	u32	source;			/* 1 for MSI(-X) */
> >  	u32	reserved1;
> > -- 
> > 2.24.1
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
