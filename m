Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B9A84319
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ej1CiIjiUsw5GudSPKWUAlQqEX0mQr9xhLHcGzi52xM=; b=OkA34jmcx7vBLO
	bA8ZOUu7vfxUZVtZOBiXya+eWYEjhNRy+DUpgZQT4YQxXB/lVA1nw43chB/Pz70OYH2TXWeuhx3lD
	35ECyLIm33K1ccdYOtw+qET/G1rYj7lBougsGfpvbgLAEZhD4NO2NkiXAeGIqtiS2I0ZYLBWdO40X
	D82CfpVphvfvB2mFoPIG7vwmxc0H1LLZXAoK7PqnUjDihBhIotDUNRCUo7PTeOVHSyIGZKm0TVk4W
	12cewFOxhJvZi6RncLndZYIo4FykQKsNyREewVt5gk1SsWYlYv6ijAhbfuwVPl2jj3cjZEtY7rpF9
	TI3I8cHq+vMlSZxe8wHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDAA-0005By-Pk; Wed, 07 Aug 2019 04:02:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDA1-0005BX-37
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 04:02:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id e8so401443wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 21:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cvxwh5Q1CDvq6FjXTDwKs9pxhptkpkbLpHFBpcmZjFY=;
 b=olLNrj+min9+DpiwL88xfNWSlKYSkBlGciRRSCSLUzj4Q+PQD9g2uATz5gvqMaDrLI
 KcpJaN9ymOMnh74yVqt3OEZIKEsv3KH2RYsMA3TAVVgFy+nSFtfWpl6n2E9yOfU6bwFt
 vi0Zq7+K1Z9nTup+sHKIiAXlvRs6C9f4Hp/bci1Hh5YnDCVhHZQwYDqf/3DxWLHfzfRn
 SAA4iw3VRNeHuH7Ii8oCsTrnZS72mqyJQQLejM0amKEdC8JWKa/HK/F4nnyBFJc2UK7P
 /NGa0+yvP3aqznf9PZu6LTuxTw5Il+6Hn/ZplEEmw5mcoVMq6SJcDVCgRjQdwThC7jWS
 5R8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cvxwh5Q1CDvq6FjXTDwKs9pxhptkpkbLpHFBpcmZjFY=;
 b=bSNasSuvGVBtiKNPBMML58m7LoTtdFFk3h0o7D5Yzox488Lz9c+31XrExQrrBqcUsi
 JY5+ss8I8rq2yWd870JThHTiocSkeJpG2pfSMzxkPimDn3T2TC2MLAU0pQyJP63LB9H7
 Diq/l7Wdj8W0dHqB+3JKK1Gvooe3H0N6xeBM/1rcA9uu6iugStrEIY3NyyHUXFOJUxJc
 BMSI3qrFH+8633tnYonAKBb/Gf2o9bSzV4NviXexTURK+TJaM1WOhzUPuOWdvvZM89aH
 vtFgstD9+F/qcihJEFIO29fsape9/SJoSr3wIBBl4P3keLLb2qeCgaCGam/0oWXJRhhG
 tmjQ==
X-Gm-Message-State: APjAAAVkHjsnx+w77nwtfRpLEYZsIG9PSYTUIdTjK2kX1GcVir5qXSgX
 sB+hGxglDSdsMoKd8mUrgwzHYStqO7icBN7gjWI=
X-Google-Smtp-Source: APXvYqzqi1md6aMDXZ0aEKmOL6kqcE4x97weuxHXac0i/Nb9bm41r9lGuXyjHxP2jv8v7CweNvkk+3aOrjWKUOQbeuA=
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr7387863wmc.34.1565150567277; 
 Tue, 06 Aug 2019 21:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807105759.58a28ef0@xhacker.debian>
In-Reply-To: <20190807105759.58a28ef0@xhacker.debian>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 7 Aug 2019 00:02:35 -0400
Message-ID: <CADnq5_O4SJexzU2V5+B8tBcTPDU6nR1LakaOMpNng5veOo4guw@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_210249_162597_8C40EA98 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <kernel-build-reports@lists.linaro.org>,
 "broonie@kernel.org" <broonie@kernel.org>, Tao Zhou <tao.zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "dennis.li@amd.com" <dennis.li@amd.com>,
 "alexander.deucher@amd.com" <alexander.deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hawking.zhang@amd.com" <hawking.zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 11:31 PM Jisheng Zhang
<Jisheng.Zhang@synaptics.com> wrote:
>
> On Wed, 7 Aug 2019 10:56:40 +0800 Tao Zhou wrote:
>
>
> >
> >
> > readq/writeq are not supported on all architectures
> >
> > Signed-off-by: Tao Zhou <tao.zhou1@amd.com>
> > ---
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > index 558fe6d091ed..7eb9e0b9235a 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > @@ -272,14 +272,10 @@ void amdgpu_mm_wreg(struct amdgpu_device *adev, uint32_t reg, uint32_t v,
> >   */
> >  uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
> >  {
> > -       uint64_t ret;
> > -
> >         if ((reg * 4) < adev->rmmio_size)
> > -               ret = readq(((void __iomem *)adev->rmmio) + (reg * 4));
> > +               return atomic64_read((atomic64_t *)(adev->rmmio + (reg * 4)));
>
> atomic64_read doesn't equal to readq on some architectures..

What we really wanted originally was atomic64.  We basically want a
read or write that is guaranteed to be 64 bits at a time.

Alex

>
> >         else
> >                 BUG();
> > -
> > -       return ret;
> >  }
> >
> >  /**
> > @@ -294,7 +290,7 @@ uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
> >  void amdgpu_mm_wreg64(struct amdgpu_device *adev, uint32_t reg, uint64_t v)
> >  {
> >         if ((reg * 4) < adev->rmmio_size)
> > -               writeq(v, ((void __iomem *)adev->rmmio) + (reg * 4));
> > +               atomic64_set((atomic64_t *)(adev->rmmio + (reg * 4)), v);
> >         else
> >                 BUG();
> >  }
> > --
> > 2.17.1
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
