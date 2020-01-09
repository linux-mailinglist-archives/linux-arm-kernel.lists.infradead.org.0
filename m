Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2CC135ECD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:56:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJvdtxVg9zfTB1hatB8Y379o9Te9iJD2p5Saj8npYg0=; b=JEkZNlSQXS5ZSi
	TjNWf+8QlYftOxZIFp6NDC3NPtagwHLmwBPkFuozIr3XSrfVyrEMkq+9aksbSFSz+/+OPF4if9a++
	f56JZRmnmIZz10RfqGasvOwzje5qDUBK0DeJ3FnVkFvpt3y+/KnBN8rR2rVZVrLNKS/frAoy3DoJ3
	xe1vIQBxOoZCKbci+V8cpMuWx1o78QU60C8SIOwBwfeUcQjrZB2NcbAyEmwSybY4dDv0/hSp8pDda
	1nfrYceiyMayeYOt1rOutbT97R9aJlUVBnEakCHa5ksUMIVYGjszVS7c97cZadtzT03MGfqP3C5RX
	V+fHXbx6CfC7zYsG4A8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipb75-0003rP-J5; Thu, 09 Jan 2020 16:56:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipb6x-0003qN-CC; Thu, 09 Jan 2020 16:56:44 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 901EE2077B;
 Thu,  9 Jan 2020 16:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578589002;
 bh=9oyg27saFaqgN0kNufIh+bWG6/4Iwy6kaQ1n0BzczVk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2CosUSQhDeszdClob89wkM5qUuLn+NGmxavbwwJtOjFrz9J9rb5rJcMgFQI1xDAQ4
 fUXa0Ef1aePHujZvmpoUW/06Em/BF7VVOjDi5q5fkKIAJuUjWK6nHJS6vh0B+JXDfJ
 atgBkzj5WtLXXdJkwB2Qpsf8KlWlFaaxn/mc4FF0=
Received: by mail-qk1-f170.google.com with SMTP id z14so6604736qkg.9;
 Thu, 09 Jan 2020 08:56:42 -0800 (PST)
X-Gm-Message-State: APjAAAUsAwdtpZC8kaSn2p4LFNQjTzCvpN4rnSA4k+6cB2pGhD8UKxzO
 ettzBIYH5CmpHAb5QfXlnku1sljmz33gnSMcIQ==
X-Google-Smtp-Source: APXvYqwejonPhLn1c6g5UIO7dw/MXR05QYRJuuZwXtZ9dn62B4O5MWFoIh0m1SoNLfPeYaTMJ9QV835I1LSeJT6q4Lo=
X-Received: by 2002:a05:620a:1eb:: with SMTP id
 x11mr10791122qkn.254.1578589001636; 
 Thu, 09 Jan 2020 08:56:41 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
 <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
In-Reply-To: <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 9 Jan 2020 10:56:29 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKvNBCVkiE4zKn0aXdrV4Ncx2bB6+KRpM+aPpMVzS4XbQ@mail.gmail.com>
Message-ID: <CAL_JsqKvNBCVkiE4zKn0aXdrV4Ncx2bB6+KRpM+aPpMVzS4XbQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_085643_455177_45999C8B 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 4:52 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> On Wed, Jan 8, 2020 at 9:23 PM Mark Brown <broonie@kernel.org> wrote:
> >
> > On Wed, Jan 08, 2020 at 01:23:34PM +0800, Nicolas Boichat wrote:
> >
> > > Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
> > > regulator for their SRAM, let's add support for that.
> >
> > > +     pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
> > > +     if (IS_ERR(pfdev->regulator_sram)) {
> >
> > This supply is required for the devices that need it so I'd therefore
> > expect the driver to request the supply non-optionally based on the
> > compatible string rather than just hoping that a missing regulator isn't
> > important.
>
> That'd be a bit awkward to match, though... Currently all bifrost
> share the same compatible "arm,mali-bifrost", and it'd seem
> weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
> idea if any other Mali implementation will require a second regulator,
> but with the MT8183 we do need it, see below.

The current number of supported bifrost platforms is 0. It's only a
matter of time until SoC specific compatibles need to be used in the
driver. This is why we require them.

It could very well be that all bifrost implementations need 2
supplies. On chip RAMs are very frequently a separate thing which are
synthesized differently from logic. At least within a specific IP
model, I somewhat doubt there's a variable number of supplies. It
could be possible to connect both to the same supply, but the correct
way to handle that is both -supply properties point to the same
regulator.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
