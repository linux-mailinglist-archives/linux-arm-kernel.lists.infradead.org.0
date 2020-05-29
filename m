Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA6B1E7BA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oo8r0LBmT249chr76Ae8AibNA5kNBcrbiANdAognPiI=; b=bV5TMY1JRxy6r3
	K1oE7d0ArriJ18s8QPhNMgtxxL3vSqOo3u4pfRs5CdFtiLs+P0F4526/m/TACHsGI0sx7EaClUPLm
	X4PIrnnr7f3hnT6wnJkE7igBPSQHi7o0P/Qh/L5eMvIlCamGZ42duh4oQTrciSulYeSuP5Xgp9LC2
	XxXF2UWoHwDAOz/Oly09aUgcxSlWiMLdc3Z9K1hxbDfwW8EIKfOwEnhvkOUMwvsSmTU/UCUkbmV4/
	7iDDFbe3Jsv9V6zXwvzShhlhmuoBz+od/FAYIopbkhCiCMOGfJBpWyqTiPatu1ygjjPtQQIlGkb/k
	MtPMwE0ovAXIrM+LV40w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed6Y-0007df-Hm; Fri, 29 May 2020 11:23:14 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jed6J-0007c7-23
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 11:23:00 +0000
Received: by mail-il1-x143.google.com with SMTP id t8so1539098ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 04:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QUz26vjSD65L7rN0EMN41DDMniwEhIkYrxKCsVJaPWQ=;
 b=GOwvPiiRbY2HA5dCwu8VwnakJLKuRTiwHSxEhSn4bfkxf6clQ/mmYJCGELf36Bynqx
 UFiqy+qXToyoSj7qbN3JgB7IwP32L7BKpjepWT21dV39n+HUyViFpownpjOP5Dk8b3Jq
 AoxC0bUc4Jm7z788Xp+J3aj7bghXACx0pZbroaqTx1inet6fdyIAdFPTHl53DkrRGXTp
 BtUSoRjI4Zj/4fAFit7YsPUG8l82exuxEtRdr8oir3Y1tnhSPFPLTl5RZBvMo4UFJ11I
 Hu/yAnsBSrSJCuytnLFUS38yj7A0kY9qrbPOBo3JSyZg48QVZaL2hqqjUMO5OOzvIS5J
 T30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QUz26vjSD65L7rN0EMN41DDMniwEhIkYrxKCsVJaPWQ=;
 b=E3W6dCJqr6vcyML8qrzBSNULw1eYVoF0h5jjEMdItU1IS151H4h0uCYTV+fif5WY9T
 AacaB5N7Kh2XiBLnStQaxBrCwUST6xtEkv2n7l/FMJksogVxzLFI89yhqmka9aQNk0XC
 U4ANeRNwBOvBfQ0d6bz/45sqMz+AW6WgEPDYF2bwMNNDZa5qOw1TEMuEJJH0gXH7ZF7C
 YzgkoY4qzXVWG6PrKc0Raflt2OVYer28JWsxsWIEQApOgvQpgAMarR+7E5dkOez/EzsV
 VSrkkuUGjbVPHpf8HWmwN704WvT1j9q6m5tlBXIWLu0VMGnM9ifqCq80umGSL05w+75Z
 fUEQ==
X-Gm-Message-State: AOAM533GUWGkFNCyFd8BDYdTftOfD4QPqB1HB4Og4wXcvBqxfnHgKzD+
 L/cno/F1L3yQrKL/jHmgqtgQZpcHf8un8QBiR5vUYg==
X-Google-Smtp-Source: ABdhPJwec/2VZU+1E/3GRAXji8VYXzHfBrNsBh8GmHVuKkblNQOV25jI2GiT7eGXCnLm1V2eWPp2ycxf0M5Oq/IRueA=
X-Received: by 2002:a92:b11:: with SMTP id b17mr6846581ilf.257.1590751374596; 
 Fri, 29 May 2020 04:22:54 -0700 (PDT)
MIME-Version: 1.0
References: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
 <20200529110915.GH4610@sirena.org.uk>
In-Reply-To: <20200529110915.GH4610@sirena.org.uk>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 29 May 2020 19:22:43 +0800
Message-ID: <CA+Px+wVSwJK-=75chKLjSEe3bPRtV2wD95W5D_pdR0Pw0G470A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_042259_107207_4FD360A0 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 howie.huang@mediatek.com, Takashi Iwai <tiwai@suse.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 7:09 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, May 29, 2020 at 07:04:53PM +0800, Jiaxin Yu wrote:
> > Supports DMIC one-wire mode. Adds a mixer control to enable and disable.
>
> What is DMIC one wire mode?  This doesn't sound like something I'd
> expect to vary at runtime.

It means: 1 PDM data wire carries 2 channel data (rising edge for left
and falling edge for right).

The setting shouldn't and won't change at runtime.  Would you suggest
putting it into DTS binding?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
