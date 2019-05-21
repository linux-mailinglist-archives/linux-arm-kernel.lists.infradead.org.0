Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B01924FDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJjjWMbef0ZWJurNnhTs77/DDcEMfxdVF4xJrXhazb0=; b=VE6dyGDQyk2Kq7
	jN1a0+ESzLca+mexHITagXqdO+BYjrEuRT8sb0KaNfibpew1cPO5ScunR3kwYPY/RG8vwXwgOxO8u
	D5nKlmcncC7WP5jaMK3rhi3WpZNlu90/wJD7Ksudaimzxa4Mql/uJ6DYYMaaDvCa6GGwUUTaIoQds
	DgoKA39V/VCBH1y0nvexzpNG/R67hjyBlxY0ADGLPpFh7IsKfyoXgktxZsiGZ5HhgDuLNTRT9KYYz
	STpnB/tNzHGP1C/gEtlli0vaxLNp+E5a5uavOyluA+HopoZbMQjBe82AD66WRhqIAnprGGHWhhRJZ
	9M7w//oOVq8LtEpnBy3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Zj-0000aV-3A; Tue, 21 May 2019 13:13:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Zc-0000a8-LJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:12:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id i3so2941642wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 06:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2OsfSpawGj79hgqxfy+BuH3veh47xcP+0pgDEeuzSj4=;
 b=dzVqrXxW9SiuibakIdUQsR0+ypWDXltk5UNLKRRnPQccZnyFV4PurzspdeuN+G5zBw
 BcH7zbLC8WmWOYahIjzOdnZOOSf89mEP5F/54AdwHCMA7nfzgNIAjwBheFXJLPh2XCXM
 jhPFJaBK2wNEBFq7YCRWPwFNHGKO9BowsM3wSXRsobbg8A9kMvAxFEt91S5uC93F1qHd
 SjUJ+Q2ZuF2g/WbtaLdDQv20tvTKM6GIM/yuSvWHRpgEdIFJb4gr99H+I6Dw7rxPw/+B
 pe/UVVwrpcs/UdXFVVKk/e8JsD2u460Qf468yB1O87f3QBOEVbWWTVlxXx8/aqsP9UAj
 DkPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2OsfSpawGj79hgqxfy+BuH3veh47xcP+0pgDEeuzSj4=;
 b=d14+lFr00n+LO0f6J7XTRahT7V0IS1hc+wMZGzB/duhh4MmwUOEc44py87vKKYbRJs
 KKdTN/iq885uL8Q56uX/zpeSGAWqhIcFwyhOHNbJHvzXsmD0TA+/aZ+m/IH4hqL+AEc4
 kAh8ZcX87UNPutZXQPbWZD25+jzp3PuxZ9Ag83HY75j4p+ZJPtzysWHpRm3OrpvQgRvB
 j25OYvN3Z24PFqulW3SE7oqSmIzPds69Uc/7u5Stc/PhavltzcixTcL2EuAlqgAL1iBh
 o+B9ZM+GSVq0WTovmj8z4B5peDDCcK62/XHqdZu/Uve08poKZbD62n2AutB9sU1Kzw/E
 a3Kg==
X-Gm-Message-State: APjAAAUEPZdcNl4kDbmr5CbWoLLHPlj4vU9LEf+BG8yzjg0IfIQU+XR3
 hjAMom1jJiY8kH1QQ+XlAyafFA==
X-Google-Smtp-Source: APXvYqzk0u0jwJ9+mHQza8iCHIGs8TjQUCE8nHyaL6OKJysevv0P4W9PGW06ey1WKobfonSFsHCI3A==
X-Received: by 2002:a1c:a745:: with SMTP id q66mr3532505wme.83.1558444374789; 
 Tue, 21 May 2019 06:12:54 -0700 (PDT)
Received: from brauner.io (p548C9938.dip0.t-ipconnect.de. [84.140.153.56])
 by smtp.gmail.com with ESMTPSA id p8sm12553193wro.0.2019.05.21.06.12.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 21 May 2019 06:12:54 -0700 (PDT)
Date: Tue, 21 May 2019 15:12:52 +0200
From: Christian Brauner <christian@brauner.io>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH 1/2] open: add close_range()
Message-ID: <20190521131251.7qxjrxv2v26idd4u@brauner.io>
References: <20190521113448.20654-1-christian@brauner.io>
 <aa87e4b1-42ee-52fc-8168-04413dadb460@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa87e4b1-42ee-52fc-8168-04413dadb460@free.fr>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_061256_844693_28D30103 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 03:07:57PM +0200, Marc Gonzalez wrote:
> [ Trimming recipients ]
> 
> On 21/05/2019 13:34, Christian Brauner wrote:
> 
> > For extra paranoia close_range() comes with a flags argument. This can e.g.
> > be used to implement extension. Once can imagine userspace wanting to stop
> 
> s/Once/One/ ?

Thanks!

> 
> > diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
> > index aaf479a9e92d..0125c97c75dd 100644
> > --- a/arch/arm/tools/syscall.tbl
> > +++ b/arch/arm/tools/syscall.tbl
> > @@ -447,3 +447,4 @@
> >  431	common	fsconfig			sys_fsconfig
> >  432	common	fsmount				sys_fsmount
> >  433	common	fspick				sys_fspick
> > +435	common	close_range			sys_close_range
> 
> For my information, why did you skip 434?

That's taken by pidfd_open(). The syscall number here also isn't fixed.
There's another pile of mount api syscalls (in addition to the ones that
landed in 5.2) coming up. So if this is something we want, David and I
need to coordinate the numbers anyway.
I think you can safely wait with acking this until it is even clear that
this is something we would like to go forward with.
Just in line with Arnd's syscall numbering changes I tend to try and add
the number everywhere at the same time.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
