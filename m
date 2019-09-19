Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9A8B7A2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibAHzt4p4vdk8T3yHpd5QQvoFBTg22MZHXNrCgPpE7Q=; b=JwraVatWuHEbuD
	c/IfFoi1bVEspL5muWeYAJ1DuyKVgY34RYZ7OsbuarTXGLxL9F7ItjgqAzi9rV/AVim5CDloHSOcV
	e35G9DVclkMc/44pbcurmYlmXycj8gS7ph92BKCmI+iMV0mdV4HX6k+sSLxQFrX7O62FYt+p1c0Df
	mtiNZXKx2x5CK8FwxPqHQwFxjaZo3/QOSwc+7Phd9XLzOChxL4AvW/Rrw8mzRjvfITjt7TAvJhZGn
	Sfad++Eda82GZErAHxZNqyUEZy2MZOAH9uJ9YDt4AO/xAHYJo0Q4Xkhd8pRZ4FJpGNLzDHkaAbzed
	eCjv/Xdzd8GG0XrfXsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwB2-0006pT-6s; Thu, 19 Sep 2019 13:08:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAw9o-0006Yu-PM
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:07:38 +0000
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47DE421907
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 13:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568898456;
 bh=7c6x6cciXw60y1MAp5qCF8JC2dTq/q+YgCB8SLyOqPk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rLANaBJ7u/o3/Au71CBT1kL7Iz1AesheSrZWNrQYU3KIhPqXcqzDRSt3TNTjU0ICC
 YtuL2Mb+8MCN3YX+aSM2MYkpVCpoXPE4NM1wK9cZcfe7oqcZVmY34xHX3NiRMA5TJ9
 dZHIzZ6pmcmn8SJbokPvWglRcXxHBKx41f5cYxfk=
Received: by mail-oi1-f174.google.com with SMTP id k20so2668107oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 06:07:36 -0700 (PDT)
X-Gm-Message-State: APjAAAXqZMMbh3jXanN/6UiWfxm1OCrhbBqGQIG4t2bbgEol0zGvp1F5
 +momN/P3vnf6q/zWnGzAySLPq7XVRoQcZ0JtEyc=
X-Google-Smtp-Source: APXvYqzg4w/tXFpqJXHvHB4lq08/Vt2S/re21Kogpdz8yQzifNkZReFpzmxtyPOoRYJbDiSlFhPpgOR0t+CaR7QIEm8=
X-Received: by 2002:aca:cf51:: with SMTP id f78mr2186088oig.8.1568898455647;
 Thu, 19 Sep 2019 06:07:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce@eucas1p1.samsung.com>
 <20190918104634.15216-3-s.nawrocki@samsung.com> <20190919075924.GB13195@pi3>
 <420d3c8a-a31e-1edf-3112-b9800beace1e@samsung.com>
In-Reply-To: <420d3c8a-a31e-1edf-3112-b9800beace1e@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 19 Sep 2019 15:07:23 +0200
X-Gmail-Original-Message-ID: <CAJKOXPedjgXMfiGK=frXeynaqkAWvCcgEVqPeFoL0h8og7MXCA@mail.gmail.com>
Message-ID: <CAJKOXPedjgXMfiGK=frXeynaqkAWvCcgEVqPeFoL0h8og7MXCA@mail.gmail.com>
Subject: Re: [PATCH v1 2/9] mfd: wm8994: Add support for MCLKn clock control
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_060736_995401_F54858A6 
X-CRM114-Status: GOOD (  18.22  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 ckeepax@opensource.cirrus.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sbkim73@samsung.com, patches@opensource.cirrus.com,
 broonie@kernel.org, lgirdwood@gmail.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 14:49, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> On 9/19/19 09:59, Krzysztof Kozlowski wrote:
> > On Wed, Sep 18, 2019 at 12:46:27PM +0200, Sylwester Nawrocki wrote:
> >> The WM1811/WM8994/WM8958 audio CODEC DT bindings specify two optional
> >> clocks: "MCLK1", "MCLK2". Add code for getting those clocks in the MFD
> >> part of the wm8994 driver so they can be further handled in the audio
> >> CODEC part.
> >
> > I think these are needed only for the codec so how about getting them in
> > codec's probe?
>
> The clocks are specified in the (I2C slave device) DT node which corresponds
> to the device as a whole and to which binds the MFD driver.  AFAICT those
> clocks are only needed by the CODEC sub-driver but in general such clocks
> could be used to provide device's system clock used by other functionalities
> than audio.  We are doing something similar for other MFD drivers already
> and I would rather stick to one pattern. IMHO it's clearer to see what
> device the clocks belong to that way.

The existing pattern is not an excuse for doing some things in a
uglier way... If we agree that these are codec-only resources, then
they should be acquired by codec driver. This is one minor step to
solve difficult inter-device dependencies which stops from reusing
parts of the code (some child of MFD heavily depends on parent).
Existing MFD drivers sometimes follow this pattern but that's wrong.
They follow the ugly or even crappy pattern.

Your codec driver still refers to parent and it has its resources,
e.g. parent's device node pointer.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
