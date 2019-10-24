Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC368E27D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 03:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdJh5EsyBm8tu8tEjsfZSyS3VC1yJVZs7X9BsRQbxzs=; b=iAxofyBj/PxEhm
	Lkoe1LqFq5wew5NHYOKYwULPJitWsdfS2YhV3hu4ls04DWudITxKvBnOnt7QTlt+aAQ7uyOLCroZh
	zp6nT+iKRSHFud//ppMDIsDy12GScdtxeCIuAV9PUX2Hzk42KjGPqNah/rKpQc8Kzfs09aJIYExAo
	hr3GBJNTDbiZwn5NIQuobvKBnCzlVA/UfEgz8IbOQfRS+NCiv2j9Lw7Zc5k8Z1gAgMBIUPTcT77Zr
	Qe27MavQN8iM9Dlz7Ua7R9UqWJI9kwoTdB55mMofmU7yBfpA1ytCTlOzm6rHcUapeDcHyVKDjx2Bg
	rwFfFi0vPY4m8Zi/nf4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSEG-0007e9-GS; Thu, 24 Oct 2019 01:47:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSE0-0007cY-8E
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 01:47:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id b128so14081643pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 18:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r+v++LJz2UtADy1cS2OkPl2XbtGtt1rFLT7PbQVU178=;
 b=FfyvblohnumehZApPiCnRaZxuyFEHdqk5OyDTBEOP+BfOTBvUjkFq6SSx4hsS/iPs1
 omQJinbl9mu6pQnGVTsqhimfp9y+eLEp1dgFM5P58PG5vQz9PKTPuIqnjJtYLtWLFVTZ
 8tAL70O/gmliWAM0nMpyEBRzzKwHsjQKI+Mso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r+v++LJz2UtADy1cS2OkPl2XbtGtt1rFLT7PbQVU178=;
 b=EVDdrQJHZFvGB3KynlzPAFyIqBy563ecY0vJk1fXE6+yEFyTzjtxs+g5AHQsJVyj49
 edgtmxQxCvZTzaFHlbox0RCMjqDMTWwyi6+eLsefebLHMe/w+HOfAvF0wjMi31fTHiCX
 UBOeYhZc+jc4lH6iYPvUftBqh+gH74kAeSRGDSYdJIJCgN/C7JggGqhrMGFf0ZI7T5b5
 hcZ09OF1W2mk4l+Gjf/ZgIh+IOmHPQ8jUNRgZ5YsjseKxbYVrw8n3+qSaHZdjZZPMhUT
 gXjVgAuIrtPYiiBHRuO4yewg1D+zu56DTaKjM11wl4njAeXI7wBrf90Egl5RSbMixM7P
 ghHQ==
X-Gm-Message-State: APjAAAVt7I3tE8OEnS8hFqTyBN3GnSCSCJhJpPgiytA8rQL5zco55tVj
 qkgh5SS0+qhoroEUTomUlGszLA==
X-Google-Smtp-Source: APXvYqzjuQPwTlwiGWQJArevnuNtf/BUZhD73XiE/Bfu4lxll4NKeL0JCsdquj30nMOYWLPGj/0JHw==
X-Received: by 2002:aa7:9105:: with SMTP id 5mr11748563pfh.245.1571881658843; 
 Wed, 23 Oct 2019 18:47:38 -0700 (PDT)
Received: from goma (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.gmail.com with ESMTPSA id y138sm25464902pfb.174.2019.10.23.18.47.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 18:47:37 -0700 (PDT)
Date: Thu, 24 Oct 2019 10:47:33 +0900
From: Daniel Palmer <daniel@0x0f.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
Message-ID: <20191024014731.GA3731@goma>
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191023200228.GA29675@bogus> <20191023224357.GA26445@goma>
 <CAL_JsqKTiieO_7gM4YNGV-BAT67Mi+PX4Gqyyd7nowZsjhnFqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKTiieO_7gM4YNGV-BAT67Mi+PX4Gqyyd7nowZsjhnFqQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_184740_408603_B893A6BA 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 06:45:29PM -0500, Rob Herring wrote:
> > I used the sunxi file as a template and thought they had some
> > reason to do that. I'll change it to just GPL-2.0.
> 
> That wasn't a choice, but dual license it please.

Will do.

> Sounds like you want:
> 
> items:
>  - const: thingyjp,breadbee
>  - enum:
>      - mstar,infinity
>      - mstar,infinity3
> 
> If one board can do both chips. Though if the same PCB is populated
> differently beyond the SoC, then maybe 2 board compatibles makes
> sense.

You can take one chip off and swap it with the other without any PCB/component
changes but as I've been working on both chips there are a few differences
coming up that means you can't use the same DT for both configurations.
For example the ethernet phy needs to be configured differently, the i1
SoC has less instances of the DMA controller blocks and so on.

The version of the chip can be detected from a register and I had considered
patching over the differences based on that but I couldn't find an example
of doing it within the kernel. So I'm detecting the chip version in u-boot and
loading the right DT there.
 
> Why not use the part numbers (msc313...)?

I had initially done that when I thought i1 was the msc31e and i3 was the
msc313e. For the i1 the only part I have found so far is the msc313 but
the i3 is a series of around 4 or 5 different configurations of the same SoC 
with differing amounts of DDR and pins. This is like the AllWinner V3S and 
S3/S3L where the same V3 SoC is packaged differently. As there is no source
of this information that appears on a google search I've started documenting
it at http://linux-chenxing.org/

I think the only place the actual chip model will need to be used will be a
compatible string for the pinctrl driver to setup the right pin numbers.

Thanks,

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
