Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CCA836AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fHitmCWhgPupiPVigdvlXFkJud80/IfxEQ/BV3/i5c=; b=jo1pN9v7QWMyen
	bUQEHphTFsL1w8XuOvWZo+DBRcWoUQGa/IbpFzfqT64RmjAb98geZZzhxbrPLLW1Q1kbBN1Bt/q+Q
	Lgho5jQlt2INKb40ofLpJBoCWckWpPDroDC9hfUrvNu+97BbeCEzE6RVH5VZ4g4cI5NqUaI3SaUVX
	ayGMB+KUwV3eQx0myj9kPkXifZEUMXqegPm3BMglVWixNLgUvvateV1csakETJ1FtYJw8ld3zGFjq
	NpozSSk1+OVq6RZiLkBrbLu7jhmrv35hGhTe3vLGKeeVSmUfKhaxHVjZ4fXye9uCf0//YHSZdfh0S
	wRi1dLQFIxTWKwpR8yJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2IH-0008M5-5t; Tue, 06 Aug 2019 16:26:37 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2I8-0008Lk-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:26:29 +0000
Received: by mail-vs1-xe43.google.com with SMTP id 2so58645794vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 09:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1l5ZrHi0Yk9YrLdE/QA8qgrMQVeapVUN6J/JOSvAOYc=;
 b=ZBV4oHn5MVJP82WyuT5P3kIh8PCv/GK73DVyI6Q+Iv7zO1Oco9bjpqilJ0cmyPPxx/
 PZMs4cf0csx7Sl3GioHm6+yiGvHAhZ54V/qtkc1PvY2NmjcsMJpXwSDLN30Ta2x8aDis
 vyln7ihg3bJ76am6PXKXDohQCkHRmyewx7KMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1l5ZrHi0Yk9YrLdE/QA8qgrMQVeapVUN6J/JOSvAOYc=;
 b=C5v3uuDv/98e3wAul9wO1DHW3b0VrVewFCL3Z80sHp7b0+8r8/Apk77G6v2T9LozRS
 hCR3ax38sYH4JMZFf5tmWBO05vM+sLwIdkDk2XSuj8lCNY400yqQycMe4urauQZhSCmE
 NZJgvo3NkboX+iVPNxW1DAFij/kCSODok7Mem+YVxcbYrCU0xJmYuBOY7rtYteR710an
 O48Uf5bKyj6JdzV0w3BEVocEnJfBK0INacEcT9hj5tj8Bu1fNhhwF1APdeCQbxojIqFD
 k6niyBUOp4IznR6TfTMYHp5gbOGwJ/4gC0q253tYQ4kg43TF8osKi6tqIpHWe463kViF
 n3GQ==
X-Gm-Message-State: APjAAAV3/0TubFipDl+OR9jLDxYUIhyrf1o2GcJDOeUpKmtpaKz+WYvk
 4hEy/5AsYotnnWJGwxcm+B4QwFNVoLJuCh8lVg3hdg==
X-Google-Smtp-Source: APXvYqwcAz9ahI3UjO9cuqIBc0I2yQDE+A8Mr2TXIaxm06KJMfs4AnTSSTTINyr+iiH0P6wDgJEqM8oppH2++ox+PQo=
X-Received: by 2002:a67:ba12:: with SMTP id l18mr3017326vsn.29.1565108787535; 
 Tue, 06 Aug 2019 09:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
In-Reply-To: <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
From: Rob Clark <robdclark@chromium.org>
Date: Tue, 6 Aug 2019 09:26:16 -0700
Message-ID: <CAJs_Fx4dUNKwd_U7wXMaedvTy6mORdmzL4mi-mGp1UnU_SVnzQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092628_687163_DC96074C 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sean Paul <sean@poorly.run>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 9:23 AM Rob Clark <robdclark@chromium.org> wrote:
>
> On Tue, Aug 6, 2019 at 8:50 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > out to memory later, and so that I don't get a cache hit on
> > > uncached/wc mmap'ing.
> >
> > So what is the use case here?  Allocate pages using the page allocator
> > (or CMA for that matter), and then mmaping them to userspace and never
> > touching them again from the kernel?
>
> Currently, it is pages coming from tmpfs.  Ideally we want pages that
> are swappable when unpinned.

to be more specific, pages come from
shmem_file_setup()/shmem_read_mapping_page()

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
