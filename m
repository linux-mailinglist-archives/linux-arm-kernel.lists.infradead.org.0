Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45C160C45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZLKbm+szTmo2kfOzPLHZxUsfW/jIiCIqjpDjpm+oJU=; b=gXiSBd73+2ax2s
	NApZyhQPlIihLCodkhVO0dGEgOKlDBC/4sgzwadCOxQxGVAjNpG+8mDhqQrIJtQbEMy0jJaVrX7Ly
	H9FjoKYWgqgCmYKisQoTv2gSABLuN3BfOSczQiP/cYON9pQsGaEqUi0h3Uz+MCeYlbTIP/LBclULm
	lda9PAi4YxXhBBLiQAg96TgEQE+tCG/0D6juYWSbDqS+zmV63BeGx4GAl1vZ5j/MMo1dus9Y5ZvdP
	hZJ/9mE1duFsJkhFoDLtvCPlKjBDMh2lYugmH3j3aqDItxHU+T0ZoV17Msih8C5hPeJxlvsHsbvZ/
	2gEIMrRblacTrfR9YqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bR0-0007ub-Lx; Mon, 17 Feb 2020 08:07:18 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bQb-0007pS-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:06:55 +0000
Received: by mail-ed1-f68.google.com with SMTP id t7so7973645edr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:06:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H7HNmg9K88memoV4mQIdFTzsV1B2vI42lPI0r8PIbeg=;
 b=IxvkZMJ9jyZTDzXzmdoI+VcGNfP99futp4kny+2qL7L0swfRBdicYXXrqQaR9fU4nZ
 zlxFeLGgu7qYn4yKOEIwnyfkPdQ7qZargK8lZLP4Y20kZT5/WNL6Ac5cHqS93F5jqEO1
 2S+mTnOAA0bmc/9235YVJwi06x7dQXpbTXxjXXD9t/Rk8A2p+2UtlteRPnbCjouO6eZr
 5ykQqXMEAo3RKvBZqhI2m9qFXw30PYIr6alp9wGldDQ34gQaU9nJinURI7IBwR04fz8n
 /ll+zibiRcwu50NnTaRzhVZLMNKY3W4RunfTH8hJYr88YHbMop/df1fA5szS9ftTnKZK
 hoyg==
X-Gm-Message-State: APjAAAX6uN8KFc+Y1jIHL+4XMAbwhYwiGP73xzbnqCO85YwyE885LpiR
 SOpses+RSma3apK6/8ebXkTSsVoSM08=
X-Google-Smtp-Source: APXvYqwvCUV/1hu94bRkstMBBgUTatv3wKP/UfCm4hHQoKo3jAwBmiqrNKgByC+JxXgRwoc9SdxYQA==
X-Received: by 2002:a17:906:64db:: with SMTP id
 p27mr12850687ejn.99.1581926811606; 
 Mon, 17 Feb 2020 00:06:51 -0800 (PST)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id j14sm844985ejs.15.2020.02.17.00.06.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 00:06:51 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id q9so16097539wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:06:51 -0800 (PST)
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr22204730wmg.16.1581926810934; 
 Mon, 17 Feb 2020 00:06:50 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-13-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-13-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 16:06:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v65e3dwji4cwRh6uTryjXq=0qmeggEjrMgL9KtB+JTWCVg@mail.gmail.com>
Message-ID: <CAGb2v65e3dwji4cwRh6uTryjXq=0qmeggEjrMgL9KtB+JTWCVg@mail.gmail.com>
Subject: Re: [RFC PATCH 12/34] ASoC: sun8i-codec: Fix AIF1 MODCLK widget name
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_000653_717637_9FEC6C25 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> It should be "AIF1", not "AFI1".
>
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
