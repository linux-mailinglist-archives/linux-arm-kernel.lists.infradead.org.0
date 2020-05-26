Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A0E1E20E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIS8hMtz7E1DTx/eN2IsiaL26vX8iy1Un6VFRajaJ7Q=; b=hmE4rgD4VD+BJz
	7xkVH9+cQNNE7mEfJZ8KhuYN2i7VDs8jhEbyMYXtoBMeSlVtBlq4lz++Q9cAQt5HJG0tTTfabwbM7
	aKXvzt209UTrxMJGjzkXPVw5H3Mpar1Ic5IhSoEa5yUL1iCe5CwrGmRRXVpGkdVx6Q2/9Llu0XAv8
	niCEHPN41TH7OYLX6uzkr71DfyYihT1vHOYVdjSJJyhFpU9jvWC5d6Kdmc5osF6MQT2grePSsc5u/
	xqeKrMe1zIS9CMjTPDtTsV4HGHLyF/T5w49Qle/OCw3SuXqVGDEV+4ehTF9uuvIi/fTI6RLuJ1x1U
	+HrWmAIt/H27V//E2iqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXoY-0007eK-3Y; Tue, 26 May 2020 11:32:10 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXoO-0007dz-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:32:02 +0000
Received: by mail-ot1-x342.google.com with SMTP id 63so15959170oto.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=edTucrrhXN6V4llb+iJ6E89JH542mkCUYUO4cFFBSq8=;
 b=aGN8/fYlBZtC/O0HPJioAJDFXEl1EKIqh48gVGEseZge1RSD+6ZJ+Vd1Ygk7WsUiBQ
 2koLpbOnSxVT+v4ugow+jFX2DiKRsHvM/7p+yEm/ZUa0ijbY2x4j1GqJXf51BsbzMDnD
 BQSFbmNzjABlRFcmrqZN1EwG4aypCM6kLqRH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edTucrrhXN6V4llb+iJ6E89JH542mkCUYUO4cFFBSq8=;
 b=Isphpb3ydkXiJDyYSb9QDLU+YGJeiYw4EPOx8f2sn1+LBE3L4WB+jtBaDLfh7nWspG
 +wtnEYno6XKCIHog6Ka9z5PmEZd89aDGtO9gzfzlLOPcTXGdVDby7OIX4FO76sPqwhyP
 WRk76dnbOIvCPiMzKk79VDxF0+7YyskvzjVOEKoSXCapPL4h8tEckdJ1v6o1YeGFzcK3
 25kDAYvdq6+KyCGTRuNywokZ9uxDmstfBOIvqfk8eLJz+97oe3itN4wGOAjFiLXUPApB
 uQkW9B6BRdlJtSe8Vwgsr+a3UvkF3augyJJDmQ+Oa5UD4xH915mrrXDHIJSmh+gw35+d
 E5Iw==
X-Gm-Message-State: AOAM532BGfDwdqXNgVmSgBV0poErhGXxU3bmkQWhlcxjb7I34Y6lBLq+
 JDAwFNQuEFNOWhG8HPCm9/UQpG77yGYg7q9oC2JP3QQT
X-Google-Smtp-Source: ABdhPJzCrvWpIr7oiZie/ZO14zr8xx2eKHZLh/b7YFaD0J7MeUVnKhbsTaugx/2157KZB7xg+CLgr312FbFucLK+W50=
X-Received: by 2002:a9d:600e:: with SMTP id h14mr497056otj.281.1590492719014; 
 Tue, 26 May 2020 04:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204@eucas1p2.samsung.com>
 <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513134741.GA12712@lst.de>
 <83d04017-c6f2-d714-963c-ffa9c7248790@samsung.com>
In-Reply-To: <83d04017-c6f2-d714-963c-ffa9c7248790@samsung.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 26 May 2020 13:31:47 +0200
Message-ID: <CAKMK7uFkvhytb9vKng+2_LuaLFvnEB_5e2s5EAWnVgA9VjRwZA@mail.gmail.com>
Subject: Re: [PATCH v5 00/38] DRM: fix struct sg_table nents vs. orig_nents
 misuse
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_043200_715835_151CCE0A 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 9:01 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi
>
> On 13.05.2020 15:47, Christoph Hellwig wrote:
> > I've pushed out a branch with the first three patches here:
> >
> >     git://git.infradead.org/users/hch/dma-mapping.git dma-sg_table-helper
> >
> > Gitweb:
> >
> >     http://git.infradead.org/users/hch/dma-mapping.git/shortlog/refs/heads/dma-sg_table-helper
> >
> > and merged it into the dma-mapping for-next tree.  Unless someone shouts
> > the branch should be considered immutable in 24 hours.
>
> David & Daniel: could you merge all the DRM related changes on top of
> the provided branch? Merging those changes separately would take a lots
> of time because of the dependencies on the sgtable helpers and changes
> in the DRM core.

We generally freeze drm for big rework past -rc6 (small drivers tend
to be a bit later). I think simpler if we just land this in the merge
window and then smash the drm patches on top for 5.9 merge window.

Or all in in the same topic branch, but feels a bit late for that and
making sure nothing breaks.
-Daniel

>
> Best regards
> --
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
