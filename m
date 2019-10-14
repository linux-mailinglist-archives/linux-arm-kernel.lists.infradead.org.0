Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE49D5EA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rJTfqAxhnFb+WavGwv9IoJRaFPIuQqiA1sePr6gGpY=; b=VQxWZ2aB7rQ0nE
	SzXOPD55I/DDKpobP4f+FWtgeMejIpXFQ72LGrIJNHiybire7Q4bFU6QCzIg2R26jouH7HU91qFF7
	F6bg+96N++dSJkk7M5/kN/weyLmxH5bO5RuJ1eVhlhnmab0r4r307JOiiSMkafutcPeA3u3h6LJdA
	qacusk4mAnMm+bj6PcAGwgf3SC7edfw3Jga31qkkGZHk0nDtJlR1LqW6n0bYq3li8J76VGR48oDNh
	089/Y7Mr8nsRxvj3WFOPOOkb/Ka2gm7Q3mQCJYYv8aBqhKq2kbvDy2K1zaPZyCj/gaSsyqMK/0knc
	sfyFmM1YoVbl8Ow689Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwXZ-0002V3-9g; Mon, 14 Oct 2019 09:21:21 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwXD-0002AW-Nq
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:21:02 +0000
Received: by mail-ed1-x542.google.com with SMTP id a15so14162301edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 02:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cXLWelx1c959PYIdEEkJBzLAagmb1+o1jiOeE3S2Jmo=;
 b=JsLdeHhIRe3oHC8PeIpbEJtFRSvoNbsnMsSWepL1AiDINUbn1COGw64DIU9mmyXZoO
 NBrHPLeMDoqCMexMi5WjEQhZerI/sz80vChKHilzZKC3R59MCfjWLraYetWOmq8e0T4c
 p1naaUgCG6LsKYUH4gDnaJocNjtzg3Qpef/tY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=cXLWelx1c959PYIdEEkJBzLAagmb1+o1jiOeE3S2Jmo=;
 b=DUdY/DzNldcjjc9pYJzx4txGU/ekCIGyLG4qbcLMd0XLkGKpGsmzyoXj/mEhS9cuWh
 utgn/IMA4ZuulyPGQ46P918J9y8XTOK8O8Vz/Df6NaQ6ZBaIAaiSDWK0z08IyO293WnJ
 /MiRlYiPyyyC2nDx0DqmmFhtVjXL61ASOFl0zv/jmQjkLWdz2B0/ml2AnFuKLChuf7pN
 z1Und/jKG9Po3ODUH59EAcp2ZCtk8wHbzQc7oReD+7uNyHEH0b12fUYkU9X7pMKdQMLK
 akSt6EXuxT6XxdsRjpt/MaffQaw1hYEFW0pvLUvWy6P/eGhnmOLCBIYnblKOtWTrowHz
 ndQA==
X-Gm-Message-State: APjAAAUhDKfhtiIUjE5BL3sP9MH/s86DVMzsNUjNUYiT3h8k4ntOSvV3
 vkm33WICpbevh+k7Nm3ayJuq/IiJZPo=
X-Google-Smtp-Source: APXvYqzee5P3rg6HkNKJq083ORWi71hjKU8UGred4yM1dC0aXUaTqD5GAOQVJDwL94rFb3UhmpeydA==
X-Received: by 2002:a17:906:7f04:: with SMTP id
 d4mr28150017ejr.178.1571044857729; 
 Mon, 14 Oct 2019 02:20:57 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id a50sm3033294eda.25.2019.10.14.02.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 02:20:57 -0700 (PDT)
Date: Mon, 14 Oct 2019 11:20:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Brian Starkey <Brian.Starkey@arm.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Message-ID: <20191014092054.GK11828@phenom.ffwll.local>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
 <c9d4f840-a3da-0f40-3a1c-c4aa522daf0f@baylibre.com>
 <20191011105559.clttghy52wfdmb34@DESKTOP-E1NTVVP.localdomain>
 <CAKMK7uHEWQiXYE7RE7TffHEHMys=LTYcNeK+iAX3qiS-c2PNjQ@mail.gmail.com>
 <20191014091118.jfa7xxh2e7kxu4ff@DESKTOP-E1NTVVP.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014091118.jfa7xxh2e7kxu4ff@DESKTOP-E1NTVVP.localdomain>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_022059_859558_C1E8F74C 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Daniel Vetter <daniel@ffwll.ch>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Ayan Halder <Ayan.Halder@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 09:11:17AM +0000, Brian Starkey wrote:
> On Fri, Oct 11, 2019 at 07:25:02PM +0200, Daniel Vetter wrote:
> > On Fri, Oct 11, 2019 at 12:56 PM Brian Starkey <Brian.Starkey@arm.com> wrote:
> > >
> > > Hi,
> > >
> > > On Fri, Oct 11, 2019 at 11:14:43AM +0200, Neil Armstrong wrote:
> > > > Hi Brian,
> > > >
> > > > On 11/10/2019 10:41, Brian Starkey wrote:
> > 
> > > > > Are you sure the GPU supports other orders? I think any Arm driver
> > > > > will only be producing DRM_FORMATs with "BGR" order e.g. ABGR888>
> > > > > I'm not convinced the GPU HW actually supports any other order, but
> > > > > it's all rather confusing with texture swizzling. What I can tell you
> > > > > for sure is that it _does_ support BGR order (in DRM naming
> > > > > convention).
> > > >
> > > > Well, since the Bifrost Mali blobs are closed-source and delivered
> > > > by licensees, it's hard to define what is supported from a closed
> > > > GPU HW, closed SW implementation to a closed pixel format implementation.
> > > >
> > >
> > > I hear you. IMO the only way to make any of this clear is to publish
> > > reference data and tests which make sure implementations match each
> > > other. It's something I'm trying to make happen.
> > 
> > *cough* igt test with crc/writeback validation *cough*
> > 
> > And you don't even need anything that actually compresses. All you
> > need is the minimal enough AFBC knowledge to set up the metadata that
> > everything is uncompressed. We're doing that for our intel compression
> > formats already, and it works great in making sure that we have
> > end-to-end agreement on all the bits and ordering and everything.
> 
> Yeah this was my original thinking too. Sadly, a decent number of the
> AFBC parameters can't be tested with uncompressed data, as the codec
> kicks into a different mode there.

Hm right I guess some of the flags/parameters only matter if you deal with
actual compressed data. Still, better than nothing I guess - this should
at least catch stuff like color channels wired up the wrong way compared
to linear, and fun stuff like that.

> > Ofc
> > it doesn't validate the decoder, but that's not really igts job.
> > Should be possible to convince ARM to release that (as open source, in
> > igt), since it would be fairly valuable for the entire ecosystem here
> > ...
> 
> I fully agree about the value proposition.

I'll be waiting for patch from arm then :-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
