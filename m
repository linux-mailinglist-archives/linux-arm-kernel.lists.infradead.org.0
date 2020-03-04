Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110631794CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 17:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtNq5BUvzuzdIuW/PvjR+/sFofmliH+6Y9nwmZcG8oM=; b=fBe7JHKol5x+Tz
	zYAzy1f2vRAq3ZWJNsg6V1VaYnoiZ8KQlQ/AyWsL5QCXHPvrTQ+dkCGspuLuvwIyIrHOsbTtALfg/
	8wyi2p37UiGTLRmodv9SnNcfdCGcnrWkSE9hZAKkDcDcAu+41q99hg48LHDs72I1oG3NdzmOMD3yL
	Z+MrzBWZVI5FnWXR0rYFix/KoRyKKZlVBOTImHFumwy/UmO2uAoX3iGgc+mhDRuEIxCA2wf+cLccz
	oTqRZe3JhkrCVryyHfI7tBG10B+EJ+tuRmgxyps6pAovlLLGQmu9gBGJW4WEE6lSRtv7hHAMyR4pM
	eZhRG8iWZBn4AWrB73wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Whc-00059a-Hi; Wed, 04 Mar 2020 16:16:56 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Wgu-0004cW-N9
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 16:16:13 +0000
Received: by mail-oi1-f195.google.com with SMTP id r16so2627272oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 08:16:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GhAsniKvYUMptrJyDO+p1c/FdpaCICij3vPs9vpAABc=;
 b=oLCUbIkZNQWXY96XZFOlkd5cEk0TFbtkW21RR7qJofhW7SXteJJ0AwG31A27UeMmvZ
 OetNrUvkLejLDU+aY9ZPo83AxnJS5E1+5TNESoaVmLaHzak57DtdA9wS3GCOiScmpU0h
 2v6dJIpq2JZMeayx41XHkdAqerroeDFouB5qtcLqN0uX9E6RwfiSynRiazSn1nLq6dVu
 5TxT8l5ChbEJqYxZO8MkWZlkM9PDvScxSzJAcAzb5/7Mzjczvip5vdR0h7yfVbCPor4i
 2KLF5mM9GWzVS20czAZneDaW/spr+XZFiyn8vUH1wItO9AP/ojFh82b70GWCjsurmWtO
 nO9g==
X-Gm-Message-State: ANhLgQ00VtMW0eh1VQnlQv7KTXhOhmBPMZ160rosp5DwTvZuf+9y9IZl
 +ieuy55ubbbV6qmqfpORLw==
X-Google-Smtp-Source: ADFU+vscMM6br/Xn3C+U6tfhoqQLV4NMo3JZu/sSuSbhBxEB3/oNdCr4+Z6EvzgPb0uWjeursQTGaw==
X-Received: by 2002:aca:4f8e:: with SMTP id d136mr2309174oib.77.1583338572096; 
 Wed, 04 Mar 2020 08:16:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s83sm8891708oif.33.2020.03.04.08.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 08:16:11 -0800 (PST)
Received: (nullmailer pid 26946 invoked by uid 1000);
 Wed, 04 Mar 2020 16:16:10 -0000
Date: Wed, 4 Mar 2020 10:16:10 -0600
From: Rob Herring <robh@kernel.org>
To: rentao.bupt@gmail.com
Subject: Re: [PATCH v7 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200304161610.GA26873@bogus>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
 <20200303062336.7361-8-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303062336.7361-8-rentao.bupt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_081612_751522_1320C33C 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Tao Ren <rentao.bupt@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Mar 2020 22:23:36 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add device tree binding documentation for the Aspeed USB 2.0 Virtual HUb
> Controller.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> ---
>  Changes in v7:
>    - updated to dual license.
>    - removed description for "reg" and "clocks" properties.
>    - Added constraints (minimum/maximum/default) for vendor specific
>      properties.
>  Changes in v6:
>    - added 2 required properties into example and passed "make
>      dt_binding_check".
>  Changes in v5:
>    - updated maintainer to Ben.
>    - refined patch description per Joel's suggestion.
>  No change in v2/v3/v4:
>    - the patch is added to the patch series since v4.
> 
>  .../bindings/usb/aspeed,usb-vhub.yaml         | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
