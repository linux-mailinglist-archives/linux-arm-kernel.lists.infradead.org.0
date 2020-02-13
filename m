Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E318615BABC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:25:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsolvWadkPlT4SRa639ZsTQ9QFTbB+CdiM0rukWhlUw=; b=VXtM+/PWizuy8S
	qyGuqvNVEixPASv5OI0UggEpTQZ3gdSRHEsgbtv7FwFgNrMsp8U40F6KGQHs2TTt5ErCbdy6hyhA3
	hksqwuhd0E7JjyRe2MGv2bnnJT4ApWJUhdbcu2guV2zlhIhf4fkjQGDuVbrn63hL48cCdeK8fZkrW
	h11OHV80WaQojwtl+IbO9TmQrLl8JSfl/b1VQrv8Bd0nBnENCS1FRhSzQ8KcDKn3dfRxwJKyGQt1T
	uXI9ZiwQjOfsrCsPL6vobPr3CgBvEbbxYEW4KdVCgrTJJbjXPLXcOCpOYIydg5SDkZmFHPlvQgNYf
	17X+DXDoOK7eVk8Ho/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29oX-0002xM-Ms; Thu, 13 Feb 2020 08:25:37 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29o7-0002Wy-4f
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:25:25 +0000
Received: by mail-qk1-x743.google.com with SMTP id v2so4898631qkj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 00:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OK0wietKvUZvwARAxmAdcE7mqGpP2688mkrFendJI3c=;
 b=mpc0JeM0+dOlAf+F/vCTYHoR+PUYA7VQeKJNhPzJStLAgkkRV03DFL99y9egz3e68P
 lPCoDzkpJvdoyiVMw6PB/Dlh0Xa4d+vZUYPZE19Q2YMPwFx6GqbOhqUZsM2yIvmMYB4C
 9GRN7zW46xO+BvOUOoI84rF0S+e8+9ZGjjrVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OK0wietKvUZvwARAxmAdcE7mqGpP2688mkrFendJI3c=;
 b=ferHRYTUkVoH3VL1BGPhjvBnQYzgA/Sh/rikkrGRM8Xstv5LLu6russaIbEazU6AMy
 9uNJzpMz3XqPnaIKOGtIP7B3wsCYld+VR7BAgRA3kzpozTFUmmwg2OZnc1VpJb4m0i/j
 O8rWsGaqUdjOsI6GvjMDqWTC9LPDGw0wlOChkKbPkxmyjKNE8ddZhJ0NdmS3f3IvDLpW
 l2iwWTz+GUtOz9Xd1OkQht8pYgJ9JusjImtpaWGdt8oGtyd4Oj2RzpXgKiPy2POECoEm
 37+PVkbG27llImEDnUpJpn32CHncty8/VFoXGIefodbTB/nbuk1ImY7ZF8B0xAUEPpo2
 suMw==
X-Gm-Message-State: APjAAAUN0dEdDWUTdkRQoGtE84MfAvwQluBctlMj+adURgiQ0sqY+ZRE
 YZppg20zy19pTpTxn7ubwlLCVXqNCbyaCMMC+LxEVg==
X-Google-Smtp-Source: APXvYqz2tNr3c3qIVwpXL0Kiwvf19NSiJuWwJpM0OOB3yzEmPzpmBZQIrLG8zON5DYMYRdtNFRQMdyhNLsgoU/FJ9vY=
X-Received: by 2002:a37:6595:: with SMTP id
 z143mr11724807qkb.457.1581582310226; 
 Thu, 13 Feb 2020 00:25:10 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-8-drinkcat@chromium.org>
 <CANMq1KBL-S2DVKbCB2h_XNpfUro+pZ96-C5ft0p-8GX_tbXELQ@mail.gmail.com>
 <CAL_JsqLuo+2G2MjiwS9cwNhMV2pGBojXFGNqEfLv3fP-Y04mfA@mail.gmail.com>
 <CANMq1KCn5rrOrv2GjFh5Aau5Los4VVk=NMWAsvZiNuwoxyMVHA@mail.gmail.com>
In-Reply-To: <CANMq1KCn5rrOrv2GjFh5Aau5Los4VVk=NMWAsvZiNuwoxyMVHA@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 13 Feb 2020 16:24:59 +0800
Message-ID: <CANMq1KCD-Ut3bjEmtpPCgOf+KHyi9cw7QSsxcQrWU4h2juZCUQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] RFC: drm/panfrost: devfreq: Add support for 2
 regulators
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_002511_228337_7CA7A138 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 3:57 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > [snip]
> > > But then there's a slight problem: panfrost_devfreq uses a bunch of
> > > clk_get_rate calls, and the clock PLLs (at least on MTK platform) are
> > > never fully precise, so we get back 299999955 for 300 Mhz and
> > > 799999878 for 800 Mhz. That means that the kernel is unable to keep
> > > devfreq stats as neither of these values are in the table:
> > > [ 4802.470952] devfreq devfreq1: Couldn't update frequency transition
> > > information.
> > > The kbase driver fixes this by remembering the last set frequency, and
> > > reporting that to devfreq. Should we do that as well or is there a
> > > better fix?

This one is my bad, I was missing this patch in my forklift to 4.19:
22bd4df9dadf46f drm/panfrost: devfreq: Round frequencies to OPPs

(should really try to boot that board on linux-next, but that's for
another time)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
