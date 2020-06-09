Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A9E1F4824
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2f5UXoGuiHJVcxyE7zZaQqdQ5dhsRJBn68+HP+crZCw=; b=P7WS2x4ESezWkf
	83WTX7TeRfzSAx5RJC5hsSDDpgfz3KoKPg6Evd7nXzX90uml8ooRsii/kM9oS1sMQPoF1vTuNkvrM
	o/o3FJAyLzoIgqHkts1xBp6CWX9ncr7fdl2EyByQDpNXX582UZaNiGz34IGp3u+mAMN5l+ljTRUfE
	F+YdON6W4EccwdNXWX0eEBoTNqChznHs9lfjqxykBtWEMTtDrllM3jRh9LTRFPx45PqUmzSH2/aMl
	9DJUoa5xbQhfycBtSOw8bJ9r1iH3dXHuhHP4Eof32RGXVk+0FBAvd7Dxdgp/Fo3ZBSAWlNNz1+MR7
	ZT3UoRD3QT+USyWkeWGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikuJ-0000zt-1q; Tue, 09 Jun 2020 20:31:39 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikuA-0000zP-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:31:32 +0000
Received: by mail-il1-f194.google.com with SMTP id g3so21612219ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:31:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xpHxwxJyEi+QmAQh0g22EZ0JVBelN+B/lL6QJi2kkls=;
 b=sOUZY0sOU/Nq/nzzGAV8AY/Ilga9GlbqYLW/4HPP/oh242ep14CVrTkhspq2sX//7x
 6dqWFltWoT/oK6dB4Ouj3QMPq1uKtKa+gaZuXM8+8uqZVpZy2Dd8fGFoGjFh/sNmuOUS
 q3gdhYywP4iraQpjCzQhJb/fc5qiezwIZjgUFW8OyJU281Tc7ZfhQkrm05Qis7I1hNSc
 FNW6N3V1r3Fg9D7r/7tawDqpEgNKlRruFD0yBtidKhAeC55kwi69buI+HwTyzZoNa/lW
 1Q4AbyF6JYikflWwsb0bcUvS7irgYcGcFUGmexrWMFsizlu4IpFw9XVneGwf5jVWjLBT
 Z6RA==
X-Gm-Message-State: AOAM530JiauZweHP2EgFaPpONhoa99gDLjfNR2JXFbcmXgfqLD3VRM/n
 klu9wWC0wqLJ9jFfhC+EaA==
X-Google-Smtp-Source: ABdhPJyDdn+hAQ2PPSVGXZ5rLVbU0/5fzDWB5qz782naSnxuAHkG5eN2ZKhBcbafUZj+J+E2dFQVRg==
X-Received: by 2002:a92:489b:: with SMTP id j27mr28987060ilg.295.1591734690074; 
 Tue, 09 Jun 2020 13:31:30 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id r1sm9823178iln.77.2020.06.09.13.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 13:31:29 -0700 (PDT)
Received: (nullmailer pid 1404522 invoked by uid 1000);
 Tue, 09 Jun 2020 20:31:28 -0000
Date: Tue, 9 Jun 2020 14:31:28 -0600
From: Rob Herring <robh@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v4 1/9] dt-bindings: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20200609203128.GA1404472@bogus>
References: <20200529232749.299627-1-alexandre.belloni@bootlin.com>
 <20200529232749.299627-2-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529232749.299627-2-alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_133131_025865_9356F4D1 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: kamel.bouhara@bootlin.com, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 30 May 2020 01:27:41 +0200, Alexandre Belloni wrote:
> Convert Atmel Timer Counter Blocks bindings to DT schema format using
> json-schema.
> 
> Also move it out of mfd as it is not and has never been related to mfd.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
> Changes in v4:
>  - use oneOf to describe possible clock-names list
> 
>  .../devicetree/bindings/mfd/atmel-tcb.txt     |  56 --------
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 131 ++++++++++++++++++
>  2 files changed, 131 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
