Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB7F1CE2C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jma1feo1wGkW+KQ2BlpUozdNqKoOTlrMYp3LVKNDDak=; b=gb9tQMDT+CqPKw
	dBIQ1JUFZ2XJXHOmaFzkuDkCl1CyvxEdXDQSl7PEDOFMpgMxp8SR0SSsKOchRIwxzaCWVkeeZWFny
	baTRZXKds/DnxeUYQm+Q6ChCCf6Hl0YoR05oZXpyd2Elo3+zfQjMVooPsmtVaZAw+MCWqRU0BiYCy
	zwZAr1UWBiX12iQFkdzKvoBsJLHynU0QEHme1qGZS5lfUXUq3burRG91fXn4uYjVxwbjvpiYzPpz7
	89tH/A7w3Nfrmhgkck4UFzp7y23bb8uGkLqZ/5pCUDj+AxRECbUse/BU1BokfFHsqvgHW7hhgUKRZ
	sknsYgkKxWYsoQwxqw5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDAU-00086S-3c; Mon, 11 May 2020 18:28:46 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYD9N-0007GG-Ps
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:27:40 +0000
Received: by mail-ot1-f67.google.com with SMTP id i27so8345463ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:27:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8XrifLV0oFLLyLn6BjacaXHOgkoMzKo1Zf9sFmdQHNs=;
 b=HmdonS7wrVRErIePD1z5l4ZDAJjYASoG0c7lovwGoHdFrjVGdwUuNla8uc5sjbpYMN
 kQMaQiuPjV8beUul2lUfmJ4YfXUMeoO3sIbj1jVybJVEs4WQJATEBiw/4luTnYPFXO4L
 jragyxO5zR43R3VXbBfPHoTEFk515cFrKsLDUCVXRje4ZN0fIXx7rvgr3XbcLkHIk2dt
 yc6IXgkcpl/vwWlflMmkfGTCgaP7jhjtj3BzwakpRvcl9ltJKEsTg8oU2nvAz3cPGqSs
 uPHoNcwNSvErdMfAW4xxg2s6g9evhUHmfTE3JYikwTInNYTs2Ji2zFRyIVkHV50zG4nW
 2gZQ==
X-Gm-Message-State: AGi0PubYv6w8ZCCwVImYvK9Yx5hATdjiNItVexTS4ZZzOp1sguDV2eJg
 eZxP+g6rET4q7VKCq8MJZA==
X-Google-Smtp-Source: APiQypIEDiszqremOLj3ZVCWNAGbs747WHBAa7K2a7Gvw2bUX1jdvt5C7wSdJKYiwrOZmAnZ6GAWZg==
X-Received: by 2002:a9d:2264:: with SMTP id o91mr13983559ota.258.1589221656049; 
 Mon, 11 May 2020 11:27:36 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j186sm4802742oia.31.2020.05.11.11.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:27:35 -0700 (PDT)
Received: (nullmailer pid 19748 invoked by uid 1000);
 Mon, 11 May 2020 16:09:49 -0000
Date: Mon, 11 May 2020 11:09:49 -0500
From: Rob Herring <robh@kernel.org>
To: Tali Perry <tali.perry1@gmail.com>
Subject: Re: [PATCH v10 1/3] dt-bindings: i2c: npcm7xx: add NPCM I2C controller
Message-ID: <20200511160949.GA19364@bogus>
References: <20200510102330.66715-1-tali.perry1@gmail.com>
 <20200510102330.66715-2-tali.perry1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510102330.66715-2-tali.perry1@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_112738_006288_B3067789 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 brendanhiggins@google.com, linux-kernel@vger.kernel.org, ofery@google.com,
 kfting@nuvoton.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, yuenn@google.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 13:23:28 +0300, Tali Perry wrote:
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

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: properties:compatible: [{'const': 'nuvoton,npcm7xx-i2c'}] is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: properties:clock-frequency:enum: False schema does not allow [100000, 400000, 1000000]
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: properties:clocks: {'maxItems': 1, 'items': [{'description': 'Reference clock for the I2C bus'}]} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: properties:clocks: 'maxItems' is not one of ['type', 'description', 'dependencies', 'properties', 'patternProperties', 'additionalProperties', 'unevaluatedProperties', 'deprecated', 'required', 'allOf', 'anyOf', 'oneOf', '$ref']

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: properties:clock-frequency: 'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'default', '$ref']
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: ignoring, error in schema: properties: compatible
warning: no schema found in file: ./Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml: ignoring, error in schema: properties: compatible
warning: no schema found in file: ./Documentation/devicetree/bindings/i2c/nuvoton,npcm7xx-i2c.yaml
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1287083

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
