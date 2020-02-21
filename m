Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3529166CED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mKVWhZ7PGChiSVxhpW1ZH6INsyuzXq94Z6HIMsh6vw=; b=YUdDC7YbfZYkI3
	hoM9tUKRnv27Bt9Rsf+MKL2nsRcKDKmtsqKRZ24RDNba60fPiSdZ/cTLz9vWf7nwod2hx1TXV8xbn
	gyPG7arf0XDQ2ZjAytqASEauckTy5KkG2foGGDKajSalmaMD0bYr9KaJyUuydcL10khe/4YeOVZmA
	cTQVwuCyzixb/jtW/ZVTkde590NFEgMjBmO7lvnwjTN2bXdN6LFe813KKKvGTkkG+CbUJPn6GjpCx
	hBcrIuCHebQUrNQr4ai+754uU81XbHxjNwPmaSiTBo3nW/7fTnbQGValLVaspRAleVDrg0FECBb6P
	zNkE3iu5jiKlGACVzMEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4y8d-0005zr-Tq; Fri, 21 Feb 2020 02:33:59 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4y8V-0005zI-4K
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:33:52 +0000
Received: by mail-qt1-x844.google.com with SMTP id p34so280388qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 18:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CJP5LjskY0xuyHpqzi/Sp0OFSxwmRBAuuNSOyFdMDrw=;
 b=vLzlGE8Rc4j0z0misWUTgTTV4OEkdRDWO+AGyOAJoSj3Aekh80TjcLWegGnsawrj9I
 WnBwGlSjWApxCrR0HhHd+fbPigpt3KUTJkL0slgPyy2kxwzGMpr/NXUa1/EmCEO4mmFe
 Z0DWzqpmfGZrVLdRB61ZzDTMXwUQMVTHJIANmqMln0U99pk6Q37pEuDXdT32cMzPt00s
 k33BiEfASBiEXNYwx/u99yksKE5OBc5amDD74M6yNAFr4SPm9VAIqCKB308h09WLq9G7
 GEXYcDSTY8CwZd11se0J8SNV0CEDZbOFQ6TUkAMp1ri7lqVpObNTaw/CX9KrQ34aG1Ol
 tFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CJP5LjskY0xuyHpqzi/Sp0OFSxwmRBAuuNSOyFdMDrw=;
 b=tDJCOiDA9K5/O6r1JLiBQc+8o4aL3ykLvjVPp4wvp1R7eA0m4u3qemOrhDyo7H/Fje
 vdsWeZqjiATATFzF1sJbrpE88x7/fJ/h+w8KMYyV/12Zo/mX/ggdwIJ5J3Uxs+ZpOiCy
 S6K+s+/1Z7I4JNeDKwtH4uBqGxmgoOfBMYvCNCb40jHrvwc6lqdRIAy2cJlOI6oeTi+i
 bzHGH3cWNRl8xdsWwdeWzmljsd9fZSujzvWam5Nl49BhWwZMzlAubWnQot1S3/GYz4j+
 8v/apOF6jdxJCjmaO9F5oABWjKubd9oDyIRmfan90zu/GW1/X+54cxuoO8kAq9KClokx
 +/lA==
X-Gm-Message-State: APjAAAUL8AwED10Q366Yqxp/qQG2VMv/t0MZvpKH1DRWsdEys/L2/joj
 7QF6jOWqwDlgtdxMNr96xunkaQut
X-Google-Smtp-Source: APXvYqxIHEQ+62I6c+ag0k9JoRxOaDsRZzdEfqlnCP5h4FV+YOdpMGvAhHMNcxyWGGM8xrfVruWfrA==
X-Received: by 2002:aed:2a87:: with SMTP id t7mr29337838qtd.384.1582252429515; 
 Thu, 20 Feb 2020 18:33:49 -0800 (PST)
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com.
 [66.111.4.228])
 by smtp.gmail.com with ESMTPSA id d185sm856433qkf.46.2020.02.20.18.33.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 18:33:48 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 5BE4021D25;
 Thu, 20 Feb 2020 21:33:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 20 Feb 2020 21:33:48 -0500
X-ME-Sender: <xms:ikFPXtagK57hemUqoQlkFvR8aR50EYdz22yZX_7m5XF_FxEN7-7z3w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeefgdeglecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhepfffhvffukfhfgggtuggjseht
 tdertddttddvnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphep
 hedvrdduheehrdduuddurdejudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhi
 thihqdeiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvghngheppehgmh
 grihhlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:ikFPXnEUx8DUlerkl2WWSsKabLCwb-_JYU5cTdVquUfecPfxQEWLUw>
 <xmx:ikFPXtdnhSmUpQdDUDatVLhkB8tIiRVmMlF-Noq2i38RWHsyNXDBIQ>
 <xmx:ikFPXiDTcEmm7s_E1MjjprD8QgQF5ipsX5CHHgrK3sWQC_RFgtA8Fg>
 <xmx:jEFPXgRwIIGl24hMjO5CE6WSMOeRJMzP8iCe0tf51uw8uwqwTPv2YzWi_xs>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 58B213060F09;
 Thu, 20 Feb 2020 21:33:46 -0500 (EST)
Date: Fri, 21 Feb 2020 10:33:44 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/3] PCI: hv: Generify pci-hyperv.c
Message-ID: <20200221023344.GJ69864@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210033953.99692-1-boqun.feng@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_183351_195971_D2F1145E 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping ;-)

Any suggestion or plan on this patchset?

Thanks and Regards,
Boqun

On Mon, Feb 10, 2020 at 11:39:50AM +0800, Boqun Feng wrote:
> Hi,
> 
> This is the first part for virtual PCI support of Hyper-V guest on
> ARM64. The whole patchset doesn't have any functional change, but only
> refactors the pci-hyperv.c code to make it more arch-independent.
> 
> Previous version:
> v1: https://lore.kernel.org/lkml/20200121015713.69691-1-boqun.feng@gmail.com/
> v2: https://lore.kernel.org/linux-arm-kernel/20200203050313.69247-1-boqun.feng@gmail.com/
> 
> Changes since v2:
> 
> *	Rebased on 5.6-rc1
> 
> *	Reword commit logs as per Andrew's suggestion.
> 
> *	It makes more sense to have a generic interface to set the whole
> 	msi_entry rather than only the "address" field. So change
> 	hv_set_msi_address_from_desc() to hv_set_msi_entry_from_desc().
> 	Additionally, make it an inline function as per the suggestion
> 	of Andrew and Thomas.
> 
> *	Add the missing comment saying the partition_id of
> 	hv_retarget_device_interrupt must be self.
> 
> *	Add the explanation for why "__packed" is needed for TLFS
> 	structures.
> 
> I've done compile and boot test of this patchset, also done some tests
> with a pass-through NVMe device.
> 
> Suggestions and comments are welcome!
> 
> Regards,
> Boqun
> 
> Boqun Feng (3):
>   PCI: hv: Move hypercall related definitions into tlfs header
>   PCI: hv: Move retarget related structures into tlfs header
>   PCI: hv: Introduce hv_msi_entry
> 
>  arch/x86/include/asm/hyperv-tlfs.h  | 41 +++++++++++++++++++++++++++
>  arch/x86/include/asm/mshyperv.h     |  8 ++++++
>  drivers/pci/controller/pci-hyperv.c | 43 ++---------------------------
>  3 files changed, 52 insertions(+), 40 deletions(-)
> 
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
