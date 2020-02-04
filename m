Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AD8151423
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 03:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yl5o17ccF5UeXTzZ0nki7pBVF3H00X4sctyQ86QzsY4=; b=kCRLhJ95mGIPBF
	qaCmZOE6l8ATcMNF4zfpen91uXcerBc7ccySagzvNyP0fVLf33oDfAAjydM7y1J2V3fv51fs7iJjF
	imzJsgu1wzpnMRVD8cDS5yOfk5HUnZ8Ke0MNzZ+m7YFo9ROyhmRUAC3uJ/1VnvPrRsAgq53eN3T33
	nbhWg5hZYeTl8tMz7fIG/Ti3Ix2/6jMUGHBufN2za/bygekV22kAaRGJv/jVNtxXIQ/RDkOGmKLCW
	opxRfh5Qo5+DCbd3oQp4pSc+Ex8AlsSdzhVthz9jaktoGihXIRNN4okMSIWja3GnsgokuNNpBdKBB
	BJwCZPss2an973/Gcseg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iynie-0003QL-9z; Tue, 04 Feb 2020 02:13:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyniY-0003Px-MH
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 02:13:36 +0000
Received: by mail-qk1-x742.google.com with SMTP id x1so16426309qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 18:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VZmEGXacXxicuuPoJQtVnZbvxG0RFnbvOKhiEeP6vow=;
 b=KVi4gby9PprqxfGEEC+4ouLgLiwpLisNZBv8dGQhj8U16REXKcxfbNCTW84pL3Pfrk
 dYOKdGaqVn6s+Nl0twegaWDeGN69OZYAAxMiiqMmKKZ8s1PaQV7eNZ410S6X3lBkVcVP
 19oTCOs1bPLpPVGVtGUDsInHS4wqJJSgC3eSWnE/HkIC08rCCLG0QuXnNZ5sxPEdi/TC
 of3F1/BTRLd2zVbWEiVeZtyBE5nRJxoMJrz3/1y/Qxw0n+A/zv4k7sSJ2P6kV7aIazXZ
 VU/DUSZp7vYFUMhuhhbDVKoqNwSGkXoSMJIu4hhJbZ/R+y5fH+0IqbY8hbsLr16c1vKx
 oxyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VZmEGXacXxicuuPoJQtVnZbvxG0RFnbvOKhiEeP6vow=;
 b=Zt9aQVmDN7KTucrWVoZ4JY3O+a/+EU1laJ5FPQojg3GH4179FKqCI4QNd+XYOEJ+Cv
 hcKfgHr6Ohmwe7sy9JM5ZUWJy2iHoa2yrELunI/qFgW4jQQdvyLphoJJKTsMzhBeWUi4
 fcZv3a/wdVkQt+JI+66/2EQZr4QHOBom37VZOFHYRwQ0sC5shrEH1zXMUNGiWroVtcJb
 VRfoHfo/gUwJoHi4E2HeXZDAw/KwZGAg0dJyV///XHG6cbHBRlLDnIVwWg7p/9iyV6PQ
 oL7ugWe82HeM8UOFUzC45T0HGfZ+uOAgL6iG9RQu6nS2kIPWvm+bbbfjZDiA0prW/fCR
 6pYQ==
X-Gm-Message-State: APjAAAV3vrUtqTyMdfpEaMXSvHdK7mgtfaJo5r8YbIbXK9tM5nx4uwMQ
 QDxxMWKMyV+I1tpRYa47SDE=
X-Google-Smtp-Source: APXvYqz5Ms8KUiDTqQ+/nuTELvlSFK9eOOh8AFmWmwRebL0ckOFYlc2O0lnRebTQvyLb5G3YcWC4wg==
X-Received: by 2002:a05:620a:ce5:: with SMTP id
 c5mr25694582qkj.49.1580782411625; 
 Mon, 03 Feb 2020 18:13:31 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id f26sm10743199qtv.77.2020.02.03.18.13.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 18:13:31 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id EFBE722129;
 Mon,  3 Feb 2020 21:13:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 21:13:29 -0500
X-ME-Sender: <xms:RNM4XroX4ED5nLLTtnhMzmQtsFGh05NaZLBSk2l16WX-NH5qGJcb8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeekgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepuehoqhhunhcu
 hfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucfkphephedvrd
 duheehrdduuddurdejudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqd
 eiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvghngheppehgmhgrihhl
 rdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:RNM4Xnt5B3BsSnOBYJ83rKXOnPs1jjiWjda9LccU84dAeiYARLVT-A>
 <xmx:RNM4XmVBjIpuJQCDL4m3qbpZZjWPjSr2h8uFSVtBFhmX3C3Slv5Zcw>
 <xmx:RNM4Xj0Kaovit0lFRiXKgjHxuPoogsQaIQVlT8V6pGOFr_-e05ODkg>
 <xmx:SNM4XmK_iGvA1SLWIFwSAfO1rgItoJMqReOtGvuK0_5f_76115Ra-POAL5I>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id E95B130602DB;
 Mon,  3 Feb 2020 21:13:23 -0500 (EST)
Date: Tue, 4 Feb 2020 10:13:22 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2 3/3] PCI: hv: Introduce hv_msi_entry
Message-ID: <20200204021322.GH83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
 <20200203050313.69247-4-boqun.feng@gmail.com>
 <87d0av20nj.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d0av20nj.fsf@nanos.tec.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_181334_752897_5FE52123 
X-CRM114-Status: GOOD (  12.23  )
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
 Andrew Murray <andrew.murray@arm.com>, "K. Y. Srinivasan" <kys@microsoft.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 03:41:52PM +0100, Thomas Gleixner wrote:
> Boqun Feng <boqun.feng@gmail.com> writes:
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
> Any reason why this needs to be a macro? inlines are preferrred. They

Making it an inline function will require #include <linux/msi.h> in
mshyperv.h, which I was trying to avoid. But now it seems pointless. I
will make it an inline in next version.

Regards,
Boqun

> are typesafe and readable.
> 
> Thanks,
> 
>         tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
