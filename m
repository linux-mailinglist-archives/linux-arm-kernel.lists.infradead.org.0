Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C505C24010
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDJXVhQ5wCNgb/k4dERjeKVO1KiI3j/MXvxG4oAB8oU=; b=RjaJXiNwbJx33u
	3qkFeKsn7TWguzQdt3BiM6bQWkige9hpBuzp/mPKzT76Z5cmudlBC6KWJLY9tNHDKG+/BSY+WoO6l
	ENpGCoSyLQSuX+vbMuIC38hjZt6lmz6zBBFpSP+u7/mAxlu5rBS0SiJS+s6NbBWb7ZnxncYA/qaO+
	k6XaW785KzYuigtTf0ZtzqVZzAn+CVEvR3prBAa6CCiX48h7+tg31+N3psaVtjznf4nYtiqksVAjq
	NND/+F6gV4SOjZy//JQZchLF9HdzCqkc6ZrCGsAIteLFCyjO67Ze/J8exchAi5/GXLBSzXdcuHWET
	DQYBT6GH2Cp5YdHeOjVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmiR-00089i-8T; Mon, 20 May 2019 18:08:51 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmiD-00081e-MN; Mon, 20 May 2019 18:08:41 +0000
Received: by mail-oi1-x243.google.com with SMTP id t187so10688318oie.10;
 Mon, 20 May 2019 11:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=exguTriKwXhXwUBPk3DIYIZn0UebJYIvgkrkUlVQK5eyPslKrHvRJJWZsZZatGDf7+
 4biJjehsUg4Ao2EK1c7Zi8EuvyBpW5eu/Qrh/u1rJrkaSLquZzh3LiB5MOZAHOSzvfJq
 VSu0BLM7IBjWMQm5W7ne+ljo3VCj+ac1NbOYEvqWm/3ezx9EcRD2/+CtLY4YxoxAJusD
 2+aV8oQtf20iAXCAbcpAgCX5EijMQxXPL8yYmSeJSzLHPUWAydKBv91uKdFKttfmLCL7
 ib5bxijAzY1xDT+7Waq6mF1LwTJ7YtobSc3QHW3h0QkQq5wSq8YmbgIzjHAbE9RmZUSW
 mhgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=WI58YQg56H1dUDjeRRx0X2/CbYDjzonSNsNqqNhk0v/Zfv5Tn9CJa60zTfzZkm9mng
 zDoO2fAyIK4tessCTyVRRStixbV4BDav4AKuQ8omWuHraCc6dJ1iX6t94GybJp/PrXPz
 T7wol0N3l3HFBz0c2YfgNGKEsCl2NLd5ULfbyCkYiKp76kQoBcAXLkIXcSiFvm47PxDA
 w+0E8W6gLO5r6OncXmTUP6ogz0ukQ4caebP1q0G+HvHBMRMsnAl0t4piTktDDWqxZbFe
 B4lrFPZZJSWmeIOh499ZZUq6efRhCN550vRtXqq3PD0d6IeQ1SOLpUwFrwrUtV8slg2H
 WwBg==
X-Gm-Message-State: APjAAAUMUb4CLN6OchqbSlNcGmsTyCfAQNI3UCKaGL2q9s/VrWK6uqPt
 vkltpiMJw1Ug4avNb6LautqFTB0G8qI6dNNKwMc=
X-Google-Smtp-Source: APXvYqwewLUxYADIoBcBQRX4Efzf+CAd/saoxxujYidpsFC28B6J5rhGfQ7a3JNH5kkvVoDjcNeNoCcZHPEX02AayQI=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr318362oie.15.1558375716877;
 Mon, 20 May 2019 11:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190520144108.3787-1-narmstrong@baylibre.com>
 <20190520144108.3787-5-narmstrong@baylibre.com>
In-Reply-To: <20190520144108.3787-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:08:26 +0200
Message-ID: <CAFBinCCFbKaz=dVkF--sfwRag-+N6wR-6ePsNSGnLXu=N1mbkA@mail.gmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: gpio: meson8-gpio: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110838_311264_45C8FA53 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:42 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
