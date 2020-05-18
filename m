Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1461D7178
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTJewlhL5fC+GZfRRjOH9sCAMjioMQg1hLNxH6/0xU4=; b=mmhYV8YIb2HjFT
	kq1bIKQEugQWaPH7pLQnw3SU2Eu4aU1b9DP+IaRehPwgzv3S79xb9chS/6AYWWx7EF1eBDzxdFIxL
	RKHHLUatx/eyuIRvFAbWMfPucaHvQnneEm3h4/p79G2gQJoaxjLsdf8zENRVmknOi+/J9CGFBQCrx
	y7QZsip8R5XZwZy5EZixw0sS7WKZj/U/Va59BGy7+LuE4JacLO3MMRBVI0EtjbT5k0CAFb78OwvTX
	ITC+FaPwmQzwRX9MbGd8DnwAYWfV+ikzMT1bDNqvhgF6vtQIr9TJLT3pboRhk73+LxlcxuWS8GG2I
	6qWYNl1Dzlx4qgNKjBAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaZpt-0001Y0-2p; Mon, 18 May 2020 07:05:17 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZpg-0000Ih-U7
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:05:06 +0000
Received: by mail-oi1-f194.google.com with SMTP id o24so8186546oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mwst2oJ9ZiHpuFTk/EHEIXQxKyuYO4XvyCKHwPLuFvQ=;
 b=bGSPBf8zgZakuXNEtHiVmOOB77lhjmaPpWCvBM8Vevri4J0WCZlmv8Vw/NBULa552q
 ZBb9mAvJCZgCSDqzAgbKga9Fj9ZpIknJg7+W+7RUiJAAFju5qdcr7ZHTnLNHj37yH4eu
 53WrNwh5HX8+YBC0Sc2PatRqUJiARP2QPW8jYgW5s+PFe6Iiu0xdRVuNxLIZLWXelqPC
 eUZ3rE1SywHaJPNW7euWdztAGMARvnp0KQaRInxqur+PwACNKW3q6oYiTt1YWZmgIsmQ
 lphfb2DrYnaVctsVEfLyfE+1fIttTANiQpoM4DQow1YWp0hHotxCe0f7n6J+zwOF2vkn
 vITw==
X-Gm-Message-State: AOAM533ASeFmLpt6mKx05pD68Eh1gGv9G/3nipGRwDTEThkjS/SnS1eD
 dFzT6qZJg5jm2F0I5Io7kxWAwjvvn5KMdc2EvDg=
X-Google-Smtp-Source: ABdhPJy0eVnNyTzrW2/omSLVxGe8kfaMI2pqw3I/+FsC+Cu9/M01gEwxja6I4ke0ixSRPXiGHWR5yNXw9vPFyMYbXzQ=
X-Received: by 2002:aca:895:: with SMTP id 143mr9591469oii.153.1589785503554; 
 Mon, 18 May 2020 00:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200420170204.24541-1-mani@kernel.org>
 <20200420170204.24541-2-mani@kernel.org>
In-Reply-To: <20200420170204.24541-2-mani@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 18 May 2020 09:04:52 +0200
Message-ID: <CAMuHMdVGem_2BGQK4dqZQb3sOd0LZk+RS_z4SvSRcNECEJHdwA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: Document CTS/RTS gpios in
 STM32 UART
To: mani@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_000504_982152_1E892D9E 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani,

On Mon, Apr 20, 2020 at 7:02 PM <mani@kernel.org> wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
>
> Document the use of CTS/RTS gpios for flow control in STM32 UART
> controller. These properties can be used instead of 'st,hw-flow-ctrl'
> for making use of any gpio pins for flow control instead of dedicated
> pins. It should be noted that both CTS/RTS and 'st,hw-flow-ctrl'
> properties cannot co-exist in a design.
>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>

> --- a/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/st,stm32-uart.yaml

> @@ -55,6 +61,14 @@ properties:
>    linux,rs485-enabled-at-boot-time: true
>    rs485-rx-during-tx: true
>
> +if:
> +  required:
> +    - st,hw-flow-ctrl

Perhaps "st,hw-flow-ctrl" should be deprecated, in favor of the standard
"uart-has-rtscts" property?
Of course the driver needs to gain support for the latter first.

> +then:
> +  properties:
> +    cts-gpios: false
> +    rts-gpios: false
> +
>  required:
>    - compatible
>    - reg

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
