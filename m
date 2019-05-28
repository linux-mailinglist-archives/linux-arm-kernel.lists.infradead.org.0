Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B3F2C167
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhVOrNQS/l26PkR/bz5vTCCFRQww1sit+9+8vUaGAo0=; b=EY7T82kPgPGnJ3
	fO3JXoa6Z/VXnDMNqpUQpAR1qC9ezpaqQW+NoMA2rTPizrMvmpJa8YlY0f1jVe/v0aALecZUeDp3+
	14Pv9xz52o3tTqSuFDXGDEEODbpnLjhNZSuUs7/lYRnWbyqSvv8F64i6fID6yqG5hoTbePdh+eLip
	Hb/2WngUdBdKWpSA1KJLk/+tfZhBd1KCmG2A5jUWxe1jg6Mz2Mb5+5HFHzwJ/8VMnXuw1PLlKkXRz
	ppe0T2OAqSSkkDpgY14d1n3NuvY5jir8/Yy1s7wAQ4l3xDyZYwNDHXwPAhvZiBOry5s9P1ao+g7jy
	imxcRLYcRHi5vRDoZoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXYt-0007vB-2N; Tue, 28 May 2019 08:34:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXYl-0007ue-5H
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:34:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id y13so13857002lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rQlVBElgqXAsDEjOxVj9oK5E1X6lwcA+b9Oa3dAIje4=;
 b=udG6T27C4vdJ8zRIZhbkTWMPAJ+dtGnvQtSiuSdnq2ColNYCkE2PvnvMty+raYMKkH
 79zqDkoEkMJF9R85zm4zDZKeR1iEwuZ1Rt2B+7EaLfrK3bS9lgX4yE9ilGZce6u7iY/f
 /5zfPG8/NTnl9Di/S0ey7teztK73hy3mpScooR4aD5NS/9bOjXHjJ/SiVz9wVGIwqGft
 i20oZVz4vT8ysrW4zdU3vX6l2KiyA4aHJQ4nuM69GH4ko2LsN8KqUlm77NE5fw8/4HDt
 VMP57lwYrL2WWQqTCihljvptTWeMX9JPy/pgr/gUXnIqU/UewvjvBC6Pf0LBre7pVqZM
 xgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQlVBElgqXAsDEjOxVj9oK5E1X6lwcA+b9Oa3dAIje4=;
 b=hG9wdfzWfABUsOJwqPr4y1CUDWbR0Rh2R6715u983yYiiBb69D+9poMawu2ai/8C2V
 g6KOxszn+aHtamtlyloq43/wDStTIyfEGqc2ZzVNJ62O8G3+HjCUIcLaXlZ8mz1mA2mD
 9IR1MoWc9ZPfPQNB4eso+bnpZrvyJIUBqNLmQ335mVvg1vm583zgu8orc54DsIBDAYB2
 C9Ag4hegmZLPd2YgEg8jIhU0JtYnIM5UHs3ikFnlWUZPsLKlGb7S6PdIZo7YNwiBuH17
 rtuDEgqqqY0Fkba/LyhTh75y0n7228RhnKREwsgAcwHEw7PhfVi8C0+WB7KUcjl/3gnD
 YPYg==
X-Gm-Message-State: APjAAAV59jfg4Aq+sjaWCmd6fJX2TW8S231sh4aPsdWcwa7aa1P96PWO
 ISG6DT8hEKq8WtvxTEJ3fwED1iVc41hUfGUGlKXX+Q==
X-Google-Smtp-Source: APXvYqxEgjRjWENBkz7z95vx7w4Cpgl0m4NZZB0qQ+U9+mLZUVcLXmiPEJ9MA2A3h94RRT/FZGoGmDskw0N5eZFtLck=
X-Received: by 2002:ac2:48a8:: with SMTP id u8mr11205394lfg.141.1559032452849; 
 Tue, 28 May 2019 01:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-5-ard.biesheuvel@linaro.org>
In-Reply-To: <20190527112720.2266-5-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 10:34:01 +0200
Message-ID: <CACRpkdZt-AosWLPcwDQqi_2i4adDk-ioT3g3aTicyXiZpQOGGg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] gpio: mb86s7x: enable ACPI support
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_013415_341546_CB53A97C 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 1:27 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

> Make the mb86s7x GPIO block discoverable via ACPI. In addition, add
> support for ACPI GPIO interrupts routed via platform interrupts, by
> wiring the two together via the to_irq() gpiochip callback.
>
> Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I assume you want to merge this through the IRQ tree or the ACPI
tree, so go ahead.

If you want me to queue the whole thing in the GPIO tree just tell
me (once we have the ACKs in place).

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
