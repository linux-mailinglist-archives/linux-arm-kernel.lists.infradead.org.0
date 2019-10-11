Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695DED4690
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghxnJMSyLB7rpeehMSTxtbCSCAnd0ykDYwMoTL7Z9vo=; b=QHMEO/ZNGVW7Fu
	JFft6HGQ8ZJspZe4m4P9aYw38IISUwHgPWW74Uo7mvkimMcUNLPm101aMUabxlhKYVrn38KUrL85W
	7CT/bNwPEeHg91ObVosumvetb/n8cK3N4AiUYzf8p6yQeglqXmYZZuo6nf/nyPfsP0YbbMmWjTWHR
	rYfmUyasWbTqDoMTOh5XcdHqLbcvIqwnxOJQGqn1i5M8PFgUS9+CXBGX/DQ9IXnJAW5zRCMAzBpIf
	Sf0ZgPY6zVgn+ufTol8qkRaHof1j2vWu+45RrP0jSNw0StIRyndicv5zqui9wAx/SVJccneypW9x9
	Lu/E4hbX6WFPQyn8L7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyfM-0004Zp-O4; Fri, 11 Oct 2019 17:25:24 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyfC-0004YF-49
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 17:25:15 +0000
Received: by mail-ot1-x342.google.com with SMTP id 89so8591544oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=odWazgo9+n3Ch+thWJ0an87IwtkMdZ6ngV5ze1k18zE=;
 b=H0nofUIFEeA4klPEIMnfI+5qb9TMGr9a4DwMCKL+XpuFlPUXR63MhqtsFUn3npznu2
 TjHCnbuvrMRlkbr3TbwlhCpAb90LfZnwYdwbrq4dDYY82811VeiymGb3mcz2AigV1fFh
 BhpVMkiBV1NRDPdiNHl2mNhGp/pbvZoP0/ucc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=odWazgo9+n3Ch+thWJ0an87IwtkMdZ6ngV5ze1k18zE=;
 b=udgBoCICrmOzxN3yEMe3ytw2iiJdOvl2ZtFz9tIj2xgJvXRVEwmVKwo/r+e1sBp6GU
 DiPwzpFOCiXLRnOhPwHOEuobfw4Q519fnsSbB7/90ucYSC8Yo5lHTkovisRZFQApTR1n
 apr3uwllydfWOWtlr7tkkYZiBO7a53pn6UoJ4xBP+0WjOdZKen2ZC7V9nuSlBCUtVoG4
 yOtAWFVayjlu+qho6nvgmC3aJ1vDEi/yzhpxSToGLhlty9d+7SJMhwosZOxivA+kZ1TS
 itXejt66yhky64KNGcGeHWHcxmtO8zIyVyN1XCzVsuEjpZ/9WcFs1fPhct6YbMDPR+AH
 G26w==
X-Gm-Message-State: APjAAAU637zVuUYNknLgRDd7xLw+BgsI6gStwgkqxeb4EgPJ3mDmM2OC
 JjP/VNCKNTQ9SFJfD2niasUT38etjS+6t3bacYjhmQ==
X-Google-Smtp-Source: APXvYqzwmfvrl3WVBOL9MDA8ra+rkX7wVoQ99gh1LuWUxtlKyXDnDXBFO05EmzaYllZzwhYPHQbvH20Ibu4HYvdtQdQ=
X-Received: by 2002:a9d:6284:: with SMTP id x4mr4886452otk.281.1570814713062; 
 Fri, 11 Oct 2019 10:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
 <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
In-Reply-To: <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 11 Oct 2019 19:25:02 +0200
Message-ID: <CAKMK7uHEWQiXYE7RE7TffHEHMys=LTYcNeK+iAX3qiS-c2PNjQ@mail.gmail.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
To: Brian Starkey <Brian.Starkey@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_102514_229468_0B803D08 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: nd <nd@arm.com>, Neil Armstrong <narmstrong@baylibre.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Ayan Halder <Ayan.Halder@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 12:56 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
>
> Hi,
>
> On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
> > Hi Brian,
> >
> > On 11/10/2019 10:41, Brian Starkey wrote:

> > > Are you sure the GPU supports other orders? I think any Arm driver
> > > will only be producing DRM_FORMATs with "BGR" order e.g. ABGR888>
> > > I'm not convinced the GPU HW actually supports any other order, but
> > > it's all rather confusing with texture swizzling. What I can tell you
> > > for sure is that it _does_ support BGR order (in DRM naming
> > > convention).
> >
> > Well, since the Bifrost Mali blobs are closed-source and delivered
> > by licensees, it's hard to define what is supported from a closed
> > GPU HW, closed SW implementation to a closed pixel format implementation.
> >
>
> I hear you. IMO the only way to make any of this clear is to publish
> reference data and tests which make sure implementations match each
> other. It's something I'm trying to make happen.

*cough* igt test with crc/writeback validation *cough*

And you don't even need anything that actually compresses. All you
need is the minimal enough AFBC knowledge to set up the metadata that
everything is uncompressed. We're doing that for our intel compression
formats already, and it works great in making sure that we have
end-to-end agreement on all the bits and ordering and everything. Ofc
it doesn't validate the decoder, but that's not really igts job.
Should be possible to convince ARM to release that (as open source, in
igt), since it would be fairly valuable for the entire ecosystem here
...
-Daniel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
