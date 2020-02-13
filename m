Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011B215B9F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 08:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00ry+C8h2Oq8LZf8QZS3gLtpZ2EvO7YNX30N5SdxPyQ=; b=XMCMWh5FLUSfFn
	tAtOK7FajUZ6KTV7I4yI/O82/L9g/AOobWxB+6B2YCmn8IArkC/cMVRH1qoQi34qgmEuZ3qLkyEUI
	2kqIHZiNZgywZeBoD4U0xcUa46tPM/W9v1SV0Cwp8HE4ngh0fnNRSilT7RZPJIng/krHGZhsLbLBV
	fo6D6J18M7cf6Cfqo/tvPrQYimpNNGZD9SjQtYuv8l0MqbeiN/u9pT8U8TDGsWRYqXMSzjsgjASN9
	lR+AqIKHsQwwb4qjFtwWNgj6FRT2k9sikF6sTtDu4qcEowdlN796ZH8EuS4YvxJ8KtbmkrijamQF+
	L8otfaTjeGnR6UEslx6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j28hf-0001t4-Q2; Thu, 13 Feb 2020 07:14:27 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j28hV-0001s3-Mk
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 07:14:19 +0000
Received: by mail-qk1-x741.google.com with SMTP id o28so3381781qkj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 23:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FKpPI/b9lVsTM4j397MEI62s5Kvlc206miHaN/mCgkQ=;
 b=NE3iF0+ustwmNGNrLan0Nrmi4WwAaEgMXeNp8Rl2+TAfAc36KQMZ9rW0VPaBGwk7Zm
 /ud1llTS7mugGpdphgEflU3VQrT5Zb5ntpbcSmiajefEdu2B7W/eVzYDLzVz7pxH0S4P
 BikNicapv2YTXflvyKA7N2rxvIBnuTsU/M2/zwrPNQXKx+lKjjqpahofhK3k5KtvBvF7
 VIXkuAgJrtXlby3RcWIwMHdzjJlnnfKjYfN8oVtilNBWSFvE2UOOvH1g0Ug27Xr6XWEj
 ocl/uEQhVumnXQ/pogIkJwajIXKl0zYpXVhwAchZzVOQ13qu5JMTHG0KnZRsGDT8O96v
 OdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FKpPI/b9lVsTM4j397MEI62s5Kvlc206miHaN/mCgkQ=;
 b=sdKfrdAi8p3iqJ+Mx2zhNmbObRvWaGe3Jpja7oiNJRzco3BGmrYNr8sxo/z4IcWdOS
 rrcRn02WLBS+bGGFQPJIkq/SUh24x4FteQRMkcNC9hyjjHvEx2WwXeePSRpemTEIan3w
 Byt0dbaGwDyOOje7BHwgfQ+FZECM1gpiMYnVtLLl2uN3IjLDu0sagNGfE5hYEoAdvOPu
 lgp0YKpQQfFi+/PpHfPwg8lAMdKxsqMZ+0pqy+uRUCwcJhnNLNrJZq4U3KiwqgDe0fgf
 pn+EmECoWwOrViyYeQDIiCviS3dZpcIAeKlB3mtaIyXnnsRwcJBD2xV+QHIrNRfFVUye
 Oi9w==
X-Gm-Message-State: APjAAAUxXDtaAZsQWXfinZGYz1le/Spwqr53t2c1epsF8lMHp1WhWia1
 Fx3pVuNblGTWC06aSGXxVb0=
X-Google-Smtp-Source: APXvYqysdSQmM3o2+6WY0rpAdGr0HHG/ZGJYT13v8GdL0NeD7ftVmDfa8uFvMhkQNQ/V+qYghuuSEg==
X-Received: by 2002:a05:620a:13da:: with SMTP id
 g26mr11110738qkl.410.1581578053081; 
 Wed, 12 Feb 2020 23:14:13 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id 11sm861963qkc.54.2020.02.12.23.14.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 23:14:12 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 6191021D26;
 Thu, 13 Feb 2020 02:14:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Feb 2020 02:14:11 -0500
X-ME-Sender: <xms:QfdEXl2xLpx6PCDG8CjvNphZK8x8hQybwsk3SSbJOmlUzfnq-RMYlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeeuohhquhhn
 ucfhvghnghcuoegsohhquhhnrdhfvghnghesghhmrghilhdrtghomheqnecukfhppeehvd
 drudehhedrudduuddrjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehm
 rghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthi
 dqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeepghhmrghi
 lhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:QfdEXmXFtqe3sl2Cy3He_Ni7VTqLhKe5ZVL40LpYYunr7eXdeGMAfg>
 <xmx:QfdEXrVlb8pVeDv2lfmKF5bWBLaNF9iPsqzPByiasVTe93Fd_21kNQ>
 <xmx:QfdEXpELSkqEgbE8ud_9z3nNhDdDoSxLEoCyX9DIUtPfRjJq16LBfw>
 <xmx:Q_dEXoeJYxTZue3I4qVS_GOlNAs9Iz4L8GOPQb7lRpKMlTe7NdUgTqALuLI>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4CC013280059;
 Thu, 13 Feb 2020 02:14:09 -0500 (EST)
Date: Thu, 13 Feb 2020 15:14:07 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH v3 3/3] PCI: hv: Introduce hv_msi_entry
Message-ID: <20200213071407.GD69108@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200210033953.99692-4-boqun.feng@gmail.com>
 <HK0P153MB0148834D630E95D055CE051CBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK0P153MB0148834D630E95D055CE051CBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_231417_744465_5AF91838 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
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

On Thu, Feb 13, 2020 at 04:18:01AM +0000, Dexuan Cui wrote:
> > From: linux-hyperv-owner@vger.kernel.org
> > <linux-hyperv-owner@vger.kernel.org> On Behalf Of Boqun Feng
> > diff --git a/arch/x86/include/asm/hyperv-tlfs.h
> > b/arch/x86/include/asm/hyperv-tlfs.h
> > 
> > +union hv_msi_entry {
> > +	u64 as_uint64;
> > +	struct {
> > +		u32 address;
> > +		u32 data;
> > +	} __packed;
> > +};
> 
> Just a small thing: should we move the __packed to after the "}" of
> the union hv_msi_entry ?
> 

Actually, in TLFS header, it's common to put the "__packed" inside the
union, rather than after the union. It makes sense because union is
different than struct: the alignment requirement of a union is already
decided by the "as_*" member, so no need for "__packed" attribute.

> Reviewed-by: Dexuan Cui <decui@microsoft.com>

Thanks!

Regards,
Boqun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
