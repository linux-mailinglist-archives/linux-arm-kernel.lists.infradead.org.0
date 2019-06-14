Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EEB452FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwWA3sugPjFzZ2/lJok1JB523P4OyfaAPMO/3nacGbg=; b=ugXVlPW+La3aTy
	VJEpwlwq0mJ6nCc3uPtUxDEX9Btt6+zp2vsnMS6w6mS4npb6OLBcB+x7TaD4SBdxrxyTG5K1xJnYF
	No3zBzJNOoGPeCI5xcLe0bLgwwYmVIEtg1S5IC2kcVZvVBFflUihvAl6r9iQsuq1OtlpCViZPoS2z
	zBHYGsYE2bjKQDPWloWNyqN5bolLJidD92oRpOYRSpuDMAudUhixyaTItJ3ao6OU8KlyMcw5t0QK8
	izDsKM7H3apyvBO/6W7Eb+mm5fd08N24JZsc1QPitG6CcMT6iN+/Rz87sT3GJhBjz2efzTD2JWjBE
	jPQXjbBajuhrhGtr3lIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcwJ-00042y-Ts; Fri, 14 Jun 2019 03:31:43 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbckJ-0007NW-CA
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:19:21 +0000
Received: by mail-ed1-f68.google.com with SMTP id p26so1346149edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:19:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NPwG/+sK6rrlYN0ObMy3YjCUZytnPkU+C+L+wuAauYY=;
 b=CfHph8jrPgBrKinm/Po1DX/gmyvicpcu9QB2Wv2V9mCHGY7pRzjq1xcRb8agyLVIXE
 HYwrTq9hcVNTKrwInXAxOqw+hbzNBwbKscfTkFYhlM59Ii5stZlWLkxt4pWAptW2dLsq
 rq+Oq8UpvNvXVuBd3oIY25GZ7fVpzNM3iaAGMyX1Amce+6DBQcmJIHdIkqofyO29lG/Z
 lJ2DSATLZkFMX7MUP1E9PKAvYjqbPGZPFVPGg4WzKQ2C3qHU1FH445zEM9OPPGpSLJTQ
 RmeZ5Hqf6kaw+hEFGxMucNzoAThfMhDqDLC88Kj+NRUzd/AgAzsOiRcet9db2TS7E2sh
 fQWA==
X-Gm-Message-State: APjAAAWbFBxshqIkHc8mhCTDUHiaJetGfe+KhnztR/80bL16mwFskxNe
 ejf6U/Z053kReD8n6/nd1rrDaBwyR/A=
X-Google-Smtp-Source: APXvYqyuS+EN4nPDj6b5wy65SEGU8tekGexKSIHTsnZ7Py0EVd8g81/58EXN3cWgt1/MvIwpg19QhA==
X-Received: by 2002:a50:b48f:: with SMTP id w15mr51689051edd.260.1560482357206; 
 Thu, 13 Jun 2019 20:19:17 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id m6sm470029ede.2.2019.06.13.20.19.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:19:16 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id m3so892233wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:19:16 -0700 (PDT)
X-Received: by 2002:adf:fd01:: with SMTP id e1mr2697971wrr.167.1560482355808; 
 Thu, 13 Jun 2019 20:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-3-jagan@amarulasolutions.com>
In-Reply-To: <20190613185241.22800-3-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 11:19:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
Message-ID: <CAGb2v65xuXc4C1jOyM1GbEFVDam5P-6NN0ZhtzwzA7qU5F3nJQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support
 for R40
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201919_436843_769DBACB 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:53 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> TCON LCD0, LCD1 in allwinner R40, are used for managing
> LCD interfaces like RGB, LVDS and DSI.
>
> Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> tcon top.
>
> Add support for it, in tcon driver.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
