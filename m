Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F694160D1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vXBmX0631Il5VQmMMY8j0p9RMolh5/2K1R6DQR1O5o=; b=jbFkvfY/pZVilP
	myMuaX4rxVq0bCPFE6QENN+WELkVc2CE8wpye6UEu20H+7J3hCOHejNdIV3DFjoTPC+Wi1NZpLr8R
	e0fvAF1TRQ8fDX8Svh+WTqPAlJ+66/9jn4BmPq7Ttc2zLPNxAEWp4cxlMriHrbUAIuf123LBDuX9F
	G5a24mFOjcvr+fEHlefFZnDFnFGZQ7EL0w3YXJbayz0rMk7LlQEgO3+tPTnzgmCXMBCe9N+xHBs+c
	gT9wkt7/zuW9dKmexKVXZy01su8D7t0NlcT8h28lebWErU21A64RDpJc/5He6MzvQlKet96xhC9KQ
	6e6iYIG+NH6LHQy5U6SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bg6-0000aS-Fn; Mon, 17 Feb 2020 08:22:54 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bfx-0000a3-5q
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:22:46 +0000
Received: by mail-ed1-f66.google.com with SMTP id p23so19656642edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:22:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TGqR9iwqEEPoAOlQ581BXw8F7VHSOXMBtuvI7O8A+Jo=;
 b=o4a/VnmLgFbUAmolsP/JeDWWPfQcswow6j7iBjD1LC2wutuxBu28xn1V1zVrBLmbUf
 r4GaFSHbi3vm+P4iL5kkdnGxAMRurezUifpK803ijrcH3hZ9EzlkWfay1FjTFZARhDKW
 QPYMfDaR1ufCcQGtArs7JRkHb0hLtBlPR8rcst3aXi7KyOFP66t+K3KYpu7ACfklrDPs
 5gwSrt6AZc8TGYxGp4iV5pHjlN1YCt/0I9qP2fL0A04s9Wul+V866BwGDZpe4FZpxBVW
 O4IMjr9oRyYpAwr6BUpVvfELm17sIDRSei6oEONxu9atvrwuJq+ofW09BYyqtSM/R4ng
 Gl0Q==
X-Gm-Message-State: APjAAAUfvjLkAvhpDf+Dart8QdcwKQsmgGcDZWL1I2K7NvkrLcecvrAF
 H126dW2FNfev1rR9zgi0fkymVBuJYAQ=
X-Google-Smtp-Source: APXvYqwZWTYEK8TUREPPq9aBSKltBdlsvXU43Fe/oL8hDL8Tv7ziQuFjudWB4XcriqA1Prnov09twg==
X-Received: by 2002:aa7:cf81:: with SMTP id z1mr13284424edx.234.1581927763738; 
 Mon, 17 Feb 2020 00:22:43 -0800 (PST)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id n11sm835655eje.86.2020.02.17.00.22.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 00:22:43 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id c9so18503911wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:22:43 -0800 (PST)
X-Received: by 2002:a5d:4a04:: with SMTP id m4mr20971822wrq.104.1581927763057; 
 Mon, 17 Feb 2020 00:22:43 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-9-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-9-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 16:22:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v67TfTN6_wRgbLswEr_ShvL7Zb2-tgj7bS7oA6UfLvc0GA@mail.gmail.com>
Message-ID: <CAGb2v67TfTN6_wRgbLswEr_ShvL7Zb2-tgj7bS7oA6UfLvc0GA@mail.gmail.com>
Subject: Re: [RFC PATCH 08/34] ASoC: sun8i-codec: Fix direction of AIF1 outputs
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_002245_216309_8998F78A 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
 stable@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> The naming convention for AIFs in this codec is to call the "DAC" the
> path from the AIF into the codec, and the ADC the path from the codec
> back to the AIF, regardless of if there is any analog path involved.
>
> The output from AIF 1 used for capture should be declared as such.
>
> Cc: stable@kernel.org
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
