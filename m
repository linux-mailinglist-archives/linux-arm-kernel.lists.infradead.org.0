Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8164E5D83C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 00:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56GrW52HF2rWfbRcNSyzfbp7Zz/4Fdow9hkkOyvCHz8=; b=Xab4KV8lL2d3za
	bn0QQVD7hxAFpj5ZiwmqUz1ocqX4aItpoH+BPWkcFuP6gIM3RvTqTIrM1f5vfAePUcnhxIyBZaCDc
	uzU0ZbkLYQyoEU+bbrrNhfzHZ/ZQsCAxMlwCFxx01cwUbwp66BzyqFHC89rjoltALFJX1yF12vbaH
	FKnFPkvooqNUH5fuyoIHop3NEqIJHdJxtXW9SrW8omNYpl28AKhStmjFJbEfp9gvfNswaPAPA3FAq
	FNoBJlc/EM+AHNdM5WdyGqKSOtsyO5tujxGVfGy/A93XKQoXGmQMCmq7+gPCwqPLbTU6R2T6EnPqh
	0yOo/hLPfSG36r3KThvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRhK-00026p-CX; Tue, 02 Jul 2019 22:56:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRh7-00026M-76; Tue, 02 Jul 2019 22:56:15 +0000
Received: by mail-oi1-x244.google.com with SMTP id w79so379104oif.10;
 Tue, 02 Jul 2019 15:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B0lnG7dVUXOZiqirpp6Pr4IxSipe4AyPJyRnbU/UDbM=;
 b=gEuizN8LAKvRau0Nsuxug6F+9pl8chEcIGAI5O4AI/JNeuPd6hjSef8K61p7hSZVvH
 mMxwO+OzaYdILethk7IDWi09fPmKhSZuXzolOc97Z/n6asWOy4dyN6eYqM3VN0NkrX1i
 xcLZRYaqGuZCMvCwklujmvFtShLseiFoXVo3URCIyq6KDilYyFOpIWKCvpJFxM5wcN/n
 d9ykGI+60ctT2KPg7Grdo5ugdrj+MeanqpwmMNSLgSXPghFpS/Vv1dCd4+QrVNnOgypD
 tRmGj/QLtZJXt3jT+OKJUCo784fIwbWBMvkMSWLYUlp/6exliELY1zzEebgUS8/gSu83
 Ib1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B0lnG7dVUXOZiqirpp6Pr4IxSipe4AyPJyRnbU/UDbM=;
 b=KvtLDYC31Sxy/5d7KVTpJh7tD52UpsHQ6F+BYmy3OgWO9be+pSfZA+L9ysoUNwGWY6
 3HnXDooToitpxNVupUuzUS3QFntsEm9nwvvLYC4sT9SpssJIAC3krZIH8IBJUZsD7d+p
 OW1YGqj3tQ+vcuekQv9Gk7JUfpCIUjxoECuqcwF8lsxe2Mss5j/PCgDEDkHyE+ojELnQ
 lckdXV9rJ7029Vb2LrMByFy69s8sEt/sLYq9mBhk9NmYKMxS7WaoZTufR2ih6qUDIBc+
 GHee0iSSegWg3WbRh1w5E2qnjyQLEJivOQdv6hCYNPoRPlz2tUxIR2sNCFdO+dLOgSsi
 BxLQ==
X-Gm-Message-State: APjAAAWlcXYm0Q4xIQge/PEGEuULlDFkYkIPYRQg6uuBMRWayZ9rjRDg
 X6iIXRtXqTPT5wgQusxPnIwNruvJ2eJqRrlDp7o=
X-Google-Smtp-Source: APXvYqw7GqOpvPorcRhCyGKe303y7lcoPXIyo8PqNByOmScgMMCuyG4n9Vbue28pMqX8fvDoy9he8KbkXktBPfB7h38=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr1422412oic.47.1562108171246; 
 Tue, 02 Jul 2019 15:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-2-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 00:56:00 +0200
Message-ID: <CAFBinCDNABG5BpAu=aXjTuFAd4YEgX2OvtAfFEGBm8NfVHu_qQ@mail.gmail.com>
Subject: Re: [RFC/RFT v3 01/14] pinctrl: meson-g12a: add pwm_a on GPIOE_2
 pinmux
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_155613_262398_F3511962 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
> Add the missing pinmux for the pwm_a function on the GPIOE_2 pin.
>
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
it's not documented anywhere but Amlogic's buildroot kernel (from
buildroot-openlinux-A113-201901) uses the same bit so it seems
correct.
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
