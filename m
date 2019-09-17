Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F94FB505A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D0i3YLMaU2+EMqSLYk9LIVIhe5dJZ0DfZL+9iLQAx0=; b=rnjI/LOh5tDchZ
	bU3uuV5yImoWCju81j1RzotSxNf0dYrtLMgCO2mwejmIl/FPOiE4FRoGBKgSipv1Z5fLCVdwjYSmj
	qylSxAMhaXrsvjfJoH7A55Qpgw8/xZwHSkDNcfuAMWBLdz+hDs0zrmVQvzOPv20vWgQa7nTbU+Lbz
	z5gJz2SCi0Z58ljqlXUL/YzLW5PU+i4aFetXzpnbCGcozgqLHxEtVmaIJkDketAidQHD5ci2bGCJH
	9G9Db862TjvDd6XcEsR7YzWpUJaiMZjZx6RRQ00BHMkShvyR74IJkH0yGX9VhIMC/cUN0uk/YsRYe
	iBZ441BIvwNJqN9M6uAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAESx-0001tz-Nv; Tue, 17 Sep 2019 14:28:27 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAESi-0001tA-3G
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:28:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id b2so3190354otq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 07:28:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dq5KSLPgssnZJkXSQ/7XfJ9L3JyQqyDlXS5uQBl4Tyc=;
 b=qceKV1JbFFH0u1NGUXhnSTny9ZnppO+kqP8nN24uqY2aPngz9TJ1XD0tI5p2DB6Wy1
 wPxtx7Ds/J+B0bd4eQxivH4/q19DM0B0GHQZQS+vqppLzTeQT923rPaFjNF/9mk2BmNI
 KsCvO/Z4xOz8p533XYOH8IO3rbL6ZPUdqyBbXAt4iCKyDAL2ysASQwih/PlQtxVNSMzn
 NKXb1pahNuPP/wWGmD5qssELfs/WQTCb6OQrvbBfO7FDf1rrUchxOSrt+qN7daw+XiI8
 FFwdJpclvegw68NcbQrJkJtlyIsyDJfDRl2nIPffBJrBV3jlAFIR1JWyZKfBwLkaCenO
 jurg==
X-Gm-Message-State: APjAAAVEZ5xZZWHi6PBrH7i0ARtFA7/YzLGPZeReopqF5N2uFIVJc1yj
 SEpLoYz8UioS41OELjQkkA==
X-Google-Smtp-Source: APXvYqyKeVBb7FDox3duyXtElvoxiAR3ydGskKPrIwTLgPjUgRPdZc4Aekd8EIPkn7mTC8YkHehpsQ==
X-Received: by 2002:a9d:7b4d:: with SMTP id f13mr2740477oto.365.1568730489731; 
 Tue, 17 Sep 2019 07:28:09 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 94sm718166oty.44.2019.09.17.07.28.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 07:28:08 -0700 (PDT)
Date: Tue, 17 Sep 2019 09:28:08 -0500
From: Rob Herring <robh@kernel.org>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v5 2/9] dt-bindings: i2c: add bindings for i2c analog and
 digital filter
Message-ID: <20190917142808.GA7900@bogus>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
 <1568189911-31641-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568189911-31641-3-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_072812_139909_98CDED9A 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 08:24:20AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Some i2c controllers have a built-in digital or analog filter.
> This is specifically required depending on the hardware PCB/board.
> Some controllers also allow specifying the maximum width of the
> spikes that can be filtered for digital filter. The width length can be
> specified in nanoseconds.
> Analog filters can be configured to have a cutoff frequency (low-pass filter).
> This frequency can be specified in Hz.
> Added an optional property for such types of analog filters.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c.txt | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
