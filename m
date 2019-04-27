Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD47B47F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2f9wV3f0/gOLmTYtfxnPN1VAzxZjsBJVjX34QrKySRw=; b=kJGPbmFfTpKShC
	uPC2zYsY7FbSw5liQLzgmRjAyKRQm5OvkmGdnFzjolyBUtBT5EXQ6HCCWlYd6kPByZY+7wPRCxdCR
	RTHfj7loN7NArcs3io/Qp+YKO/EeGalufpn7IXvVKp9TQQZZ8RneGfpbVnkixhGfMpR4Tz/cT2ZRA
	xVZlvVyunrO5p1A0T1QcLfBEOWloD3ldO2qYsDglu0mkm1/UcQdsKWuzgkQwj3nWIGfsuLxe2R5iM
	nV0tztj3FnGM+547wyukwXxm27acCqebbPoodsX4jTsKsx/cCzVQ8K5+YKmJb+nJxs4EbsZe8RTMB
	ALv7IfVVaSmKTJbFDkHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTrJ-0002ic-4d; Sat, 27 Apr 2019 20:23:41 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTr0-0002gY-Fy; Sat, 27 Apr 2019 20:23:24 +0000
Received: by mail-ot1-x342.google.com with SMTP id t20so5533222otl.5;
 Sat, 27 Apr 2019 13:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uJgD+pL9W7Px5skVpUJDUZ1yvSNePMr+f36/qtWiwqI=;
 b=mSV1asYvFd1SpvBS+eVyXagB5z5UPgZShzDKHeaL/gYAe1R9F/cyVd4Wn5lX1xVS6s
 /6XXHkc+KSwGRWpqdgNvoTjVR58aJkpgZZjA+P0lPqUXluNp06V3nuo1KLIeaT95eAHa
 VExtIEajTHifJInirjb2OCoOdgixVGyGFu4cWdetigUlE93zjAQN4M3tCz+j7HWku0j3
 otcrgaZL7pGLxESDI/eupyDEFVqDsEnwg9wI084qMbHZLm6qRn2SbrbJmVf+EoSQVsLu
 bpcu2oHut13nAKlnHJjd7ElBR7CFNflQ5poefMM+JeEx6yuWibo41yWVdBMz53lKysa+
 1c1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uJgD+pL9W7Px5skVpUJDUZ1yvSNePMr+f36/qtWiwqI=;
 b=m5WMfJksRZ3+Qi8Zj72L5JAlLm0dor1dppZ2Spw8oE03LdAN4h9kSl2V5HTk2fE5HO
 6YyO985jiItcVCSbFDHm+EvDFO1HiEbu+bAJrKq1DSwL1p0WSSSGcA+hE9Tx5PUROaS/
 eBz7u7tvJL873ccTGFkxh55v3XUT25MdRSvGcIJfLu8m43oII72RIMnG3O7eZjn3rOsi
 UVGSbQ5/BiboFy93VXvZEpa1NzisyEMtsQCMXGDre/R5tUrJJN6/g/QRnMX5rKavuil/
 liEdiXFZir3w9Bav3yDIZ5V84MclSfLiQW7+nV+MYzG3kZ+LxSCM86/nWeVGAH0dQEjA
 IlVw==
X-Gm-Message-State: APjAAAVmObtBx5iu0iVzyOY7QG7m6q3wW864pBLs7NHsODjfn4Z0Y/cL
 RaUSuYFvBGDTu64xXRRwIf5mJxg5SUUy804Pgz01zVAJ
X-Google-Smtp-Source: APXvYqyXYDlYXJ5hEDJFecpKSBEoTRt9zgmKmzSy5qHUmuTaeGBiyYOrwCGgC8Nz/Jmw+ECl8TNZ0LqnPtkDpxTNgvY=
X-Received: by 2002:a9d:3db4:: with SMTP id l49mr32899960otc.131.1556396601630; 
 Sat, 27 Apr 2019 13:23:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190423091503.10847-1-narmstrong@baylibre.com>
 <20190423091503.10847-6-narmstrong@baylibre.com>
In-Reply-To: <20190423091503.10847-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Apr 2019 22:23:10 +0200
Message-ID: <CAFBinCBmO5JYxFuDZ09rBhQz64skNczN+ST7MGC6vPt5jfDArA@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: amlogic: add Odroid-N2 binding
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_132322_528226_C4E2E778 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 11:16 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add compatible for the Amlogic G12B (S922X) SoC based Odroid-N2 SBC
> from HardKernel.
nit-pick: their website mentions "Copyright 2018 Hardkernel co., Ltd. "

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
