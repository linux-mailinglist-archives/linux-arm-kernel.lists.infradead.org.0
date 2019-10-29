Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89462E8A56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66XnIIraf0puB3S8BSG0cogotNwqt7S0wjzxSYfseT0=; b=VNyLtKGhe/adMI
	yyprTziEeaLbzvIJVH3b1YnG2OYmF7FKZ0xthFfpEx9+26WehR7uVPLEtt791PrDaq1rce+0GlC2K
	qjKURWfyFRqO2tBla+DXCuGXbCt7/qEF0+UoO1GjB8aN/afguDsQ+UHIzq4LTPf9hTlm8IpABN/ez
	rKfuA6XtvPNElOBCrROi7OyastjKLoibCl4m1XJHqaI/2vXfy/6lkj264YuLcXJVqNB+SFIcQz9ly
	lLeISINtxrm9teADR3qIhP8GdddL9riQIAsXNpEF07/oTkXO1/s5XqVNm5S3gskvDmZsEwPfbGK9h
	abZ1uLRQMwgtpiengOVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSDQ-00086L-Uf; Tue, 29 Oct 2019 14:11:20 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSDF-00084y-Ub
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:11:11 +0000
Received: by mail-vk1-xa43.google.com with SMTP id g14so2894641vkl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 07:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qWQITowh2Q0URF8H93GkuN79IW7ti/9RamrrjfoRUVk=;
 b=h7cKfUkNWgcSbLAWYz4BISnFwmYI2VDiKZEN8ZZ7p8Ok5B9kE0GcFk5wg9OhEyRfac
 +uKRRnQaQQOKfcG+eve50vFu7RYt4z3rm0yYeMBRasVXEl8jYRtcOnGImEBJmF9NZ3/h
 knguFIME8HMdDm9vkd7xI1o4lOm80lT2wdyzpIrEQE6GTUBND9fq7u/0gtZ6xlgpW6Jq
 O4aSfkwK96xqCFtznzEnoDyw0A/A5nW5tbOv5coZSd272y0ZBl8Ls+Xykt4DdofuS5lz
 aAZ5B4454m8i+fvRh83Xg52rz9XpNmTe9kqLkotr0NyfKWeU/P83ZBQwJit3di2XrkI0
 aBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qWQITowh2Q0URF8H93GkuN79IW7ti/9RamrrjfoRUVk=;
 b=gJNo7ihxZhUgenRTY2GK5UDpDzEHs78QKLYQeeU8BKUU04qH1mCKrH29Y1D82vZ33n
 JwaN4WcTHHq/s9LI6TIcp2G1EQqCecdB8UA+9NMOJp3jAV2vKl10eUqtH6uSLOjLn2px
 916KXXr59IDok17ZdbqVMN/coOM2J/8Ev7NPd0wWEVXfIftjKDYoPdzenOD7RYnC57n2
 9CqTcnGL42ViPWt1YI6UIGc5WZZVZyUuv4f07wsYIMxlR+gV3MiRDs5Tu478mQJMVtP1
 50//faeYBkrB914sHNK8oksk/2P3Rc9P+9PvPssGW4cxrfE3FYlxxyyBGEoqUsGXQR62
 e6rw==
X-Gm-Message-State: APjAAAX5u2JC/14z+uIXr/zTwhNCXUk9SkAiCs1E1Z2eCB1Qm4UtZN5f
 AvCab2/e6ss7Nh2FE5IoNuRXcnnhQH4IZZpUf8pzPg==
X-Google-Smtp-Source: APXvYqyvtEDKet+g1asc4zUlmseGUxMCp1V2qq86jFU4KX0I6BOVylj6yFCCT+WvVq59xqCrit+FjGjmAUi3kzfzjVk=
X-Received: by 2002:a1f:7d84:: with SMTP id y126mr11721367vkc.99.1572358266851; 
 Tue, 29 Oct 2019 07:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
 <20191021064413.19840-2-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20191021064413.19840-2-manivannan.sadhasivam@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Oct 2019 15:10:55 +0100
Message-ID: <CACRpkdYNB9RR2+u-yCPeyiKc56NTcSnkDZpvOz5gxXSSgjKbHA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: gpio: Add devicetree binding for RDA
 Micro GPIO controller
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_071110_002068_67A828A4 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-unisoc@lists.infradead.org, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 8:44 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:

> Add YAML devicetree binding for RDA Micro GPIO controller.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
