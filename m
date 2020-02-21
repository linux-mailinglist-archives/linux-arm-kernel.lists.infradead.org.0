Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2740167FE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:16:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyJEVgkAWn9GqXLZX2gwrT8V1S7Ew4NOM1UAV0TDsyk=; b=jPfYzH20fffujq
	IuexhShqUNgyq7NZz7u1msgJw8ojsUMLIJkg4VKmoSKj+fVAfvyjbG7mXLf3ucFS9UqHtElAibIrT
	Y5Ujmhs0eAjjny1dWkPrpF2q2crt73AhVJAxBqcplMun1wAzv0uUSzDbQjJEHQG8iD8mq7G4Ca8Fh
	HKIjTnvUcsXXaTT2l28vGj5dtL9EEvBfw1O/Oip6jj+fuPLhECt6cGPhoNTr9wXB5MMDEdCch7//H
	NyUt5tX6UPB9/acBRIDMB8aUQT1XjBBrYigsbrPbVCHlVrv4FWZD2JzRyIxVL96M+kY67ndhaAjX4
	YTbTlUce9uxSLqwB4fJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j596D-0002nW-82; Fri, 21 Feb 2020 14:16:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5964-0002lo-GC
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:16:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id a13so2324786ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9bkxUVE/BaGEsePvJG94FHSx4HKNwzho1ZimVG4ZU7U=;
 b=NHFJssvv1/a6TfSVnJMOtNTzSVZKMxcb+si901Fg2lUVauvB20CGGqCqJGgoe+1e1g
 Lbj4ou8rjIPF9xv9DKAYH90jZ+mObOp0rIjvZ7Dg9ySiio4iaK/btk0x2htCZeXbtCIs
 s/6iqp5Gry2+Cn6zijm95lF/j4t7ZzDSE8o0BWPX8/4eSxMP10r0KunPtjnJkN+cxZLS
 hrO4qp8YYuGoiQqOtGRt/oBkz38Qo3VLeSWUeTdL0KgCXOFPncrLa26IHW488Fp/bAVV
 JyVPUu8OgRqzn7esCc+CO76f3ej/1vpiQrHunvANngKpIiFP9V0rPnMltKixXQJd4lQO
 EcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9bkxUVE/BaGEsePvJG94FHSx4HKNwzho1ZimVG4ZU7U=;
 b=GSiC20gs1gZMLc+0aPXqdyCoTWXTT+rkbSPEBMu/8MMTx2KDJyRGVJx+9H74dgJ2Ki
 6ncIcmxZ0SI10PKchFOzgEI2OXBoTfNd4k45VMjM8/cxUz4Tdy71rbc4Vd01UXX44SDv
 kUtZx35JvpRawjFftN/5tQA7DqXaXrJCZWWvdIBkdUpg8y0Gij8ZrvsoVpR1eNlU2BPq
 3Ksno7fZS0ZxhMjZbMo/KnV/KuGdVCVrEQ5OIHPFDhJA2GLOJnoWLved/6g96dCDbkY8
 CSncPP+VViTT3OfMuXMdB3xXBw+QjoCoiFQ+7VOWAAToersmauCiXHBPre9xB3wMHKSe
 ABDw==
X-Gm-Message-State: APjAAAVr7Bm3TyyCzbdxo+ekOjriVUGW+IMEdJnLj/HlYD+WT6FJw7de
 7tRpEb9TEOtJpf91RuAiIcnPEV2z1/0xmi3kLbNEKw==
X-Google-Smtp-Source: APXvYqyMEW7xOoeU5aAqEunqkJEjZidoADakWQrFSuJrs2CPUv7HagGQ0QOJnoIk9QZdE7SPDJb+a06x21oCDVibGj4=
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr23122512ljc.39.1582294562607; 
 Fri, 21 Feb 2020 06:16:02 -0800 (PST)
MIME-Version: 1.0
References: <20200117213340.47714-1-samuel@sholland.org>
 <20200117213340.47714-2-samuel@sholland.org>
In-Reply-To: <20200117213340.47714-2-samuel@sholland.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:15:51 +0100
Message-ID: <CACRpkdajokCMpJ98yfFp-s23jG96wO_N9R2ZXvXB+hU6XMs=ng@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: sunxi: Mask non-wakeup IRQs on suspend
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_061604_544099_EEC0E25C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 10:33 PM Samuel Holland <samuel@sholland.org> wrote:

> The pin controller hardware does not distinguish IRQs intended for
> wakeup from other IRQs, so we must mask non-wakeup IRQs in software to
> prevent inadvertent wakeups. This is accomplished at the irqchip level
> via the IRQCHIP_MASK_ON_SUSPEND flag.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
