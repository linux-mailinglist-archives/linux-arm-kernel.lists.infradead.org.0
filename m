Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA057160BF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcGl87pMkYVZ+W2qh5cePYHfFRsz5xGP1W0PlQG71Do=; b=PfhFpu2it8ca9d
	jajZCVulOcXvZLFcQWAZPRhobSqhO9+yFOIh9mVeSqsiC9y5SEr3sGmR+iGv8YjqJnSYU/gSVNc/7
	g0l33wDgHocXG5zgneMQNytRsNZt9f+6k0RhTmCeLJ/vo8m+WKkE+jObobA79V6h3KvVDwXXsH1eH
	qjIIJOJ+HKnyw3dNHPoLeF/wRF6v43MJ5PxPOhVBp9oP62W99qeSy3XPEWd3NSynWvTET/gXqDcU9
	Dn0RVLhFBo2UlZOC2ch8Zdt0i6Jo+4tqQxPbRn6OwE9u7d8Lvwwnb3wu47NqQbqanANknAa9e7YGb
	Y1lFSKtlPu5/sct1n3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bEz-0000gp-KP; Mon, 17 Feb 2020 07:54:53 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bEq-0000gW-BP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:54:45 +0000
Received: by mail-ed1-f67.google.com with SMTP id t7so7937003edr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:54:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KR6FhQWcs0qNnsB7tbG/todYZCoVJm9lbx/mBjKE5fM=;
 b=MN++/uPCSzSSMoLN+9KLgwqI9xM+U9KqCIUaqb57r/50eQY+pwuubCm/13OwGLMQoH
 rnUm4AtFKX2HS0oFi0U+zWPThhLCF2wzRnHcD3aLivRmrD67fPVQdxUn99bpLCAtqTIZ
 BRixSLRsPOUUS1jk0LB6UakxW6ZDXOTuAOb5ydSlCrGJwkhDcAwVEcSlhqrcnlDquEt7
 WLGbTnI5vsWasP9Ml1mYBcoVI25ly4NCthI8YAAkwBB8xDEWHWymQbW5Z/Zm/EYUhU7F
 ZV9MXkbw7BUyvVPoedc8puAiOIdMG8GGwoD/zaOOZbo3Ix5mAkckFBZt7Ic+ivw+oqSX
 o58A==
X-Gm-Message-State: APjAAAV4CaynYoMRolxEi0GoRx3AvLJwfFlCUy/yzWqXqNaPan7ulEMN
 jZJJ/6uLWGbO6zNpvsHgAw8fthF2PIE=
X-Google-Smtp-Source: APXvYqxR0+adnI+j10Caf7NFnsIQaXtnWN4tFYyvZsBOvscgT0xLr4exIq8BvqMgpdPmXycDya+/iw==
X-Received: by 2002:a17:906:6806:: with SMTP id
 k6mr12790680ejr.279.1581926082287; 
 Sun, 16 Feb 2020 23:54:42 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id qh18sm825266ejb.23.2020.02.16.23.54.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:54:42 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id w15so18397943wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:54:41 -0800 (PST)
X-Received: by 2002:a5d:484f:: with SMTP id n15mr20401029wrs.365.1581926081266; 
 Sun, 16 Feb 2020 23:54:41 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-17-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-17-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:54:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Af-gZxfrmCEg3Ltvy82Wb4M0RF17CR=jwazyTGy8L=g@mail.gmail.com>
Message-ID: <CAGb2v67Af-gZxfrmCEg3Ltvy82Wb4M0RF17CR=jwazyTGy8L=g@mail.gmail.com>
Subject: Re: [RFC PATCH 16/34] ASoC: sun8i-codec: Fix field bit number
 indentation
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235444_389114_F86AAFB7 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> Several fields have inconsistent indentation, presumably because it
> "looked correct" in the patch due to the additional character at the
> beginning of the line.
>
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
