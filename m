Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1309DD3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 07:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdpOer2VlD1Uzg2K7kBqSiy0UQETJbjR5JwwtKg4woU=; b=RPbW3v90O9DTPW
	vm4j/xgY1xq/xfnnOCV9JTdBM/fT/9HjhuLojFaNithe5IEDMaRro+4uvXfk+yOYcMkRjs38OIfXW
	ilNXzNyDYrKRLR5NlL9e77+ROjLQRjmkIl49kynWlNWFjKlX7wl98b2VFwj3qTFi3sbcgFxwgCbUY
	9FsbOtuOnI0TWo1F1Td/foQebCwgOFf7fCr22aXUSFXzJpb/X4kVgBzDgqSSEjfyDlYifeI1FK3/C
	Uh5P1dvuZeKqykxjPYn1wIWTUI1TEGeam8N/k8MrSFuSrhuhI36IDDmUpDpb0OKJyGVJI5sf9q7Ro
	SBVAruvbhCGJJakqdn7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2UDz-0001iL-74; Tue, 27 Aug 2019 05:40:59 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2UDh-0001h2-1g; Tue, 27 Aug 2019 05:40:42 +0000
Received: by mail-oi1-x241.google.com with SMTP id h21so14021764oie.7;
 Mon, 26 Aug 2019 22:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rPIVNL57PP+Nf8p6Kp3uQdhTH38JJW4Kftqg1AMoBV0=;
 b=BmL0Q/rXa+SE59AS2UvXWjSGV+FMJrqcCnqJPuBWJ3ZSW/echijI0VOVWecqgbt7Qz
 2nxWzeojo2p2JD/l/SpAm3aUdyeCKIsCoHY7wHPnWugeUWKZpKcEHfYwC6+XsoehJOFY
 LVrBGjofWFxGqj+Zgw8ey9V+OaVtPnOA1ChR8eIwnxXCPVojr4UWtAMWer4NJL/3Ni5U
 ySTcrvjd6roSYqltfeRB8v5P5UEcYg2K3edHIHHpM+dl2I+ugSy1zc7Xo2wr03Z8gLa0
 Rnwmk66QOHpSORcjCIGeoBhsHOfGW/tTYflZlRaippNifQqAueryoLXa6YojF2h3XW6p
 YETQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rPIVNL57PP+Nf8p6Kp3uQdhTH38JJW4Kftqg1AMoBV0=;
 b=KY/0TPNWTyPMQw0NNR1JGHcyD+aWDV2ppmvr0zGqprjeIHYmY7pxrUCPQutoPs85zE
 ljxpNdGx5tvpd/gCv5VTI/x0joGLdGTTDg62cxWlbcksyxyQnrJKAM/MGY4c1RqrIz2H
 nVyyZuzvgfxyD10RNuUwa8LqhCihZeXKniIEFbiT+XfOHVBHbAPmsaJgQX0H1GIPG0Qy
 UFGz00w/bJ27r5yTqwMQtetkyYp6e1LazfRm/n6UxoZ78LpFOBnVzZE1uT/VtatXJIpT
 Bnl28gchUZv2OJSQOUb3PyewFe3nEaneZ9lJVznXEGGEmD6QBMO76Ulveqb1VPA7qykJ
 zUdA==
X-Gm-Message-State: APjAAAUgxmaeZVjBBybr2pi6cdHSU2P9gR7f5lDdu+rzzfZKRFZ9b5t9
 3vl0ajrxtllWBqqS81b7bolunmesh+LlPa4Jxbg=
X-Google-Smtp-Source: APXvYqzzdF+CZBcadDQQ7FgxQnP/o6XEYbYqavRhDmjtnbu3qIY6iSxJZ19yy0h3us/UdTfoQ3DfXKzq9CSpnzx5c8Y=
X-Received: by 2002:a05:6808:b14:: with SMTP id
 s20mr1881239oij.15.1566884439743; 
 Mon, 26 Aug 2019 22:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190826144647.17302-1-narmstrong@baylibre.com>
In-Reply-To: <20190826144647.17302-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 27 Aug 2019 07:40:28 +0200
Message-ID: <CAFBinCBdxLnHsqvLT863cUkZ3Cf_2FhzOMQVTvLbxNCsQBi1WQ@mail.gmail.com>
Subject: Re: [PATCH] drm/meson: vclk: use the correct G12A frac max value
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_224041_093940_ACDF0E73 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 4:47 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> When calculating the HDMI PLL settings for a DMT mode PHY frequency,
> use the correct max fractional PLL value for G12A VPU.
>
> With this fix, we can finally setup the 1024x76-60 mode.
nit-pick: is this really 1024x76 or 1024x768?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
