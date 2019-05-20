Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE66D24012
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDJXVhQ5wCNgb/k4dERjeKVO1KiI3j/MXvxG4oAB8oU=; b=Act4fOMirbreFo
	FnEeSoCtNqiXOeXycfyIHCzzhTOuycuXQ4JzWAa441zBXFGJx7pbkscVnfvQj9Ng6FC5Ge4lfDm2D
	TrUVQg5fDRA6c6TMzkD6DjNPIqM+5yrSD742FB4IGDW6TLaSmXma7Pu28bb8GGi1z/fK8WdPePuDA
	uNtAiUd6DgxBQX0Wrz2gEqa0PpZ0H3XLLVVjvDCxF/cidOFFi6gPLd+MNCJyBVWUebLdrTMwwpvRf
	PGCSnl0UPeLVL9F5lq5YnLVIxXTNpQWRMw+iTVRw9H8b0bqfI+9Kmt+jkHrowzX33VZkEWNSzjbl6
	p/E+BwWeFOejMV5ICkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmie-0008Qv-OM; Mon, 20 May 2019 18:09:04 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmiP-0008FX-MV; Mon, 20 May 2019 18:08:53 +0000
Received: by mail-oi1-x243.google.com with SMTP id q186so4034629oia.0;
 Mon, 20 May 2019 11:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=p0rilSq2HK/3GLFdIsM3W0esD1E70bZ4ap80QtZkmUwFik8fQLlRneXhyF69OUOLTR
 +dptkfa5Qvgd5BuCPhZZJ6NhjUlWda9smxTObo/ubrx/1pV9kduFim2wv9XuGdXkgFy1
 8KcMIcnNIk22Anzc2GO/iwhtyM2zEE4Zrz/dMqMHY8naFqRBrVx5TAgQZM0S4PSjINd+
 +CLOU8blq8nhhgJTo2gr5j8xEPZtjhn1ykKcN13D7C1dqAusMCsn+QwJXPwArwS9oMTq
 +m0t6bsGevtfOUgJjwVD1uKt7KLnb0WudnzeKk9ADP09ux2mdWfxK14WGgz3wmAfx2VR
 XlzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7G1MGSx6nHwpQNyADoCOs+yAwPJeVT4zKxuY01zrPw=;
 b=bWdi5htk/IdG0pTjqRJOuK7YwJTGGBSPmR0iWtkJOQfR3Kz8RjN+nDkp/Hko9nkAAn
 tg4syadwPcGIGYkR/yPgZOsC16rl2uEA/Dch1bJ+vaJSQjWhj8VCxubIwpprRT4HH1AC
 MRSCWTpgwChTmF/8p2D2P0g9Y3ZAokkwABV/3Y894x3H0BfUg0UrGObgh3H7PvnEnJAZ
 itKp/R0k9zS/a5C5OhGJEqvGJcqHTg0D3j9LLYJ1bl4FF1sVVqO6A3z2shw1ldaE3vGm
 6GVIVzI4FTLJFjPwqpEVFjUYQYhXcgkZTsQ7yO9pKZJ4lOE/QQEgPgT7ev0FJ8Dm9J+l
 saHw==
X-Gm-Message-State: APjAAAXfDzcPGnk5rJ/6GGY8cJ1FhNynQluc9U+jnwXdn+wEXS7Mny6N
 y1pQfBIcIG2Cps+yr8zJXR9w+E96XwPJfsI+sHk=
X-Google-Smtp-Source: APXvYqwo63kXnxppc/g8GoRRU2jASvWNgeVjHOKQoTWH78i0rEmmwsrELvB7RuW8hSB4HTgDUfOK0kTXRZAhylYphKE=
X-Received: by 2002:aca:f144:: with SMTP id p65mr322071oih.47.1558375728938;
 Mon, 20 May 2019 11:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190520144108.3787-1-narmstrong@baylibre.com>
 <20190520144108.3787-6-narmstrong@baylibre.com>
In-Reply-To: <20190520144108.3787-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:08:37 +0200
Message-ID: <CAFBinCBV_TYz_gf91iMBFk8bWBwx4kpAQ+d0n7wJQ=Xo5xKmOw@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: gpio: meson8b-gpio: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110850_316036_F46C5FC1 
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
