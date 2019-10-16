Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0805D8B80
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bnsI3Q383Xy4oo7ByvLlkQsmBAJvUocCl3X0AF5vH8=; b=XbT7CLf9SYFu0e
	50TjrZAn6gyXPjZsNu9me9Py0q0y0JY8fNTKBfU5Jqmi8zLoLd4W4d8eRNyS5jpUi2Zs3fBfrozES
	04GDJ3VmsSa8jyARyw96ouK8LQ6fOZR+VDbm6Uu6IIuMeKcK5a/fRq9quGSnaCui8cBPbJVb7FXdB
	vmRPITO8safTi3Gue89qIncDoK/2cxvo+YQUwbem83fTH4Vo8F9gruoOcSYUnBYXQ/yzgCBykLcKz
	Gdmk+HFd9UYzDBZ+rb+WZ99zCHWKvcPDOsHs9Wj2jvHc18G+XBqnnqJSICvmX5XERHWO5mHiTuCIX
	EE5UxIFtgOnCnUVX3HFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKesX-0000C3-Jm; Wed, 16 Oct 2019 08:41:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKesL-00005o-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:41:46 +0000
Received: by mail-lf1-x142.google.com with SMTP id c195so16734638lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 01:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P5rCHjs55GhS0d4QwWMR+IRXm4cU7A5acMAqOom+agM=;
 b=cmxLnnlv3X8JzjYTOrMqk+TrttOUQO+7Ws5eEWIRsEywSi1lz7WA6MOWF2jvS2WjdU
 kNnUvK2cVJU0uIxO8GhtsUwz7YRYCcSD4sc5HojMnTJHNi7TV/4LE0IDtg48eW6tv4EZ
 yp0HfIdJ3n5GCBA/L3alVcWo6V6kJ0OkrWiyeEiCV+GqXCr+1HCkWjqYygrdRdst0E/s
 Jw0IuQIhHHnjpLvdhnWnk2MEqsxtjlmE0E7FyNcMmIeJWuHqQMjPcMkbaaQ1Yx6fRUuw
 p5rWDLQWh+mWjmnGrmjPilU4K8yetyUqCqxz6D/6lCKowZu9tOEzyy1oZ17LVeq65OFv
 NAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P5rCHjs55GhS0d4QwWMR+IRXm4cU7A5acMAqOom+agM=;
 b=LEXXn6bsMtp9aWSY6Sfbj24aBDQ4jAzw9f+l4pc6eRTzMaX6/UYHRauqlvm+AYFXlY
 4tclLL4cEqY3xNY6S94WfQzy8cXlZ2WojBjrGMDAdxzVPbfPRR6CHNUoCaWVef2imDuZ
 iWpttPUD7AyGMYcU8AKgkkdszZXhHTYgUgZb8442uQgtjLXKWjvW9Jetsc26bJGNHMpY
 RKUb0ywkQ0U6NIMRifF+wqmOTehdNDSQhBvXty5tKBOdVJOXcqFgbCqaarQu7S1MwWbT
 c57Agq7mt8rIcc0PAv7FcTSu3fFnXw9wlrqADkThzPwQiVdM3d3zQdnCxd4ImysATt4J
 uGpg==
X-Gm-Message-State: APjAAAUYRrB3eP3fuc3xNGAyPpKw3OJtzUaS8A5hqB6Y2cws/nFD55WC
 BN0/Px6zMYJZldqe7ihti1rqf3xJFMPLHv2VE9g=
X-Google-Smtp-Source: APXvYqwMqRyrV6KURGxOk+nK8zfx8iulHbs2fxXoCl2l6ahgWaJLEk4ZRRTnkB348AtFsLAoa2OCoYz7BbpqTULv2UM=
X-Received: by 2002:ac2:5610:: with SMTP id v16mr23568149lfd.93.1571215303287; 
 Wed, 16 Oct 2019 01:41:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191016070740.121435-1-codekipper@gmail.com>
 <20191016070740.121435-2-codekipper@gmail.com>
 <20191016080420.4cbxn2hdt3wwtrhl@gilmour>
In-Reply-To: <20191016080420.4cbxn2hdt3wwtrhl@gilmour>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 16 Oct 2019 10:41:31 +0200
Message-ID: <CAEKpxBmNCA4U8-X8iSwOxBZ7T3dp6352S2Kfxc6f5E4N671zvg@mail.gmail.com>
Subject: Re: [PATCH v6 1/7] ASoC: sun4i-i2s: Move channel select offset
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_014145_322375_D3285DC5 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 at 10:04, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Wed, Oct 16, 2019 at 09:07:34AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > On the newer SoCs the offset is used to set the mode of the
> > connection. As it is to be used elsewhere then it makes sense
> > to move it to the main structure.
>
> Elsewhere where, and to do what?
Thanks...How does this sound?

As it is to be used to set the same offset for each TX data channel in use
during multi-channel audio then let's move it to the main structure.

BR,
CK
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
