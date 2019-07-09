Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F7F62E25
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/NL3FjnVdFhGU+y5vg08+YYuI+OSRRrOaOkIwavGnE=; b=EknBPH3xUyVE4b
	afMTg8VSnydNDOvRLeAJIpy2l9OUienzPmxXe48fRWbOD/uk1xA2IF/hHXOqs43JHUptEHg0QOSU2
	fX6p9ySUnRWxPxCFYl8of98DdsVTR//yG0yJhqtwnVx//Ln49YCR9BIzn+SK9MIzH1oR3aQQ2l410
	NPAGqaVxtYrG2ZLLUuRq9BSwVM9wCBAgDoxAXXI8hhKn2WI1caWv17+3pN4L/cVf42CTQrjTQA4Jl
	sMt8naZxCOHFf316FtrMqZ8IdcfOrKuJ3LLvG9yRTbyKIcjOxD/T/iTAABkSYpoTDfS0sgD9+iD82
	8idfZCBo1Q4xz6ySiLyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfx1-0000Nn-PD; Tue, 09 Jul 2019 02:33:51 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfwa-0000Bj-I6; Tue, 09 Jul 2019 02:33:25 +0000
Received: by mail-io1-f68.google.com with SMTP id m24so30401172ioo.2;
 Mon, 08 Jul 2019 19:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ecEsPgHi6Qvo6EJzKEnD4OCkuoJ/yms2Gr44dyNSi+0=;
 b=rVPp5fiyJRX+IYjXfMFVa2F4Z93Jwka5mvNqRFsCNAcLO6HoguXIKOez1Ar4afKU4e
 Ama/8xN2MpQibQRVJSoOFV9Gr8Qpy40b9YojF12X8FpllpDMsqVx9X75dp9386NMlVJg
 ZvbBP8nEUmQq9O269xw6BZW7Z83alSjFtU0yk5tpKtoLBY6O22RSypcG8fX4r08XVkqk
 dRKfm590L52E/IZLTdiXi+7T3rJ1PAKZSLMRUh3yE5MTxsG8eb/KnUWV3oiBiymhrQO2
 i0YFzAkn5ScLGJi7dKSjRB9MRjXY2JwrW7Q/N0Be9bU8L8sgLlSb2KoOcAtKcTlVWvYV
 VKEg==
X-Gm-Message-State: APjAAAXY5tVV1v1S3pzw6jvpw6k27TgGhclc2jQJmlooFc8+s5OpFY9K
 SOoyW3FcLWb/rMJTD7SLlw==
X-Google-Smtp-Source: APXvYqy3mZk30mYkqfKXfCPVRP/D5lbixYB5eUCl1BDUmEktnw8E6DsRRshp215GSty3pkURJ2nNEw==
X-Received: by 2002:a02:3b62:: with SMTP id i34mr25585721jaf.91.1562639603766; 
 Mon, 08 Jul 2019 19:33:23 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p63sm20342322iof.45.2019.07.08.19.33.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:33:23 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:33:22 -0600
From: Rob Herring <robh@kernel.org>
To: Dehui Sun <dehui.sun@mediatek.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: mediatek: update bindings for MT8183
 systimer
Message-ID: <20190709023322.GA5141@bogus>
References: <1560252534-11412-1-git-send-email-dehui.sun@mediatek.com>
 <1560252534-11412-2-git-send-email-dehui.sun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560252534-11412-2-git-send-email-dehui.sun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_193324_829836_750B2273 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 weiyi.lu@mediatek.com, srv_heupstream@mediatek.com, erin.lo@mediatek.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, dehui.sun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 19:28:53 +0800, Dehui Sun wrote:
> This commit adds mt8183 compatible node in mtk-timer binding document.
> 
> Signed-off-by: Dehui Sun <dehui.sun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
