Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342AD9282A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFpgX4DCQVhazQcQSc8yVyzMDnXCV3BerKgKDN1BLgY=; b=il4I1rvIRFjw2u
	6hniMdxwz4wnf4zfEvQQTESIPMLqL69LI0Goz1uCnOchD1PkmuKlZl67gpoC/fxr1fG+fCiaG2sc9
	8Cs0PCNfCTbiraal1ZWU+oGbxQfVEPKqNekUyLbAyaAY6wgOnnPOK/TGlfCOQr8wNK29q3FpjMv54
	dgPnFiqNmK6IJqkjmMLR4HSUNMHFMjU55qrdobY57xKT9e/JbPpV9BekCxmvhn5ml8F11JSGldgHm
	33zn3MedF70Rcq4PMCwbAxllKDmiHOhGH+skRD+SwVNAdytHSEmX8BlRVks79C8Mf+RNOMrePSF2W
	EgqcXnr6UwPvDP2po9ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjOz-0005oh-FV; Mon, 19 Aug 2019 15:16:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjOs-0005oF-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:16:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id y1so1105255plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GlFmsxpfwLpG5XFQZcDJGrUJIAXAnOONymKIPYeVWy4=;
 b=GASLs+yZnKXgCHGknNLNo71e6UtRt515EbzdpWYm/Hpg75x/UubNKrVS4Ph4uPK+8D
 Ti+bZvb7RwZ8Rgn5diZiCZOC7bC9H+dTrKcVTPMW/pFv9U1AucjO/hRKCCkTBhzRIaU3
 D9sPMjOcAkw+sn0WiouQhRmANU/HoJXNnBPivxMzU2mCd+1bqEU622XIt7CtOkyBUScf
 CddY5regO8tRNMImraZP3DECenQ45DhILnBAxk2TuQ3iyHoyjpEbXWuF3zSR6z/Z8e3z
 D8kAaqFBdLd66b1BOwiK9p1SMntN4cI0JAUQgHjwyJ5ye9BNp3phuuPzg6paxdjmOKUJ
 Bduw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlFmsxpfwLpG5XFQZcDJGrUJIAXAnOONymKIPYeVWy4=;
 b=XPiWGss9jMqQPYBFe89LxhXgPeflnwHQvRl4r2gkJfgdVgk7dBeRwpHJcvMQbRLrN7
 N+nezMij2McIpoy2HhXQgFsay9lDPpQnNnoFj/75AvSESdZMw7erQRd6nPB5AuQQe1GO
 F0QHkHe2AEyFIVcZXtJG00wa6cUcxVeRamLkh4J+DYopPlrP9VPyn1Wo0qr1EhIda19T
 BSOdw6R48QSFV0h+l8TK3L0e/Io9Zrjg1aPY9KSTAliuv6WPSfjyox0Eh3Q631WXO7H0
 fFQOsg5fKteda78xJ+UCjAeSOD0ncn4cJ3TT3Y/xJ3N2LBgL2Xoz5H1iA7RcgXtcxRBL
 mdtg==
X-Gm-Message-State: APjAAAULIJksmVUhND1m+UV0gTW238ZWBi2IEL9QnDLII/WeIukTB9CF
 iZp8DU9oDyoLWhUSW5DAmaNhFPb6nTLNbJ5SG54lZQ==
X-Google-Smtp-Source: APXvYqxAVYv/X47htv2GfhrYLw10pOmVgC147AdMR4amTTESkgYjtOO9fvfN54mImyUI3YtolKb0GRqZDtWypE7Vt8Q=
X-Received: by 2002:a17:902:ab96:: with SMTP id
 f22mr23622721plr.147.1566227808825; 
 Mon, 19 Aug 2019 08:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <00eb8ba84205c59cac01b1b47615116a461c302c.1566220355.git.andreyknvl@google.com>
 <20190819150342.sxk3zzxvrxhkpp6j@willie-the-truck>
In-Reply-To: <20190819150342.sxk3zzxvrxhkpp6j@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:16:37 +0200
Message-ID: <CAAeHK+xP6HnLJt_RKW67x8nbJLJp5A=av57BfwiFrA88eFn60w@mail.gmail.com>
Subject: Re: [PATCH ARM] selftests,
 arm64: fix uninitialized symbol in tags_test.c
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_081650_468235_8C8A2B49 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 5:03 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Aug 19, 2019 at 03:14:42PM +0200, Andrey Konovalov wrote:
> > Fix tagged_ptr not being initialized when TBI is not enabled.
> >
> > Dan Carpenter <dan.carpenter@oracle.com>
>
> Guessing this was Reported-by, or has Dan introduced his own tag now? ;)

Oops, yes, Reported-by :)

>
> Got a link to the report?

https://www.spinics.net/lists/linux-kselftest/msg09446.html

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
