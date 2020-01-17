Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FA6140F1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlB24V2ZWcBIcxZ/UK6OVEb4dPj50fxvhB4mivVmX6k=; b=CN/r+7s96vaoqh
	tp8fSo6GD6R5bS2b2TWt8ekHRL271xAgIJcjUByB6YtqGqwQgcfvy3+XwEO8eyBTIFjeUNKQqrIV3
	C49JzGi6yYlvD7uonVp/4aJv24xDdQOnRQhEj4dgJ/CNMcSEcx+sMBpN8EO3cnJdvJQUTjyQQSZYX
	RLXr61KUFDpbtX0TKFVduyiML/tR3JfUYUG5gfU16BhQqsTDh5a8VlBfGLrqHU4qJz+SaSo21dUto
	T6hqTwUzGPJmksM4NVFXPa0tBfDNZyX6CiS68NeDjnXlNzb2MdEn/mujy+oTXX4r9Wb3+ILrQVlbD
	1Ev0k9GqZtb5ShkdpvuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUdA-00027d-UY; Fri, 17 Jan 2020 16:37:56 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUcx-00026H-JT
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:37:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id p8so23000873oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 08:37:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=YOEsOn/2ceJnOpjp8uwYUwADDl3plvKBrE/DaARo/5Q=;
 b=Jg2+5kzaOk4FUI8+d7bZ6A4FYR00AJtXzP+zrFmoY2Guuo5LgLEfPAFaj0BmYrr4ye
 gPmd+aXj/Ba2iUrLguwtQUhhpcfa+qR69AvsHcMh7ZvYEMdl30oQWE0+lFzcvXHyLI5y
 zZS2xq9LZi1DDYrkGR5cz+M6+6p1l8SIBAQeH3txo5RKxSi/bR3wm4SVk/JS0F33yEgK
 gJqPK0n2JE9M5oRiw+woK0EPKC1FeRrR/SdHer/LCHtKDt1UmOFrLvpkf9XeMaTPbwQT
 gUkg20bMhcz/l0xij7hh8NsLHPfNI4UwAVwzuNIfe9dgZMVblfXWsFgbNgdfbmRZRDX0
 FEDw==
X-Gm-Message-State: APjAAAV171TyfsgZaBi8SCl8+yhIczSWLjixNI/Z++NZ58sJQ8k5St+S
 GlEE+uWRAZnQ7lvgfS4uyw==
X-Google-Smtp-Source: APXvYqxEp02bOdsOrY4x2V8OzMEjYATtM+Wclbr3Jw3HUtzLC89EUmNfZSLi42oRdwh4RdqgmiCWyg==
X-Received: by 2002:a05:6830:612:: with SMTP id
 w18mr6793151oti.264.1579279062684; 
 Fri, 17 Jan 2020 08:37:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 15sm4068557otv.20.2020.01.17.08.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 08:37:41 -0800 (PST)
Received: (nullmailer pid 3439 invoked by uid 1000);
 Fri, 17 Jan 2020 16:37:40 -0000
Date: Fri, 17 Jan 2020 10:37:40 -0600
From: Rob Herring <robh@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V6 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt  multiplexer
Message-ID: <20200117163740.GA3378@bogus>
References: <20200117060653.27485-1-qiangqing.zhang@nxp.com>
 <20200117060653.27485-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117060653.27485-2-qiangqing.zhang@nxp.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_083743_634722_43E1B3F2 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
 Andy Duan <fugang.duan@nxp.com>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020 06:10:05 +0000, Joakim Zhang wrote:
> 
> This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
> for i.MX8 family SoCs.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  .../interrupt-controller/fsl,intmux.yaml      | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
