Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE745150881
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxmvwZK3zl6KfnleLsm93LHq0E7hDeb1yO1jR2aJD/E=; b=nLxPvpMFSut4CK
	QDAU+BMkpLZxwgXcD5OncPbqa7/DbBhp94rZ9mwAgiVCUm4UnvQULEhx1GlyBUccX1TqZ6Uor/bCu
	ptcLn4gnOiaxxGoIi+G0l+nCOGgZ/vDBoWai42uL6IJ6TIHs3/xxWlAwbd7bfpWr8/Ip77AIgaQpI
	lnNxHY9EnY+FEWssw8pGJq1txQtwtfz+TSiIrzyRM1Jzz5e6fEtFXq7NhXD4QOtqWyORsRslbjfdq
	7zm5xgMMxwNwYp3MOk313ACS7HfXLmW+K80vndpJpXW/AOuRwjKJ6KQYSpabhGVq+u6ZxnNEKcp3x
	2P1m5tPkOsZT5YyOZHSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycpY-0005ls-CL; Mon, 03 Feb 2020 14:36:04 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycpP-0005lY-Ej
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:35:56 +0000
Received: by mail-qv1-xf43.google.com with SMTP id y2so6840111qvu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 06:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pHZXEZfxcArrJOwFLOO5B25gH5Nf7M6GMePV8H95wz8=;
 b=AN4jrTsY0Be0qFeBI9ikRLgxslO22TK9D1lt7ekoGyu3ID/zgEWhSNVupxjTkfAwxZ
 RyklxvFtDIJzsnMWV9zv2YBMZWMtNgNTSG0RhwM7waizdUZJv4Yolq1UseGtKmfN4AlG
 523oxjEUuqbaxJghOAZ2wLYFOObEbNB8BYnW43sb7bdgk+n6zPYYiiGZrSiXYaZAJF5U
 D4dnArJCuHz5mLrlCfrFE5sAmPQcA6ikoOOc/SmeiOyF6oLimoxK+FiVMdIY1FjMIbbp
 0XLFnJjUPmrI4YCpuDOGG2azN0IBRGLHF7Ee7qkkwezHahQF5sj8HAx2FTsGIQDMI92c
 qHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pHZXEZfxcArrJOwFLOO5B25gH5Nf7M6GMePV8H95wz8=;
 b=pGsuR7utXU/c7obbGT2MdMtbqS1/PwysQUJ9hgSJXgdIfq3fw0vVddgleWKYy96AHN
 SRKMEiZCNFUUe+AwjJ9rMc+UXJPCWRgw7ijHkR1BpSSNKNCfTewDbOwEuXBHtN/7f3wa
 Acp42hrgq6lKbaF+HLit6mvMwS00vEKlpNbHzF3K4vi4B7CsWrnrmx+rRxdRG2eFMH4d
 2x6QvO/WO6Sm2DUIit62XyNsmc2xJIXU/7Y6/orIIg11H4mP+x4t0jkocPYlC6dZojcI
 hJ8BToW3fuLUMx7Pir114/t2YD29UDaJCgHYYEzi8ykIu/KzerBhIycbtvYKQcYWrPe7
 6UUw==
X-Gm-Message-State: APjAAAUXMZ43BY7zpCZ3OC3Zh1GXsoOBhxkhuj+wkC9QQo0C7XySlDYp
 bROJylr29xHdAS2Tf1u6e00=
X-Google-Smtp-Source: APXvYqz2HVVFSAa8uHQTrlSI3OhLdRF470sd06dYwwzRxF3/fPsupj9vDFDZEBqMNubVa0aYJMX5hg==
X-Received: by 2002:ad4:4b08:: with SMTP id r8mr23469453qvw.250.1580740554339; 
 Mon, 03 Feb 2020 06:35:54 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id y26sm10320882qtc.94.2020.02.03.06.35.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 06:35:53 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id F307E22076;
 Mon,  3 Feb 2020 09:35:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 09:35:53 -0500
X-ME-Sender: <xms:xy84XttKeqh-gEQBxwPA7O1wcftgh5R6j1HrJc4iCNBRU1xMSuoZGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeejgdeihecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepuehoqhhunhcu
 hfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucfkphephedvrd
 duheehrdduuddurdejudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqd
 eiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhl
 rdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:xy84XrUwqTqDlXrEOy3a-4hDTr1RqwBGNrCO4l3nOYY4diUTEohGaw>
 <xmx:xy84XmrxUVgY6rxtgT_eM73yjc8rIyKzW2JEtf46MXyzuQgJjmNCLA>
 <xmx:xy84XmrMHXee9CTrkoNKbXcfj7xPp4QGXyZGcdYPkESWy6NUGo3-aA>
 <xmx:yC84XrVUQM4PYFvQRz9qqQmG05aMITRnwhR3rbkEWU1bcpyLopjULeXBLiQ>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id BFF233060272;
 Mon,  3 Feb 2020 09:35:50 -0500 (EST)
Date: Mon, 3 Feb 2020 22:35:49 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Andrew Murray <amurray@thegoodpenguin.co.uk>
Subject: Re: [PATCH v2 3/3] PCI: hv: Introduce hv_msi_entry
Message-ID: <20200203143549.GG83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-4-boqun.feng@gmail.com>
 <20200203095140.GE20189@big-machine>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203095140.GE20189@big-machine>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_063555_494295_9340F1AE 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Mon, Feb 03, 2020 at 09:51:40AM +0000, Andrew Murray wrote:
> On Mon, Feb 03, 2020 at 01:03:13PM +0800, Boqun Feng wrote:
> > Add a new structure (hv_msi_entry), which is also defined int tlfs, to
> 
> s/int/in the/ ?
> 

Good catch, will fix.

> > describe the msi entry for HVCALL_RETARGET_INTERRUPT. The structure is
> > needed because its layout may be different from architecture to
> > architecture.
> > 
> > Also add a new generic interface hv_set_msi_address_from_desc() to allow
> > different archs to set the msi address from msi_desc.
> > 
> > No functional change, only preparation for the future support of virtual
> > PCI on non-x86 architectures.
> > 
> > Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> > ---
> >  arch/x86/include/asm/hyperv-tlfs.h  | 11 +++++++++--
> >  arch/x86/include/asm/mshyperv.h     |  5 +++++
> >  drivers/pci/controller/pci-hyperv.c |  4 ++--
> >  3 files changed, 16 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
> > index 4a76e442481a..953b3ad38746 100644
> > --- a/arch/x86/include/asm/hyperv-tlfs.h
> > +++ b/arch/x86/include/asm/hyperv-tlfs.h
> > @@ -912,11 +912,18 @@ struct hv_partition_assist_pg {
> >  	u32 tlb_lock_count;
> >  };
> >  
> > +union hv_msi_entry {
> > +	u64 as_uint64;
> > +	struct {
> > +		u32 address;
> > +		u32 data;
> > +	} __packed;
> > +};
> > +
> >  struct hv_interrupt_entry {
> >  	u32 source;			/* 1 for MSI(-X) */
> >  	u32 reserved1;
> > -	u32 address;
> > -	u32 data;
> > +	union hv_msi_entry msi_entry;
> >  } __packed;
> >  
> >  /*
> > diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
> > index 6b79515abb82..3bdaa3b6e68f 100644
> > --- a/arch/x86/include/asm/mshyperv.h
> > +++ b/arch/x86/include/asm/mshyperv.h
> > @@ -240,6 +240,11 @@ bool hv_vcpu_is_preempted(int vcpu);
> >  static inline void hv_apic_init(void) {}
> >  #endif
> >  
> > +#define hv_set_msi_address_from_desc(msi_entry, msi_desc)	\
> > +do {								\
> > +	(msi_entry)->address = (msi_desc)->msg.address_lo;	\
> > +} while (0)
> 
> Given that this is a single statement, is there really a need for the do ; while(0) ?
> 

I choose to use do ; while (0) because I don't want code like the
following to be able to compile:

	hv_set_msi_address_from_desc(...) /* semicolon is missing */
	a = b;

But now think more about this, I think it's probably better to define
this as a function..

> 
> > +
> >  #else /* CONFIG_HYPERV */
> >  static inline void hyperv_init(void) {}
> >  static inline void hyperv_setup_mmu_ops(void) {}
> > diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
> > index 0d9b74503577..2240f2b3643e 100644
> > --- a/drivers/pci/controller/pci-hyperv.c
> > +++ b/drivers/pci/controller/pci-hyperv.c
> > @@ -1170,8 +1170,8 @@ static void hv_irq_unmask(struct irq_data *data)
> >  	memset(params, 0, sizeof(*params));
> >  	params->partition_id = HV_PARTITION_ID_SELF;
> >  	params->int_entry.source = 1; /* MSI(-X) */
> > -	params->int_entry.address = msi_desc->msg.address_lo;
> > -	params->int_entry.data = msi_desc->msg.data;
> > +	hv_set_msi_address_from_desc(&params->int_entry.msi_entry, msi_desc);
> > +	params->int_entry.msi_entry.data = msi_desc->msg.data;
> 
> If the layout may differ, then don't we also need a wrapper for data?
> 

On x86 hv_msi_entry is:

	{
		u32 address;
		u32 data;
	}

and on ARM64 it is:

	{
		u64 address;
		u32 data;
		u32 reserved;
	}

So currently, setting msi_entry.data doesn't need a wrapper for
different archs. But now you mention it, probably a better way is to
provide a wrapper hv_set_msi_entry_from_desc(), which sets both address
and data instead of hv_set_msi_address_from_desc().

Thanks for looking into the whole patchset!

Regards,
Boqun

> Thanks,
> 
> Andrew Murray
> 
> >  	params->device_id = (hbus->hdev->dev_instance.b[5] << 24) |
> >  			   (hbus->hdev->dev_instance.b[4] << 16) |
> >  			   (hbus->hdev->dev_instance.b[7] << 8) |
> > -- 
> > 2.24.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
