Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C505EF892
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:23:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aURfeWVjD+ZZBELXd1BgQrw4hM9jwbQrkaafv+2+HWw=; b=PMDXYKpUxbUZT4
	wJ0AuJJyd3ijpSmBy+JAB1D/X1RzNhTM5RQEhwOD618nE+m/Vp6H0iiKOFtCIgl8DndmTcqXScHei
	o1iqCRWh0R43nlap4C9vwBrNGywYmoc+k1nO5iR9euic/3uR5HoLwd4iFT1w/WvaiRsnkbMf/WQfb
	dTyU7AhaHZmgEjM3ofFHK7ixECvIg2x1yB1zGfZ8CsHfH8TcKdlne5EgkHSQcgAxwku9/VCRDzusz
	3cfgNhKdQWCOZym9X0CpnwU+kqjCmpGUQ+4U3LKiTi9Dr6qCH5TI0D00OcRPemU2vz5+6lhzKkkZo
	fDMlMyfWmVfPWdCQJStA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRv3O-0008E5-NU; Tue, 05 Nov 2019 09:23:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRv3H-0008DE-10
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:23:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id f4so14533896lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 01:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ct9g/c4KnN6815DyJzsvIVZUxmWLuOF9LXKZAhVKbL8=;
 b=YKSM2QTBCckxvZ/6Gq5dfMrbdS0x5OlQiyIjgvVFfiy2DEtxC/YK2sAtJ8E8yGzGnC
 vC3vEgOdUGdyUWKGZm8gYADe06XUhQHrnBe6ZrDxDK7pUlLzOfDaqxBDFtTlhNG+NtMa
 8ZKf+R8bkPbKUrAZB7NIxUAycktPoNmgiLYHgWuBoXStS1YJJabyH96kbSVMiTGax8h1
 wT42Xk1tp58pYDdVtztuIbh5r2LpKP0lTkBAGpgnB5gRySMzDeXpQSAQSFInOLok0CtF
 ioN2DYfH8dv1tE3aoeLuiJ8++IkwiM1w9xYbdf7nkWsDbyvha3XVn1Ul07aTrAxlNzRy
 Dw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ct9g/c4KnN6815DyJzsvIVZUxmWLuOF9LXKZAhVKbL8=;
 b=lFu0Wi2VFMWNX5VXMAFe048xKUnUv8ERZN/kkJ7L67+tZ1LLTLPOgguO1/tt0gfgjM
 cXNfeEc75XeAoB8XfVi0V6gWskooXCtAUQI4UrNq/j2DmGiwB5xU6BFtPLFQY+VA2OWt
 CjNGnuKFpZBErNGUFUxAPTqUCiZTQWylyP1tjVZ2PSG9m1lPUwvgTX440Ge8FrQVTd1Q
 PWmsWFrb2ItvUxFFszeFOt47YnuzK9Q27gOZwsOXf5UXsQLOUCZ0+XbsvyBJqpR5smxj
 J02xmqW/XrPzjgbOP1DcAYQKp1V5REZXOyqWs1ZTJXD/VlUK21KCs4VWaV+BcJ+gUiJj
 2a1w==
X-Gm-Message-State: APjAAAVbAzsDOXyVYxwf7hc8uKN0fZ6OakAvBZO4cyKpicII6oeerzAy
 IGfu0+P/eZ6QT9b1NNxgFFOXGkqseMRnXW7bIeatgw==
X-Google-Smtp-Source: APXvYqxeopO09ns4NgTxjigartGjOoe+JETioaWMrKGhyhGNAt2HdlvOIjunc3L7nT5gZgJzxfa7ONCTaP16w47SjKw=
X-Received: by 2002:ac2:5295:: with SMTP id q21mr19505657lfm.93.1572945781604; 
 Tue, 05 Nov 2019 01:23:01 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-24-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-24-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 10:22:50 +0100
Message-ID: <CACRpkdaT4Tn2w0LZDo-mB-GGT=Epv-stkWW6S=AZ+OWam4QWPw@mail.gmail.com>
Subject: Re: [PATCH 24/46] ARM: pxa: magician: use platform driver for audio
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_012303_070293_C6647DD6 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:42 PM Arnd Bergmann <arnd@arndb.de> wrote:

> The magician audio driver creates a codec device and gets
> data from a board specific header file, both of which is
> a bit suspicious. Move these into the board file itself,
> using a gpio lookup table.
>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: alsa-devel@alsa-project.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
