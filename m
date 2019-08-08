Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCD386DB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 01:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UAA0ufmJaYUyfVYygW+h60TNqiNj9ws1CqUgbj+neM=; b=E1DA+nRaV/BzLu
	dyyRwTuFhrp5xi2MDVWzfbuZi8C1GHF8xmmD6dqYqwIZlDPWtQd/vU9dxX3QBag0NwQNab9SGoPkY
	fd2dt+P2niS9yubCsuoH1mz3vG9OMYWXiy8KV2qTjPY2oj/+P9T/SvXE6jCx0PuTPP2jHuVoSfb0Y
	0sdvdZabHCgoWNPSvR3Fzvnsy/xQfIVltt3VIv47Vf647QgHAKFYEZ+949p8/nSqVDkGbe9GiAcbi
	w6wXzIJ42ArN3Q86cpLgwyLHkV2O14mJhgzc1yS3kJR0WUgVslX8mWTqfc5ZE48IXSL+qf4xTxk0h
	IwEplQ0s/xpzyKqVMgGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrX6-00031e-QA; Thu, 08 Aug 2019 23:09:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrWv-00030L-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 23:09:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id b3so44204902plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 16:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PshILyRjCCo0C5QCJz7frN2AnaNP8oJw8QYaH2iANig=;
 b=dbDwiA4Adn6NNb5EvA73thvbmUP2keuqre4+n/NxwEHqhexDztnDaNh7AsRSTZZe49
 hYpD3IzLcNsObNJn7jV0JwQOyof3bHoudWE9xbxMphJZ3xC6+cAju3iiWanCTUgT+RRy
 5BTDqjSStXzv50strdYe4GteQ70uxl48L/KiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PshILyRjCCo0C5QCJz7frN2AnaNP8oJw8QYaH2iANig=;
 b=EA+HkDe7JncUtG4RSYto9ilb8q7q647RB82zfKjpYIqbZUf86PY3fPMWVqxAu3EmKf
 jaT3zSJqTvyABUyhJaTJE9RfY1vL4E5iTFzfVTROPYdhk25P/h0ga14SZT2ETbFfLSEv
 BOjR/L8dTsU20wdiWrnhZ1BM5HWYCmmfmtA80Z0voFJ6fOHJGFM/238wPnpkR9gwwqVH
 twppJGKpRWa8A1DBt83G+k5S40FOjDY6XYyAmezjW/6NbKzF6kgE6avYBJY8OIhmRFwh
 FMuXppnJhQD1Gdxemlcp44jQ+YH8vDPBxKXr/ZZnbfYNf3O0p7WBVIldrGiCguYR3HRA
 Sq+g==
X-Gm-Message-State: APjAAAXtf2OBsoEKDB5j7BasG9VrXTIYkAcIfFwJVt4nYUoNrDBE/daw
 gJez1vS8gPiVXRmcT3T6CcojsQ==
X-Google-Smtp-Source: APXvYqwRMwQCoIwwE1SVnXBBenp7lYzRwUiHs8nPiovNgZn+1R84ViErtlLi11BYuAEM5u5dpbcusw==
X-Received: by 2002:a17:902:d70a:: with SMTP id
 w10mr15179356ply.251.1565305746634; 
 Thu, 08 Aug 2019 16:09:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o130sm157376311pfg.171.2019.08.08.16.09.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 16:09:05 -0700 (PDT)
Date: Thu, 8 Aug 2019 16:09:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
Message-ID: <201908081608.A4F6711@keescook>
References: <cover.1563904656.git.andreyknvl@google.com>
 <CAAeHK+yc0D_nd7nTRsY4=qcSx+eQR0VLut3uXMf4NEiE-VpeCw@mail.gmail.com>
 <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
 <CAAeHK+xXzdQHpVXL7f1T2Ef2P7GwFmDMSaBH4VG8fT3=c_OnjQ@mail.gmail.com>
 <20190724142059.GC21234@fuggles.cambridge.arm.com>
 <20190806171335.4dzjex5asoertaob@willie-the-truck>
 <CAAeHK+zF01mxU+PkEYLkoVu-ZZM6jNfL_OwMJKRwLr-sdU4Myg@mail.gmail.com>
 <201908081410.C16D2BD@keescook>
 <20190808153300.09d3eb80772515f0ea062833@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808153300.09d3eb80772515f0ea062833@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_160909_984692_B72C2F97 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 03:33:00PM -0700, Andrew Morton wrote:
> On Thu, 8 Aug 2019 14:12:19 -0700 Kees Cook <keescook@chromium.org> wrote:
> 
> > > The ones that are left are the mm ones: 4, 5, 6, 7 and 8.
> > > 
> > > Andrew, could you take a look and give your Acked-by or pick them up directly?
> > 
> > Given the subsystem Acks, it seems like 3-10 and 12 could all just go
> > via Andrew? I hope he agrees. :)
> 
> I'll grab everything that has not yet appeared in linux-next.  If more
> of these patches appear in linux-next I'll drop those as well.
> 
> The review discussion against " [PATCH v19 02/15] arm64: Introduce
> prctl() options to control the tagged user addresses ABI" has petered
> out inconclusively.  prctl() vs arch_prctl().

I've always disliked arch_prctl() existing at all. Given that tagging is
likely to be a multi-architectural feature, it seems like the controls
should live in prctl() to me.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
