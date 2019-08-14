Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565BC8CA7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 06:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llDoi/mkiCxNZnCR9wzS9rn0PGXko4zcNdfsWaW7CI0=; b=QAi3kNZ4HYOFkV
	bzEUsGeQFt0q2lo/0VlJZaV4XcjMKlaAPgQN8UXBRcyjBsbrw3GeVHBaI373g0PZ6PpLv6Vnm5nVQ
	VahEfIMdMxSo7ei+gNSztjY8OzaYxybhrsfFd5K2/L5H44Ogcfemv/Utvp3TM+smcnY/SurDwVmOl
	e0010HAsubaTI2NCQGCLuTnnHKSzSc1pcWcO+LprJyiNshNqOCFq7kXH3z/0p+JDTeJs3MxWyZfBi
	FsHL69/U0tiLnceJAudhna9+JJb49Xh9XyM6KYAYkc25n/zWOwjmq+/9M0rQKN3yk8+W1YdsbC8R6
	dww73jPjk/kYbL00QUZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxl9B-0000za-Ik; Wed, 14 Aug 2019 04:44:29 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxl8y-0000yk-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 04:44:17 +0000
Received: by mail-ed1-f67.google.com with SMTP id f22so5916022edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:44:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Z6D8IiynDoonRo+cCux5+ugmeKBsc4T5KOeVrjO/y0=;
 b=T+PRW2cRbG/yGRv66HxC9Dzrsz70vFcSgPHpC7t90UZuTeHrNIpNtmT7LBAwjrtvVq
 HmJAvkuaWAr3HtPlbxaHzf0ZcnQbaZq8EPQSiV7xn1QaiC3mL9N9ukUihP0vlq5OeEk8
 6m3uZigDfFtMqXLYh7gRdG0shGgeIs9DUJVSOIrJmsZaPGiDJ77has6ueU3hglwwN39t
 bhfPd3j8yN9bM2NozUtELPyVCUErQxWo+2f+pL1pJwO/thYSDpFcFpgmQtv7ycCL39pw
 oSQNGw8h2P+DRQBjgJSfUSsst21244ixeDvDwEDylyT/38m0dIFoM3PiQMyD/WBmYSRw
 OuQQ==
X-Gm-Message-State: APjAAAWyJ0/dgTeiWGn0YheM8vOe5Moy3bWYoDJZBAoVYCKZH6UDy8O9
 uAmPiChIOnCB7qq+h8iIrgkJDgDgHPU=
X-Google-Smtp-Source: APXvYqzRhtVjVvNa0gln8bE9DDGX4QMebAFDCQJbO7rYiy5cgleM6BkHjz55FeDc5SjEux7lUhfnhw==
X-Received: by 2002:a17:906:7d3:: with SMTP id
 m19mr12847112ejc.70.1565757854677; 
 Tue, 13 Aug 2019 21:44:14 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id e24sm14886292ejb.53.2019.08.13.21.44.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 21:44:14 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id p17so109747257wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:44:14 -0700 (PDT)
X-Received: by 2002:adf:eb0f:: with SMTP id s15mr49717223wrn.324.1565757853951; 
 Tue, 13 Aug 2019 21:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124744.32614-1-mripard@kernel.org>
 <20190813124744.32614-5-mripard@kernel.org>
In-Reply-To: <20190813124744.32614-5-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 14 Aug 2019 12:44:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v66C-Mqdo-xWm4RAw33sFk-gLy-L_YWQ__6BjYU9gcpYug@mail.gmail.com>
Message-ID: <CAGb2v66C-Mqdo-xWm4RAw33sFk-gLy-L_YWQ__6BjYU9gcpYug@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: sunxi: Add missing watchdog interrupts
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_214416_760525_459E362E 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 8:48 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The watchdog has an interrupt on all our SoCs, but it wasn't always listed.
> Add it to the devicetree where it's missing.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

On a separate note, the A31 has four watchdogs in the timer block, and
one interrupt for each watchdog. Should we expand the node to encompass
all of them, or add separate nodes for each additional one?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
