Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B8644FCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 01:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj3hioG1BjqrmwxGt9MeoIjliTH1VAHf9+i7nZAw8LM=; b=Favh9QHLaNgyAR
	t6pIPxcdiULgeuxOjkaoNikqBj+oxpfMproavm8NJ8u5RI4LqKwD7kD4Q8Ov0FGoRH9c+5Api5ktd
	DD4eLuugBfcBhxovlfHP5UGgotCzMuaYI3i/fpcxXjHnBhpaFSfw8/0Bbv+5pKpP83dUbThJE0UhI
	PiyugSgVQ+b2/xAXTBiOx0fLdJjgeE/wR581UiZqQYzFlU+F0nMrjzhiraqBGqOs8mREfUVzOFsk5
	192n5ZJKZnEHDlthFG+IUu6jcSM6VC8DV3RlmY6A0h5YYjXKn+dfS23IIWUIkQHnecGWhnDM2c7eM
	iHycq9i6mfElBUBDGyig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYm6-00070F-3s; Thu, 13 Jun 2019 23:04:54 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYlx-0006zm-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 23:04:46 +0000
Received: by mail-qk1-f195.google.com with SMTP id m14so490053qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WvdSBZS6GY1RJhEJtYBVxaPueBDOjU15Kwk1F3xhAKw=;
 b=U5p9CSfMFFYJPaJ8iX/bgpuiihN7H9NNeTMCmMg3PvPvJwZPngVOCJjTJDbBloyerq
 6kHLfIxlTdWKAktXV0jHR6w2EMM6ciJchRuniZVnsNKIhRQRmH3X4fhP2++pApc/o5Cb
 BCAPOWVAckmZlsNa2kXpkqrX4BIG/V7+3SEOh8QOhTOo5EvlIUwkvyyYQg8NIMxiWP1p
 PTfmnTRn1YlFE/IV2mKqhNmw04gt+LTzf+qb7R6ur40LU0vJpf3OkJ7EON8kH8jCC/kT
 VjDlh1UUmjcZIUME9NUdHmd1GqAOZvwe3V0ip/k6J/ZCJMQ55aWNRzIMVaRdreOHCwYy
 MXKQ==
X-Gm-Message-State: APjAAAXfhuK8/jz9vnRDPb4Y6YKNLQDH/D8c28XvNw90siuZWbCHo1g3
 zTVZ2frjAhz/zYfSO3hqkA==
X-Google-Smtp-Source: APXvYqzScKZ4qE7itNJAlKiopqo9SW2cEVK0YP4JF71kRJYGkwf5iKWWerwdZXEFYIG+JjdrDheMmw==
X-Received: by 2002:a37:aa8e:: with SMTP id t136mr6599276qke.222.1560467084536; 
 Thu, 13 Jun 2019 16:04:44 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id y20sm736495qka.14.2019.06.13.16.04.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 16:04:43 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:04:42 -0600
From: Rob Herring <robh@kernel.org>
To: Gerald BAEZA <gerald.baeza@st.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: perf: stm32: ddrperfm support
Message-ID: <20190613230442.GA7783@bogus>
References: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
 <1558366019-24214-3-git-send-email-gerald.baeza@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558366019-24214-3-git-send-email-gerald.baeza@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_160445_480591_D5B15E86 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Gerald BAEZA <gerald.baeza@st.com>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 15:27:16 +0000, Gerald BAEZA wrote:
> The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1 SOC.
> 
> This documentation indicates how to enable stm32-ddr-pmu driver on
> DDRPERFM peripheral, via the device tree.
> 
> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> ---
>  .../devicetree/bindings/perf/stm32-ddr-pmu.txt       | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
