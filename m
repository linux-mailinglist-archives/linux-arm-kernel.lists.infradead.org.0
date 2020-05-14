Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B52B1D2E08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 13:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhaebSSI0CshC1YDAEHorE2IqfGkQBrinatOG6b21g4=; b=bzVUiz51qojP+v
	mHqyeZsGS5lq0Er7y/QqiBpDRNuEZ5q8qjyg6bNEXoHP8IWSEq6Ll0yiM5JhiyaJlxRYRb+Kyb+4X
	66MjdS68RWKDOY1Rd1Yc7U6f6Am1n2UngkDq7MBbFfzIJirLpafq5PgdpJHNJaDLURtvEdeEnyGWD
	d12P6taKbiSLCszvU+FktGB+B3eMIs3OkSP8WKhD1MD+8LwPrXy420XIX7LcEnBOVtkZDwHRLHPDy
	DXjr35HK910RU7FxJrZCUAQ/dC3VVKu1LV7w6yaM58Gr3fgDbiA0mGNR2cnUpevGbew04BSkAJD2m
	KtyZC7W/Z6X0fR6TMflg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZBsM-00024V-SB; Thu, 14 May 2020 11:18:06 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZBsF-000246-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 11:18:00 +0000
Received: by mail-pl1-x62f.google.com with SMTP id y9so1045813plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 04:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hknV+GJMZHyHLAY2im/FQF7wHV4s+FSMrkKyD2kNtOw=;
 b=q1J8WZEFW7zcbs4kfMwHVNcPHEvHzP0sWCL1KDOejr+Oz4wbi66N2QIJHSjF4QRW3Q
 TEDfEChsLpQbBMWtT6S0V4Je1V3/Kxw2Ii8ipz53soDuZFlMN3tvKjzxQDXY03e0FnAB
 Jg6FI4bRC175fUnWz3QeCj9PmuQoJoo46BfEbGKM9BRYH3vJtBEeZCq24PuckXMpFn2k
 VAYNw3kO7blN2xdlp55KlI1JN2CpIU8h97kLDnhSRNEuqNgr6zNVM7IL4CJVtAN7eM1Q
 cEHqy92xeP6BQn5y4Ncknujhip2GTZvq/Ny62ESqPkpUVlycWaVsNKkF23F46abJzrV/
 qbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hknV+GJMZHyHLAY2im/FQF7wHV4s+FSMrkKyD2kNtOw=;
 b=X9obIVieMQG7CUMPDxtomqgmnYzmXK+6MAs3CRCAsA//dQw3uz4+vdANiggI/ZJuKt
 MEYPHApAQ0XxXm7vt1sBwP/L26EzdulWZXNwQNg4KICCN2D5qKQSyVJjg9sw2DkE9NlE
 ukLYj/sv9L6PEXSWafy4Db9q08YIaCRv8Y623v28KR+6ZF6h7ZkanqX66aA89k92d+AV
 IPE58aE5D4+grKBeofeWydq4lxsL0YZHR5mjqci78DUtXX/lZawdcBSXu29SQJq0s4tz
 7xDV8NcC5YJoZsK1tmhPSbxvxFUwFNXfRNbcgqtwEXQTrPbSiQsyg3REhw7QTviqnZtD
 3kNA==
X-Gm-Message-State: AGi0PuZYc3zDerC5BKgsC2A8M5dRdGXdQNeV59IxDGBL0au6+O7EApK6
 HG2je0u9CBFteK4fWCq/N0s=
X-Google-Smtp-Source: APiQypLarzhPpMk65VrkKnqffPBenJAa46xewdPlN9VCMxKTNk/8c6C3ICwXE0q0hf7R3DKGKlS54g==
X-Received: by 2002:a17:90a:cc6:: with SMTP id 6mr39655685pjt.17.1589455078047; 
 Thu, 14 May 2020 04:17:58 -0700 (PDT)
Received: from localhost ([49.205.220.80])
 by smtp.gmail.com with ESMTPSA id g10sm2156051pfk.103.2020.05.14.04.17.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 May 2020 04:17:57 -0700 (PDT)
Date: Thu, 14 May 2020 16:47:55 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200514111755.GA4997@afzalpc>
References: <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_041759_358860_BEE15E96 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, May 12, 2020 at 09:49:59PM +0200, Arnd Bergmann wrote:

> Any idea which bit you want to try next?

My plan has been to next post patches for the static kernel migration
to vmalloc space (currently the code is rigid, taking easy route
wherever possible & not of high quality) as that feature has an
independent existence & adds value by itself.  And then start working
on other steps towards VMSPLIT_4G_4G.

Now that you mentioned about other things, i will slowly start those
as well.

> Creating a raw_copy_{from,to}_user()
> based on get_user_pages()/kmap_atomic()/memcpy() is probably a good
> next thing to do. I think it can be done one page at a time with only
> checking for
> get_fs(), access_ok(), and page permissions, while get_user()/put_user()
> need to handle a few more corner cases.

Before starting w/ other things, i would like to align on the high
level design,

My understanding (mostly based on your comments) as follows,
(i currently do not have a firm grip over these things, hope to have
it once started w/ the implementation)

1. SoC w/ LPAE 
2. TTBR1 (top 256MB) for static kernel, modules, io mappings, vmalloc,
        kmap, fixmap & vectors
3. TTBR0 (low 3768MB) for user space & lowmem (kernel lowmem to have
        separate ASID)
4. for user space to/from copy
 a. pin user pages
 b. kmap user page (can't corresponding lowmem be used instead ?)
 c. copy

Main points are as above, right ?, anything missed ?, or anything more
you want to add ?, let me know your opinion.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
