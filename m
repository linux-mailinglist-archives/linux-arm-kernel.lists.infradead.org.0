Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D331634F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u4NWKNKIbXPFzKXWy+VMQX3GjBAyRLh6jUJ1VdpPYE=; b=AqF+raiszc7Zln
	SIvo4rI1qu2ML3Nu+H5DrkCgOhTcFQQBZHb+3edBRK5VuLr/tcaeBQGLP86gjj+DaQq2Yx+xtwOau
	njBUgCL2ICO4k2TtJnO+JfXNDrlyH6voyQCY8mlEFyjTdOHWjNIIZigNWy45VL/dXREuxdOcALsmo
	pyKRun6/bZA2AX0XvAEbk3KPeMjdJpfMZPzBUiTxqTM/v8XZKG13WMfv3RKuPD8P8D1rJ22F1QViF
	7I2Ga+BapiXQQc+hlNgt/3oUs04h5IE+2lMZDt+H8zHAbYgu3xAKgUXwT7gtc2DRqksJQJ53jhhND
	ljFNL5JBSB7fVwi6KZ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AQZ-00074M-Tf; Tue, 18 Feb 2020 21:29:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AQR-00073p-An
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:29:04 +0000
Received: by mail-ot1-f66.google.com with SMTP id z9so21033463oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 13:29:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=whxmhsnQg5rfeVQ8ZQ6aBPD0ZGe096z7/eTSnisT0kE=;
 b=pEvCp0HNFvWL5cE+w2YxdKlUVmbR0MnKz3947YqlSD8Ko3BqqxTl3X8ypAP9hKdSKg
 IGFWOFoitVOoClG/Crfi2DMiA4JX9eHKRUTGoxhFyA0f7AqULaD3C+dPfsyMMIkNdIq/
 iH/r6H1IXiHmcceshx+tZ7/ke2B9Pc+1e7h7BzX0Fwbq9jBQT9wTGOM3olLd88M6vTlA
 BiCgQ5O23yDDcV+hM9xWlOBT0qwlM2Dbk9NKxOk32IRLEQ3yPik1KdT8i5kObp8SsNYN
 //0krb6otw49FkYmxM1f13qOVm2rJvQJALMcM52XLtkSti2Y8Dd2/BtP1XqrvCscVEz0
 fEwQ==
X-Gm-Message-State: APjAAAWeai65UZ5Mx3R16oTLSPCi2wF+BybHACIii2iPO9xX02HttRe8
 AiGyBaUchOH1CygkqYeuaWcx/ds=
X-Google-Smtp-Source: APXvYqxRtM8ThXtjCCD0M0nTwLEpFE/kUUuYb2tUlDQdcZPWlIjs8Joc8bDnpkG6QuXG2SStNT5Ndg==
X-Received: by 2002:a9d:5885:: with SMTP id x5mr16787058otg.132.1582061342694; 
 Tue, 18 Feb 2020 13:29:02 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r2sm1752661otk.22.2020.02.18.13.29.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:29:02 -0800 (PST)
Received: (nullmailer pid 4897 invoked by uid 1000);
 Tue, 18 Feb 2020 21:29:01 -0000
Date: Tue, 18 Feb 2020 15:29:01 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 4/4] dt-bindings: pinctrl: imx8mp: Replace the
 uint32-array with uint32-matrix
Message-ID: <20200218212901.GA4859@bogus>
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
 <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132903_374882_101C5F45 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, devicetree@vger.kernel.org,
 festevam@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 stefan@agner.ch, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 15:51:40 +0800, Anson Huang wrote:
> The items of mux_reg/conf_reg/input_reg/mux_val/input_val/pad_setting
> should be uint32-matrix instead of uint32-array, fix it and improve the
> schema and example.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  .../bindings/pinctrl/fsl,imx8mp-pinctrl.yaml       | 25 ++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
