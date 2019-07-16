Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBD76A836
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 14:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKmI8Uk8r9R5z+rfEZTbGusw8odH5LY8o06wIZRyOek=; b=VtmTgrog/a0QQx
	ZWclUgNoEqk5SqK79UlXPWSdBijT0l5GeLvIoLuJ0oU//A6ima2hlDKu2c483IjRWHrTUNxxpLOCL
	aLCJet752AwOR8yAEyMBy+Wj8F2/o8420fR799XKTX0sdgcBSgIWfaOzL6d2pDBdVGhBjwg5yejHb
	5IgctKmyz5pJ5c9eFJEevy/FCB+CER2hAVcLasSJO1pTsI0Cb2x/+IMC7SNxVNGKcte9l2v3ILhQo
	0Gmy5G/ngoiAoL9BKfva+FasqAsx1i610cGbv/25Sx0YX8NxZBEtIEFSmlfS1iCz7Y8w2cbOdtwCM
	No6ugAff2r1/VmMx7rpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMED-0002zl-DK; Tue, 16 Jul 2019 12:06:41 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMDz-0002z2-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 12:06:28 +0000
Received: by mail-qt1-x843.google.com with SMTP id h18so19206159qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 05:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QhpcQElL3lG0JSgeqXLUe/9qK61Ylnz+wgQS3Fp7AjE=;
 b=D1pZEppikXtQIEAGheASyppn4vPK1DguzWZpiaVk939PKpSlX+xsQppOI0OBkx+nKq
 1JMeoAeO2RtNcmtGWYdKLbdcc2TbWA6drTUMGhZaq0sz3Geu8LfsJw1hCEqbsa4Bc/j+
 JrOL+39tH0pc4sSRyK3u0NuDnGgXAecwBuMSo8RvbrqgC5vpbNsoC1TREtbzabbzYUMS
 k9WxSC0qQS+DehVxRxUbV/PWa/pVTJQcjtukye20Ck/yNfMpOiGdSRCyc7pAxi48HA7M
 W3ECRyTg6vWSNWsyBv8+jZrvPzt1c26ISNAUAqR3Nk0GH9Y/cYJuNImJ996hTYW3Y9ab
 lyPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QhpcQElL3lG0JSgeqXLUe/9qK61Ylnz+wgQS3Fp7AjE=;
 b=FhBeUk+vVyZRSdqvcPNmKvmLysCu/SnmLYhRabmYl1bZx9mCu1kj53m4DKNDezLxeK
 670ZjN/anCp1Tve4CuywQiSeIR94tmw428/iU2fdoX23nMnes5KW+TfBm92cVjHliyUk
 J51CFrtgs48Zlk/0AtDpE4LKjdJmQxOwXqpq7V311REHJ9pwiwhfPnfVH6WA69yYT7GX
 kKBD/GUEWY8FGaZxpDKkuv7mmd04crDMp39nMxz9e4QLXkVE4Hr67m0l936nKV9M8fxy
 B4Vb01EO43CTR27iy7n7QVvh6IY6aEPZ7vvVuNdOc0QtaDysK7zkWOF614yMfF7SNgnv
 SkEg==
X-Gm-Message-State: APjAAAW81qKbQ2v6Bc92rHkI30gz+5lFZDXaZFgyVgOhtEatWF93PuzN
 Vlq5+DOo/UlH6Tis9OvYK9gzYw==
X-Google-Smtp-Source: APXvYqwaXFZZiwZu977J+QGokWcpz5v06kUp2glLI/ZNMEHnjOvZ6hmUglcng9VwXT1727jmbSrxcg==
X-Received: by 2002:a0c:e703:: with SMTP id d3mr22592037qvn.194.1563278785764; 
 Tue, 16 Jul 2019 05:06:25 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id a6sm8577367qkn.59.2019.07.16.05.06.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 16 Jul 2019 05:06:25 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hnMDw-0007mK-JQ; Tue, 16 Jul 2019 09:06:24 -0300
Date: Tue, 16 Jul 2019 09:06:24 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v18 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
Message-ID: <20190716120624.GA29727@ziepe.ca>
References: <cover.1561386715.git.andreyknvl@google.com>
 <ea0ff94ef2b8af12ea6c222c5ebd970e0849b6dd.1561386715.git.andreyknvl@google.com>
 <20190624174015.GL29120@arrakis.emea.arm.com>
 <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
 <20190715180510.GC4970@ziepe.ca>
 <CAAeHK+xPQqJP7p_JFxc4jrx9k7N0TpBWEuB8Px7XHvrfDU1_gw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+xPQqJP7p_JFxc4jrx9k7N0TpBWEuB8Px7XHvrfDU1_gw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050627_393928_51A15259 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
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

On Tue, Jul 16, 2019 at 12:42:07PM +0200, Andrey Konovalov wrote:
> On Mon, Jul 15, 2019 at 8:05 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Mon, Jul 15, 2019 at 06:01:29PM +0200, Andrey Konovalov wrote:
> > > On Mon, Jun 24, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > >
> > > > On Mon, Jun 24, 2019 at 04:32:56PM +0200, Andrey Konovalov wrote:
> > > > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > > > tagged user pointers (with the top byte set to something else other than
> > > > > 0x00) as syscall arguments.
> > > > >
> > > > > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > > > > only by done with untagged pointers.
> > > > >
> > > > > Untag user pointers in this function.
> > > > >
> > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> > > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > >
> > > > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > > >
> > > > This patch also needs an ack from the infiniband maintainers (Jason).
> > >
> > > Hi Jason,
> > >
> > > Could you take a look and give your acked-by?
> >
> > Oh, I think I did this a long time ago. Still looks OK.
> 
> Hm, maybe that was we who lost it. Thanks!
> 
> > You will send it?
> 
> I will resend the patchset once the merge window is closed, if that's
> what you mean.

No.. I mean who send it to Linus's tree? ie do you want me to take
this patch into rdma?

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
