Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AFF9F173
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKJ6FtR3XPbQb6XfCxEmEcVIIe+V6TUbR0ts2IFaRKw=; b=bkX/Ms+AL+7LHw
	p+TPwQV/6zxyJGLZeSwAUlk4io56kwRZqwD4O4tcyWOm0gUqrHdVXdVBI2fRbb5ewzS9k0Ql7B6qw
	XT8wi482lFzs/JMTh1qtt804+8GBAZMqCvz4K1FaalB17XTFmp2IV7DfXdismQ5xjZCqfJ+faKi0x
	Ukou0Yi/MAkLiAxsDUwIkng2vlHcix+cISo+O8Lw6sT+owHY+160lO5Ht1kPEeJReLjZClwG1UGR/
	FYLvy/JfynI/DMzh6iaN4hMGsJGeMA/4q8KAhoRVutRScgX7nbQrLh62iflCZvLBqXEeIfuz0E8ir
	7QV04HqjbJ+coSBJ1uJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fBq-0004KI-BT; Tue, 27 Aug 2019 17:23:30 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fBi-0004Jr-MP
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:23:23 +0000
Received: by mail-ot1-f66.google.com with SMTP id j7so19420127ota.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k0t3NiRYm9OpCPktFCGeL+MYN/Ce727JCb94DDXrktQ=;
 b=agCahyiCqHlKsZTcRlCiHUao/Eqii+obCUAPlFNziFZsbw4m/ZdKHPMy1X8PLMoR90
 SZC7A7AmuA9eIwmvVg61S/WJsO/TEtgTZcKFwclajWZEuncJAmnnrVzZeIsM9eHbk/XW
 u8V2JUsDj+WuECq1q6bTwqIjgJTo6crH2rgq2Enn4ak9xnuRT/jAj0KqMGYbQ9O80cKV
 0kA/QWRsVwq7B/FgKcw5Z1xKynsBAX3DHdmncS8kxq/htX/gLclG+AwAo2djxBHhwaC1
 NlTaeVoe1pYv5k9WzLzyxUvzAyJo43Zr+DcJ/5wIyFkfq+UlqSD3Gpt5scPMnHE7t06F
 5vWg==
X-Gm-Message-State: APjAAAWyqhMTiffKCSYnXvMQjaeA/yT2Qz2klhJZ/HyhN4Oe80Akvv99
 ObuyYFxDnwLZEwVWbqCAig==
X-Google-Smtp-Source: APXvYqx3UzCCfd0mAMrprSeLiog2mYwOCvZnecPxIgq3vWxWzICLXleVMIMivZUKp56Vu+x6cRPZ2g==
X-Received: by 2002:a9d:5601:: with SMTP id e1mr10639521oti.370.1566926602008; 
 Tue, 27 Aug 2019 10:23:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n32sm4782749otn.61.2019.08.27.10.23.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 10:23:21 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:23:20 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: irq: Convert Allwinner IRQ
 Controller to a schema
Message-ID: <20190827172320.GA12595@bogus>
References: <20190821082138.11049-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821082138.11049-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_102322_730286_FA1CE672 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 jason@lakedaemon.net, Maxime Ripard <maxime.ripard@bootlin.com>,
 maz@kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, tglx@linutronix.de,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 10:21:37 +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner SoCs have an interrupt controller supported in Linux, with a
> matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> ---
> 
> Changes from v1:
>   - Remove Fixme and add additionalProperties to false
>   - Add unit address for the example
> ---
>  .../allwinner,sun4i-a10-ic.yaml               | 47 +++++++++++++++++++
>  .../allwinner,sun4i-ic.txt                    | 20 --------
>  2 files changed, 47 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
