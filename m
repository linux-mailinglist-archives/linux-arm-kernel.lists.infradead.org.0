Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F182B2BDE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JcF/zjQHv2R6Qv9r7jkUekQ+B3dTot5mrrEtmHpg3I=; b=Nf111wMS64tiwu
	g9WmuQwC3vYeR1c0+BD/oz+glUwR+PREeWsQOfG+xnL9BErbMD6FuncraeG2E82qQik92cBq8ZU/Y
	wsF66qvg4U+YEjapNfo0U0pSEfuYm8OUJvSlsnjaTwUs6TIT3tfeGUsYFbkNRMDIO/foiny/O1Afv
	qrIjDnWVu/EaO1l7nAnFTvlQEIF9sjQ9L+sV13r/av2n83OItk0pSYStaXPJ3BeBFHgb7tTzo5Ojg
	0kOT4XdXP6XhLW8Bp1bcQXk1gKHD1eQJGcqM8DnE7aWo+jCtRPYioK4Iq/bRC6bsyqXkCtAMYMLXN
	yMUOUQsu9R+CSkHxEbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT4N-0007ZV-E2; Tue, 28 May 2019 03:46:35 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT47-0007GP-Cg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:46:22 +0000
Received: by mail-ed1-f65.google.com with SMTP id w33so26155954edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:46:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cbIANbieB/ZMM4atu/fV00M4bGQeXLE4fKpqjXqbb1o=;
 b=Qc1lOdiGwTZSptVtOYR/DZNOZF7gTjp7lDuF0FRAsOdCWxN1/3pfvK5sT26uoFJZd3
 KSrtvTRau5XVva1VTX5YDSfpyGE7GHD1lyBAWMKD3ouv6r1eXKwONInO6pUNnyFZf9cJ
 YAuM0TmDhURregl/nrh0rHgJSrfbtUYhbMCZJDOAX7q2I87TbXKpnm4R/v9KtneFx8v5
 BC7mxAICctD+zUKvQaRQjUDPkKh7eB8sa6cBoTettMntmCpXrlh1a3ReokGhCOKcav5I
 /uNeyfimdRtZtuM2Vcds7GtKLIy67qD6UzmPKJEMHNFIWxvC5HkN0QuyItDLlta9ryRA
 1z0Q==
X-Gm-Message-State: APjAAAVcObx3qNEe84OQR4Tb0Akz4SF+YrQo14QZuEPv1T2v/tiEUTRC
 vt6sXrlwtXygkqkPXy59yB9XbnrBAaw=
X-Google-Smtp-Source: APXvYqxDmPlI8GQvvGkqny4Qc+TID7LSAQFP32gCYcptGxFhr4MoNPF22Pf/ZXFHn34RdyKvvbuNag==
X-Received: by 2002:a50:aef6:: with SMTP id
 f51mr125616880edd.225.1559015177616; 
 Mon, 27 May 2019 20:46:17 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id f44sm3905467eda.73.2019.05.27.20.46.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:46:17 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id l17so10129768wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:46:17 -0700 (PDT)
X-Received: by 2002:adf:d4c2:: with SMTP id w2mr13821930wrk.167.1559015177086; 
 Mon, 27 May 2019 20:46:17 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <00f6de1a4e012d5ad9a4eef054d0e19d534f067d.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <00f6de1a4e012d5ad9a4eef054d0e19d534f067d.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:46:07 +0800
X-Gmail-Original-Message-ID: <CAGb2v64ObC7vpm2_0FpoJcw9gGcbJidMy0MstTqcgbVf3Oib8Q@mail.gmail.com>
Message-ID: <CAGb2v64ObC7vpm2_0FpoJcw9gGcbJidMy0MstTqcgbVf3Oib8Q@mail.gmail.com>
Subject: Re: [PATCH 06/10] rtc: sun6i: Add R40 compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204620_073311_49A0E0EE 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The R40 has a quite different RTC, with only a single interrupt line, but
> two clock outputs. Let's add a compatible.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
