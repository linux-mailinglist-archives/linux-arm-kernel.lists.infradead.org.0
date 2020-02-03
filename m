Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F94A150812
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=806uzHFwEnAmZLDjRJD2XjBxe1DxEpVZcUxknWV7HZ8=; b=biNgbURA1/vgB0
	fIqvA8w1mx/eByuUBpx3k1v6t9NgaXa51P0/kitZLMYb0mA8UoTHoaGlvu766jfP+UExwDhvt2GzR
	w17d4ItjnYhZuSzWfn/R9zHWFFJhQrKeglCPSiW1mXpDjrbMYjQ2+HwMUULmQQJslzWpF341zxubb
	aX8Jg3Rm47QEN+5xtXdh8FkSdQ+hTkWzowpKdav8ihYJDLcolCw3TQHrf3PHPxpcM+PRtg5AWqW7M
	ttw5L1wezGA/v5xhkfKtsKpY0RVB/WknsxP6eQI0FmXuuMjOplaheTmVDRWT7UAkK/d/idSes664B
	YI4iAq08PumCZL2laxIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycPq-0003Hv-1U; Mon, 03 Feb 2020 14:09:30 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycPX-0003H0-FP
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:09:16 +0000
Received: by mail-qk1-x742.google.com with SMTP id u19so6608244qku.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 06:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VglaDyUpCkhXx9hrqC8HpF3hY8//yvxe/GnkNqkiuyI=;
 b=MTFWSwdpIUN8fEmK8IEJFk3+2UKh25nl1YOD3Rl+VpzxzZ1bTaYjiIE3C1XRorPZDD
 MCn/mJFqyLTkf4OTPYCPDBfAJUn/OeeSwV6/hedS2cDPjyNGl1WUxmpKaOkEyDROmZ27
 DR5AYFIts5noWIUSJsjy3GhKhecU4K7zA1dTmak0bdSxPLWtCzO1WOZ89OguEkAn3tfY
 lP6rSJ4nXepy5mSPX4rW3jtewtJyBpwDPhJI/L9KHqxuD2ex2vqjq/QjL8DFYwXfYfon
 Mil7GUMoOvKktpinmfVwku9eyKEe+nZYOC/lTRwr/QB9+dyoAfYX7ZZPQc0XcKeCYpww
 ZoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VglaDyUpCkhXx9hrqC8HpF3hY8//yvxe/GnkNqkiuyI=;
 b=XP66sN0k1n/S0iG7znzgE1Lk8WZYDhwGeVCulZi8yWkFfo8l+IatQmkjikaD/R1FWk
 q4QvWRtEn1viZtftv2JbubdaV4asUf8OlDnkumTcRHWYXKKWwyCOgXQg4R/32RQUTSnB
 sr4BBaYdYSVqi+bTAsBRxTQDBCrmfUsuNH7DfL196v+1EbgZm5lYYZPe+0iGI8ojvsgk
 A7JVvhF0WnarjeflkUMHDDRiWbqaJXwztcOCwIraxdMGlwvyuffYaxd9jawLtXnFycPD
 7QBj3r9QEWVx7dP7MsT0WsFGwkKKRFYTS9bXBj/hQgBBxIlHMJBH9LZFejcVxQX8uF4m
 q2Tw==
X-Gm-Message-State: APjAAAW/yt31J+LwZ9KpT4DRVhE0Sjz/NGXlx72H+4ezCZG4quB4Kvi8
 fmq5od75GsPuzYgQMrLsDliZutUZ
X-Google-Smtp-Source: APXvYqwro+2AL5hEDOifKdhLAqsxcMvlGw8iUcKsdC3VPKqmeK7aPmkU6Cq/CQ17knBfz1liZphAhQ==
X-Received: by 2002:a37:e210:: with SMTP id g16mr23584593qki.413.1580738948923; 
 Mon, 03 Feb 2020 06:09:08 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id d9sm9658708qth.34.2020.02.03.06.09.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 06:09:08 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 9A0B021B7C;
 Mon,  3 Feb 2020 09:09:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 09:09:05 -0500
X-ME-Sender: <xms:gCk4XhDQcJFqrMRh9Orcd5rV_WSJhlhwqApM79bryhpDc-52nq0yZQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeejgdehkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepuehoqhhunhcu
 hfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucffohhmrghinh
 epmhhitghrohhsohhfthdrtghomhenucfkphephedvrdduheehrdduuddurdejudenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnod
 hmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejjeek
 heehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrg
 hmvg
X-ME-Proxy: <xmx:gCk4Xjk6a0_HdOtJ1hwhQptOVIufrKwz9hJJXQhOcNy5ABrD5nJefw>
 <xmx:gCk4Xtvly7ecra5XvRQml2rympYgF_xxlnhQYeXNu59o7OHN4V3hLw>
 <xmx:gCk4XlL-H2MKZlRh5spFzqzDSH2aUeYkoDF3pgGOC1JRAZorc840EA>
 <xmx:gSk4XoZkaz1RHEYUZsvCvoPgFnccExn8_mMgTMgCYwBAA0jI1CbmjfZV0mY>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3521F3280060;
 Mon,  3 Feb 2020 09:09:04 -0500 (EST)
Date: Mon, 3 Feb 2020 22:09:02 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: Re: [PATCH v2 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Message-ID: <20200203140902.GF83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-3-boqun.feng@gmail.com>
 <20200203094118.GD20189@big-machine>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203094118.GD20189@big-machine>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_060912_257607_B16F0F69 
X-CRM114-Status: GOOD (  30.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
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

On Mon, Feb 03, 2020 at 09:41:18AM +0000, Andrew Murray wrote:
> On Mon, Feb 03, 2020 at 01:03:12PM +0800, Boqun Feng wrote:
> > Currently, retarget_msi_interrupt and other structures it relys on are
> > defined in pci-hyperv.c. However, those structures are actually defined
> > in Hypervisor Top-Level Functional Specification [1] and may be
> > different in sizes of fields or layout from architecture to
> > architecture. Therefore, this patch moves those definitions into x86's
> 
> Nit: Rather than 'Therefore, this patch moves ...' - how about 'Let's move
> ...'?
> 
> > tlfs header file to support virtual PCI on non-x86 architectures in the
> > future.
> > 
> > Besides, while I'm at it, rename retarget_msi_interrupt to
> 
> Nit: 'Besides, while I'm at it' - this type of wording describes what
> *you've* done rather than what the patch is doing. You could replace
> that quoted text with 'Additionally, '
> 
> > hv_retarget_msi_interrupt for the consistent name convention, also
> 
> Nit: s/name/naming
> 

Thanks for the suggestion on wording ;-)

> > mirroring the name in TLFS.
> > 
> > [1]: https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs
> > 
> > Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> > ---
> >  arch/x86/include/asm/hyperv-tlfs.h  | 31 ++++++++++++++++++++++++++
> >  drivers/pci/controller/pci-hyperv.c | 34 ++---------------------------
> >  2 files changed, 33 insertions(+), 32 deletions(-)
> > 
> > diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
> > index 739bd89226a5..4a76e442481a 100644
> > --- a/arch/x86/include/asm/hyperv-tlfs.h
> > +++ b/arch/x86/include/asm/hyperv-tlfs.h
> > @@ -911,4 +911,35 @@ struct hv_tlb_flush_ex {
> >  struct hv_partition_assist_pg {
> >  	u32 tlb_lock_count;
> >  };
> > +
> > +struct hv_interrupt_entry {
> > +	u32 source;			/* 1 for MSI(-X) */
> > +	u32 reserved1;
> > +	u32 address;
> > +	u32 data;
> > +} __packed;
> 
> Why have you added __packed here? There is no mention of this change in the
> commit log? Is it needed?
> 

I'm simply following the convention of hyperv-tlfs.h: most of the
structures have this "__packed" attribute. I personally don't think this
attribute is necessary, but I was afraid that I was missing something
subtle. So a question for folks working on Hyper-V: why we need this
attribute on TLFS-defined structures? Most of those will have no
difference with or without this attribute, IIUC.

> > +
> > +/*
> > + * flags for hv_device_interrupt_target.flags
> > + */
> > +#define HV_DEVICE_INTERRUPT_TARGET_MULTICAST		1
> > +#define HV_DEVICE_INTERRUPT_TARGET_PROCESSOR_SET	2
> > +
> > +struct hv_device_interrupt_target {
> > +	u32 vector;
> > +	u32 flags;
> > +	union {
> > +		u64 vp_mask;
> > +		struct hv_vpset vp_set;
> > +	};
> > +} __packed;
> 
> Same here.
> 
> > +
> > +/* HvRetargetDeviceInterrupt hypercall */
> > +struct hv_retarget_device_interrupt {
> > +	u64 partition_id;
> 
> Why drop the 'self' comment?
> 

Good catch, TLFS does say this field must be 'self'. I will add it in
next version.

> > +	u64 device_id;
> > +	struct hv_interrupt_entry int_entry;
> > +	u64 reserved2;
> > +	struct hv_device_interrupt_target int_target;
> > +} __packed __aligned(8);
> >  #endif
> > diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> > index aacfcc90d929..0d9b74503577 100644
> > --- a/drivers/pci/controller/pci-hyperv.c
> > +++ b/drivers/pci/controller/pci-hyperv.c
> > @@ -406,36 +406,6 @@ struct pci_eject_response {
> >  
> >  static int pci_ring_size = (4 * PAGE_SIZE);
> >  
> > -struct hv_interrupt_entry {
> > -	u32	source;			/* 1 for MSI(-X) */
> > -	u32	reserved1;
> > -	u32	address;
> > -	u32	data;
> > -};
> > -
> > -/*
> > - * flags for hv_device_interrupt_target.flags
> > - */
> > -#define HV_DEVICE_INTERRUPT_TARGET_MULTICAST		1
> > -#define HV_DEVICE_INTERRUPT_TARGET_PROCESSOR_SET	2
> > -
> > -struct hv_device_interrupt_target {
> > -	u32	vector;
> > -	u32	flags;
> > -	union {
> > -		u64		 vp_mask;
> > -		struct hv_vpset vp_set;
> > -	};
> > -};
> > -
> > -struct retarget_msi_interrupt {
> > -	u64	partition_id;		/* use "self" */
> > -	u64	device_id;
> > -	struct hv_interrupt_entry int_entry;
> > -	u64	reserved2;
> > -	struct hv_device_interrupt_target int_target;
> > -} __packed __aligned(8);
> > -
> >  /*
> >   * Driver specific state.
> >   */
> > @@ -482,7 +452,7 @@ struct hv_pcibus_device {
> >  	struct workqueue_struct *wq;
> >  
> >  	/* hypercall arg, must not cross page boundary */
> > -	struct retarget_msi_interrupt retarget_msi_interrupt_params;
> > +	struct hv_retarget_device_interrupt retarget_msi_interrupt_params;
> >  
> >  	/*
> >  	 * Don't put anything here: retarget_msi_interrupt_params must be last
> > @@ -1178,7 +1148,7 @@ static void hv_irq_unmask(struct irq_data *data)
> >  {
> >  	struct msi_desc *msi_desc = irq_data_get_msi_desc(data);
> >  	struct irq_cfg *cfg = irqd_cfg(data);
> > -	struct retarget_msi_interrupt *params;
> > +	struct hv_retarget_device_interrupt *params;
> 
> pci-hyperv.c also makes use of retarget_msi_interrupt_lock - it's really clear
> from this name what it protects, however your rename now makes this more
> confusing.
> 
> Likewise there is a comment in hv_pci_probe that refers to
> retarget_msi_interrupt_params which is now stale.
> 

But 'retarget_msi_interrupt_params' is the name of field in
hv_pcibus_device, so is 'retarget_msi_interrupt_lock'. And what I change
is the name of type. I believe people can tell the relationship from
the name of the fields, and the comment of hv_pci_probe actually refers
to the field rather than the type.

> It may be helpful to rename hv_retarget_device_interrupt for consistency with
> the docs - however please make sure you catch all the references - I'd suggest
> that the move and the rename are in different patches.
> 

If the renaming requires a lot of work (e.g. need to change multiple
references), I will follow your suggestion. But seems it's not the case
for this renaming.

Regards,
Boqun

> Thanks,
> 
> Andrew Murray
> 
> >  	struct hv_pcibus_device *hbus;
> >  	struct cpumask *dest;
> >  	cpumask_var_t tmp;
> > -- 
> > 2.24.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
