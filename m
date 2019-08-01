Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2B37DBE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vswDcITEHhjRSDCN4hjXnQgMbZBmgWZ3mNmv0WJ/8Dw=; b=NOwumPx6M4l4rJ
	gdQpYw7KJw8bHJSQgwbLdmUL2TxCEVrmDlX/3jBc5o54bLr1M+bEobeex2sE97222Eayt3cy/d/kQ
	fc7dhg8ASGSmLXs6DV+uLePKwiJkbIXLfuKCJlVivVY+t6ms32E4xklyqzPGIpE8zZUDHfAr1d7tA
	bfKaALzwBaW6iNgxOWMd4WUlG3h6hNyFVPKy/8bpJ1wCh6vqK2xIewpL7Y/DeiUkV7wGv6Qwji9vp
	cWlOI626jgh+0xWRwMqK6DzuDBLuMTTRErCgbZGTNGae+fn0H3uZ7DbZ6z53t3zr0smacb3MNeClg
	IChBFe1zT5xh7FbiGV8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAVz-0005Ub-9N; Thu, 01 Aug 2019 12:49:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAVo-0005TT-Ca
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:48:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so34150374pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 05:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ATAFhJly7oayn4QwVxAmF/cKx18eZXYIEq5cLXvpdzg=;
 b=mjC+j0aaEEkkMHnLNHs9TEJqIdScFWRlkAZG8TbiBl3AyUZ8l5nLaU29ZLHSb7WvwH
 X3OlQDdgsBZjncfM3ONy8Dqcuih1q2WnbLztoEOKMtf5vefqmMIHHwchJuo+ue+DCVka
 b9rui+0AvY5PeeX+qJY2jvBZQab/NzRkSsMupCgkTdlEDxE6K7Nu5zDKiMeGfnD3hicf
 2VPYUTHD9bJKAQWesHnbiPWY9rwW/eF7WIHmcnvL9DkrJEokfA1mnjx39I+4RQdt1WLM
 ieuyPRr8iw6XMHiEGmpinxm+wGAydMTsA6N4zI0Tg/WWtENcJ84NKdjINucR3C9EQWXN
 EQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ATAFhJly7oayn4QwVxAmF/cKx18eZXYIEq5cLXvpdzg=;
 b=Bj9pR+lpudUdS+rDrDcP4jjc64QCP7jZHiuOSW4S4+jM11Q0zh9MO4gu9ekhDhndpV
 wiJQtA1WhZnGQh5TY58UsheXvGmjiQ+GsBh7PJl2e217AtLoCn4nECS+xyQlKMIwwMFi
 nS6nC0HN7vrIjEBLvW4v1shDH89qTrdrpG1akco81qOuTZ2P8gx2A6SvYpyDfHyAspBC
 Y0yt7di6ev33d8ycO8sO0Wnsn+P70fhJ11Zn+pLQWWp9drL7E9Y0AnnuHDT98oX+yQ7x
 npDY8B1cU0brWEj+KpbbRvvAHhNnt6AkVqqS3eillVvXHkIDdLaVmKMbctOF0VpQUoQ5
 63dg==
X-Gm-Message-State: APjAAAV4/nbOQqCXPnMuuvIzLF+Bx98HeP9BMAyow7mA/md0k6yrhbB3
 DL0nzSBMFbtkFqxZwOabTRfCaJaOJVwtpwABoBmbyMhSUco=
X-Google-Smtp-Source: APXvYqyuYmWo+CP2FzNWYkHFT0ZLT3W5Y5OJQeMQdVh76HiNmdD4jPQ2fznL3kD7gDek9Cqsx8/zBcK9HOnHQgVpStE=
X-Received: by 2002:a65:4b8b:: with SMTP id
 t11mr118476394pgq.130.1564663728917; 
 Thu, 01 Aug 2019 05:48:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
 <8c618cc9-ae68-9769-c5bb-67f1295abc4e@intel.com>
 <13b4cf53-3ecb-f7e7-b504-d77af15d77aa@arm.com>
In-Reply-To: <13b4cf53-3ecb-f7e7-b504-d77af15d77aa@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Thu, 1 Aug 2019 14:48:37 +0200
Message-ID: <CAAeHK+zTFqsLiB3Wf0bAi5A8ukQX5ZuvfUg4td-=r5UhBsUBOQ@mail.gmail.com>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
To: Kevin Brodsky <kevin.brodsky@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_054852_447652_7A40EEE5 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>, Dave Hansen <dave.hansen@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 2:11 PM Kevin Brodsky <kevin.brodsky@arm.com> wrote:
>
> On 31/07/2019 17:50, Dave Hansen wrote:
> > On 7/23/19 10:58 AM, Andrey Konovalov wrote:
> >> The mmap and mremap (only new_addr) syscalls do not currently accept
> >> tagged addresses. Architectures may interpret the tag as a background
> >> colour for the corresponding vma.
> > What the heck is a "background colour"? :)
>
> Good point, this is some jargon that we started using for MTE, the idea being that
> the kernel could set a tag value (specified during mmap()) as "background colour" for
> anonymous pages allocated in that range.
>
> Anyway, this patch series is not about MTE. Andrey, for v20 (if any), I think it's
> best to drop this last sentence to avoid any confusion.

Sure, thanks!

>
> Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
