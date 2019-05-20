Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A294123FFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDJXVhQ5wCNgb/k4dERjeKVO1KiI3j/MXvxG4oAB8oU=; b=g4nFja7JlaRalK
	IooYAaS+Irh7UjUeK8QlDNC08NiHN9Dvv8Gf3/T4XbRBEeSw8GiBJeo0RGx+0t9S3v6jw/fsCu6Ps
	HJpOtet72Lkh/Ua0tQU2elADEkGK4MpshacxJWwgl4T3RUksoKJOQyaGRa+YI5O9Q9w+XcMLZldve
	wxTievXLidnu9Kb5focXwDVr2u+FLHor1ZIbKWVGK1CXD5F20S+idSTMAV8L8aZI3dEUynm1Q6F4z
	YrTFOL9RCzx6Osa3WToUWGMgW40ulbreDlGn+5KFyEV7PrRrUTmREsL2eHMYzdvcpQYj7XCpE3NXx
	qAF7n5IomU4LDS5fbPqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmhX-0006w5-TN; Mon, 20 May 2019 18:07:55 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmhO-0006sf-N5; Mon, 20 May 2019 18:07:47 +0000
Received: by mail-oi1-x242.google.com with SMTP id w9so8897535oic.9;
 Mon, 20 May 2019 11:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=ZpZBX2L1phGIkWqLtP/wGPhPMbIoJguECDVjKtHvg0SxK2vj293g3R9X2fd3f3/yZL
 xAtRNLhTgspuLkunpxlKA0fR7+285acvRqZNQd+GX3Whb1mWqPP4GtaEsNZ1f9Rlqj07
 E7nUq+RnPYMQj79rxPpCpH5rghIwLEIKNoVMfUpyKkaSAuQZFcTR5/Bvq0w0v8xFmHGG
 eJKeMnq7ItUeBpDtjA/UcCT5Jm7QJbY3pvwEyr9qZVq4MAqXN8mM45x2n1F3AA+nurzJ
 BVBA/ioRgbJ1ESG5ru7e6O3Sj0GOumyy5j8t6pO1RTMq7hCZC5hGTGi6V+/Hnb1+2vfs
 xobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=BVDgLAv7oziNb9th9yRkMyFvmnhGE7kFLLrQdfdhKYqxI4/V/8vQcMSo2BaEk4lnir
 07mUnqkGmeqkiU+NILYRZH/F1m7JRj73uUAavLpJyV6AtzOa2u2AzngiN7MjTeMYEB1d
 eN5avq/CoTS39n8K6X7q3sGHRSynYkWXfix/XIrHheAOquSW39dKeNcQAalz8u7W9QMo
 fNQKwusd85239x3uDYGF8fuaxCUNFPM7UZzAXq9KQeG+AN2dkAIX3FUCSWccQ+ei1ofp
 DE/0Pe7IzxkXW+1wF6XSNmWsiIzTz0/2OMBiBf2FeSEPDW+ype2YQAeF96G09UOYhhtE
 XZ5g==
X-Gm-Message-State: APjAAAVByHMqLR5NjJNYpINvC59RggDz/zg1ST7nKqiwfoKuh+VvGrFQ
 235PXGjuit27QS5ltrQIR42y7RaF857i+sidpYo=
X-Google-Smtp-Source: APXvYqy59OliiQjhnHxHS1SdLMScXn9f1+tKlaosJtDBLEK0tbw3TDkfYCYFObUPl6UzrYIrxy5IwZdGaWdzpFXXWRo=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr315260oie.15.1558375665674;
 Mon, 20 May 2019 11:07:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190520144108.3787-1-narmstrong@baylibre.com>
 <20190520144108.3787-2-narmstrong@baylibre.com>
In-Reply-To: <20190520144108.3787-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:07:34 +0200
Message-ID: <CAFBinCAaoSb9z8MHu7CmGG-ij+aBOTtUjVcgRmp+wcuiDbxs+Q@mail.gmail.com>
Subject: Re: [PATCH 1/5] pinctrl: meson: update with SPDX Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110746_753347_1B46845B 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
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
