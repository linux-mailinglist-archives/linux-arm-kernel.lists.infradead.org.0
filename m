Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6A2B3FED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LqmXrWbJya+NiVC/Oat33Gf9Hq+2JKpXDXYN5mub8U=; b=t8Z/7JqFBfwGXo
	OCassbxd0BxkUlMvJ0riuMnIp5L8lprZ9wvn4sG/GHbVet+wCL4T9ky376ERjXBF2Fbibxwe+bZAl
	iMYs3kGMrIAaIce3WIk2MV0nE86cn9YHSBeP5KZoPbp5pOZ+yJzBc5dPx3afPUi8vrxovUg9C0MGZ
	r4XE9zFtquOUxHTsx64xF/R4p+diFJDDmc9lSFf3kPXYGUq3nA5gpt1J2D8NQ6/Gbs3xHAYSJdS7v
	Y+I/fkIdp58h3jVGET5BAvB9dpThZlYIVjcYIvc/9ynbeezK86B0rQE9zlf7NN4RjPk2gpKp5OwNt
	9IyGhuniSjZzNswic9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vKf-0000mD-9Y; Mon, 16 Sep 2019 18:02:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vKQ-0000l5-60
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 18:02:27 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD28A206C2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 18:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568656941;
 bh=jw9WxCmFRLg9kFz2L7R8cTZs0S4CVzr5+ZqT8UTf1jI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=V23dSxE2kGCR3BVUjTONF1FRXfP1gZhfaFk4gApW297O01495XrpSj2MLtlSUoInV
 kqTTrnnezGyP8I98AdDkAnb04MUJWvUN7Cd1X/u2fHZTGU1pOyUzYkIt1evdGPO1jg
 FVWdR6xHqLvbwo/FUj+S/ARtAPoCTzccCeEmuDRQ=
Received: by mail-qk1-f181.google.com with SMTP id i78so866147qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 11:02:21 -0700 (PDT)
X-Gm-Message-State: APjAAAUR2rWajTzNItfAXh4yLmQEJTta2f+qXabmkuAFncWbA9jgZTyK
 CBWTr2Nq80AON+ySMprpxI8UkThccERmYQhvpw==
X-Google-Smtp-Source: APXvYqwIiBMlyhrPnYeXlslX3QQeHDB1E7HsL8JSZyGmHrkr6hB5Cyuj+9oFg0wnVhS/VTV38+HO6mnIuvsId6+pqz8=
X-Received: by 2002:a37:8905:: with SMTP id l5mr1331558qkd.152.1568656940987; 
 Mon, 16 Sep 2019 11:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190916161447.32715-5-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 16 Sep 2019 13:02:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKDp4kY=PxDNnr2NARZ0HSPrtvLCuTh_9mvaWY8-5Sqbg@mail.gmail.com>
Message-ID: <CAL_JsqKDp4kY=PxDNnr2NARZ0HSPrtvLCuTh_9mvaWY8-5Sqbg@mail.gmail.com>
Subject: Re: [PATCH v5 4/8] dt-bindings: clock: Add devicetree binding for
 BM1880 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_110222_247183_E51A7882 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 darren.tsao@bitmain.com, haitao.suo@bitmain.com, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 11:15 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add YAML devicetree binding for Bitmain BM1880 SoC.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../bindings/clock/bitmain,bm1880-clk.yaml    | 76 +++++++++++++++++
>  include/dt-bindings/clock/bm1880-clock.h      | 82 +++++++++++++++++++
>  2 files changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
>  create mode 100644 include/dt-bindings/clock/bm1880-clock.h

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
