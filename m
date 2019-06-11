Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2B041731
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2JH6af0o25usHCYE0TEJ0t3zBP9ANIY2INyeFOYpH0=; b=B3wAyTItNcfHw9
	mJSIep2l8QBL2XF0wVtQcBuj89c+pkjCyIywee9yap2iAKxLYVtq9iej3QUkHBMHHvbF2jWX8Ewk3
	oDVXBxU0qEiQjjONE3eOAboqM4kJcILqCCpv21+Bx3JZRx2Gcin5BA1h4hDi0jXvzjD6c7KevTQUg
	WDZx6ucSGeUj0Mc0sPzwLjxSrjTOdYusBdPh+VV1HVSOw9VdzRrNNn3DuuQnepbKX8piy3mM8maw2
	mzC4Uim3ulwPIT1KFqpt5nyF2GM79zdsZGPaKUtJudMY6fjkfn4u+slfpYTpuXBmxj7fqRdgjeCQo
	NSWnMsbNzBuZiKib3Q9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haogm-0007vX-AI; Tue, 11 Jun 2019 21:52:20 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haogd-0007ua-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:52:12 +0000
Received: by mail-qt1-f195.google.com with SMTP id d23so16480533qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:52:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3r12qJQBXAuvMT4EwoDNzavCtWYu4iRZchiufeeQkDA=;
 b=iOcamBR0p5OmGcy3kaD+9PP9nHbixDhKhqE/b2SPqSI+C9DWW5htJ40mdss/Hfrua4
 yENcBqUpIu/H6P24wRZy21jmcoMXQwMAfG52GbQlBeQlPy9TCECGIff0xvMnxBBZu7oP
 Ncql26ywc5uU2XBbCDvSDnrA3uBZKRtP8Lz/L/XyG372De9l3TB3f7bNaPSqEdQH3wBZ
 zCcy7sxsaAetTK47pb5ejnBluCNkwqRvYyO8QL5MG+hPaeAzdFk+R9OeHnUH5EfYCUnl
 NQ1i+ma86u+dMnmcyxriHZz+CECa67bXDFP8Z4sfc0BdXg/ABPi4trZIDVNssp60WwnS
 7oFg==
X-Gm-Message-State: APjAAAV7/ckHmbWuKMS0rSm+RyGdND6SOqWPOKaihmXe9E6tfSeSffut
 u4IOxNw1T9GfU8a21AqU5Q==
X-Google-Smtp-Source: APXvYqwYg7O90+eWMBJqzuTqXctWOHI40/oJ0GPlNFDUVF6CgMDfl7e03c/8RDgTcCt1Q9vjJvfAkA==
X-Received: by 2002:a0c:b997:: with SMTP id v23mr62799346qvf.128.1560289929520; 
 Tue, 11 Jun 2019 14:52:09 -0700 (PDT)
Received: from localhost ([64.188.179.199])
 by smtp.gmail.com with ESMTPSA id j26sm8645067qtj.70.2019.06.11.14.52.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:52:09 -0700 (PDT)
Date: Tue, 11 Jun 2019 15:52:06 -0600
From: Rob Herring <robh@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH v6 4/6] dt-bindings: display: hdmi-connector: Support DDC
 bus enable
Message-ID: <20190611215206.GA17759@bogus>
References: <20190527162237.18495-1-megous@megous.com>
 <20190527162237.18495-5-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527162237.18495-5-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_145211_391567_69E4444C 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 Jose Abreu <joabreu@synopsys.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 May 2019 18:22:35 +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> Some Allwinner SoC using boards (Orange Pi 3 for example) need to enable
> on-board voltage shifting logic for the DDC bus using a gpio to be able
> to access DDC bus. Use ddc-en-gpios property on the hdmi-connector to
> model this.
> 
> Add binding documentation for optional ddc-en-gpios property.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../devicetree/bindings/display/connector/hdmi-connector.txt     | 1 +
>  1 file changed, 1 insertion(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
