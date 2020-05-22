Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1EA1DF278
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 00:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ6alGx/wQG2qwlut8TJheSA9cpXJ+4KavC6hhmIZ+U=; b=JiZod8OHX3h/m0
	dG1/8DMkGeTUzOn3k4c3oG+/dtvJtRuu+qhiFAjgA63Li094h7+QzkHZIteqoXhtodPFIbJvuGMZ+
	4htMvm59O6hhshDlTJkfRQfNI980L4BYRZIHFpZhMOmxHL6pbI9k7TXVSdy/+xcxKoZ1SIPwOOqPF
	42YfXNxOcE7Ua8H7FoVyh0PeySwNWpGUqorC42Ssjhg3vQz10dbODDQELAoirQ1F2hU3vIzTmTm3l
	Gj8NWZXM6u9w5r3W25l9jFHCPTN/7xbXtTzl/eFhXQBO4VrdzWihVfx1gypDnJyZ+bO8WGYJEc77s
	MGL6LP2B/Ls8TCFffatA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGWc-0007wX-Dw; Fri, 22 May 2020 22:52:22 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGMw-0003s6-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 22:42:24 +0000
Received: by mail-il1-f196.google.com with SMTP id 17so12370993ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 15:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JuCuXLGKu/Cpaze8rVHktM6qeXHp4VtIRO2ypPo4gW0=;
 b=QLZIQ8kLiBcLeWTCGRfyOjowV7+HXzDQXEAZhDKLtmT1bI7U9b48tq141JFMqTrD2t
 jAWWPMpZGBvUmA0HHVcdGxwKCg4xmi0UIxhuMsszd9KQVeI8Ad4n5RdfGU+C4RuFkizn
 Y9CHtZAqllLzBM/4mkr7I2O60xS5mseslFGRZhJUYlIU1mlTFDKg9xdSioDhdFzgbjdZ
 s3GTwiTM61H0pfLVuQwqEFA/5XSrT58Obzcruta0IU4nn/i4zga+PNIqBZ8hnoZX/Vw8
 Lpn0tOf1O+jUiUzff0pmFzSDtr1eZrAykhzuBob04DZH7hkZMvD4Lt+asCmSjoNirfbo
 X1bw==
X-Gm-Message-State: AOAM531z38EjMa0R5HCjlhOpW62JOGswlLYCb0aapSeOqLyFgPFLG0g4
 gcaCyzW56ZqJ2u4+a51zew==
X-Google-Smtp-Source: ABdhPJzavXPf6QraDSSP+C8Cf0zAAigF73AyOksGDL0HvQxYO0MhIQUfBalrWcaf30LuSiDr4uw5bQ==
X-Received: by 2002:a05:6e02:130e:: with SMTP id
 g14mr15735257ilr.38.1590187339802; 
 Fri, 22 May 2020 15:42:19 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id e26sm4195065ioe.39.2020.05.22.15.42.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 15:42:19 -0700 (PDT)
Received: (nullmailer pid 848403 invoked by uid 1000);
 Fri, 22 May 2020 22:42:17 -0000
Date: Fri, 22 May 2020 16:42:17 -0600
From: Rob Herring <robh@kernel.org>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Message-ID: <20200522224217.GA847856@bogus>
References: <20200522113312.181413-1-tali.perry1@gmail.com>
 <20200522113312.181413-2-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522113312.181413-2-tali.perry1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_154222_167862_AA1BE6FF 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, benjaminfair@google.com, kfting@nuvoton.com,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 wsa@the-dreams.de, brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 ofery@google.com, yuenn@google.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, tmaimon77@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 14:33:10 +0300, Tali Perry wrote:
> Added device tree binding documentation for Nuvoton BMC
> NPCM I2C controller.
> 
> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> ---
>  .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

Error: Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dts:22.28-29 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:312: recipe for target 'Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1296162

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
