Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858AD2B9CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWhky9UI9JdO22T37sGcagezNAJGjVxcjMvewLpXySI=; b=a+xNzhhLnvq70g
	O2hgCI77ZgVRdmmFDVs9V68OnoQI6CcUoZpEAeO2oOnjKuvzraJDGAE4J9rp9Tz7O7sUIy4EDZJl5
	UqUMe4KMfXyWPtpj2x0OLqU89eehG0SOJVM7vZt39kLHJCRgS1Bkp4pVIVqlzlIOl2bWmlVbHINKN
	W7rod5S4c9OySzefQexlNZRtBt7HAbMLHUmgRNkhmNitfMyU4Y+f4n5wNKagqkrqrgfFLJ2FqcA4Z
	rY39Kl2GYIKb4/dcUc9qcoFROt/VBUkgT98VyN1XFZmzfLppvWK9hP9RhRsvhtwe1q25+2RXmOaIc
	uwMvrZ+O8kM2xUml9h0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK1F-0003aF-GC; Mon, 27 May 2019 18:06:45 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK16-0003Yj-G6; Mon, 27 May 2019 18:06:37 +0000
Received: by mail-ot1-x342.google.com with SMTP id l17so15528504otq.1;
 Mon, 27 May 2019 11:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=snK6jJsPt2cSi+KLqPDOwYhYAz49h47RS/7FICnk118=;
 b=Uz3SxEZe3/KUMBtLpSR9DuRksazc9sQh8Y1rw3ZYmGZKEDdF1pakQzZrAcm6I6koa3
 RWSyRcQwrZt/GFy/etLHeg1jeEI0wtH91a82uWMz94N69PHboC/Mvd1RnVKDf04oO192
 IEmQsEFpF8/k3UzHaG8bcci0k5Tm9Ff3vgI/gjg/JzFy+NGfyRJnfEz+gnshlCkC9GhE
 yD9VDP3kJBXCFPM0hbHs0Tbsm4cGoC3Or8GPTC25HlXuNGzM4aG0KbOQe1aVyN2pw0JG
 p/fdCCT1aAR6ChXHuYV0tCbgZoQ2Yn31aAfznXGR5fclChYmbeFjsgsnZ9EiFWXb+FkN
 khng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=snK6jJsPt2cSi+KLqPDOwYhYAz49h47RS/7FICnk118=;
 b=grBc5NtMrPfYtT0XzQetaJrpSPnyeELS5Ey4NZN8Z6QvMk5Ys7JpkKOiHlI0xhazCV
 /oLiiDnzthTyDbXekLBKTTv8M4VQswQoYSNUZTyJshTvelBX01GvUP2vKUoFM1G1o+yC
 xXnMUD1i034Thj7Ci9YX37voO6b3UiKWoMSr0icgQHYEjfXVfjT9v64uLaGwK0j0/PzV
 8xCsK8FhTC6aesuE776pFsiyoEQcgGUlvAa1BixeGY8yG/cjRu3neh1zJSQFCp5lHr8g
 MzBijzCubikVgJwfcwhIGWA/VQe4zAAP22KOVFL8SZykcJdaWzMWKn412KWp5HTIf0SQ
 Eipg==
X-Gm-Message-State: APjAAAVZ5h2rm8FqbGEJEueTFnK2tgiYrSJkJ2odvar3mOZicTuM6WjF
 z79wDRbXjBhKn2rMZ7zw5vQrDEaGAQH4MdLAWRQ=
X-Google-Smtp-Source: APXvYqxgFZc3Pv3vlrT0PGq1/+3W6d3l714KVeY/h/DwK3dNU2U9IMXHfxtnwQ85CM6AHjQEp4xb6lPqxgzGJpNUgCs=
X-Received: by 2002:a9d:69c8:: with SMTP id v8mr18558055oto.6.1558980395825;
 Mon, 27 May 2019 11:06:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-4-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:06:24 +0200
Message-ID: <CAFBinCBJ2S100DQLWcCBN7uyUR8orr9-qKEX6N=WqZpEo5ptBw@mail.gmail.com>
Subject: Re: [PATCH v2 03/10] ARM: dts: meson6: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110636_534753_80AF483E 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
