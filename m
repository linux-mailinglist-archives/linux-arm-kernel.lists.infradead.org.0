Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387B7144815
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 00:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYREyGa6p0sJiEONRi4SUEjhL8R9KmIn4IpGN17y9aM=; b=GeAG24ZIO9oeJy
	y5h95sNGnCYTuLx64ZB0JYRIdlNsWxyuRFN4z/0DWCPWtmrfXUoyQT9svErRoNynuliJbOcNmY2Oe
	vBAf34V7nDGpXJWPeD5uW0VqpSQgXDNgZxMvHAWkzEFKbnVbO9FQfHt5SdYkMk0o7ghB0BX0o6OEr
	mWDwuAybryX3jnngpIy4bewwQ/gD2NyruaMQzJI3zBfWkht4ewu+BErA/0fzAE/wHWWvY4syg91TE
	Aa23QJBWVUZZOzNEUVMbJykoCd+vMP056robi4S0dQ9Hgj8fvLcAg5lrWOPpY9G10VCCYP2KsU+zU
	8KnBxKqOn3C9dbZNUfwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2i1-0004b1-EA; Tue, 21 Jan 2020 23:13:21 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2hs-0004aa-8Z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 23:13:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id z9so4610508oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 15:13:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ooI0TC2R0RPnixxhz1OoqRc6n/Cpz0oN4+WUYyVQIJQ=;
 b=Rm0J0cs7bdUrUR/PzQ0yA+NLeb0tn1QjlPxM1/VdB/ubiObzF2UkbfWcHBf8MUsxVU
 LyHYM//aKym84gHmv6drD9c77Zc4nLe2eAlnyOSmNp46LR0EUJL7OrV+CzPF2sftBB4T
 AoWCWz8n+bNbtII2MoGSzmr3RT+XquJiobz1Gmg82Qor1tPd1i0gz8oXEBvzZku1mdRa
 MFP6GPICtt4LOhfL5c3JTKIDIBvSH+SWSaA6M9M606+dR5A4dlB6OOh0qaFwKHQHHld3
 LffSoDQSIDdjdGefQ5cY1VBk0Hcs/Yjryu0SIpQbbK+e4C7JFvNX5+U1RVfRab6c0Iz/
 4PDw==
X-Gm-Message-State: APjAAAVVGVZWXq8CBZ3IxOBjGQtITUvZMK8bg/6JCwQvifdWYnoitw2x
 Xt/DZxdrTB08rx0gdOn4zg==
X-Google-Smtp-Source: APXvYqyPBzxIhoP3H+P9LqIiK3hX3lZ5SBs7l9OTqvE4gQGrbgUrEC2A1vykW7mfrIfYpBNwc/eCWQ==
X-Received: by 2002:a9d:3cf:: with SMTP id f73mr5553811otf.11.1579648391091;
 Tue, 21 Jan 2020 15:13:11 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 67sm12497977oid.30.2020.01.21.15.13.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 15:13:10 -0800 (PST)
Received: (nullmailer pid 17419 invoked by uid 1000);
 Tue, 21 Jan 2020 23:13:09 -0000
Date: Tue, 21 Jan 2020 17:13:09 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v3] dt-bindings: iio: adc: stm32-adc: convert bindings to
 json-schema
Message-ID: <20200121231309.GA17359@bogus>
References: <1579095941-18648-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579095941-18648-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_151312_301254_FA424208 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 14:45:41 +0100, Fabrice Gasnier wrote:
> Convert the STM32 ADC binding to DT schema format using json-schema
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
> Changes in V3:
> - Fix minimum and maximum syntax for uint32-array properties as pointed
>   out by Rob.
> - update example to better show this syntax e.g. st,adc-channels = <0 1>;
> 
> Changes in V2:
> - Take almost all of Rob suggestions (removed reg generic description,
>   added minItems, maxItems, st,max-clk-rate-hz range, drop some pipes,
>   simplify clock-names, remove unneeded allOfs)
> - For now, keep all in one file despite there are lots of if/thens in the
>   bindings
> ---
>  .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
>  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 458 +++++++++++++++++++++
>  2 files changed, 458 insertions(+), 149 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
