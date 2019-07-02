Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A255D843
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 00:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhnUk2p9UCDSnZ22IR9tG2+kXQkxIFSSwyL8Tx+7o5Y=; b=Cmc6qETt1XKzy9
	k/ClyHgsvszJJa3SyM8iN/i8nk5yfJ6rseWFJVsbC7h0C2dHsKAxOLzpyx1TGvJ+VDsCm3R/f7A0B
	qR180iUtaUawY8lRnue6AeYEOJtZYKw4v1zW/x1O/QDUPEIUfgHVpVVKfwBsqSrELX9KaHvLxRNQk
	0AGH9cfH77aWhBpO6mTm2tHlz+f6kgq67va+1DBppJ9E+Jfhado384Tw/N3z0UfwxDDVq9fxf2BDr
	Hki1Oi1Q1xpOPpkGbi0RjgbyRbsvq8cXqH4KyN7N6u2Y1e2t1VcHrsv9qP0rPZffntEBGBeTZVAMT
	bMlRnnZ7V6P653PU+0tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRk6-0002Rj-59; Tue, 02 Jul 2019 22:59:18 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRjs-0002RJ-LB; Tue, 02 Jul 2019 22:59:05 +0000
Received: by mail-ot1-x344.google.com with SMTP id j19so291910otq.2;
 Tue, 02 Jul 2019 15:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6HvJuM18alyeMHoRBjFAJz8IVxm/LOrt6nImzFK3lsE=;
 b=ZL/zgmk5C6P8mXBb7AQ7vp5C1Xz9VF3Onrg6rH+mPkYfq1bkn35Xn/20CUxdaHn/Ba
 As8W8rj8MO2TPxJbLYAsV8Zr1JcXNxcB7S3nTswhG/q8JMEduSCQJcmZLLQ9zOQSQfyk
 kx6R2lLIgaUoq7ViMRDuO36Wn2pKUGkrTuOcSp1cqtLZyOJUPgX447cc56NnfWuKJcvy
 dk+DNAVbg9S/dYMV8QLSIJUIMiqtDPDb9aFykMXk/YpOwSbjg03XRU3rPcXWYsTdoOjF
 TQXzWG83z4s362gpdu9ENdszdpz5ERCO3qPD4xQdAvzEluLxpKpd1AhOMkZ7qym/hOma
 +DYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6HvJuM18alyeMHoRBjFAJz8IVxm/LOrt6nImzFK3lsE=;
 b=ghfDzGdTHxlH5gl+n5ydN1gNWu7aypXYLjXRMPL8SNspazRKIuIVkjWlPY4AnbMb70
 V2qnpIB/Ot1H2PaBapeTvZlF7rB62MYG9Kr6nGLYja8u6y8EGpYIpQFL2oaNC4JiOIjh
 UP1bRYhlGEhZY66s7QvsGisVaZseV+950UQ4yTddW7wGFfVSmnzZ8Gpr2zjYyZfMuo76
 JQBC3RU2ZNTatZYpLs2xQMorDJhcg8rtl6F2/HDh8lpOxCawi78aQKZZ/ZfKCfelSqig
 V+he6pBdJXs3ONQpUs9PfkomQ+ohWty9cc6XiwdnauU5QzrBCVvr0DWMT0tTECroaLFR
 cXug==
X-Gm-Message-State: APjAAAX7TVcJS77kqiDcPfkDZDp8SQQkEaTl84Jco2OrUNKOXwY3QmeF
 xU0IIK7T+5fYGUxSv5K6W7XL+0fyAUCL4KB261w=
X-Google-Smtp-Source: APXvYqyZYeVdqlXDt36fdhfbAYHQ2O+BsFsPr+MyhLgpJe6VJlBkHeJ6Eta6tLBIetsFlmHLbT/xvN+x6/atColGNo0=
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr26108783otb.98.1562108343442; 
 Tue, 02 Jul 2019 15:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-7-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-7-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 00:58:52 +0200
Message-ID: <CAFBinCBdB96e4PzxNMbOhuiRrxGz-4vRXu3dOs7n86qoA8MDeQ@mail.gmail.com>
Subject: Re: [RFC/RFT v3 06/14] soc: amlogic: meson-clk-measure: add G12B
 second cluster cpu clk
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_155904_724881_8D2A8F36 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the G12B second CPU cluster CPU and SYS_PLL measure IDs.
>
> These IDs returns 0Hz on G12A.
>
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
