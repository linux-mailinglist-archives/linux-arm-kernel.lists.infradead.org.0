Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E6D1FF1F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijqbdbPJuvEy85w0+tE2yGh/cqYEqeGRfs5dHIrmRWM=; b=YqfeFZrdFr03uq
	AqXIBhqyMKRlinTrCz5aF2uvdGBf1wfe9LTLBJ6FK6FOqiMPGMAd+2TOBYnM788RO9Hyy+GxFcpAK
	DxYheUJdefKZFArS9Dwbgu1dt3VSwqi7I4fAPdwMGVDz7/T8NhbUTcYbJExAL4LQBa0xBAE1dYuEL
	d9HEui5ExMoG+sHk0Ac81/wYcKwSRxXl3BM4li2jmIkFIkDkdVlsx6zlVBIT2jvArObAL3dGjFhK+
	JuduCD1u/7suvkFZLsGR1sLSqMjGnJrp8zRDAqy0dx5E8ADuURYy0INWRWJ2y2hf6yT6ClxozlrHF
	Q+LRoljLBK5j38EnvWgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltlM-000701-73; Thu, 18 Jun 2020 12:35:24 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltl5-0005Ku-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:35:09 +0000
Received: by mail-ed1-x541.google.com with SMTP id o26so4757113edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=abF6OHbZnM7Q08OSXibHTxV15MlmdycHsIUv8D1tav8=;
 b=h1N4X47aPUwFQwS2Mc5NzhUIk+Bs+X6bsXwxwA2AzzEY+0YaOIwLv36kv2NTGtQKgk
 Io6/9xE4BPRlAhQEAlqdq1+Yw0CvLAcXYane9bTsjd5HKbUOChp/YES+P3hEi4ES2ndB
 uW/W6wCFtAAluYTlm8iFGgu5akQ7Jb3f+w2Fs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=abF6OHbZnM7Q08OSXibHTxV15MlmdycHsIUv8D1tav8=;
 b=aSrFlqcxvLowTu1YDPAhFUQYhSrmqAGYbfHHO7mhBUYb6lTM4B03/GdURmfl+SoFh6
 rAWWGZnj3cF9ZlM90S9fKDUJm77o1z3j5AEIx8AA43EwpKLrvaQ8rrMv8pa+q+SJ24gg
 hA3CBxaKFNC5f6sUzULkZfxNf6QKj/vu/jP/V5sZd4VenarpNsVbtYDi0qNYiCc06Wvb
 YDrRG9b2n3fctA3tnV88wKkKDfml+ffJ8r2HXXkLP9WOngwSXrNKNtcqEh4Drcq9CSZO
 flK7+MMv4S0ob0BrL8nh4zQ7OktJrGjYIqMgeA75AsVaidrZXoJ9GVzIk6xViILK1jv/
 QqRw==
X-Gm-Message-State: AOAM533RMOunqwqNzSpaUDvRmdkSwwuERq8/A5sO/Wqf2o+sF0juLBw2
 h+lpP9eLQnfAmjSO6K8espFnNP6L/VuA8Q==
X-Google-Smtp-Source: ABdhPJyh0CzloTMWaHs3k+Hm2+LiI8Lu9F411JzyJV0jtXJxE3dmKgR2unnkNng8ePQLoubs6Hbt6Q==
X-Received: by 2002:a50:9b16:: with SMTP id o22mr3798264edi.130.1592483703299; 
 Thu, 18 Jun 2020 05:35:03 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id o12sm2083023edq.7.2020.06.18.05.35.01
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:35:02 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id t194so5464650wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:35:01 -0700 (PDT)
X-Received: by 2002:a1c:4189:: with SMTP id o131mr3620052wma.183.1592483701237; 
 Thu, 18 Jun 2020 05:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-12-xia.jiang@mediatek.com>
 <20200521160046.GJ209565@chromium.org> <1592451616.15355.25.camel@mhfsdcap03>
In-Reply-To: <1592451616.15355.25.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 18 Jun 2020 14:34:50 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Axc7RKcY_p-368GC7awx=SRKDTxxjjCibPwSOQ2FXpsA@mail.gmail.com>
Message-ID: <CAAFQd5Axc7RKcY_p-368GC7awx=SRKDTxxjjCibPwSOQ2FXpsA@mail.gmail.com>
Subject: Re: [PATCH v8 11/14] media: dt-bindings: Add jpeg enc device tree
 node document
To: Xia Jiang <xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_053507_574668_026A1EF1 
X-CRM114-Status: GOOD (  29.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 linux-devicetree <devicetree@vger.kernel.org>, mojahsu@chromium.org,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Rick Chang <rick.chang@mediatek.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?TWFvZ3VhbmcgTWVuZyAo5a2f5q+b5bm/KQ==?= <maoguang.meng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <yong.wu@mediatek.com>,
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

On Thu, Jun 18, 2020 at 5:43 AM Xia Jiang <xia.jiang@mediatek.com> wrote:
>
> On Thu, 2020-05-21 at 16:00 +0000, Tomasz Figa wrote:
> > Hi Xia,
> >
> > On Fri, Apr 03, 2020 at 05:40:30PM +0800, Xia Jiang wrote:
> > > Add jpeg enc device tree node document
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > ---
> > > v8: no changes
> > >
> > > v7: no changes
> > >
> > > v6: no changes
> > >
> > > v5: no changes
> > >
> > > v4: no changes
> > >
> > > v3: change compatible to SoC specific compatible
> > >
> > > v2: no changes
> > > ---
> > >  .../bindings/media/mediatek-jpeg-encoder.txt  | 37 +++++++++++++++++++
> > >  1 file changed, 37 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > >
> >
> > Thank you for the patch. Please see my comments inline.
> Dear Tomasz,
>
> Sorry for missing this message. Replied below.
> >
> > > diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > > new file mode 100644
> > > index 000000000000..fa8da699493b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > > @@ -0,0 +1,37 @@
> > > +* MediaTek JPEG Encoder
> > > +
> > > +MediaTek JPEG Encoder is the JPEG encode hardware present in MediaTek SoCs
> > > +
> > > +Required properties:
> > > +- compatible : should be one of:
> > > +               "mediatek,mt2701-jpgenc"
> > > +               ...
> >
> > What does this "..." mean?
> "..." means that compatible name is not just "mediatek,mt2701-jpgenc",
> different project has different compatible name(for example the MT8173's
> compatible name may be "mediatek,mt8173-jpgenc").

The bindings need to list all the currently defined compatible strings
explicitly.

> >
> > > +               followed by "mediatek,mtk-jpgenc"
> > > +- reg : physical base address of the JPEG encoder registers and length of
> > > +  memory mapped region.
> > > +- interrupts : interrupt number to the interrupt controller.
> > > +- clocks: device clocks, see
> > > +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> > > +- clock-names: must contain "jpgenc". It is the clock of JPEG encoder.
> >
> > nit: In principle the clocks should be named after the function the clock
> > performs on the consumer side, i.e. the JPEG block in this case, I guess
> > here it's just a generic clock that does everything, but I guess it comes
> > from somewhere. Is it the AHB clock or something? In that case it would
> > normally be called "ahb".
> I have confirmed with hardware designer that the jpeg clock is not AHB
> clock,it follows subsys clock(because 2701 is the old IC,I didn't get
> the source name).It has the same source with venc clock.We can see that
> the clocks = <imgsys CLK_IMG_VENC>, Should I name it "venc" or the
> orignal "jpgenc"?

The clock name of the device-side bindings is the name of the input of
the device itself, no matter where the clock comes from in the SoC. I
guess if there is no specific purpose of this clock, "jpgenc" is as
good as any other name (e.g. "clock"), so feel free to keep it.

> >
> > > +- power-domains: a phandle to the power domain, see
> > > +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> > > +- mediatek,larb: must contain the local arbiters in the current SoCs, see
> > > +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> > > +  for details.
> >
> > I believe this isn't necessary anymore, because larbs are added
> > automatically by the MTK IOMMU driver using device links. +CC Yong who
> > worked on that.
> Yes,I have confirmed with Yong that he will help me to modify this.Is it
> ok that I keep the orignal larb code?

I guess it depends on the order of landing the patches. If we intend
to land this series before the larb removal series, the binding should
stay as is. If the other way around, this should be removed. Please
coordinate with Yong.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
