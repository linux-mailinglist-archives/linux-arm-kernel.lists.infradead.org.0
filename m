Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786E41F9A31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHoHierg9A9TG39rd2foUU/ev8GFry0anImgE0Qsh7M=; b=kvgYn+UFdA06ZH
	XhdN1KcE5TQIEBFtZfIeC1GmAcAsA+16gExvdQGLEjyQZbmYtK2x4pzX6wWPfKtCElOXsaXlLBWT5
	6xsgzJuYnAnGkF4jljMfmffeiv4xjeBhavRb359y076JXkf1qS/8EYTqkbCIO8yDQ8xRzf2EdbCHY
	VhKjx97EtlzLRRcT2DDB4DizUB4B2GzUAYQCr2cx65jjMYXQ8hSZX9p4N2UciowQ7rYLHxeUCrcFv
	+AqmgNzS+sC4tPox4TuTgaefU6lAzsOFdEZpG4PgwPCmHOpU5Gi/H5gJZF7v4uNLffkFR7UQn9L7m
	ybgMVooXn/MPwarqQtuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkq8t-0000BK-Nq; Mon, 15 Jun 2020 14:31:19 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkq8k-0000Ah-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:31:12 +0000
Received: by mail-oi1-x244.google.com with SMTP id t25so16055379oij.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+KbxPscr0KV67P5oOBM2F5K3yiQmdNXIOhQDoFvyw60=;
 b=RzJrrFC0os+fExoMx2EOXMQp+8SzrW1/MlUK78Dt6n3wn63/A2NpYLhgYXheTfL/7Y
 IyhU4QduNTJsrwGpqkynOXca1Pe9rXoBKygt1LGdlGS4JlljOwK8p+fQNbTWOIcRtK4G
 m7Ei/k1znzImK4cYvXG1+AwD9bas5TGbki0llQX5dS15QgPxkXttZqaKk6gBfJiMGMQ9
 lIr5QbCyKDDWM9wzDILrgDAbvxrwGiaaXdh3BkWj6YMf5iB57EsLkPmXYx1EQrdlNEOI
 8SvDZd8G1U+CH+Sq5FfPcMj3NhbR2pXJO1+8hkOrOnHByPa5xzNdH0gk6cf+uL9Uc4zL
 7I8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+KbxPscr0KV67P5oOBM2F5K3yiQmdNXIOhQDoFvyw60=;
 b=RHgWwTAgwCv6VyekQuFsH+7kD/DoValROn7Bu/KSfru93CA3+xH0p8E9t8yAzxz0zc
 5yEMCEl5Tk54pUiC4/J4kAf1awgOOcbqYi+/RvoNKocRDnEPRE+q7bsUCedLWenqfZvz
 CBtpuLwcR1GvnoQzxWoUessmmc5i0l3p0s//5bEMp7uVw3S5lPm7XlWNhIHx5Kdsjyb2
 wM1yONGFTsdfWngGZH26Lc6Frikdz8utBcrqSstqT73wb5dpWGu5f8CkSj3iD/wIfos5
 rJtt/arftOq70qnHe1swPC2AB/9URpyfbExHrWtPb48QJrOKuzBIYlaVv1JxUeU/ieHI
 IwAQ==
X-Gm-Message-State: AOAM533YB8b5QwyfHR66ExBeReiVlE9pJttSUrHXNxnbLdYHxVHbLZXL
 sOvWAtinQy+tERxJPfg+Fiw=
X-Google-Smtp-Source: ABdhPJyRhG0lbifOMWO0ZCZoje1gctjqUoI9YY4vLzj7BveJbjHHwXz6w8/pCFNU3RitF7RL8Wdiyw==
X-Received: by 2002:aca:d612:: with SMTP id n18mr8642166oig.46.1592231468028; 
 Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id w127sm880847oiw.39.2020.06.15.07.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 07:31:06 -0700 (PDT)
Date: Mon, 15 Jun 2020 07:31:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615120223.GC2694@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073110_555066_C8EE8CD0 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, tstellar@redhat.com, android-kvm@google.com,
 catalin.marinas@arm.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+ Tom, the clang 10 release manager]

On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> > 
> > > Here, the switch statement has been replaced by a jump table which we *tail
> > > call* into. The register dump shows we're going to 0xffffd68929392e14:
> > 
> > > ffff800010032e14:       d503233f        paciasp
> > > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > > ffff800010032e1c:       910003fd        mov     x29, sp
> > > ffff800010032e20:       aa0803e0        mov     x0, x8
> > > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > > ffff800010032e28:       93407c00        sxtw    x0, w0
> > > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > > ffff800010032e30:       d50323bf        autiasp
> > > ffff800010032e34:       d65f03c0        ret
> > 
> > > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > > it expects to be called with a branch-and-link, and so we panic. I think you
> > > need to emit a 'bti j' here prior to the paciasp.
> > 
> > I checked with our internal teams and they actually ran into this
> > recently with some other code, the patch:
> > 
> >    https://reviews.llvm.org/D81746
> > 
> > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > reviewed so should be merged shortly.
> 
> Cheers, that's good to hear. Shall we have a guess at the clang release
> that will get the fix, or just disable in-kernel BTI with clang for now?
> 
> Will
> 

This will be in clang 11 for sure. Tom, would it be too late to get this
in to clang 10.0.1? If it is not, I can open a PR.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
