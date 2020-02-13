Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D577615BA04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 08:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhsjF3n2ku2VOEabGTh6cYh6wotV3amumlxpqvXLXMo=; b=sMLr+1D2QrxLpq
	qrg2HSMGqQBApDnGIrxP8fwLgtApCD3k+TVpyFKqjO1R65+XzcULFRECP4nSAxWOnA11fZGPI1qFP
	qpaivmU5A4izlbxWY/0wCezLbgpyuHRo5qVdtKtOt+izNEXt/GYz+Pkpi5G2z0JSFwwZ1ljkUI+v0
	IsQcTTWWWE6xg2XjHu4s2xufLLtWdwB5NfWYXIruXVuObhsrX5B+9q+E+M8DUV28+1qJ2KQfqqU3/
	1MSG5ZPp1vNas1NQdnNGp5V5VH3QyowDqOlCI8YdEbxdIwI0eOD8vjrMdJU6X0pXfDo3z00+PhGrX
	/a1mKLUPBzRcALdFmrCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j28tQ-000774-9s; Thu, 13 Feb 2020 07:26:36 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j28tI-00075s-KK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 07:26:29 +0000
Received: by mail-qk1-x741.google.com with SMTP id c20so4785609qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 23:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7afNFB8me/fcXvHEJ/JbjcmGZzZNdhFYzAAETu8NEbc=;
 b=CJJbyFaUT0wShMPCnHyAerAv1p/FLh/75t1o2pTxajbxTRaLR/fB/1fy2Kfe3e24zz
 qwa1XZYuPJiMeczcb1yZ3QDIo7VBJbZzuqrGM4PoXkHOUPoN0AvdpcQL1RZ8dGlonknC
 lkh0a1x/IyrJwZKWQXlLwB8XLhev81qAJSjMpO8uR087bOY+o2PsZ0UTT/H/SfTjv6Pq
 6DyiU7Hymwm6Q8NyFsjm3oIaVAj1U4Q6KPLHHZtwaOcjrD7hBUM5K2SB4pe9NOeDSa8K
 LgdRtS84sYIq8CbUZTNB6oAkiRParteG3adCzz24m8oOEnG4MA/Err8kkb0pg3SFRJTo
 iPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7afNFB8me/fcXvHEJ/JbjcmGZzZNdhFYzAAETu8NEbc=;
 b=EusyudHUDgMnWfxWf4f/QpfuePnxOqetjWNDnXoc11QAG6BXe7htOfSKA/iC3JRorB
 7Pgj4l2vkpfDLdikWpDOLJ6EQsyrP2R4VipOjE7jjDZEEHmENi4IYkCUAfQ+600oIz4R
 YpkOhvoMzb3gSM5kbeva1QaIE/xuFxCBHKrml7DjvxBdSu6CDbw1V0GC+nROsni9H2l9
 4XMkrUNcM7qtWQS4IOcj3JNBkgTsEz4uWr0p9K1VJdkKLL2wmhYXUF2dkRIqhDo4gOvW
 poJXLTmT8SOKzBeVZm8inolXPkgosHK7IkW3DIloxUeG6/nX+D2Fkh0B91YyEOrCMx4o
 YQuw==
X-Gm-Message-State: APjAAAWsazZQVEcpDkFE8OLj/nk8bb97kNbCQA0yrC8dUTbOwwbNTgck
 gudL0trJS1LtrZKEnYEarK0DAi5h
X-Google-Smtp-Source: APXvYqzKtb8FqZbfdgDJdCz94YM8zhQ+svCthzX4siWSSbnQ8pwrnAg7UAabGZKVZzYg5U1a7guSBw==
X-Received: by 2002:a37:488f:: with SMTP id v137mr13898536qka.16.1581578787579; 
 Wed, 12 Feb 2020 23:26:27 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id v10sm1066872qtj.26.2020.02.12.23.26.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 23:26:26 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id B8CC221D25;
 Thu, 13 Feb 2020 02:26:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Feb 2020 02:26:25 -0500
X-ME-Sender: <xms:IPpEXu5yoFeaNHDeD6vxA516f4o5OC7rMP0rl1YSiCHLEltn_PDIgA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgdduuddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeeuohhquhhn
 ucfhvghnghcuoegsohhquhhnrdhfvghnghesghhmrghilhdrtghomheqnecukfhppeehvd
 drudehhedrudduuddrjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehm
 rghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthi
 dqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeepghhmrghi
 lhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:IPpEXrqIW7G12ewNcbsl7DoNSfr9NoUy_5VtguMF5cLWwYCdJ10SXA>
 <xmx:IPpEXmVfkP2zdp0wyx4uWphaXE1ZF5M3TxhxISS2elWiqW_3TA-Fsg>
 <xmx:IPpEXjTDQGIjl_tTaPdZpaGNJ2ZBRXbeQ6G36gE12OcwvXQbKB-Wqw>
 <xmx:IfpEXlIbcoJqnAeJmRBvIUOUkrzj0uslNnSJvcPMdTwHCHT9P804EXXsc6Q>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 773123280059;
 Thu, 13 Feb 2020 02:26:24 -0500 (EST)
Date: Thu, 13 Feb 2020 15:26:23 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH v3 2/3] PCI: hv: Move retarget related structures into
 tlfs header
Message-ID: <20200213072623.GE69108@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200210033953.99692-3-boqun.feng@gmail.com>
 <HK0P153MB01481A125819FC7660E067AFBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK0P153MB01481A125819FC7660E067AFBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_232628_694149_796BFF15 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, KY Srinivasan <kys@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 04:17:34AM +0000, Dexuan Cui wrote:
> > From: linux-hyperv-owner@vger.kernel.org
> > <linux-hyperv-owner@vger.kernel.org> On Behalf Of Boqun Feng
> > Sent: Sunday, February 9, 2020 7:40 PM
> > 
> > Currently, retarget_msi_interrupt and other structures it relys on are
> > defined in pci-hyperv.c. However, those structures are actually defined
> > in Hypervisor Top-Level Functional Specification [1] and may be
> > different in sizes of fields or layout from architecture to
> > architecture. Let's move those definitions into x86's tlfs header file
> > to support virtual PCI on non-x86 architectures in the future. Note that
> > "__packed" attribute is added to these structures during the movement
> > for the same reason as we use the attribute for other TLFS structures in
> > the header file: make sure the structures meet the specification and
> > avoid anything unexpected from the compilers.
> > 
> > Additionally, rename struct retarget_msi_interrupt to
> > hv_retarget_msi_interrupt for the consistent naming convention, also
> > mirroring the name in TLFS.
> > 
> > diff --git a/arch/x86/include/asm/hyperv-tlfs.h
> > b/arch/x86/include/asm/hyperv-tlfs.h
> > +
> > +struct hv_device_interrupt_target {
> > +	u32 vector;
> > +	u32 flags;
> > +	union {
> > +		u64 vp_mask;
> > +		struct hv_vpset vp_set;
> > +	};
> > +} __packed;
> > +
> > +/* HvRetargetDeviceInterrupt hypercall */
> 
> Reviewed-by: Dexuan Cui <decui@microsoft.com>
> 

Thanks!

> Just a small thing: would it be slightly better if we change the name 
> in the above line to HVCALL_RETARGET_INTERRUPT ? 
> 
> HVCALL_RETARGET_INTERRUPT is a define, so it may help to locate the
> actual value of the define here. And, HVCALL_RETARGET_INTERRUPT is
> used several times in the patchset so IMO we'd better always use
> the same name.

This might be a good suggestion, however, throughout the TLFS header,
camel case is more commonly used for referencing hypercall. For example:

	/* HvCallSendSyntheticClusterIpi hypercall */

So I think it's better to let it as it is for this patch, and later on,
if we reach a consensus, we can convert the names all together.

Thoughts?

Regards,
Boqun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
