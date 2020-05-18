Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDE81D7ECE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmaVQyv5h2bW8CJWp02HK4LnWXRUK3tvvUy1x8kYzKU=; b=Sg3uJJmGfjuWdn
	8nk96gc2gREHy9ugSRlYRoBjxmGOFv4FUmH9I46Vc/3RzyciL8sQau7MBvjgufd/of55dY/aOhVMf
	RO26co/fDAUg6heomcXTdxRD0j4Oph5lR4cZPRZBL4Rr6V1PCuqu0hS54twjBU8xIv1moyFqY4/Ff
	qd+95VOA9jpj1iy3LOOQl6tT+Og+D+s4wQN+Z9ONdtJQv7O2bZF4Ymv6PS50tpEgHP1+ZMU67rUAi
	3nQqX3lXAwElHCoFQtmICXQebWjGlVEYXeTKshekozviCtr1Z6aojzIkEIX0+xI2NDKnWEVdOLhFN
	67btHTrDYPI3tRLTFWFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jair7-0001TO-A5; Mon, 18 May 2020 16:43:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiqy-0001S3-D2
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:43:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so12742716wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 09:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l7z6K0amO/UJk176kcJX4YeJlctfObnJzJsw8pKe4sQ=;
 b=t5kbJ8vEQ29jXrypKtW3eJgqbsxD4z/bPK/nPLvx1ZJJGdVY79R33x66hal4j53Dr3
 wfI41HluahUWCRhpDePMjy/Fmt7gXAHOX2Vj+m7i6uT7LNk1CW2NuqBhL2wnPWG8M/K6
 ZfTiJ4TzIrY9qDOmQ6u+zRo0jx9Fz6R7MJeVPtAWDHtaQmY+j6ZA0GOIcc5EPHkRjJkv
 hrsONuz0sTr4YL0NvVUVKzFickAjmDOkC5vxwPnkTV0clhri3E1bXds2SZq6FLpTAzK1
 4wI1CT8Qwnamr/v2pa27pFL0xCHq5rDzQ0JNtjk1KZxr/ikAms2TvFDyiczEIdvmOlpT
 M9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l7z6K0amO/UJk176kcJX4YeJlctfObnJzJsw8pKe4sQ=;
 b=VGQ7/r1HCMBrWor0R/C8ybDc4zSh63RhuMwZflH2me96Fc+IAVgtJS11yhxo+VTIah
 5ugAq4fxb7TXhq8Lys3OA9gCYBH7BMbgOPamSrmUJcPAC5Dok8oj1YJz/n34VOsmNYcV
 U2ydO+FLWJ1RUxRugQgYHsM3uHEbhBI5JFtHtbBnY4miiw+0S0kKR11TybCxljrEhQMk
 RMov21LVqv1mUY18H+9+9NQCk7pb7ej1jCZ3BicXcK+r+zySkeNCvWcWMyHFYxUp6n54
 nFS5g6SpMhfH6VLHlagZEwk2vGKG11aLjCU08X369TCylnDzRZ9366ffmhGUJJXf0pSj
 x5NQ==
X-Gm-Message-State: AOAM530yh8IYKZd7QO0E2AbdhDyRcRjDFk1bMBu75Bu19cKYinbuEhrP
 SzilInMf26VXjmtbEzOeFcVd0A==
X-Google-Smtp-Source: ABdhPJx0XDQyf7zT0sv6Q3paDSxLsaxOBCpajY4Yvk08GG2KYWSgZT6Ac/ffdWmbevL3HdDikI5PEw==
X-Received: by 2002:a05:6000:1252:: with SMTP id
 j18mr10965847wrx.3.1589820175994; 
 Mon, 18 May 2020 09:42:55 -0700 (PDT)
Received: from dbrazdil-macbookpro.roam.corp.google.com
 ([2a01:4b00:8523:2d03:4431:2de6:16f:7f90])
 by smtp.gmail.com with ESMTPSA id v24sm106645wmh.45.2020.05.18.09.42.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 09:42:55 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
X-Google-Original-From: David Brazdil
 <dbrazdil@dbrazdil-macbookpro.roam.corp.google.com>
Date: Mon, 18 May 2020 17:42:54 +0100
To: Andrew Scull <ascull@google.com>
Subject: Re: [PATCH v2 04/14] arm64: kvm: Add build rules for separate nVHE
 object files
Message-ID: <20200518164254.b26ankme6pb6ijqr@dbrazdil-macbookpro.roam.corp.google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
 <20200515105841.73532-5-dbrazdil@google.com>
 <20200518155553.GB147668@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518155553.GB147668@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_094300_442670_CC91F1AC 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, David Brazdil <dbrazdil@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 04:55:53PM +0100, Andrew Scull wrote:
> On Fri, May 15, 2020 at 11:58:31AM +0100, David Brazdil wrote:
> > diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> > index 7f06ad93fc95..13850134fc28 100644
> > --- a/arch/arm64/kernel/image-vars.h
> > +++ b/arch/arm64/kernel/image-vars.h
> > @@ -51,4 +51,16 @@ __efistub__ctype		= _ctype;
> >  
> >  #endif
> >  
> > +#ifdef CONFIG_KVM
> > +
> > +/*
> > + * KVM nVHE code has its own symbol namespace prefixed by __hyp_text_, to
> > + * isolate it from the kernel proper. The following symbols are legally
> > + * accessed by it, therefore provide aliases to make them linkable.
> > + * Do not include symbols which may not be safely accessed under hypervisor
> > + * memory mappings.
> > + */
> 
> nit: the prefix is not '__kvm_nvhe_' rather than '__hyp_text_'

Thanks, will fix in v3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
