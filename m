Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5CFE9D88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnLzaDM0+r3AegAjneT6M71aLACql1JO193aehuOvu8=; b=SqzEDcrnAcJxlO
	vWt9r1V6TTQbpA63dfahFuzSRnrKI0gRwxA+qcDgRXbY7aEaCGGm5fVAYr1BscPbn3EscTEHEaLu/
	WWbq9cSYwWJzz/xD+teCrX/F6yr8+rq8tvkAeBOiLRdbb8WaUvQQmwiL6r4xvZZL5FZufX/bOtGCA
	WQSkGbQ3wj/O66p+STm6SZt46RFJ3XAb1JlSZX2KKuxM7ctaQFIaKStH61FfkvUwHvN5SrERgZEEb
	wGnfgSMUOsuNoc4DWpMjemsZBw6D2rhR0UVRJMAta0uJNTzgkEMhb7Hwq0q82zN89xYrqLbEGJ1/r
	R9wTjFlqk9F/9MUknTLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoxr-0004e3-3K; Wed, 30 Oct 2019 14:28:47 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoxi-0004dW-9e
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:28:39 +0000
Received: by mail-ot1-f66.google.com with SMTP id z6so2289590otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bW80wTMWJnpVpgOpjaVD9ZbgzCWI+5I23NN62yxmGYQ=;
 b=lYxf7U+Mt99p053G2Odh1KckqRb9QPjpSisa2Z5paz5C0zAcCQiiDkIdPmwcTD6W1W
 xnG5N5XRmfw3+Me4RpC7BoHYdb2hK03JCUARoXfq6UQe4TRCcfp/VT1xzno036EiD/9f
 x8XJ1vlkZJfhcKGiONPqXn/vXTvQZiXsDhfyG6xlkn6DzlSoTxwdZamv6upUaPcZw/TM
 gwcdlXft9fRj4IyXdhnNfK4Vhb9dS3wA4aYeca85qZbyLVZnolJvfPy3kwkJddQxv/Y6
 NTfN3dkagsd/ru2/Hhb4QTwu6cC1VU8XOylo/X7tMi3rsHOk2H303z4Z9TsLZzruFbZw
 l0DA==
X-Gm-Message-State: APjAAAUFZBndUTSXWlZicKV8Qb9WXzCDqkFk/WqAdrbHDDeyieHDhyev
 KKG6MYUCQTkC8GskH9S/Rg==
X-Google-Smtp-Source: APXvYqxmqH9kTAnk/HxofrVjAyXVfX3xEDWkc4rGDKItWjGmqJb4+9InITGk7GXL2ERyL6kbU4blSQ==
X-Received: by 2002:a05:6830:128f:: with SMTP id
 z15mr109418otp.285.1572445717155; 
 Wed, 30 Oct 2019 07:28:37 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r14sm55572oij.6.2019.10.30.07.28.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 07:28:36 -0700 (PDT)
Date: Wed, 30 Oct 2019 09:28:35 -0500
From: Rob Herring <robh@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: display: panel: add bindings for
 logic technologies displays
Message-ID: <20191030142835.GA31293@bogus>
References: <20191027142609.12754-1-marcel@ziswiler.com>
 <20191027142609.12754-3-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191027142609.12754-3-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_072838_336973_C7DFA77C 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, info@logictechno.com,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 27, 2019 at 03:26:09PM +0100, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Add bindings for the following 3 previously added display panels
> manufactured by Logic Technologies Limited:
> 
> - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
> 7" Parallel [1]
> - LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display 7"
> Parallel [2]
> - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
> 10.1" LVDS [3]
> 
> Those panels may also be distributed by Endrich Bauelemente Vertriebs
> GmbH [4].
> 
> [1] https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> [2] https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> [3] https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> [4] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v2:
> - New patch adding display panel bindings as well as suggested by Rob.
> 
>  .../panel/logictechno,lt161010-2nhc.yaml      | 44 +++++++++++++++++++
>  .../panel/logictechno,lt161010-2nhr.yaml      | 44 +++++++++++++++++++
>  .../panel/logictechno,lt170410-2whc.yaml      | 44 +++++++++++++++++++
>  3 files changed, 132 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhr.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/panel/logictechno,lt170410-2whc.yaml

I would just put these into 1 document as the compatible is the only 
difference. Either way:

Reviewed-by: Rob Herring <robh@kernel.org>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
