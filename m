Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E0F37DBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOZfhOAa0PXIl0p1p/0lE7/m/z4qTsvaAx7OusFw8t0=; b=ifSbQ5FFUPZpNR
	5F6EL2GPblAxbWlPoYjQ6Jn/q1wkNh3o4IrKm7QEcC7+JgELuJpk4Oeq1QmfyZBHZoV2dt2OlK2hP
	kAgyPRszsVA5o9l6VcgW5mAZrpyNySzAkFWUjIaWdH9uqydcJpegz3Mym5ZWX+Qggssx9S0zep/nh
	I0CbYpHPf2q1Z1TUvrCg+8wSIbetLGaNbGj93xwYJAbWYkTsBHmF6rki3x7A0oputtft6Sc/vXyqZ
	NBjRyycP4mPB7bgLZCx43B5mVgYD5cSNIb60i28/eVXAvVdN2AG4A58j+P1XuXoYHn6+Ar1IP5D8b
	JqftPm8cCulXQVph589w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyTh-0007cH-Pl; Thu, 06 Jun 2019 19:55:13 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyTV-000764-J7; Thu, 06 Jun 2019 19:55:03 +0000
Received: by mail-oi1-x243.google.com with SMTP id m206so2463104oib.12;
 Thu, 06 Jun 2019 12:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZgQ7oCfy0nLOIQgW+qtzhKYHnPLM4G90MVyLVLrcIT0=;
 b=Zjen9v5WFHbtRW9yJ9xzSZos5uoDp8qd/oX0HBoxrwOTZSvc4VZmgc6r2noG3x7nHE
 GqDhM0AJ8WWEqYi4+YsGbvEXk9rsDrlm1nFpi/5dtmjQftCIHMGlln8olOp6fZjM//ZV
 an7yxQekTRd6yAj6Ez1F/EGiVDP7VC9n9RGrN46EkzOwZp6ICzKezZKBD8jQzm8n3F7M
 NbhZt01pEmMALS+NywkfPdFVeo9GM0+54kEusBGQHzeB3FMMFokK8+zP/6xrL8OcoiR6
 n3/sBlG7Bz+hWOz8eTC09BdjkIkvI3glWcbnnOQKjIhQ7pFSyicNfUBoYd01zgvzEE7R
 +bRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZgQ7oCfy0nLOIQgW+qtzhKYHnPLM4G90MVyLVLrcIT0=;
 b=Kahv9o7BHjjmSomkmFjuDTnToER2tijNBiVAxVmEOAIQC2a9+w5Hlmc7kDJdWhYM3f
 nXsc0poVteAes3k9MqKx5a6BbIVcLg0QM+59DP5PlKJKnvY+lo61R64A1eELSaTc+tPo
 Mg6509Ej73r8R313EVLXbECucYDnXBHD0lOURLQMPT+NqfuW4C+5eR4aQQ9dqzuYNNDI
 IREr16O4mKih4/uKPpHRc1TPglzjcGONdJuOuchhz6Rpq3UG7+LDz8ndG/rpo8nsNs0w
 011dBrL8rAHqFzkS1dgcpMn0WZBfPgeCNc4K5wWZeLY8Smz0LXkETY0ZxvqyyTMMt7Ca
 aopw==
X-Gm-Message-State: APjAAAXaigcexxk0aW8lGFhnejKfrUXUhE8SMNzYL8JDK2P2LKXxpuo6
 tFUNRYrx2KqQfmnrnIsKgAaUF3JLItr+J7MI+ts=
X-Google-Smtp-Source: APXvYqxQZd19J2f5LW74+rVtS8VV6ptXZiXvMelvK9uglEv229O+9W6Z3u3WI/+oKete+6HD5UGS1SS/IP1ChQyS3F0=
X-Received: by 2002:aca:3545:: with SMTP id c66mr1303630oia.129.1559850900567; 
 Thu, 06 Jun 2019 12:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190603094740.12255-1-narmstrong@baylibre.com>
 <20190603094740.12255-5-narmstrong@baylibre.com>
In-Reply-To: <20190603094740.12255-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:54:49 +0200
Message-ID: <CAFBinCBaXgi8dRH+3O4847f1CdjUwQ4hspZMc5LJbJrVX3d59Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: meson-g12a-x96-max: bump bluetooth bus
 speed to 2Mbaud/s
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_125501_739512_BB5F82F9 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 11:54 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Setting to 2Mbaud/s is the nominal bus speed for common usages.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

I tested with this speed when I updated the meson_uart driver back
then to allow higher baud rates [0]
so I don't see a reason why this shouldn't work


[0] https://patchwork.kernel.org/patch/9517907/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
