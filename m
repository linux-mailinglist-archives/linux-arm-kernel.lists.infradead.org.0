Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67A48157C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTXUHd8B884Zyi1vz4HH6TQZnC6tjuYRz8coqWRfR3k=; b=qrsReqQMU0xK5N
	yFYzRe/uxFf6Z6tyhP8WpDbX71FwpPuFxb7OD4UdOoUUYyXjvH/RRm2Z9to1Ab1/lKtHVb4nPy+T+
	Jq/KIQuNGLKfOTflWYroPF6736I8HXWDozqzO8RDy03dNYl61atyXa7OgX6E/E+RyTSf38wMrFLl2
	QpZcfOblu+FrI5MG9br4sP7NbuUaqdXSGMqGHwVEAEmnamZ24Cu7dmHKj8sEa76VbykQOQzwDbbml
	hLVHk9ZCnHq85enBa165zhKDHlvvHzUHkzM5gVx902TWCMqZMiYCKS4lRjd3ZXabub0RRMIqIoFfB
	rJQYCQt6Z4CFffmShNig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZKT-0000GV-QW; Mon, 05 Aug 2019 09:30:58 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZKG-0000FK-VW
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:30:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so57482049lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2F9uPCRSmPiTo2hK4r/nBZb2ETnTkjzstupTkcKIfow=;
 b=t7U6r61gh2G+txxmAuRpaIMbfCPRaDMyyIO/DfFxxg+JtNnGBLZnUxPz1OT31MR8Ta
 u+bgHQQrsqGfkRbNhJKzPtenaidsGBnCiThyLb/tzDCpvLiVaH90rNOyUb/jua0ryyG+
 nV4IiAWVB2f+6NLuV/5aG0usZKw/35iQ1ehdXDFboqr9ZKKz1MWi+luLMSLdXOZbFmXl
 8UtI6s3GxdQ+zbEt7opMRSYufzsClWfsWpvLl3KSpb997MD0EBvKNNuqkW3X/eYjtj+Y
 IulB2m4FlF2d7DwCcYEvXhSTTA1xAcZw6ZaYLGTBZtEJLhQRfIwYKHJzat/TMsiluHdf
 AQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2F9uPCRSmPiTo2hK4r/nBZb2ETnTkjzstupTkcKIfow=;
 b=lfBP6i7PpT85KmFG77o7VmdpuqREn4zRKUZiGp+SqOnIn1ls5jGzp/GyZmsS2hwonl
 BtpeMivaihAf9wr+Fyl4+XILh/RjOa6tzlCzf3FNvlJkJGwOPNRMOgOPo+7KLcCjloAS
 x2sXBXLEOycrMKthLFraIvMFJHxLUfKN5lRi5y5aqO+kW8Tj5iUTZpAFi4qDFb9ute7C
 FBuvxWP/uGJ5KdMpkWnAIVdH8Ks46waSIw/6QBz/+X5V/1sbea0o3K41RQPCis/30uxO
 GnH4Oht1eJnlAVQtSEjpkqOvote3nOgHXqq+Zr2shoQJXmMzzjPkvxppAa0waomaqYTJ
 Du4A==
X-Gm-Message-State: APjAAAUt2SMQ0l8iJYWHoQNk8+VjwUQ9kM67yRrs7cigOLRbA5TxhKli
 nrDPRuMM2/hfBFUtLJpgWbbJ02V76Vk5pnIkQ4PmXQ==
X-Google-Smtp-Source: APXvYqz7JBE9oQJCNW1UI+7INxOFq+v6UPMn9y4R/8owWAYGv9h3lldCN/2lgwanhTATZmfTmuSrRDYfei2zMsXMHWs=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68650031lfh.92.1564997443136; 
 Mon, 05 Aug 2019 02:30:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
 <1563776607-8368-2-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563776607-8368-2-git-send-email-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 11:30:31 +0200
Message-ID: <CACRpkdYN249RE+=MpKz0X6Y9rX=hMQHPQmou6EMdCkO-m2LsDQ@mail.gmail.com>
Subject: Re: [PATCH 11/18] dt-bindings: pinctrl: bcm2835: Add brcm,
 bcm2711 compatible
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_023045_043743_4104CA22 
X-CRM114-Status: GOOD (  11.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:23 AM Stefan Wahren <wahrenst@gmx.net> wrote:

> Add a new compatible for the BCM2711.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
(...)
> +  "brcm,bcm2711-gpio" - BCM2711 compatible pinctrl

Completely uncontroversial so patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
