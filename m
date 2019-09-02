Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F18AA5D2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 22:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLyC/83mQqXxvCUb+icsT2RMkDBXAW7YbZG3JnujK/Y=; b=bLNajVOMkXyM7X
	+LH26b+4OtJlMcLoJCG7NI6Z2joCv52mD7AvpxWKhZqodCdnlUAiK3bkVM7LUabIBCjtEj3OUA1g4
	W2Or/LF9s4TZvYstG+aYO3OGozO0uNC/CIbuVx98v4OFkuzt4NjexbgwWEokLaIj890LBQkTSCOmh
	+vambCkeJzFfUxMW9nV+WzFWgPBGP7MfZdUeNX8H+C/JmUmlAUUQ3+a34BZcgz+uHPntrKxxTW4yG
	OcXqAXWruaSQPO8s6OOze/F9vxS+zZO32EtkWrlhdu8svfOqTuDl2czak/Ho5bBpkWJZWajGIyLnj
	EXaWlTRT2pdn4IJ8SegQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4t8X-000277-Dg; Mon, 02 Sep 2019 20:41:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4t8I-00026d-Tc; Mon, 02 Sep 2019 20:41:04 +0000
Received: by mail-ed1-x541.google.com with SMTP id f22so16605653edt.4;
 Mon, 02 Sep 2019 13:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/6xZYkgl4ocSqmwrHXLN+0O+x2+BOQMBtBz7Y33HFq8=;
 b=uSLbfQPDAcBsaxTcXTs7bxHorDIpkF8/bQWuFPf8D0/arS6TmVjKnjoXhcg8cRA0f8
 e84ZQSgf/VANlfdOsVBJHjNr8GTYlAwOIlrNoa7Ujj92GY1jO/3FbCw7H6r08lzC39et
 3oyU2ZHjbtg3xZqUU2dqC25754xnGeWSAfBMCXNneHrws0JXyEo91fjTU5flrJj0ufnu
 zCq1RWVtzQni6KAaIuLpxBRIciIEgQ8hfPJkoqP5vjZvZ7wLs07Et5YfVoGz7Gvct34M
 V6m9Z6jSXV0YmavIrtBfN333cT6KY4HAmNDWp70k7Xqg8FwZkY/OSJOeN8HN3QPuohtv
 kzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/6xZYkgl4ocSqmwrHXLN+0O+x2+BOQMBtBz7Y33HFq8=;
 b=qBC7i5fSPocsA8qYy2szBFwcXAIhA94vggH4EFK6K24iLyehi7wEBWLfPcsKiBua40
 qFV4TtgvB+/4vI91O2LbYf5OiImiPQHm1ccUsqWtQQ+1s1HtqK8zOpbb6y+sgSNem1Y0
 OQ11N+31pyU+Vt68MkHW2um+fUjUfAlxs16T6l/mQfBzfcEKzLMg7UCEGmHP+E826/O+
 Fuhlx9vLfQu9tPiEm8sO9tLuVX5A7NBsAiyyMOOU33lPR4jyZZm9rw/l1zIQrsPrJhJA
 5Tz93asj1e5CRPy43vnAIzQeS6ayIq5Z1+CUX6c2tLo9HolNJBAmFVpyhpDlClGQ48nF
 f8LQ==
X-Gm-Message-State: APjAAAW0UfkMY+ht+mDHtS9Whp+fX7CRqXK9W3Z+bwioBqCc4Cpl1frQ
 H8BfISr7XR2ZvYZ+wM+79yyHH9SzyVBwqp8USsQ=
X-Google-Smtp-Source: APXvYqzkGpl0pu44qDC0uA4IX121wLLKZE0M+hrRSi3CbuBwKmftDNqCzqy4uvMsNkzIcxWoyGa7h9FxzLr5ayiQOhg=
X-Received: by 2002:aa7:dcc3:: with SMTP id w3mr26706924edu.202.1567456860910; 
 Mon, 02 Sep 2019 13:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190901105410.23567-1-repk@triplefau.lt>
 <CAFBinCD96nJBPnyNgWA6CgwE2kZrkXB3-cgbV9aQLB=JtbrN2w@mail.gmail.com>
In-Reply-To: <CAFBinCD96nJBPnyNgWA6CgwE2kZrkXB3-cgbV9aQLB=JtbrN2w@mail.gmail.com>
From: Elie Roudninski <xademax@gmail.com>
Date: Mon, 2 Sep 2019 21:40:49 +0100
Message-ID: <CAJJ5kavS6RU1tK-BqgWD-VmJzPuG114y+pNApYay=+xwCtAwQg@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: meson_saradc: Fix memory allocation order
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_134102_983695_4FE7B061 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xademax[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Remi Pommarel <repk@triplefau.lt>, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-amlogic@lists.infradead.org, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 12:29 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> On Sun, Sep 1, 2019 at 12:45 PM Remi Pommarel <repk@triplefau.lt> wrote:
> >
> > meson_saradc's irq handler uses priv->regmap so make sure that it is
> > allocated before the irq get enabled.
> >
> > This also fixes crash when CONFIG_DEBUG_SHIRQ is enabled, as device
> > managed resources are freed in the inverted order they had been
> > allocated, priv->regmap was freed before the spurious fake irq that
> > CONFIG_DEBUG_SHIRQ adds called the handler.
> >
>
> Fixes: 3af109131b7eb8 ("iio: adc: meson-saradc: switch from polling to
> interrupt mode")
> > Reported-by: Elie Roudninski <xademax@gmail.com>
> > Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
> thank you for fixing this!
The patch fixed the kernel panic I had, i can now successfully boot my
meson-gxl-s905x-libretech-cc boad using patched linux 5.2.11

Tested-by: Elie ROUDNINSKI <xademax@gmail.com>

Elie
>
>
> Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
