Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C25E199F23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XOcqOvhcakeWKtI0mqpWubEk1ddei/2cdMoQJHKQUw=; b=T2To1WDFz86t1z
	l959jAlbm2msHvHXCJfFpGd+m8xPLZvbPUT9EIW8YTaRO+xKEZKk1oulUB88K47iEU54uXo36iEgH
	80V6CkFILmDPV0JSkC9txplUFxtUCyRT70+3ZLyxJqvlBWEB8/REH/NTZTxdZbSfrqOjiQ9hzL2hb
	J86fuJGqfHQ4qVlaB/A63zwlQ4oT67aFHpWlKZ+BEov3J05UAribVSE+o7bhMkj6gioRCGnaBRgG+
	Ap9VOZv7JgGMt2sobyPQn8tb/x8NYXiIBd6Xw0FaBsVdfU4zK9MFvPHjWcHr2W/We3sXgdhQTfNzg
	7vn55u8E6qxJ975yrjBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMcX-0001Ic-AK; Tue, 31 Mar 2020 19:32:21 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMcN-0001I2-RH; Tue, 31 Mar 2020 19:32:12 +0000
Received: by mail-il1-f194.google.com with SMTP id j69so20598874ila.11;
 Tue, 31 Mar 2020 12:32:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ffyuJBft5eRj0uXoExB7KaHT1VC+KdBgrEZukPCp/jk=;
 b=gh0+1LQK18eA9x8vPKybP/V+zfcPGjXIqFk+GwMl3Ht96R6SVSH5tw7vXw4RALAPiz
 XDYQRrfZX6CJ8soQPV1Jfgfq6ozJ7wsDCNnQClgIDia3t4+WK6ANlJvVBKKC0tkAzb8a
 b2FqvpJdARFiINrbP4h4EvD1Eadl8D3ARmKAcpHf2r922HI5Wu/R4SD4oLROJ1exsHR+
 BiVPC7zX/l5IAtJ1TE6nMbGIMe75hW+SjzN31X4b5qtRgZNKWk3FuLETvC9tnZOVoB3C
 NQeX3RzB9M0yVnwJIXf0qjT7cypxWttiC0cDZBbSYmc54Pbw5TNkiPok5/5RLMaLtfQL
 PQHw==
X-Gm-Message-State: ANhLgQ2ihnbegqRX9EruxEGBVBDb6ubFaqYVG5jjaE72sw17kq1oc4Vs
 ZMRkILGA33ez/0Tkjx1BiJvoicLekQ==
X-Google-Smtp-Source: ADFU+vs20F/WPfwobCVQDiWAIDI6LL0zgRgv9YyT1gwXPo5RofbdAd8avWmVDPg2Lg2rbY31XKH7RA==
X-Received: by 2002:a92:48cb:: with SMTP id j72mr18224637ilg.162.1585683130347; 
 Tue, 31 Mar 2020 12:32:10 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id d70sm6197008ill.57.2020.03.31.12.32.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 12:32:09 -0700 (PDT)
Received: (nullmailer pid 30593 invoked by uid 1000);
 Tue, 31 Mar 2020 19:32:08 -0000
Date: Tue, 31 Mar 2020 13:32:08 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: sound: rockchip-i2s: add
 power-domains property
Message-ID: <20200331193208.GA30530@bogus>
References: <20200324094149.6904-1-jbx6244@gmail.com>
 <20200324094149.6904-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324094149.6904-3-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_123211_881827_79A907A5 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 10:41:49 +0100, Johan Jonker wrote:
> In the old txt situation we add/describe only properties that are used
> by the driver/hardware itself. With yaml it also filters things in a
> node that are used by other drivers like 'power-domains' for rk3399,
> so add it to 'rockchip-i2s.yaml'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
