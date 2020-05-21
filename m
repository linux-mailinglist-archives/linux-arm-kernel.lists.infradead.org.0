Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D241DD7C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhN05r1vOBpHJwFBXjJPFihnT8hucXKZHtM5EAt2AkE=; b=MIdmAIdxOuv/VA
	o5v0wnC5Xxbbi9yhcQY5Gddr2Y4A8hDJKXzE9LQvyyS7h544kHQLJncOCkPP7o20x9lXqZXlOe7o9
	Tki0FgLcisqabgtjcYNixXnbaHhN6GVRB+yCUxqvY68QsAqN/DqXBPqb/nV94oSTVnP8TH0bbMSCM
	LhY12R9BzYrzxocfzjTqUPbb4DgVmzSqIYCHL2aHeTXhfM7b8t7m7NqhpVNqTywaIAWKSr93GfCzE
	qbGzCECiDwtCaBNworfAmY8hfEHxDTvwrEZxgUNChSFj7xzWKmThrzJGgPOKWnPBCInQduLTnZGWc
	ASnBImHagA2DbeWfL1nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrKs-0004l9-PC; Thu, 21 May 2020 19:58:34 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrKb-0004k4-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:58:24 +0000
Received: by mail-io1-f68.google.com with SMTP id f3so8961923ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:58:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qnmu+TvlIm7jMheLKRmKbVdT8yJM4Ib4roFx6Ri+kOU=;
 b=nMvvSGItbKJR2yuXrdbTYV6gooWuNnuPE75Im3BNz3fAfvrcnkC6+2qzfoTe5IO8X9
 OJkIctRbEns6nDe5512XCpEPdc3kfXO+GKdPgqutQrdLjdgzTzQs34qb5h/9XC6a2RjK
 EiUZGxlQBrAVYUlEgmGuYzx/29ECMB3X3EmErfB5yUQkYj/THDHM9cZeL02xxQ9lP3HV
 L2xgs257jowD0z1dh7eKsOyUcD4zLtt7r/+oTE1CpxpwgUJMUeMZApUmmDk6neJWlPBs
 8MXTw/+BB3YwwKU0h14VpdPJgBm/i2DFGsAumWySnOEuFyY8ufAaeeGN3sgCPy7t3FI6
 i5Yw==
X-Gm-Message-State: AOAM531A4sThSwPTk26uBqZ5M+tIZCeTkyiXpo2QyuBIBq/QSFboEPUl
 DNdEa1INE60tlr25LK1IqA==
X-Google-Smtp-Source: ABdhPJwMao229/7LqfcaVPM7jNkfJvReoW9ujB9zAGukbIvbaGMmkriGLneoVhuPZEJr8LMRcnrSRw==
X-Received: by 2002:a02:c8c7:: with SMTP id q7mr5370610jao.111.1590091096617; 
 Thu, 21 May 2020 12:58:16 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id m89sm3517861ill.40.2020.05.21.12.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:58:16 -0700 (PDT)
Received: (nullmailer pid 2797115 invoked by uid 1000);
 Thu, 21 May 2020 19:58:14 -0000
Date: Thu, 21 May 2020 13:58:14 -0600
From: robh@kernel.org
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v12 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Message-ID: <20200521195814.GA2796824@bogus>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-2-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521110910.45518-2-tali.perry1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_125822_038236_8AFB3508 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, benjaminfair@google.com, wsa@the-dreams.de,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 kfting@nuvoton.com, brendanhiggins@google.com, ofery@google.com,
 linux-kernel@vger.kernel.org, yuenn@google.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, tmaimon77@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 14:09:08 +0300, Tali Perry wrote:
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

See https://patchwork.ozlabs.org/patch/1295115

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
