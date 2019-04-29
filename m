Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B334FE940
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJFMVRufzGMcgWI/DPYGYMX8HaQ4m1FDRAyIdho/eNI=; b=HzPcYbjIvOxMWS
	TXEAx+V9XlH1ObGuVfFRgWeK6mPzkaNVyPJgWc/jC6IPWWQWZVBlyC2Rj+GAg54M1zioquvJrEnNx
	bfmrjXaTd+G50AoVKSqUnOXR1+i+5pKIjABnoHLGl6tZuABf7EQSKlKTMrv7nxE4PQizmYB2vc4AH
	fZb+WxwefsnqyMHTrmIM7QLywSesUa4DQfLNKouz4nTfGc3U1Uz4jn8/tmGPeiPriEP+/X0y5GQnx
	G6WCAAzbQXhcyusHfsflsl6yykdcaO41t7TIEXTkS2V0IkwUymzMUlE04ecsefaSMgRB4YydA9tAP
	aj5NCuVdpuwh8hPE6IJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLACS-0004Bl-Iz; Mon, 29 Apr 2019 17:36:20 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLABu-0003bS-HQ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:35:57 +0000
Received: by mail-oi1-f194.google.com with SMTP id t184so6471532oie.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:35:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5my8Cn6Y2HODVuVBQINEOeT+yTibXOX7mtG9Sio7Q0E=;
 b=IWucO0iSj8ll4cvOi2c6yNTQfhdVrV1MuvZmn3DTGFylY5Hp8lEGbc0x1kRk6EQZn7
 F8s8LLX5TvLCwwYqklfKGeggPx5bLpeqcwxKCqEXkWMb2eRnVVF7YnOzfPTCRz7xYQ3f
 ZPGMkz5inE2Yl1oMi8TS8ehH3FvEg3cRn97Dvi4+XRXJxoVwbJW6JK+B7R0sF7gQZxqI
 jTN63YJKzKwJ04nQyAiR1mvjTL7XiqRZ/3DWXmDvbNaOLLLvy9DAqj3r6FLxFZQq5FfF
 Cnfviv7P6aOAnPsdtj4B6Q4Ez5+8fXxJ9XyrVE0jXhAxveHH73HqX8LeJeW7j5vJdIyK
 q4Nw==
X-Gm-Message-State: APjAAAXmBgVJ6Cm30Vb+vAtcjGuJw10/P+3ngMXvKBirfrPx8hOe1zVP
 cr4NyYI56KJHluTwhL3bPA==
X-Google-Smtp-Source: APXvYqwObFMf5MsBWU0lmxv2jIpKllIDnzZvko6iCmt8LLZUNAsA23aXPX+A4t6zBy6L1b1EpsGZbw==
X-Received: by 2002:aca:b944:: with SMTP id j65mr178617oif.58.1556559344792;
 Mon, 29 Apr 2019 10:35:44 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u127sm641756oif.14.2019.04.29.10.35.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:35:44 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:35:43 -0500
From: Rob Herring <robh@kernel.org>
To: Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add support for
 imx6ul-pico-dwarf
Message-ID: <20190429173543.GA4192@bogus>
References: <20190407193723.3351-1-otavio@ossystems.com.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190407193723.3351-1-otavio@ossystems.com.br>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103547_264481_D7D6C31E 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org,
 =?utf-8?B?Vm9rw6HEjQ==?= Michal <Michal.Vokac@ysoft.com>,
 Otavio Salvador <otavio@ossystems.com.br>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  7 Apr 2019 16:37:22 -0300, Otavio Salvador wrote:
> From: Fabio Estevam <festevam@gmail.com>
> 
> Add support for TechNexion's imx6ul-pico-dwarf board.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
> ---
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
