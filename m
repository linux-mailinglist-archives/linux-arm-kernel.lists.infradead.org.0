Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA772BA15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOFtAZtNXAw8woc6oWcNmi7puJYJfXugSIByJW6AXvs=; b=syhnbe/IQh52jF
	3cMrXKXXwk+SlU6WMpDWiGq4VKRKARQ+3XXQxOfQhdh+MasQDstk9k6pZzbFw+U5WKHYPG32clzCi
	t17huOKPT15V+d/zZ2i2Of8bJXHZ92+OvGl32Yvqpxt18JnltlhRcZOwY1NR4zMwJkWjhFkw7UK1R
	NxmuqW2zuRmt3poizmDB5cuLqH+DNxwpr4NlcqHPCpYqZVFjuJ2etSWUsyv+IZU74DymKoAwGuZud
	Gcl/fYQty+cDyEOGDfXKDyihjO0n1lbxkcsYMQ/HjMHrWFjUzkP8dSl6w2gtBu/JSb55ovw8x0ljP
	OBsOfdTrGNQbtc+T3Aog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKJ7-0005pi-Ns; Mon, 27 May 2019 18:25:13 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKIt-0005dj-IF; Mon, 27 May 2019 18:25:00 +0000
Received: by mail-ot1-x342.google.com with SMTP id j49so15484669otc.13;
 Mon, 27 May 2019 11:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oTMiV1Y4voZ/3ysP9QhkgQEWXrmH+j0vXIYBfWh+NxY=;
 b=r80AMVtENibdpe3J+eX2/sK1+2Y+AqpmwBkvvsO3L5ctmFYgnWGx7frsmfgVlyiz65
 IIjSFgfOCorj9G4VleESwH0dhZGugY4hZtsA2TndIAC/rceOvwVJ0Bbdn7pQ7R6sHT3A
 CDytoiQqJzyPFKjR9TOLYVksncUYZbchnB2v26u8y/VQqnHKZfrBr5C8G80CR39kDb96
 mP7jRUnkkU+SZdhVpBJb/9PlT9rt3UaGTWTWpug4QPq+yzbrCeu3MfLN+BL3TOC7y4nj
 R2kuY5J5CWn4QN28Vui/RWcmlUtpFbhdwx+OVPYHkUZaUBp3nVbD7gnlM66M8qVHePiI
 mwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oTMiV1Y4voZ/3ysP9QhkgQEWXrmH+j0vXIYBfWh+NxY=;
 b=s2vW+ZJEtve/orxoSTo3KErQalxu5PIcLZXf8v7CqrdWV7utS7fAHHL56ZVATfSVn0
 RXtyml62dEbHXbxoox73kflLcTGItKZFOTVAPvxSAr/vQmz7WZhie2+9VgfgLipb+bC1
 6Gh4Fv9iizuxC2JVeWrp96iCODF4/toqPZfj3cLMSQjUOWjL0M23nIM8rGE6AQm/+m2y
 yLTbchqnK1Y7LFoXDEP0GcXA5lFSmE0bu7M92wRonaEbwK2ADG5GbY3/u/uy4aTN2WmB
 V3ndh8U+3R8xoMSIaI0FCqxAervUd46l0SxhTh66/POxQ8YJvvikbWry0D3RUUNdU3n8
 x04w==
X-Gm-Message-State: APjAAAVA1LchH+xbIFDvIVUdB9Fee4mDeRtyfThTZrainjIqkNpniGjT
 DB45yX8i0Wv9aQ7XarGRT13fCA7EQhOD3tHIEUI=
X-Google-Smtp-Source: APXvYqxNiJHUujSHJHoF/efNr+YFQCneFP5p1MA0LtcEcYWu0bXEQSlmagXJKBBORQD/1y842/Tz7gJQulaHavq2nB4=
X-Received: by 2002:a9d:69c8:: with SMTP id v8mr18608445oto.6.1558981498536;
 Mon, 27 May 2019 11:24:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-9-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-9-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:24:47 +0200
Message-ID: <CAFBinCAbFDsT_6+mA4EGy1Tv8_Qkb7mDDbGbwygiKjDDtX79MA@mail.gmail.com>
Subject: Re: [PATCH 08/10] arm64: dts: meson-gxbb-vega-s95: enable SARADC
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112459_628614_AF5B6064 
X-CRM114-Status: UNSURE (   8.02  )
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
Cc: khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add SARARC node and associated regulator to support reading the
> ADC inputs on the Vega S95
I'm curious: is this the same problem than on the Wetek boards (where
SCPI hwmon reads garbage if SAR ADC is disabled)?

> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
in any case:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
