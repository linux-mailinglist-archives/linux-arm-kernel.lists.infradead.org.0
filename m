Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C527F2A0C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 23:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oRU7CuVB2KjrD+LLRPmHrnLOVyWq98COSeCfzzKjWA=; b=VRL2QBmYH6P+Vb
	fkoCNuHsDmYn3+9ZVSU2R2RI75gu+h8RQBN5ex5lo+n8UeyKoDp84iAkYMRGRthlECRq8cl2xWY7z
	CDGZGxKKFxMp+sz2WL+vwV8iyyAvKx2jsEFK5r/M56tSKiVtU0mcMBHSgUj4aPZxa0A8Vvywshvs5
	0URhhqYNO7gaUI1R/PmSTvv0OUWwlETsErdb82S5dDCand6bsMneZNesmvCng4l32skggwzSfDMpz
	v3k/ZzxjrPtve2A4/pPa/Ot6yEvF9QzUqE2Y0sA8cH+dkTUgmgKNFluhf66CaK1ro5MdsBGZ6R5jD
	CcNK3QBIetC2+dUYkjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIAU-0003li-Pw; Fri, 24 May 2019 21:56:02 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIAJ-0003kn-7P
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 21:55:56 +0000
Received: by mail-ot1-f68.google.com with SMTP id u11so10005188otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 14:55:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1Hd5HUE8FtAVIHZ0zOMuprsDH1qucHlAidVwNXNR0kE=;
 b=taz4CPfv48G29+iKANhfmXongoO98J1MaxpmHwemUDJL/wR3ENI9nEtNXOpOJdgmEv
 k/loNa0C7eUdIFiS0VRU40R68w6oJIkzxl4S29ow4Py6M0gZ9m5QNj6Hn9acyVNfI92V
 57ZApkjPB4l5BDfdqdy03U97MXu9bITc2LLDLcuhE9LHEACg6ag2i99XbIHTMTFCFi5A
 8IT8hiQ3HORYtIX+YihWm+vvkjoaDFioOYYdIWmXfTGzmlx9a0eL34vnlM/O5VXIkfqG
 Q9X/DwiVp/PK3sbWmSXqsGFNhLIO2iCrnXye/gkAT0Ml/v/Ci3nIW6ASOu75X9hXja38
 zKlg==
X-Gm-Message-State: APjAAAXOYuiU9nbJ/65HPGnxXpyqg+uSSxvYwkIzGBnR+VCCNLYJAint
 g0+ZCNFYxzX/dzisBthObw==
X-Google-Smtp-Source: APXvYqx38nwGxFFCwmvC358jGtt2sCWNYPbMOthN/1AGAmXZzhMX9GG7akLemxmhb6zk5JKBh2ArBw==
X-Received: by 2002:a9d:6312:: with SMTP id q18mr14150968otk.45.1558734950429; 
 Fri, 24 May 2019 14:55:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b25sm1193569otq.65.2019.05.24.14.55.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:55:49 -0700 (PDT)
Date: Fri, 24 May 2019 16:55:49 -0500
From: Rob Herring <robh@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH v5 4/6] dt-bindings: display: hdmi-connector: Support DDC
 bus enable
Message-ID: <20190524215549.GA13928@bogus>
References: <20190520235009.16734-1-megous@megous.com>
 <20190520235009.16734-5-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520235009.16734-5-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_145555_226465_8CF1EFB7 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Tue, 21 May 2019 01:50:07 +0200, megous@megous.com wrote:
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

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
