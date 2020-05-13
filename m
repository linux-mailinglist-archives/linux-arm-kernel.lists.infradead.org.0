Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562AB1D1003
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVufMTrjsk1V0npo4/SoCOA//rh0iBS4UGLl0lSXscc=; b=SfiP0YPFZMj440
	WcWInHi6enWpJq5L9RMam7JSy4oAM03aE9BOR19UrHbU0Og6Rpu3gAcv+jqut+RzAOprxsQXx4au6
	RmewCWt4OJNE04d3NVquCg9nWPs88mm2jCthE5eRRsAzCpEllnFxMcAieFYUy/BBct8HfZeE1iGtD
	RTn1X05JZbt8xE73uLrEi1dwTK8sGZiFbn02iJMZQTlZ0q0PbRrWAuVSRraGapDuoOTRkzaO6ps0E
	eI1CIdpXfcZR68l1GP1fJhZTVPMmmkd3r4p107UvXFeYVKYFu8Uz3Ti3N7MSCRvJV0xMfWxWQ8efK
	47mRsdccNzuAuUBj+ZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohf-0007db-Ii; Wed, 13 May 2020 10:33:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYof6-0005T5-A1
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id w19so13115439wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Bag3tcwUumhERwus8sd0P+tasr8YFyR1BtawoF6Jv0M=;
 b=feaPsl6PXU124jWtX3dAxdhE+71zs/uCFoegBNTyi5X4xrHvVm195995//fXp+PqCv
 bZjFrRwdqqAltQjGj+LEGmdB2M4LFIzNJiyL03Jlt8sIMAUlpNoCrt89NruDMkFjSfZD
 L2ZrhZ5A025g+OZzAClsEJCSgan0edGqEFBtkyb5dwVCwVXw2xbFrsUHhmbT3Cysxmlo
 j9qXbYdZyW+nxcOP0b8yHQl+bSw65rKtZUp8Rv7Zt5qxoYqpnKDfAmAfHTIe7SyQGKmy
 gySn77IU+kPf54X9nFVVLRVpCZrGXIN73Igvj0l6ULfFpCSQUhqDQE9EbgBMF5FyLbdS
 VE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bag3tcwUumhERwus8sd0P+tasr8YFyR1BtawoF6Jv0M=;
 b=VnNfik3elx1iWvIvcgpyI8lBkf/UO26iB1SvlLl3D6EkiDLLP65wevqeePZTqU5l+4
 NVFuQfcwnrmSExoajDhhiDTKo4YJmNHnvfYjFe8b3w0A00HWPDC7lNRBA2XW14WfW053
 L5e/J4lHrh5fo2ubZgP1q14BgpHg3a/XStI9idqxkZXKjw1GTHGHjT4SxGyWeUJYDi94
 J6C/8giRFaXZl/f7c7mHqUc0RLbJBi0SRaoydbl/h+AmtHhR4Ng87EjMW8DjiVs7aWb3
 tY5w8fDasSb2OOUQ9Obcq9gyPohOvo0pcbCS6NM8inguDFyEeLnZKxpCOFrOfu8Fpl7j
 b0ew==
X-Gm-Message-State: AOAM530PBFIlTG5GV9yrvuTNIVWLGJf/0lKwepghN7oEQBbrCYR+vEYp
 WQPYxzWcJAkH4kpMANjJnVE5IA==
X-Google-Smtp-Source: ABdhPJwieEag500N253ZjLYIuWDnNCr/RP0yjgHBqAOAFRcDDDnTfLgV5ev2GxXV9li2Vw8U//ZBMQ==
X-Received: by 2002:a1c:7407:: with SMTP id p7mr5473936wmc.114.1589365846539; 
 Wed, 13 May 2020 03:30:46 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:e021:170a:2079:28ea])
 by smtp.gmail.com with ESMTPSA id 60sm3774269wrp.92.2020.05.13.03.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 03:30:43 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Wed, 13 May 2020 11:30:41 +0100
To: Quentin Perret <qperret@google.com>
Subject: Re: [PATCH 01/15] arm64: kvm: Unify users of HVC instruction
Message-ID: <20200513103041.ktaov2jws72itmag@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-2-dbrazdil@google.com>
 <878si3j13w.wl-maz@kernel.org> <20200507143633.GA169263@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507143633.GA169263@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033052_490805_B3473114 
X-CRM114-Status: GOOD (  23.22  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, David Brazdil <dbrazdil@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 03:36:33PM +0100, Quentin Perret wrote:
> On Thursday 07 May 2020 at 15:01:07 (+0100), Marc Zyngier wrote:
> > >  /*
> > > - * u64 __kvm_call_hyp(void *hypfn, ...);
> > > + * u64 __kvm_call_hyp(unsigned long arg, ...);
> > >   *
> > >   * This is not really a variadic function in the classic C-way and care must
> > >   * be taken when calling this to ensure parameters are passed in registers
> > >   * only, since the stack will change between the caller and the callee.
> > > - *
> > > - * Call the function with the first argument containing a pointer to the
> > > - * function you wish to call in Hyp mode, and subsequent arguments will be
> > > - * passed as x0, x1, and x2 (a maximum of 3 arguments in addition to the
> > > - * function pointer can be passed).  The function being called must be mapped
> > > - * in Hyp mode (see init_hyp_mode in arch/arm/kvm/arm.c).  Return values are
> > > - * passed in x0.
> > > - *
> > > - * A function pointer with a value less than 0xfff has a special meaning,
> > > - * and is used to implement hyp stubs in the same way as in
> > > - * arch/arm64/kernel/hyp_stub.S.
> > 
> > I don't think any of this becomes obsolete with this patch (apart from
> > the reference to 32bit), and only changes with patch #2. Or am I
> > misunderstanding something?
> 
> Nope, I think you're right. To be fair, this patch has changed quite
> a bit since the first version (which did change that comment a little
> later IIRC), but David has done all the hard work on top so I'll let
> him answer that one.
They have a different meaning in the three different contexts:
	1) hyp-stub HVC: hcall ID + 3 args
	2) hyp-init HVC: 4 args (no hcall ID)
	3) host HVC: function  pointer + 3 args
The patch was meant to have all three use the same HVC routine, eventually
converging on host HVCs also using 'hcall ID + 3 args' in patch 02, but it is
a bit forced at this point. I can drop this patch from the series and we can
clean this up later if it still makes sense.

> 
> And David, feel free to take the authorship for this patch -- I barely
> recognize it (for the better), so it's more than fair if you get the
> credit :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
