Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE83146B93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcLWzhhSDnIvTBPRr9N9n+u3D/lQCxV7QPY6Z4OuaWg=; b=sZj4H4NfQszt97
	MBFJ7QEnma07JKVnS6P1fWveujDfLQGQNH92xdg5HovQXaCghOx2ltqSMA6UcBZkF3lYpCTFLk0Jd
	cHFtCgxSoL0flJ0t1EbRiewMdlB0MB3b5ZyR1hW2OvYUX3KRZhlZcNhW81lIfNF9lzzeq5NsxAPbo
	Vj/OLdrWs3rVVKg3xwU/8QA2V7LeNoGZOwShuNv+4zQvB0NfjboMB2hk7EckefkhEp+017ItjVJtb
	TsmcQd3RmBLuOvGSMJi9Ws99GpcMn00uaLxyK/7/BRN6lDFBAE1SgutMTTwLIrYXgFviTJht6hbUz
	ZrcO7e7cMn/T9Zz3RtSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudht-0005vu-OQ; Thu, 23 Jan 2020 14:43:41 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudhk-0005vT-Iw
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:43:33 +0000
Received: by mail-oi1-f195.google.com with SMTP id n16so3056512oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 06:43:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7SayZJgIXHjCdU3TAFI8Ocs5cvmGh8wgxSjfDXiqUmU=;
 b=Vq57Wz2U1bLn2185xX1QoQSgYzAQ01P+d9KQb3Wzj36M0E/pmvy/CyZMuFPaRJJt2i
 UZkRKke4AADaEa7qZrHU9SdMbotSRT9vDy+HXcBC8PgIkM3isl/qSar8al8Rda0HmtiC
 jOgu5OjofuwnXvVIAeso/WNn62T8km5yPxuUe1hTBap8vEiIj4aVAc0j5W84/hqFsMVw
 AA42LshdIcK2SVDR5+QPh5NvI63Q+npP3qXk04LK6o/HDCQyt5pkCpBvrlxU/DpW8jW0
 +t2Eku0TAmsCC+QkHYB+8bWUKqsAXPDnPGOsRyhPfUIArEEVVglGnNXXZZsEFeTuKJNH
 2Djw==
X-Gm-Message-State: APjAAAX1FThdov+oST73Zgbd3DLE5qK6MaW3+l5LBpD3qfIuTcrq2hqv
 FINVtJxCsh9LQIdudmzEFw==
X-Google-Smtp-Source: APXvYqzGbdY9oCHH7SiwtERsp5ylmchXaof2S8Eo3kpOm01m82P1WOVc0ecY+Jf3C0L3OyPvAH5Kzg==
X-Received: by 2002:aca:1c1a:: with SMTP id c26mr10845348oic.75.1579790607604; 
 Thu, 23 Jan 2020 06:43:27 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s6sm849207otd.72.2020.01.23.06.43.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:43:26 -0800 (PST)
Received: (nullmailer pid 12444 invoked by uid 1000);
 Thu, 23 Jan 2020 14:43:26 -0000
Date: Thu, 23 Jan 2020 08:43:26 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: serial: Convert STM32 UART to
 json-schema
Message-ID: <20200123144326.GA12392@bogus>
References: <20200122095558.22553-1-benjamin.gaignard@st.com>
 <20200122095558.22553-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122095558.22553-3-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_064332_618136_3C19EF45 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 erwan.leray@st.com, mcoquelin.stm32@gmail.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Jan 2020 10:55:58 +0100, Benjamin Gaignard wrote:
> Convert STM32 UART bindings to json-schema.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/serial/st,stm32-uart.yaml  | 80 ++++++++++++++++++++++
>  .../devicetree/bindings/serial/st,stm32-usart.txt  | 57 ---------------
>  2 files changed, 80 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
>  delete mode 100644 Documentation/devicetree/bindings/serial/st,stm32-usart.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
