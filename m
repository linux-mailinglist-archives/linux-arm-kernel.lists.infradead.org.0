Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B9578242
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FDT9eHyxq42ELDTvb3bUuPm/8XZWiTgyo38XGVt6Lo=; b=AYHUeXt/CJccL6
	nbfGxefwN+PPmMQQ5sgzZxymzWBxGhfmTcFk26G5b51GQpEngr6A74J76QHdqAvT3Z1vYvlhnGyGm
	zwQFzkVSJpaY2elDHN0nPFJF6dnKm0tIEzUOYc2R0c22es4HkUnUQcf51CGTNWjPUZHPJnxgN1RDx
	Xg7gwdmxUJAd6m3rKQqkBGyDuW9VCpMNiu7lY8o4xk/+pQuEQ3AHk698EzLZ3Jgae/LVKhxb9U9TM
	BT7G4WeeJlElVclFGL6OiO2voCfdHRX8PtjMW+S9Dt1UNisIMOwg3IZFbIYSjiSEGIHGDJFDOHSgC
	CWlb5xAm3HrCXrz+GpSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsH6-0004VQ-7b; Sun, 28 Jul 2019 23:08:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsGr-0004Um-8y
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:08:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so56714269ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O9XQGnluX2xcbDyPaZOiLCfhELVR6ARk9hMIDpP13vM=;
 b=jKcqI13c9E5QyILvaIYgYgRYmaryyYWNEbMQEoOKb37DRDPRNOQ/CmltyhtMOQ2HUS
 fBQywfQcaDwy5p9rj+8V2NNg7KBeis8WehmdgqEW5Hu1ZeboAzu3lDjxHdXHxBbTO7Lx
 wDKj4rAWrziNOZnQyYVQ+4zZKDCfxpONMitQU1nbGcWG7h8+KNIx8WxymkjFgV4uMLNV
 gTq+TsDheRts+0kwZ1pF2AWFFE33LUDfPgNcsfFAF4eoov8vIDeqAwwx4d45q4mUQi9d
 67ctbyLdpbL1YoTtScBd8ekPRHh5pa/7kIj+wl9FXlgCXSCG/6KI47rzPNoSFd7zFwFY
 KPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O9XQGnluX2xcbDyPaZOiLCfhELVR6ARk9hMIDpP13vM=;
 b=qz9w2eQWJHYvQbAbuUF5BEa+83E8TY5kkK1HOZ7EXQAf4zD0SUknm3kHf9Dey5EaCW
 WMdP/NgI7nmwv6d6kHpZJW7W2iUL1GB1zUZzKM9iiueXLi42zsn7uSicnu1PXFF13Msl
 AoP8Vnble2A59eVoeDpJ3ss+f28JOYV0rfYnwaCqXUvg/UfzS6U8z2WOJTsewN6AjX6q
 p2OjpEeB2Mvwv6NkLnj8jHf2P/dxeHnsAhpOi3GS+dtk3gXnwQZHN/q/n+s5gQDi2HKX
 zqvMLOr5socDguRAqefJp/XsqylH51RdUIhbQY1LQC2drYRVh7Et+Y3kPgsWKHp/i+89
 Ng4w==
X-Gm-Message-State: APjAAAXJjAkOPwmJSYZN5WTYMkRgZsminxoQHVYuCRVP7G7B5W4E+Vcy
 bzXs3Z/BA84UgmdFe9mlL+BiZVSOLAdewr9yfII0Zw==
X-Google-Smtp-Source: APXvYqwEW1LqfjiyoWnevFQ68/gbc/RdODkVK1fGIl+hP12fx7TSPrM4zpDWzDWByLH4DWsTBNenxT7LE1B+MwCRLes=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr56865504ljj.108.1564355283784; 
 Sun, 28 Jul 2019 16:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jul 2019 01:07:52 +0200
Message-ID: <CACRpkdayG1yvCewxRwi3BD-EM-NTXPS80Z5T0WONM3m2u_Yxcg@mail.gmail.com>
Subject: Re: [PATCH 0/5] pinctrl: uniphier: Add some improvements and new
 settings
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_160805_332341_4998BB14 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 12:29 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:

> This series adds some improvements and new settings for pin-mux.
>
> Kunihiko Hayashi (5):
>   pinctrl: uniphier: Separate modem group from UART ctsrts group
>   pinctrl: uniphier: Add another audio I/O pin-mux settings for LD20
>   pinctrl: uniphier: Add 4th LD20 MPEG2-TS input pin-mux setting
>   pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
>   pinctrl: uniphier: Fix Pro5 SD pin-mux setting

Looks fine to me.

Masahiro, can I have your ACK/review on these patches?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
