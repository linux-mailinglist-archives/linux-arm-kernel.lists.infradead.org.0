Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315D115BA6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcmMcmpBeQadd6fzfyc0gAacwudG2AcdNOqwTsOobJk=; b=TsqHJI6XBcmDV5
	1YSz2r0jTvQRP9z9eYdX7aiEJUwaZWFULTiPKFd2liB36NsGAHmUyp5gNQdw77t74umt1x/0hSSV2
	WHwoZMicgbniBUiYFSXl8eXkHZRuD9IZwuRevHmQl0QUc1TBxQyxMFGm3Yv3l4Rs8+BLU0sgClrzU
	L8HTqO+tdrCw+bKpYssEUZw3Xnn/K/P82SRd8mRapp5XTyUxu3/Nd53Ynq7LJxmVxCBgX/KrxYuKs
	UADGaC/WRN0OL5BrW05JRbEsTcizoa94vj608EvHT3ToVj7bJjZjit7K0IBzEuslmPBGA+E2wR8u0
	1ssoL7g4rnuQhwxBIq/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29SU-0002ag-JA; Thu, 13 Feb 2020 08:02:50 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29SJ-0002Zy-PR
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:02:41 +0000
Received: by mail-il1-x143.google.com with SMTP id f5so4191332ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 00:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=10gKpQZri/82cKq6/v6n1q70/ykUGaRsAC3tbxvLKNg=;
 b=VrWi7c2dKzqZsYHKurZTdMgkC4RFCLz8pRQXKliNxIOnXIQN+w/7W6XmD6fSAowzQM
 ioOh/SrY3dOutMvt3wb5cGoy9CCd2hq9e+XJfPgkt+l6cd7VhjlSGIwQXuLnco2uNsYC
 UypTXDK4eCxQ2pS4z1F9tocVzjWyCYt5twKT2tGFFb0FupN3d1FiybANMraeI/WOAHuO
 Vbh4+aY3BmlkgOA8BGZ67TXc1X2ej6xK2B6Xe6W65hODbjUpqhOCOYwGzk3H7J8Q00Ki
 OVjdyTUPZ8P7QlU9e6592dew2zas6uql7ZoBeMEedlHy4AhNyucuGZdfqAR9pwlXQ8jB
 AoJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=10gKpQZri/82cKq6/v6n1q70/ykUGaRsAC3tbxvLKNg=;
 b=f4UNYAVdv1UaIUyWyVtE5H7NA8KekCPYMi1rDySG3oqLIhfA42AHBXhk5fxkhT8Fdx
 ULK/IOtAl6h59r2ZSyA7efGxdn+57UhFOp+0+drvWJbQeJ6p89OtmTAEApNi5Gh4Lxzv
 YM7z/vY0xH1vCsnOzUtVoF70xBoscC8QGBV+EPLPCuEEIBPxSqgdsJhwfA3oxCiF1htw
 mWnSqRFocjS8iAE1i2CgAWmhJY7SmhlhibiAYCQimQR4gccdAjxcnUyEtUaJPeiKLA3F
 nBgvOcP88NBKE/E+qX8r3hCsYQoy7FB9MxEX5RvHx8jYjpWNN079F4YY4C7lhdZ2GCFA
 IDbA==
X-Gm-Message-State: APjAAAVQN26JTQN5VBN4wf7xpx0g4Elf2EyiN654sDiEINRCawt2htzF
 xdldly+P8gYf98k8bG91WrHlu+BFipBQTmhgn1U/uw==
X-Google-Smtp-Source: APXvYqyyqulvy1f+tDe7AmP1JblcXRQSp7dWSy72c8KxhM3n5LgVfLKIkT420HK+MTxArT2iueFQFfyI3z7Ky2ifzjI=
X-Received: by 2002:a92:981b:: with SMTP id l27mr15162000ili.118.1581580958517; 
 Thu, 13 Feb 2020 00:02:38 -0800 (PST)
MIME-Version: 1.0
References: <20200206031752.193298-1-tzungbi@google.com>
 <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
 <1581495554.22603.2.camel@mtksdaap41>
 <CA+Px+wXjC1rchzUGhYYCJVyEbm7RQNFnqf-sQNaky6d82DyLyw@mail.gmail.com>
 <1581559033.14792.9.camel@mtksdaap41>
In-Reply-To: <1581559033.14792.9.camel@mtksdaap41>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Thu, 13 Feb 2020 16:02:27 +0800
Message-ID: <CA+Px+wWAR3E8TWnPJEa62WjXQQ1Y-Ni9g1rqvPq0f_HPYYynHg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/mediatek: support HDMI jack status reporting
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_000239_857363_D24C20DB 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, p.zabel@pengutronix.de,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 9:57 AM CK Hu <ck.hu@mediatek.com> wrote:
> I'm not only consider the race condition of plugged_cb and codec_dev. I
> also care about the atomic of mtk_cec_hpd_high() and hdmi->plugged_cb().
> If these two function is not an atomic operation, below is an example of
> problem:
>
> <Status disconnected>
> 1. Thread A call mtk_hdmi_audio_hook_plugged_cb()
> 2. Thread A call mtk_cec_hpd_high() and get disconnected.
> <Status connected>
> 3. Thread B call hdmi_conn_detect()
> 4. Thread B call mtk_cec_hpd_high() and get connected
> 5. Thread B callback plugged_cb() with connected
> 6. Thread A callback plugged_cb() with disconnected (Bug here)

Another attempt: https://patchwork.kernel.org/patch/11379979/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
