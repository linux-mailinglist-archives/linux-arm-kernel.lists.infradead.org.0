Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9497CB5E0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4+EncheUw9+eXg90+M1C2c09m12wcCN52YdJBONjAw=; b=s/OaOzcY/o/lyB
	f2bk1PyCHNHiIv7RAUZlo8xTjeiuWP+B8HuEqkUOfSgv7wOc5+35b4OXLaRdoR48Hrl3uhfNA3nPm
	Yi3zK4eK14VzZqDLRtwt7WChPqmtpFoQiWSQhuNJrGCfPBfX1wkMoJPyPkbHfwHyVNlWrRNHNU8Dw
	7vaWZ2/bkd3WYJ4YKrYto4iKBzBozfLztPs6IUGyc3b/g4J1Wsm3vMmfua8wX6dglPY+I7a64EUd5
	Ndjwij8WeBLBEyX2Xz+gWc1j5Ck3bqAW9WfX2QB0Aowiwo4k9DfjhL8aunL+CAO34kK4YvLGQuoBR
	MLAoLGJGMBVnZZnlxY7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUQH-0007xN-Gt; Wed, 18 Sep 2019 07:30:45 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUP5-0007vv-Eb
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:29:32 +0000
Received: by mail-vs1-xe41.google.com with SMTP id m22so3801620vsl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SDoUVLf2sM2Wd7eza5DvRhJf8f3rN/ciRvE3nXJqNFQ=;
 b=bHgC61S83XFKjjHLXOkOq4DxsfgHo2iXOrB0kGNER7zB3qrVVxUkcW0pixzEoZ/hFO
 9zlhd8/Ni87ZlTvrJ0eiUB+ehwc8ERiN1SdYfkRdu5K74DlnoLi+h/s3kgUV+MO5yxI4
 IpXJ9/umG++g7tOVTqBUHyZhF1w1+BHeH19F0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SDoUVLf2sM2Wd7eza5DvRhJf8f3rN/ciRvE3nXJqNFQ=;
 b=MGnkXSAZFCEDAv7jLLnyXUhuE5Hbv876+cuVM0waWSNQGzq5a8ucgkPwGx6lj10aXo
 q6pDpI9ERTLrWK2Lo6IcczeO4HXj2x0bwR10qgD6C3WqscaS9j7H8m2x0tpzCehWtAJ0
 EfJ9iUX5XFZZATbdeQTlZcvBDUtxukXCSnhquuRDFZOU3Eeq8JBeTEhREQ3qTHCHOkyg
 B53xBkSSu3C6HgXdY6cESqb/9cVgN3pSm0716YIAcf3vvwMMwyyBnFesyvP1uz6Rw8hk
 zhvFIL13hy0dfaIIzPep++Or7naa7d4fskOhOVYEuXLl8ezNsh30tXGk16y3bbQ+/VN9
 3ibg==
X-Gm-Message-State: APjAAAUbzOMyUjRTTcqJ+XYJLcj9QuRS2AdCYKkNMJrG0iQ4JN7KI9YC
 dXuv0pCrDeiKYUxktJiFTXPms6N8idrN+O03RuO7ag==
X-Google-Smtp-Source: APXvYqz3X6HVZiW3ZAIrMpmqoTkGT9csY3mslQR+djJ/IC/kNyPMlb3OEGubgnn0YA3Nv38dQWDVGsLPAgmKFKrvNcM=
X-Received: by 2002:a67:db8d:: with SMTP id f13mr1362214vsk.163.1568791763011; 
 Wed, 18 Sep 2019 00:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
 <20190909135346.GG2036@sirena.org.uk>
 <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
In-Reply-To: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 18 Sep 2019 15:28:56 +0800
Message-ID: <CAFv8NwL3+4Qsv0B7PtVhB=HX6uFUMMaw5V=E3NTRE-v_jDVAxg@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_002931_529197_291C1C3D 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Takashi Iwai <tiwai@suse.com>,
 Tzung-Bi Shih <tzungbi@google.com>, Dylan Reid <dgreid@chromium.org>,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 5:33 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 09/09/2019 15:53, Mark Brown wrote:
> > On Mon, Sep 09, 2019 at 09:37:14AM +0200, Neil Armstrong wrote:
> >
> >> I'd like some review from ASoC people and other drm bridge reviewers,
> >> Jernej, Jonas & Andrzej.
> >
> >> Jonas could have some comments on the overall patchset.
> >
> > The ASoC bits look basically fine, I've gone ahead and applied
> > patch 1 as is since we're just before the merge window and that
> > way we reduce potential cross tree issues.  I know there's a lot
> > of discussion on the DRM side about how they want to handle
> > things with jacks, I'm not 100% sure what the latest thinking is
> > there.
> >
>
> Thanks Mark.
>
>
> Cheng-Yi can you resent this serie without the already applied
> first patch with Jernej, Jonas, and Jerome Brunet <jbrunet@baylibre.com> CCed ?

Hi Neil,
Got it. Sorry for the late reply.
I will resend this series without the first patch, based on latest
drm-misc-next, and cc the folks.
Thanks!

>
> Thanks,
> Neil
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
