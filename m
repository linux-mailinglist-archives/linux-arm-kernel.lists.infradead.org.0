Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731218528E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 20:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxojHsKE3GZjLtSO3w092LrfGINudFpPbkyT4kJO7rE=; b=qdRK0SvdCYdNVb
	AD/k4ZsYWYLO78hd+RwZIOkWltb+ychTV4oTJerDnwmP6GdZdjOF3CtuiULt+cSJC6/uuQa69J9/7
	7akND1I/FeB8Xm8aLCxHC54ooEF3PjfgKF8oHnBnpARsJzXcrW5rNQzraozMjLlD7iNZV3inD4PF4
	twrlDX5W4/Lo7ZFL7ZQUw5XU4iOXdERO3dw92hb+7y7CrHAju1veI/woywERMOXhsHciGGJ5oYkNe
	cndQy2B+xZlv8SZstnnHIPEKV01z453GshrKtobSKZNca9wo4oq3sU6vg4e54Xyz0BFFzZM52pDGu
	72ueAGvHMbfE5T4PFIuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQEs-0002wO-38; Wed, 07 Aug 2019 18:00:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQEg-0002vJ-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 18:00:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id x1so42366834wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 11:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pFr71ba4wTvnk5UDS39uecfIkQHbPN6xMB7Jqj/WRjI=;
 b=m9c1MHBuDCeo2Z88IwdSKM3amtE+vs5AoTgGWNdzmSKxistPEwZwFwKjKOLAiLTeV6
 piYs3QuMN0mGgOTedewVtsKw6qXYqOQJOQPsI5Rm8+ruxJDY7UzJ0azIgMMOGtyZK+lV
 V7In9wNR3+wK9STFB9PBqcyUKPMKk7zpVsyzghfv//fV2Ebtgud3fEvcjSc7HTvIofTb
 Qd+WAVy0hbQmfbe4a2WUuvfG8a6nAvDRMPFqtp0p13DTdg3Pj2Q+jxfAHLlIwmkCdvHs
 1rlYxkg6QGFqJXU/uqlv42MHh0n48W1PN9Ac1hDIIwt118wPYPPSqTk0Y1U70qTPHe0L
 biLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pFr71ba4wTvnk5UDS39uecfIkQHbPN6xMB7Jqj/WRjI=;
 b=lZjpNX5l1WjeM4kJ63P0753/+5fDcPQqDUt1xnKZuaEQDEGu1K6LPIr/CYNaVXodZP
 E0ssGcAe+oiPgenuK4lrz5FpU5BNIJjfEQMvts1blg+ne3/x2EIuoxKeNRNznTD8t3xo
 CnecElpPNWnbmJjdz9aPj/mbQp13vjBQOOx4j4ano35Wi9+nHsr5+u90Qocm8Emx05y9
 3ckjpvA8iDsjph1HnrEBdbdl9eccM7VhKlY/EO2MC50dpDXilHzav9N5KCOtGni5O8N/
 lIwqeWOfszlTq4VkPFajc5GcpBkxtVEOQKHTYFfyhLyZxNIk08PGiX0rDp6w9kNYmrxs
 hZUw==
X-Gm-Message-State: APjAAAUlscp9UYDFYMDgb1ffLAu37KFFvJXp4mCK5kE00ahyuoeRoIRI
 vxnUU+mNY7xBxMNgMl6HQuald603OVO2oyh0FJgWjX1s
X-Google-Smtp-Source: APXvYqxaCIZWdK+Tqrsn08yT+fqkM7ITkRh9oQN0LjCE02z/d6ocRZC1bG+I6yilPRfn2AKU8KzS1UbPFYRTzQWESuw=
X-Received: by 2002:a5d:6ccd:: with SMTP id c13mr12673000wrc.4.1565200827673; 
 Wed, 07 Aug 2019 11:00:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
 <20190807104104.GA18773@infradead.org>
 <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
 <20190807130043.GA6023@infradead.org>
 <c613ca25-4443-f275-ea8d-6d55af10ac77@amd.com>
In-Reply-To: <c613ca25-4443-f275-ea8d-6d55af10ac77@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 7 Aug 2019 14:00:15 -0400
Message-ID: <CADnq5_M8YvmsA1SDCNygQ2+tcxGjDCbz9ETQ1Fu22OUr03t29g@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
To: "Koenig, Christian" <Christian.Koenig@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_110031_784565_768BBD7A 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "Li,
 Dennis" <Dennis.Li@amd.com>, Christoph Hellwig <hch@infradead.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 9:03 AM Koenig, Christian
<Christian.Koenig@amd.com> wrote:
>
> Am 07.08.19 um 15:00 schrieb Christoph Hellwig:
> > On Wed, Aug 07, 2019 at 10:55:01AM +0000, Koenig, Christian wrote:
> >>>> Essentially writeq/readq doesn't seems to be available on all
> >>>> architectures either.
> >>> writeq/readq are provided whenever the CPU actually supports 64-bit
> >>> atomic loads and stores.
> >> Is there a config option which we can make the driver depend on?
> >>
> >> I mean that ARM doesn't support 64bit atomic loads and stores on MMIO is
> >> quite a boomer for us.
> > The model is to cheack if readq/writeq are defined, and if not to
> > include the one of io-64-nonatomic-hi-lo.h or io-64-nonatomic-lo-hi.h.
> > The reason for that is that hardware is supposed to be able to deal with
> > two 32-bit writes, but it depends on the hardware if the lower or upper
> > half is what commits the write.
>
> Read, but as I understood Tao change this is not the case here.
> Otherwise we would just use our WREG32/RREG32 macros in the driver.
>
> Tao, please explain why exactly we need the WREG64/RREG64 change which
> caused this.

We use this for doorbells as well which is also MMIO.  Basically we
have the requirement to read or write the full 64 bits in one
operation.  E.g., for 64-bit doorbells, the entire register is the
trigger so if we do it as two writes, we'll miss half the update.  In
the case of some error counter registers, reading the register will
clear the value so we need to read out the full value or we lose the
half the value.  This works properly on x86 and AMD64.

Alex

>
> Christian.
>
> >
> > The only 32-bit platform that claims support for readq/writeq is sh,
> > and I have doubts if that actually works as expected.
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
