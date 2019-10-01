Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F39C43C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58qEw2bOILWYUK7Md4IB6VtIiXSsCm6t92O5NjsPmh8=; b=fca/Uhlt4YgEga
	cbkovafwNRaMG7EilB3CgZqKq5yJW0Rx/DSsRGN5GKq6p0aSeRr9AotkdanU7vqIZPj+vlhy6+pFa
	sEvrP6VQi4JE//aNMforauWkTMbBr57PEvc7Amrq3eKEq7rKNtT+ZqlZxeqf3VwJO6o7zntykSsor
	my58GoA4/Y2VBCKKWA4sO5b1oTHKu4xawv3z+6UW7vuvcAzna2ORsclx06ph/G7QpwesZ5LrhTdX/
	d1Rq/JDp9wIXu1e+/ZsWdOSYaat8kkQgp4qzklSv44jzO6trDNm8cII6d8om9IF9BPLfvsjJ8z4WL
	zOCv2YkrWCKpVlfoim+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQWI-0005iZ-Mh; Tue, 01 Oct 2019 22:21:22 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQWA-0005hq-5V; Tue, 01 Oct 2019 22:21:15 +0000
Received: by mail-io1-f65.google.com with SMTP id b136so52216120iof.3;
 Tue, 01 Oct 2019 15:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tqpZqSWBzevFiWNRX1d50Nxn4Q6kEMJVfz95i9zh0jU=;
 b=ul64J9uf1KBQ+ookEUQACiffvAq/MX7E6c60Qx+klSaz8uGfXlzzGWCAKSar/Otk3X
 Mr7uQFmOkcYflDkDDuKdwhLSaiXqtCoF3vdNdu40m9A+6MqRoNLaYCALWaRz8Xr5UwTV
 d3ReZVm7brACrAbLxJiJu8XFuG7BnYKDi80ZGlMX+0pE7KgskErFrIZGkCDQ8CljgonW
 cw3+/clb51SDO54OYfw85b03Oys9t6BgP7TTto+uVjdh92NuW6Xn9+JVMLH0mbAJM5kn
 iPl4SgPaoea3MuIwWNZ+dLG+ca+GloraDcSlLAv1QWC2FtifEBLsdritnLdkTEK2IdEL
 7Zog==
X-Gm-Message-State: APjAAAWZkEQrGoaYHyyOq7fdfPwFbl3oFovF09vYst4aC212l8WhN7Ah
 c8WviqDTPlsEOXwBuVXNDA==
X-Google-Smtp-Source: APXvYqxO5LTPz9sKvdwvDzGXEOAzX1TntNU8CChdjjgJOYUb3Q3B/TxouQGgOk9y7bFjc+A4UCmazA==
X-Received: by 2002:a5e:c814:: with SMTP id y20mr501581iol.88.1569968473151;
 Tue, 01 Oct 2019 15:21:13 -0700 (PDT)
Received: from localhost ([2607:fb90:1780:6fbf:9c38:e932:436b:4079])
 by smtp.gmail.com with ESMTPSA id p20sm7826300iod.43.2019.10.01.15.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:21:12 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:21:09 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: watchdog: Convert Samsung SoC
 watchdog bindings to json-schema
Message-ID: <20191001222109.GA26050@bogus>
References: <20190920162124.7036-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920162124.7036-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_152114_207721_1C49794A 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 06:21:22PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung S3C/S5P/Exynos watchdog bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Remove unneeded timeout-sec description and include generic bindings.
> ---
>  .../bindings/watchdog/samsung-wdt.txt         | 35 ----------
>  .../bindings/watchdog/samsung-wdt.yaml        | 65 +++++++++++++++++++
>  2 files changed, 65 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
