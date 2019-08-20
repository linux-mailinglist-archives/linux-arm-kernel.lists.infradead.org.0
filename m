Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3144196AAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+ZH4qPH+6i3oFyGiXKRzAbUVmW2Qlv5H3mMTPOG154=; b=gPFKSpcUaZ/lhT
	V8LIulja3AjcAkyqCT5/YkOU+t3i3MzNYNn6XRBEX/YYIb8yGNKz0m49cByhr3iSkWfQVaInssXuI
	FsLZrXOwFgwd/9YAmi8sBb6ypkktfm4Z69O1zFl+7iEW5tzH1I2/j+JDwmn/WOkHvp8o1ZRCplbi5
	fxgpV3ln3fR1wqXjviPB4ja8BN9Jr95sNJHf0ZuLUD9EV72Hd/FZM1OSbf9x5qMa1ABbnCwZYcQCx
	14ITfHBHdb6MDD6xsqVr6vnMN2lIqbBCwzNbs2K3N0E5/J2w1+gy2S1me13miedAJlNpId2gNRX63
	jIkCOV8w5u6LNCkDnsGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AoA-00027p-Gl; Tue, 20 Aug 2019 20:32:46 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Anw-0001vk-KP; Tue, 20 Aug 2019 20:32:33 +0000
Received: by mail-ot1-x341.google.com with SMTP id e12so6302651otp.10;
 Tue, 20 Aug 2019 13:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w4HEgBYUNMjs7TCGrEWBfpxm+fwdeijgHXxiJ5I4qeg=;
 b=n+cxQw3r9VdoH9z0HdR0eilm17osw9+QEpFNwmZyyZFQyLtKBjk5ogmKv1iVsFoxFs
 UXgLHSU19Xa67oICY4zD7N27i4et6wEO1NrslqYR9VlQ4oq6UFjPSsAWTMUkrCNGjnD/
 0xQYZXJvbb3wgElE6Cb2YXgKtRwBnOX9gLFFEBu2t0ePNg8ysube6AjuGP3wTjq8RPyA
 vUj5AvC4fySAKFJ0gJXAXdZN69OkaMqoj7TAZpVRHsT9/e37iXrJ7NggT1ZknqeYmDUk
 vaIAe4lJcC1bISZQCqGRRH8putI5R60egJIKazx3OjZpsCCgEBBGfwI2YtXcD4JJ6fVd
 UaDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w4HEgBYUNMjs7TCGrEWBfpxm+fwdeijgHXxiJ5I4qeg=;
 b=GkSi27RruFtOk29sTtaIFofA3LGEuBR6Cm+zu5muPKyjfU0o1dKCOJP7ajZaLqMz6E
 yuNEsxrJDlrhZsC1bzI8g6GYuDlw0XTI6QNV2eXdHk6qX53JxuZ+VXgNHkbfRHXcMFTg
 sQvckRmsqNR0bcJQ+b27ovNxCBSsHomE5NlMjc3gpORnNQNpFEZUkCKL+esuU+kW/XyV
 xBqKSdUs4VXrybaEXm1f+syHJNcWzyowjrf0nTV+2ZS4h7qhx10TairVZ8OZkemi3ctU
 cm7ivPcoEDlfSvCUigYoFALCLLRRODVqRpOjlF7wr4FqJ4spsWnHYP7tNnBQFsBsb1g3
 nojw==
X-Gm-Message-State: APjAAAVjffK1S0OEzpy9zySZqGzBzbBX7IBw3KTij0btAFkS9spoDYe0
 NaskjK5Hbn806mdJ8FWSb76yE5V/zmkzPyz3vefQyvI9
X-Google-Smtp-Source: APXvYqxlvVNpQ+FUnoPDePRzlt/lxOoZg375AfFU3rjHLbAwedqV9QU2sqj3xfsgHWhpAmkjk6c5OkDmuYet9+FYRHE=
X-Received: by 2002:a05:6830:1e5a:: with SMTP id
 e26mr17408901otj.96.1566333151468; 
 Tue, 20 Aug 2019 13:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-12-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-12-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:32:20 +0200
Message-ID: <CAFBinCBWFNJNAWdeZ2LfEJA-MVpSf-A5SrLZEx+0z_P+-iBFDg@mail.gmail.com>
Subject: Re: [PATCH 11/14] arm64: dts: meson-g12a-x96-max: fix compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_133232_675050_B138FA0A 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 4:33 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-g12a-x96-max.dt.yaml: /: compatible: ['amediatech,x96-max', 'amlogic,u200', 'amlogic,g12a'] is not valid under any of the given schemas
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> -       compatible = "amediatech,x96-max", "amlogic,u200", "amlogic,g12a";
> +       compatible = "amediatech,x96-max", "amlogic,g12a";
only partially related: I wonder if we should add a s905x2 compatible
string here and to the .dts filename (just like we separate the GXL
variants s905x, s905d, s905w, ...)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
