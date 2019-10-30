Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9EEE9D90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOx2pur2i8Eyfbj+iqnQxqNZJGOHlBWKIJk6F5w+gfI=; b=TB7MheEulB2APK
	NfGKtn4XgmZbzCsiikvJ6TCWRae9C+UCTyDYHHnQzqAS3mIbh0k7k5eo74HMfI64aOMIpdsD/r0E+
	dd6Qu+anDr+WaU/vQ5/L0NkDIdIyt4vt4WwdW7kkCKqAMTsaRBiiSFTKf7Du4LfwKQbPKWVXJSYkH
	OaA1k51DezPNgWHEkLDzmU1AX7WnQ0n4HChjG2bKX7ZQWlGCBy20b/WWAg7BsUo3EShfREB6GQ7mx
	TE7kzRPfQb9qd3w77blE1s+IYjQucayfLuwaQBrWZk/NnxkrnL7R878Z0ScLtbqoDF9fNpXVN0Xxc
	27B8nmQrKvznrS3ywysw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPozF-000574-Fq; Wed, 30 Oct 2019 14:30:13 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoyw-00056b-8p
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:29:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id n48so2237367ota.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:29:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LMfeOlvx6eLj9u8wcVjU8j/3tqXZ55VLld17C/fRM+o=;
 b=XJ9iQyqBL4INm9pU9g3t2FQXHQJ5v5AyOTOcLhzMBd/XFpBUSO3X/XveQSkbFOyKws
 tbkOhHnHPRZU9+dCJ5ZJeEkhXnudcpwJhrxMg7sUd/z+oLT4Nak8hNdq7TiZ4+R1smFf
 kPSL6mIY739tUyCcSehNmkca8t2JO9dZ/lrIL4MuKS7n5KIaHua4Z5qbP9SCT37lMqWo
 ljX3OJwhFg8iP824uu0ap1q5mpkrlKU5X0jzlcgtNIwBvl87g7rBxKoFsjamp4PL2XI3
 MrH/8sIk/4inxBNVpmDjRsaDBspGNiGQsTZwWC+vJ5zSvQQaG989KPNo2ImWtGuJ0U6l
 8Cxw==
X-Gm-Message-State: APjAAAXK567fMiCOJ34WRixxgAAOUJmcuvsPAkRf9KZUR90p9qL3ZJLu
 dfuDVIOIZ5k69PttQ0Pzcw==
X-Google-Smtp-Source: APXvYqx+eBfjpYHuthtmmpS/yKuaO2Fxm/sTUZz0uJRp1IDCuerAIXzxDA1q1VJzYfDKZiAUqvmNqQ==
X-Received: by 2002:a9d:7ac5:: with SMTP id m5mr138924otn.356.1572445793274;
 Wed, 30 Oct 2019 07:29:53 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w33sm75635otb.68.2019.10.30.07.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 07:29:52 -0700 (PDT)
Date: Wed, 30 Oct 2019 09:29:52 -0500
From: Rob Herring <robh@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: display: panel: add bindings for
 logic technologies displays
Message-ID: <20191030142952.GB31293@bogus>
References: <20191027142609.12754-1-marcel@ziswiler.com>
 <20191027142609.12754-3-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191027142609.12754-3-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_072954_308784_A100B103 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml b/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml
> new file mode 100644
> index 000000000000..0dfe94d38a47
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/logictechno,lt161010-2nhc.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0

Except the license for new bindings should be: 

(GPL-2.0-only OR BSD-2-Clause)

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
