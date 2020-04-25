Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A59F1B895B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 22:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EySHj+jZY4B+gpmOLQwEgLS8a5UhJsOVIo834l0EXRs=; b=YOu/w+iF/pTv0o
	4iTNSPS7ROKp2jLNPTiaNWhSsw+P5uHTHSKY0W+53VE8vMivovYZEQQu41hssbKGZY+uIHN5g2YW4
	gora/teNh1aa5QBlUpjWRSUJvxr8WYUIlKI+aO3i4We8SbD46TqzUbl98GbYeHo+Nc8wBJP4qTcJM
	ywWTmuRGJAxNEjZNf+MtiQ6ZB3slIpxMtbI8zmJQM8egPQvF/1nO8LEYEIenpKRZATW/lTLfeZ1k6
	PW6MQNeoqgNrJlyvuSWMYQ5Gha/NOv9aPwWIwcKBR+i0Lo9XZeBtkjm7X/pJc08f6k6ycHOReUMzg
	HGOQ9tESEE3CUyOVhQXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSROY-0000a1-Iw; Sat, 25 Apr 2020 20:27:26 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSROK-0000YR-QK; Sat, 25 Apr 2020 20:27:14 +0000
Received: by mail-ed1-x542.google.com with SMTP id d16so10225095edq.7;
 Sat, 25 Apr 2020 13:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IPXP9AG6CyMHwvhiLeR0KlplmUcjSJkUmZp77wk1l9g=;
 b=NoqOhSgZhoRYluDHJHUFB+kauGxccJeVEPHUgz8N8fBKJFAd/GOfMrebVzOQYadHOS
 DlyyXSCPLxaQdQ/XsKLePfS/8qguUJN9jsgFjzu7G3KJJXza69whjanHRB2KXhMddniw
 Ya5GKJrAVP7QLjXcITtFOs8gQMUWa7iz4WeKXe/6Z/wQA8Aj51aSYKrlC9BX/b6voHqK
 JAWBNoPRXGGsYcLssKYt6xyBoj6KtJqgL/GQOfA6H3Mn7QYqwmqorn7IHvS9f+yb3trI
 p+LXosikOE8zhHI2/hKzUbfhmj59vZ8zpCK4nVc1A2IYhbGMhMU/8d7x//wnLTrPN6C7
 FW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IPXP9AG6CyMHwvhiLeR0KlplmUcjSJkUmZp77wk1l9g=;
 b=Ej+3ka2OFn2FDjZ+433NTSN9/dRVuCe3j8aHjXxHSk0E4tipaTDdBK7XFWPzD3K8QS
 wUqfTvWe3RLZyJY28+NZlmyQoJkfuvy5b72kqzyvb83SLkAcGv+S2XmYG+Bnm2RYG9Hp
 7DnSuUQBZrRW9mwbmwiP0sYhmTxrf3BxBGAevmlPVJuR6jtBeiRpTwaw9cBnVOLAo1OC
 ilqnr9KQjxQiMJueoesxf8aJHOEJlePC08VuRy0wO1z290WV4yF96GZHfzTCLUPKNdIQ
 KhHZpW3cdeonP/McTSAMZ/4XVdpDTnHjLW1bbZzOvltB1v1HlGzGJ9SrFQA7cRlg+eT/
 XLFw==
X-Gm-Message-State: AGi0PuZpabVRYehIndlVTKnMBMyLaVsFyOgIN8m/PkIDgOGMWTG3+cmN
 1v7E7DLEhcFEZObNytgjpUgF11+XTaGR/pOriys=
X-Google-Smtp-Source: APiQypIBtvX95XX9qITNRM1xgR8d73vnd6WA5gESMb4+LvaDjbdFZ/1FUtmDRTVkhas2VMNe8G2kSLrWfJjsR6sr6sE=
X-Received: by 2002:a05:6402:1496:: with SMTP id
 e22mr13037214edv.301.1587846430298; 
 Sat, 25 Apr 2020 13:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 25 Apr 2020 22:26:59 +0200
Message-ID: <CAFBinCDCv-zNf1FX+8FHMxcNdJ_69yog+O_=QPz3Fzryg3ynAw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Amlogic 32-bit Meson SoC SDHC MMC controller driver
To: ulf.hansson@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_132712_879237_4251320F 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jianxin.pan@amlogic.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 yinxin_1989@aliyun.com, robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Sat, Mar 28, 2020 at 1:33 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
[...]
> Martin Blumenstingl (3):
>   dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
>   clk: meson: add a driver for the Meson8/8b/8m2 SDHC clock controller
>   mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host
I have Rob's reviewed-by for the dt-bindings patch and three
tested-by's for the MMC driver in patch #3 (which means that patch #2
was implicitly tested as well)
I tried to answer all your previous questions where possible, but for
some of your questions I simply don't have an answer.

is there anything from your side which is holding this driver back
from being merged?

+Cc Jerome, because he is the maintainer of the Amlogic clock
controller drivers - where this series adds another one, so we need to
coordinate where patches go.


Thank you!
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
