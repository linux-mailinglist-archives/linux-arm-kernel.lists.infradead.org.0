Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEF31E8741
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKmyM3K7Fn+F0nSO4yMJJ0J25MNCLbqEnskUsSTPSJ0=; b=S/zKHNxkCNtLlx
	qyZbSRToQhMn1/osRxpjzyKKr0S8dZDba1W7RXqPhLUw+rTLXrv4mT8UUsl++P91myeP0yNgyNU8w
	q1ntiWSZRFo1dSPU+Kw/yIkfksYE9rhHzH04nqOp7Gvxg7lzuEXFGU+WwF8kOxBgRLHE7tUBk9L8A
	KMPhRAQMZrb3FKfUoMLkTbDsrJ4Uok1Nr8xOy9TIFIiVs791niHAlK3KAaTL7eQ2SNP46R76LxNlG
	4ojvjRZAKCr6lDRm2vVRikODK2aCGZnPdmR3wHpBuugB4IuvhL/uqI4m29pey4LYl9opBb/F80Nce
	zSd+hOzh23ODduI8pCqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekM9-0004qk-6T; Fri, 29 May 2020 19:07:49 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekLu-0004qQ-LF
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 19:07:35 +0000
Received: by mail-il1-f193.google.com with SMTP id q18so3563994ilm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 12:07:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AmmoIynqErhFkuRJwlx52xsY8NmsJqOG5Lk1cUQU3YE=;
 b=g2SxkygxssMfRCkflibsRZAJRTHSPDnGKohftIYD0viASdlLJVw5PRAB1vxxbjKhI9
 hVTCZcKh+f/1QSJu4fbm30AL9IOFIvBt0oQFrP22HDICV/YYofNiWFVnON5S0KTu0v2h
 2cmYANSNttyP9vhikVl11fGdjos+eWIR0qhuw8zVo/+ZUGjspWhkgzNAia4FqEuqI1jX
 AfiV2u74zBx+PG0dopC2GIsQytFeKAJVtPhjGgCY4k8TXAaRVegiwfLsPylli0Mm3MrA
 w5LSmb/6pjd8I8gXHyjXOz8n64/OmecsmAtYQy5jS+J/v62Gt6VUUcX2s1KJIjBmpxqa
 UmrQ==
X-Gm-Message-State: AOAM531krYODbzm3VzJbOOdAcVb/w+F30TRpJW6hxuYB7y/tYidHmeC6
 3CkLGbVsIFi0KblDa+eJxA==
X-Google-Smtp-Source: ABdhPJzkLLdu5roIJcHsxHt0QxtA8mUuU5tAWtM9q7Hr970zjZQbkaIVDDN9GVpaVGM0KZrpYm8IKw==
X-Received: by 2002:a92:c78b:: with SMTP id c11mr2843313ilk.56.1590779253823; 
 Fri, 29 May 2020 12:07:33 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p11sm758817ioo.26.2020.05.29.12.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:07:32 -0700 (PDT)
Received: (nullmailer pid 2767944 invoked by uid 1000);
 Fri, 29 May 2020 19:07:31 -0000
Date: Fri, 29 May 2020 13:07:31 -0600
From: Rob Herring <robh@kernel.org>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v14 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Message-ID: <20200529190731.GA2767581@bogus>
References: <20200527200820.47359-1-tali.perry1@gmail.com>
 <20200527200820.47359-2-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527200820.47359-2-tali.perry1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_120734_694120_31EDC5BE 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
 wsa@the-dreams.de, brendanhiggins@google.com, ofery@google.com,
 linux-kernel@vger.kernel.org, yuenn@google.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, tmaimon77@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 23:08:18 +0300, Tali Perry wrote:
> Added device tree binding documentation for Nuvoton BMC
> NPCM I2C controller.
> 
> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
> ---
>  .../bindings/i2c/nuvoton,npcm7xx-i2c.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
