Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325F6D7D0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdsLWQIFkDz7ltouSpavCupR9DiQS9/zDiZ8tFlPO0k=; b=Hy09agCkm2cdh+
	ojTYJtMnA/E1KRrEXbdTD4FkKeWBQIAeSTAw+zzvQqjOJCYac+amseGiNdJFUZIBdNBmKFCSWtb4z
	LUGhy9N1c5cENgccuzZ6p0UEsvoHw/RXVzO+2+TFHLTN58wGC1/qQT7ZDxmjGr0CAcxxerKAAMwKv
	u2i3vULmnIPyxZW5omzfLryemg6Ka3wheRDC2OnV0XrcgdISyPcWObts3pW9tB1o6oboShjOQ7XYM
	EjHdFP5uEhcjVCDPOF2cSbLCak+4eKcfmksAeaK3i185OtQqxwEZdP+Uuv54mKKUJrSRIJAotEgkF
	tKa14S0B5FFehiS2xkSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQLk-0001vt-Lu; Tue, 15 Oct 2019 17:11:08 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQLS-0001vN-CH
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:10:51 +0000
Received: by mail-oi1-f195.google.com with SMTP id m16so17490835oic.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MuM5OXPQEf/qQaZDX6U88QiRRUcUu9cQvoANannVLLg=;
 b=G6LcVkAlx28eWEQEe48lL5vpf9wb1nTTX1SABSRDL3s965MlBjRHp4UV3WW5dqa2Qo
 upov/uU002BLd2FNdkS+eeApt0oSV81mOMUUq/KR2yHgCDXx/fTts7Q7Q2EstA8JGZ8C
 BCiLbGp5YGW9AHXCHUNBkR3w7W+UNKKolkRLaFRc20j6rc76PQSvr9mdt/KmO40RhzJ6
 mNaz+VcMLwR+tVAkXjllEyXgPni+zy6xhNAXMJ1FMyOmBAVKBhXMFZmGoqZQB/UZ6Bfp
 CPObFDSbmYw6siwVSMJ+A6ocqQD3mblQLqj8qTRZywAeaCBIPzlE/9Ohk1Xpf+0YnrU1
 Atuw==
X-Gm-Message-State: APjAAAVD4I01tQ9jp1EP3dMgTUIIskWUle23OT4M3yehuRxG0L5QnK8A
 l8u4c7i0RnpvuqpaStRfnw==
X-Google-Smtp-Source: APXvYqzaGxPe8TwkXiP2OfuHpB4m420Ks0jDce+UGmdVQ7BdQQbg5qasG/3Db5bbjpGHHy65AoHC5g==
X-Received: by 2002:a05:6808:9:: with SMTP id u9mr30411976oic.98.1571159449283; 
 Tue, 15 Oct 2019 10:10:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n27sm6583417otr.32.2019.10.15.10.10.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:10:48 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:10:48 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: samsung: Indent examples with four spaces
Message-ID: <20191015171048.GA10675@bogus>
References: <20191002160744.11307-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160744.11307-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101050_413325_7A2A513F 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:07:41 +0200, Krzysztof Kozlowski wrote:
> Change the indentation of examples used in json-schema bindings from two
> to four spaces as this makes the code easier to read and seems to be
> preferred in other files.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../bindings/arm/samsung/exynos-chipid.yaml   |  4 +-
>  .../bindings/iio/adc/samsung,exynos-adc.yaml  | 64 +++++++++----------
>  .../bindings/power/reset/syscon-poweroff.yaml |  8 +--
>  .../bindings/power/reset/syscon-reboot.yaml   |  8 +--
>  .../devicetree/bindings/rtc/s3c-rtc.yaml      | 12 ++--
>  5 files changed, 48 insertions(+), 48 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
