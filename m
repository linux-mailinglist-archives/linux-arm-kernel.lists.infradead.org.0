Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FF3F6EDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMl8dUff5FLdBcoOJsbNJrXqmSF3jEnoOlf/aEDjttY=; b=Y6OH94Avu98BhC
	wE2nVgfeX8jzbE/JzpZ94DUPpIAYLEQTMZlNj3bmxCzT7w6Xj24kpvNye+L5/+8F2UjJ9I1WWWAs4
	HZDOXnwCrPwaGrY/z3Aj6erJ04lBp/pTx2uu2/77HRV0ns8grFLoKQv6+Gf5pYi1XmS1Df6Lti29x
	0kDbW4Fx10juN+FFuqq9D40ZjY/TydpLFDlgUgKACbKJph4iA/JKHz2UEDyDfT9Gqtmpeu9wjlEtN
	78b+1W4G1Y0xtVlqI7ms42vx8sEBWOmyXfkMNWpMANIqtoE4EBnhbJhlTR1UHQFpAaFzEyrSIKW98
	bP5jrh25WhHyrjZHQL8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3hp-0006N2-8g; Mon, 11 Nov 2019 07:01:45 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3hc-0006LJ-Ry
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:01:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id a24so7409766edt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 23:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=F3TxF+AJbjTFe9CSJ0NILNUnMGyyn7tR/jfpwQuTY6o=;
 b=YMByG+QA9BSSONXzijgH3lT/HJSfJ63osPgOWzCWCYvhB/KtuJhyoZum3mgB+NjmrG
 rJWRy9UXVTVCcWOm/sEn21bSpo0SlcT++UxUxkrfFLaNJgvrQEbXDbDcFcFKygsgPy+6
 Vcou70IW3wEv489ErEOzEfURMA/ZBjdNOisUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F3TxF+AJbjTFe9CSJ0NILNUnMGyyn7tR/jfpwQuTY6o=;
 b=qA+8g7AegtzcDO03hFfATrnRCc9edIL85PVqyU/rFrESkUwiRs6r67CyB1vCwCebSM
 U6oixBHsTxMFwBOLsJr2hpBlwhZmQOsOR8RJNanduhFCWF7pzVQ373tb0z5OC6S3JOhn
 kE/wRPy9MvuHIgTDbMJLh2/KEqhVuEGa5AXo3LRgyfkeyaFauh7Qa6zLMYqJTOClb/m1
 UnG2e/ZZuII2t/uD/CwsZjYsoTXbfnTV/4ksMSm8aOht6vCWJHSifS/dAbSoIcdnrzZ+
 NK3uzAtbKk+klOhe9Vlah/ikTVeDom3SoN+wz5Q7ikYRJQWsCkkFHWVzqlU9g98UBHEz
 tpoQ==
X-Gm-Message-State: APjAAAWVT6VvImWGkEHVV5BHCPp9lqgq6/CS5kRfqBWIOBiL1mGaNDbD
 HGkP/yFiTFwUR92sWZ/q00vVuqdHBxPuVA==
X-Google-Smtp-Source: APXvYqzkBRyckjHrgo6AYHrturzQDfchMqqw5CsEVyfFKMTsVByLtjEPzNf99p/iWUsg+C0jhdrkVw==
X-Received: by 2002:a17:906:938c:: with SMTP id
 l12mr21040342ejx.135.1573455690330; 
 Sun, 10 Nov 2019 23:01:30 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id q4sm474317edr.58.2019.11.10.23.01.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Nov 2019 23:01:28 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id z10so8026467wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 23:01:27 -0800 (PST)
X-Received: by 2002:a05:6000:1206:: with SMTP id
 e6mr5641649wrx.113.1573455687257; 
 Sun, 10 Nov 2019 23:01:27 -0800 (PST)
MIME-Version: 1.0
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
 <20191017084033.28299-6-xia.jiang@mediatek.com>
 <20191023103945.GA41089@chromium.org>
 <1571906317.6254.64.camel@mhfsdcap03>
 <CAAFQd5DUF90daBAe96Vu46z9HD43AYG+9rK-_r_aWYey8GxpmQ@mail.gmail.com>
 <1572229558.27439.6.camel@mhfsdcap03>
In-Reply-To: <1572229558.27439.6.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 11 Nov 2019 16:01:13 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DWZXru=a6JvTD8M1aJw8c48MK-vLPXvOmt-O4gVoPGVQ@mail.gmail.com>
Message-ID: <CAAFQd5DWZXru=a6JvTD8M1aJw8c48MK-vLPXvOmt-O4gVoPGVQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] media: platform: Add jpeg dec/enc feature
To: Xia Jiang <xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_230132_903157_4D7F9263 
X-CRM114-Status: GOOD (  35.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <rick.chang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Mon, Oct 28, 2019 at 11:26 AM Xia Jiang <xia.jiang@mediatek.com> wrote:
>
> On Thu, 2019-10-24 at 18:23 +0900, Tomasz Figa wrote:
> > On Thu, Oct 24, 2019 at 5:38 PM Xia Jiang <xia.jiang@mediatek.com> wrote:
> > >
> > > On Wed, 2019-10-23 at 19:39 +0900, Tomasz Figa wrote:
> > > > Hi Xia,
> > > >
> > > > On Thu, Oct 17, 2019 at 04:40:38PM +0800, Xia Jiang wrote:
> > > > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > > > decode and encode have great similarities with function operation.
> > > > >
> > > > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > > > ---
> > > > > v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,
> > > > >     one for decoder.
> > > > >     split mtk_jpeg_set_default_params() to two functions, one for
> > > > >     encoder, one for decoder.
> > > > >     add cropping support for encoder in g/s_selection ioctls.
> > > > >     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.
> > > > >     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
> > > > >     specification.
> > > > >     move width shifting operation behind aligning operation in
> > > > >     mtk_jpeg_try_enc_fmt_mplane() for bug fix.
> > > > >     fix user abuseing data_offset issue for DMABUF in
> > > > >     mtk_jpeg_set_enc_src().
> > > > >     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT
> > > > >                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from
> > > > >                         'int' type to 'unsigned int' type.
> > > > >                         fix msleadingly indented of 'else'.
> > > > >
> > > > > v3: delete Change-Id.
> > > > >     only test once handler->error after the last v4l2_ctrl_new_std().
> > > > >     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.
> > > > >
> > > > > v2: fix compliance test fail, check created buffer size in driver.
> > > > > ---
> > > > >  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 731 +++++++++++++++---
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
> > > > >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
> > > > >  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
> > > > >  7 files changed, 1004 insertions(+), 146 deletions(-)
> > > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
> > > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
> > > > >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> > > > >
> > > >
> > > > First of all, thanks for the patch!
> > > >
> > > > Please check my comments below.
> > > >
> > > > My general feeling about this code is that the encoder hardware block is
> > > > completely orthogonal from the decoder block and there is very little code
> > > > reuse from the original decoder driver.
> > > >
> > > > Moreover, a lot of existing code now needs if (decoder) { ... } else {... }
> > > > segments, which complicates the code.
> > > >
> > > > Would it perhaps make sense to instead create a separate mtk-jpeg-enc
> > > > driver?
> > > >
> > > Dear Tomasz,
> > >
> > > Thanks for your comments.
> > >
> > > My reasons about the architecture of jpeg enc driver are as follows:
> > >
> > > The first internal design and realization of jpeg enc driver was a
> > > separate driver, but found that mtk_jpeg_core.c and mtk_jpeg_enc_core.c
> > > have lots of reuse.Because that  the core.c mainly contains realization
> > > of v4L2 ioctl functions and some logic which are high similarity between
> > > encoder and decoder.
> > >
> > > The jpeg encoder and decoder are two independent hardwares exactly, so
> > > the code about hardware specification(register setting) are
> > > separated(mtk_jpeg_enc_hw.c and mtk_jpeg_dec_hw.c).
> > >
> > > As for 17 existing code segments contain if(decoder){} else {}, they are
> > > not complicated IMHO.The complicated(multilayer nested) functions are
> > > separated in V4 version as Hans recommendation.
> > >
> > > By the way,the upstreamed module s5p-jpeg
> > > (https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/s5p-jpeg/jpeg-core.c#L1998) also use encoder and decoder mode in the common core.c, but their encoder and decoder are the same hardware.Maybe our jpeg enc and dec are designed into one hardware in the future.In that case the current architecture is more compatible.
> > >
> > > So I prefer the current design.
> > >
> >
> > Would you be able to give some numbers to show the code reuse to
> > justify using the same driver? From my observation, a new driver would
> > result in a significantly cleaner code. If there is a further hardware
> > architecture change, that would likely require another driver, because
> > it wouldn't be compatible with existing programming model anyway.
> >
> > Regardless of that, if we end up with reusing the same driver, I'd
> > like you to fix the issues existing in the current base before adding
> > the encoder functionality.
> Dear Tomasz,
> I've counted about 1000 lines of code that can be reused.The reused code
> is 75 percent of the original code.
>
> If you agree to reuse the same driver,I will fix the issues existing in
> the current driver.

Sorry, I was out of the office.

Okay, let's reuse the driver. I guess the hardware programming part
itself is smaller than the V4L2 boiler plate needed for it and that's
where the 1000 lines of code comes from.

The first step I'd suggest then would be running the latest
v4l2-compliance, from the master branch of v4l2-utils [1] and making
sure there are no issues.

Then check if any comments I posted to the new code added by your
patch apply to the existing code as well and fixing those issues in a
prerequisite patches, at the beginning of the series.

[1] https://git.linuxtv.org/v4l-utils.git/

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
