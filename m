Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A7EFCBE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 18:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99oGg7Z5l/nvwGK3jyqa2mU8Y5GGg0MotYfghITgoS8=; b=gAO1kNXYHo+r1i
	TLVpCkFn+WJr82w/h0bPYt6Zm53wHSkks+KL7Eajc2AvxAzL2zKQL5+HTbw6rMhntgwSvvrm2JMd5
	D50lr4I0GoVJkw621taYjRZLnM7KCvL0M80w8KPo6J6xFkA73BeIWejCMr0zMovcZUgJWoimuRKjV
	U03TtPHsVVxDTspfG4WgkKA9sXryQkRWgWkl4aSbKA5QibZ0UVA7zjHYxaSG3QiiNe8d4cB6oWX2e
	fKuooAn4bOhZdjm98DyiUSU8LT7B3na/nN+gWBowhacihLkhSnnDXX1tvdFLHCi7dshmYKsmNgQqe
	0QJOGrLdlFz5R4KC4Q+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVIy3-0006SM-AC; Thu, 14 Nov 2019 17:31:39 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVIxw-0006Rr-Mn
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 17:31:34 +0000
Received: by mail-oi1-f194.google.com with SMTP id l20so5983862oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 09:31:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3G1UrTKYq6h7EeCf3xtk9ByNRfqNtMiSs5YT8e3r4Hw=;
 b=GJkh03WQd7KhYoBIaqCIdHkpN0f0FTXrI7AwHluCtFdt2Yvkf0ydXEjriYr5E6uKio
 /Gn3sJzeXpJ+vU6uwMM/QByDsSD6yNnPyRwf4VQ2v9vqOWrF5ZMCxrigP6F3R987C5gz
 9Giu21ATjIH2TP7NspoFm5MaqyirQAkyIsfq8eeRtQDQx1u27C6+5HrlsifNc6dhf6EN
 iCaLNwFF/uDSz+bzsy2B19xb9eexzvEY0UlmVgO++gaBIDWOHutZ4aBRY1TzfAntLlYM
 ZUHkV7GjopmsegQ6bPr+E3Xsnl1a7VvJdboSSzf/5LC+oN1YfEZLg2ncbGMIufDBS7gA
 jIBg==
X-Gm-Message-State: APjAAAVVPXLC5OMeh/pnkLEStXywkQj1EFIK8xtJ/UVEtSjf2U3NrbSm
 HB5dXMZZRk5Kl5LOIOfarw==
X-Google-Smtp-Source: APXvYqwyclOEvGyBTY6vREWnjvU+4uvkYPxZcorcMlSKeYf3ZPoZJUiEVybWjLsGdKUcmAP2Hril7Q==
X-Received: by 2002:aca:5e04:: with SMTP id s4mr4533315oib.159.1573752690884; 
 Thu, 14 Nov 2019 09:31:30 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o4sm2019336ota.57.2019.11.14.09.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 09:31:30 -0800 (PST)
Date: Thu, 14 Nov 2019 11:31:29 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stm32 timers bindings to
 json-schema
Message-ID: <20191114173129.GA25237@bogus>
References: <20191114101823.23144-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114101823.23144-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_093132_743607_2CA839F6 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 11:18:23 +0100, Benjamin Gaignard wrote:
> Convert the STM32 timers binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 3:
> - correctly use enum for dma-names and remove additionalItems: true
> - provide a range of values for reg property
> 
> version 2:
> - merge all (mfd, iio, pwm, counter) bindings in one file
> - fix typo and trailing spaces
> - rework dmas and dma-names properties to allow schemas like:
>   ch1 , ch2, ch4
>   ch2, up, com
> - use patternProperties to describe timer subnode
> - improve st,breakinput property definition to be able to check the values
>   inside de tuple
> 
>  .../bindings/counter/stm32-timer-cnt.txt           |  31 ----
>  .../bindings/iio/timer/stm32-timer-trigger.txt     |  25 ----
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml   | 159 +++++++++++++++++++++
>  .../devicetree/bindings/mfd/stm32-timers.txt       |  73 ----------
>  .../devicetree/bindings/pwm/pwm-stm32.txt          |  38 -----
>  5 files changed, 159 insertions(+), 167 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
>  delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-timers.txt
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-stm32.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
