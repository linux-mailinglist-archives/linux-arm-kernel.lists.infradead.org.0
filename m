Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAF39C606
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 22:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8frm749dorxoZqlOKTHz462jg9m7kDn6UAYpLz08++g=; b=ZvnUIkj5sm3uBq
	eTV1gfWDke/aOa9Oab8scJ85XjXMQHR2OVwImExR6VWytwExW6Q7FJyy1ddsrESPF3tBzJ1VyUPVo
	WA8aya7PDfSU3klZ87FbZvSE/x4hCWQQMGU4udC4wUBISvmTZuzOAqx3hx5Ig0bhc+LX3jBlz5/Sl
	q0yuGZlq4ilUcDaV4T3Rn/giHCvqnlcobsnBbpcGRAzNuo+9KWwUSUTl/lbaXpg8YnsDtMfDWpG2/
	15RHdgMQe/x7Hi9Q6z5WZGBToaxF3kkjcNRxRwDc/hMFie82eyAukCQQ8pj6tgaLlZqct3R70QFo1
	GZWn2eBVlH8/7q+lRpqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1ygX-0001Uz-Ja; Sun, 25 Aug 2019 20:00:21 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1ygK-0001Tf-DW; Sun, 25 Aug 2019 20:00:09 +0000
Received: by mail-ot1-x343.google.com with SMTP id f17so13340302otq.4;
 Sun, 25 Aug 2019 13:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zXY+vp9jRGpj9AwVjvaZbbtqnQMg4LrCQrKGAkuzItM=;
 b=F2OO1oz7p1xplg6LJMZYwvRm0fnVwDnp6BRBhYp0l8A0qZjst2X8KsuaKIMIkDoZEQ
 pCHsZ9rC94kNLoL6YSH6/UWkUw1spBjrUwNIBJvzjRCuxSBZse74rLt6T3Jx9ngLcKtc
 H/yi/sDUOMb3elM1YnWXXuYV8esWMdW4hvGp2i90GxJGo1wxktZINaHPZiQcJVgnRdVV
 LL9oSNIQr/Vg0fd15sq9o34SjRfS6hwtW68De9wkPWyKiUewd5+ODOJOcUwRzwb+LhBx
 +r6b7s9vRhtciZ4c5Zu6Uj4vwu4f1icD7pmiOm8XkYCAHbnwDvMuzXYE7u8lXOrfH8qp
 bxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zXY+vp9jRGpj9AwVjvaZbbtqnQMg4LrCQrKGAkuzItM=;
 b=N6zQQQkkoXwe8IHNreCwdKmfBp5WaW7Cg8RbY7pJqxSX057WMj2QQ7zG5AEpvNkae0
 j3J+ReNRqT1KyN0TgWgW79A9BUI9rqdqnYsin35krgN0d7PBzWvpDLOuCjTQcm349vgk
 wY3pp60mMEvPo/RlcFcBzYIguwBgzvNTa7aGG4lexO4T+RooIvSF0A6ryDH6xQgkufTA
 LY7NoWEztS7aosGp9O5EGhIXcP6qjfEUrZ4CEssU5Zz9RzN5+a9muChU2fu6871woHbm
 16WPcif2tzNS3jylLUjlOWt/7zQKN+XIaVUCAu2fCTx6g5pWG1tqzIslfvHY5RfFMxCJ
 IiwA==
X-Gm-Message-State: APjAAAVKK10CbxX5SWRf+qAEKhsYlXkOmXil/Fm5Ssi6V9q7wWOuahw+
 W1DMnghhVGrrMIce30ET221CcNtXa8lizW4rEKE=
X-Google-Smtp-Source: APXvYqyZu4IJ7I+DpLeCK6W/EgEKtsIl2fZBrWMoOYcz2co8fxVnv4eQJJUV/XDH381rnV0JfTwdjzjeHaJs5fJoXAg=
X-Received: by 2002:a9d:7b44:: with SMTP id f4mr3819368oto.42.1566763207717;
 Sun, 25 Aug 2019 13:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190823090418.17148-1-narmstrong@baylibre.com>
 <20190823090418.17148-6-narmstrong@baylibre.com>
In-Reply-To: <20190823090418.17148-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Aug 2019 21:59:56 +0200
Message-ID: <CAFBinCDjO2sWcE8hmPfn1vsar52yeeTVAZaYJ6vR3rXaVJQQPg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: meson-sm1-sei610: add USB support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_130008_485590_70CF5E3B 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 11:06 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the USB properties for the Amlogic SM1 Based SEI610 Board in order to
> support the USB DRD Type-C port and the USB3 Type A port.
>
> The USB DRD Type-C controller uses the ID signal to toggle the USB role
> between the DWC3 Host controller and the DWC2 Device controller.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
(based on the patch description as I don't have the schematics for this board)
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
