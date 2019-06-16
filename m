Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02228476FA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 23:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/+qqTExgMCgq8ipzcFybYtGpKwuQ5VUo9030O4/U8g=; b=O0N1XJfED6d3hO
	n1ifsDp3tdDlujS9ejbvYJLAiaylgdOtsIYmPH+F0lyNUrVluqbUOJK/zFUpyK87zG6PnBeuWaGgt
	pvwa1yyaGio2yoTpIJ2HTy3UgdMYSKwhAEemSoimV7CksB+2Mt0+7QRcrZfm0ewf1GZl15MTKe5KO
	I7VtuBVYCjA7QO1Q8h5HIdhAED1bAUPUxyN34wwxZOYFU9LGnX2GbQgAZEfiHidNpEZB5iuav6GNk
	VQNcuys5m0H6OI7NCLt5TyVRZU0oxegDDjmxP/Slsw9WGa+9YHRUYLYwqrSPng18d1aq1BRFypd24
	ueNb8GXPh3+et2lny2Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcckW-0005Qi-0z; Sun, 16 Jun 2019 21:31:40 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcckK-0005QP-4b
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 21:31:29 +0000
Received: by mail-pf1-x42a.google.com with SMTP id m30so4511935pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 14:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7VduBeQKV5QqdjaRJMGgAlmp2IHtPHNsUVn3EFkQ16A=;
 b=NaOJcl+yzjhCeEuveWJCk+ztsn2feghCQVbaTu/DJt/zO+DaY4tFj/CMCQsela+8h+
 EKmmF2vvjDrJU6JhpZFROJhfuBdfMvQrtx3BxSU/UtzB8jNzHBhvW5ji713pacfpK+ur
 T/RCfrXIOu2euKG9FHWvlH0SOhLRvANMeGHsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7VduBeQKV5QqdjaRJMGgAlmp2IHtPHNsUVn3EFkQ16A=;
 b=IoCZE/Lc4VRcAtXnEBS3pGtYXV6zQnLOJuM7sJ2BoeiAMR4gqalPs3CL5WhELT7zh2
 KiDWIXOhRG5fQOQEmvAUKYEP5WZmliR5y0qUIoTeK3f52VvGcK1P7uHKFaAQVaNpRlmz
 8rJgpLfTN+yzPmGNOmMo+lhI+7ecKE+1mRAFNiB6HkhJp/Cn7dMWXmFlYmeTYsBrpX3p
 3eklRakHOZUmDvFaoCJtIW6OCd5/ThkF13Dp3rrvNbBUL7YmAItmwoY3kHpjK2ukJqSb
 cbwuyGYlIu9rXXc/0gsLASZZdPS11l3pQwDMYnpke1OiY28VAqm+S32PaQLF1kffHIxv
 pOoQ==
X-Gm-Message-State: APjAAAXpjOrt+x44YMLo0/qgh7Jo3W8T57tOI/RXiCT+kLtOG1PkOIGV
 r6X5qXvXYOqkjDaQobBFTW8eWg==
X-Google-Smtp-Source: APXvYqy5woxSa9sXUW5owSCTm3+vlDqFe+0XmxF8JtpZmxIUt7qyTuJKjIzBbbHvBsWgxujujdFMaA==
X-Received: by 2002:a65:64d6:: with SMTP id t22mr43708172pgv.406.1560720686430; 
 Sun, 16 Jun 2019 14:31:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f11sm4268923pjg.1.2019.06.16.14.31.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 16 Jun 2019 14:31:25 -0700 (PDT)
Date: Sun, 16 Jun 2019 14:31:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <201906161429.BCE1083@keescook>
References: <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
 <201906150654.FF4400F7C8@keescook>
 <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_143128_208479_6CC542CD 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 04:18:21PM +0200, Ard Biesheuvel wrote:
> Yes, I am using the same saturation point as x86. In this example, I
> am not entirely sure I understand why it matters, though: the atomics
> guarantee that the write by CPU2 fails if CPU1 changed the value in
> the mean time, regardless of which value it wrote.
> 
> I think the concern is more related to the likelihood of another CPU
> doing something nasty between the moment that the refcount overflows
> and the moment that the handler pins it at INT_MIN/2, e.g.,
> 
> > CPU 1                   CPU 2
> > inc()
> >   load INT_MAX
> >   about to overflow?
> >   yes
> >
> >   set to 0
> >                          <insert exploit here>
> >   set to INT_MIN/2

Ah, gotcha, but the "set to 0" is really "set to INT_MAX+1" (not zero)
if you're using the same saturation.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
