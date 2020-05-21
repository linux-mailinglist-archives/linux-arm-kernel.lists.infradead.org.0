Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679421DCF09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2ZTrbuldeADj21sKQHSrFPUPr2Nt4GiQEY4EL0gH4Q=; b=P1EElg+S+EMnYV
	rhzwz9lTt4tld0ZqiVi9HOflfpl4l8IfKEz11pQFsq9SQJqS0elLrfCuDRmomKnWFp3DjKlybzYyv
	U9kRoguJ/Nyx8t9juiRNv6UdVl1tsVPRCSUFzCHrj6tX65Z08qve9Xunw/TspXpD1ScvEHB8FI172
	9CFFVuXig9BXWesxbe6SLSNYp410OMR3Xnght8aKt7XUIFThk5bJYNVZ0ei0mgNxy1v+80T8NT+JJ
	ntVmcGitIncsHj/27HQRlhwNfXHXYajJ9JHjaX0vRPx485iH/g2wC7VGJqVZ0KZgg98Dc9xrLfgXV
	bwxpU9s/4j/rA2fZLjEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblsB-0003Lg-RR; Thu, 21 May 2020 14:08:35 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblrx-0003Ji-Rp
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:08:23 +0000
Received: by mail-io1-f65.google.com with SMTP id r145so5204979iod.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 07:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hkdAaLYIc0WsgyOtF7HphxQvDajMRAVCt9ecUnq6cSs=;
 b=lwcb63SP/FCU25Gz3YMkfmF39ebv6DdfxL0la/JUTN05RxhZQYSb/hWgLSEyrnE+SP
 zTJBvUjulIstTUjcrIvUy9pC4w8Vxn+um0uG6HDHPrHezzYusEuUX6cTNC8Rn1DrWA/E
 Qqj41t283Zj35Uzdv8MMLjW/uHYgqTaJWKwrz26829iUgDuF17jlDbJE8JHCG1syza/q
 YKsUE4LmLd1dA8xKYmxEOh+LdmWoJZdoKAel0p36y4idP/N0eddE3rbohZAAYlowgIkn
 zcwdvdJoZGqixGCE4iKgOYH4/k+qu71zxJ/NWJPEVnfZtA+N0oiWjM9EJQvaQPNO+MfQ
 SbVw==
X-Gm-Message-State: AOAM533MefDwb0FZKtlBdSL60qCob4NvfFP9e6o9nnzIS4zYfcTmLAB+
 c73BuqtXmcDCoNHT5TPdhQ==
X-Google-Smtp-Source: ABdhPJzuJXTY4mbZgkKCxsK6OiELIu9X1jZKqPMjnJt3n48gVbBt7CPOXr61k8mGVP/9ied0TyLdOw==
X-Received: by 2002:a02:90cd:: with SMTP id c13mr3832204jag.83.1590070100265; 
 Thu, 21 May 2020 07:08:20 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c13sm3060220ilu.81.2020.05.21.07.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 07:08:18 -0700 (PDT)
Received: (nullmailer pid 2308939 invoked by uid 1000);
 Thu, 21 May 2020 14:08:17 -0000
Date: Thu, 21 May 2020 08:08:17 -0600
From: Rob Herring <robh@kernel.org>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v11 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Message-ID: <20200521140817.GA2308392@bogus>
References: <20200520095113.185414-1-tali.perry1@gmail.com>
 <20200520095113.185414-2-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520095113.185414-2-tali.perry1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070821_905121_D21D024C 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com, wsa@the-dreams.de,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 kfting@nuvoton.com, brendanhiggins@google.com, ofery@google.com,
 linux-kernel@vger.kernel.org, yuenn@google.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 12:51:11 +0300, Tali Perry wrote:
> Added device tree binding documentation for Nuvoton BMC
> NPCM I2C controller.
> 
> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> ---
>  .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
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

See https://patchwork.ozlabs.org/patch/1294210

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
