Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AC1257C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enxpVj1cPvY1YMkG6wC399L0GNPPnLqKkvyhUBnQR9A=; b=m7cuiOoLfs2rWC
	U7MYSd18md4jbwGaWLvgYZSLp9hUVBwQY7udIAyZz1svOcut01ZFb4BT2wKXz67TJbZD4hhKSbasO
	/LjdVN+6HLcnaQKQnIGoYt7FvOChs6IMIvFMYwwmFeeA7QO2QOjz3Fxv+8f2Nz1P9oV0P43CcZ/lF
	Si8BJzfJcZkFpZZgCelwTcJRK7Tf4vp9yjYUp/ZR/QIJ8QSPZgSQZl/2blEWXWIkw8Bxccd3lNRil
	ImiM0dmSajedhTiXjsbct1AhAePpUwMcyXROZOtLYnRsWkokbi579juMP5uJsffeEsLPFBjQV8mF2
	KO1k1LKM0vykGHZrBqiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9ox-0008MB-LQ; Tue, 21 May 2019 18:49:07 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9oq-0008LC-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 18:49:01 +0000
Received: by mail-qk1-x741.google.com with SMTP id p18so11164021qkk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 11:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Brh6Wum1Zthj/uQ2mtyHFIq9uQlvrAXKSZbEsVapKL8=;
 b=JYscqSP1HPPRVqGuMd5owD3l/IDlGmL6FFL67m798Jm2AP4qGcOTqtawfRNo+5kAFu
 iEJ0vUz9qOZ+rvajt/fb76zKILX2m7sPHzCjQLxU/xpu8s+X3lkRy9CgqtNpDaf0XFJu
 m/SIilww4DfdKs62gi8wE4MGevsPrJgDS2TyvhL/7eUtavobHZ7DqCVwKBcDulDJUjVu
 MVt0CUr2fUDTtnd4Vvag66g4rnBT/cZ1xH3t4yZwYbfafoegD76V6HRafoLD0R1dZ62Z
 EbRvObIPEul9wb7eEhcBGsIGomq6YRkOd3NfdawsXW6Hn11cNpJ1sY5CjCpDM4tjfGZL
 aezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Brh6Wum1Zthj/uQ2mtyHFIq9uQlvrAXKSZbEsVapKL8=;
 b=NRI2WvJ6dh2ieGBF4bnpyKQxZavQ/5MXpiABW0f3pYp/TuI+eaUQRF2z/oovjFkHUV
 KkfiKZkXcTcXH9Lel6tQ5GPz98joA4OfHuTgG/2a9Pvt2KGz15jRiUx27B4tnHCKropU
 e8g8gVaCGileiuFBp2Jt8+OzKGv2POLnk3igEt8iPFegPpa9Fcgh5Mycdc8h6xwg/2b2
 kNyBNVLvMODeIjaFTfzsQSrtvJEiv3ihKu+27qsIAedmTcElTWwPioObSkIq9nDnG6Sc
 53ZnvXPyJRIxXRuNB/sRniAQbz9LWWCvlH2my6rlRuvJ+T4FxaEBc3CXp9jIuz60rhAn
 Mi0g==
X-Gm-Message-State: APjAAAXLT8+NuPmmnEBYlTN3+K4ebBXEj6XHW4wxP8cuLX+xM8DkoZxj
 aa/5/ggh5V+7dMD8nyPvz/LHnQ==
X-Google-Smtp-Source: APXvYqwU77tWKnZY68/uvl8nI3fxF+k0K8AI67X6RVtQAbCKMK/pPRLs+1/gDbqNIuNCiuScF9EnOQ==
X-Received: by 2002:a37:358:: with SMTP id 85mr63206066qkd.174.1558464538599; 
 Tue, 21 May 2019 11:48:58 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-49-251.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.49.251])
 by smtp.gmail.com with ESMTPSA id u2sm5545370qtq.45.2019.05.21.11.48.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 11:48:57 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hT9om-0004QR-Qs; Tue, 21 May 2019 15:48:56 -0300
Date: Tue, 21 May 2019 15:48:56 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190521184856.GC2922@ziepe.ca>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517144931.GA56186@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_114900_534172_AD3168D6 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 03:49:31PM +0100, Catalin Marinas wrote:

> The tagged pointers (whether hwasan or MTE) should ideally be a
> transparent feature for the application writer but I don't think we can
> solve it entirely and make it seamless for the multitude of ioctls().
> I'd say you only opt in to such feature if you know what you are doing
> and the user code takes care of specific cases like ioctl(), hence the
> prctl() proposal even for the hwasan.

I'm not sure such a dire view is warrented.. 

The ioctl situation is not so bad, other than a few special cases,
most drivers just take a 'void __user *' and pass it as an argument to
some function that accepts a 'void __user *'. sparse et al verify
this. 

As long as the core functions do the right thing the drivers will be
OK.

The only place things get dicy is if someone casts to unsigned long
(ie for vma work) but I think that reflects that our driver facing
APIs for VMAs are compatible with static analysis (ie I have no
earthly idea why get_user_pages() accepts an unsigned long), not that
this is too hard.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
