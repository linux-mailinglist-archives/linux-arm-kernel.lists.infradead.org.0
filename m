Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A0B12852C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8NU2dYLvlX2H25eEXlbt73AfWL7Ubd5Gssa6i4rN5Y=; b=kXE1R86bNQanyo
	+9/F5wOrqUv8k3Ud7a/NSx3o7ISxreTaHtmBldIlmOobyOUHLsEyl3oSI/c2R/3E7Sh0LZJQ/EnnQ
	2WLjiHylrvydkLp2n07VmODDe9yuG1YoQLL/Q6WW8TPy7NpZbEHi4dy/D0BK6DpBlOlBlO4LR0I8H
	opqvTRo+HLnpfQ8BPEa742BudEnsv44hWDt3Yg0+EMWZNx5ADY7cyS6xydnmjP2OZCBe4VSpWiqlQ
	A/g6ULAQGgeG0LhMFs/UWB7pu6FB+1lT4ljHvHJq3rz9uW0O5H3BOxWcLNncNFjxsatilgVn14zSl
	QczT2Vv5soAy+CEWSVIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiR1o-0001jw-B7; Fri, 20 Dec 2019 22:45:48 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiR1Z-0001em-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:45:34 +0000
Received: by mail-il1-f195.google.com with SMTP id z12so9255071iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 14:45:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CY9sMs+zro4McTGd9aPHOfBOz472x2dTm0RnIrjREH0=;
 b=Vn7y5kvkdI6XzCpBtImVhu5Ybo0DG2ziO4jLZD8p55nKSZi+crwPfN04VSCURqs6x4
 AUvZb/CoEBjElE+AgwqP5rws6nhHrh4DLdhMvyKz8z1U+VDtYf2eQ4NyxdnVE423yRjb
 3667MGag7Gvbu2eV6TBygl1Z8df7/jt6HlxmIIrRQR6o3fOwe8CkpD3YTXJBn6bpqt66
 3gTv0PZXMSwimPlEImin9lT/tOUwOJYXDQvwhvzTd/DAL7RXxRNCd6Ck3WjuhUSjckX4
 Opbu9YxPxx722D1nqmGEZbtQu9qBHV0OMAejo1LZiQg/qQm3HIWnw11ADWezvv71zGWg
 0Qiw==
X-Gm-Message-State: APjAAAU2lMuB/eH+aOtixguPK3IrrjsroAw7bIhhd0G5qy3kJaeM9F+9
 fdKQUS/E0+lcHlvpGbmhRg==
X-Google-Smtp-Source: APXvYqyIXFLQKvMNyT4CvtPyK5CJUbTKi6uMqY/7MWchstbPBwwZAsx97u2f2VEcT0G9XSIKsUHQNw==
X-Received: by 2002:a92:8307:: with SMTP id f7mr14881259ild.73.1576881932586; 
 Fri, 20 Dec 2019 14:45:32 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t12sm3864906ioj.82.2019.12.20.14.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:45:32 -0800 (PST)
Date: Fri, 20 Dec 2019 15:45:31 -0700
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/3] dt-bindings: resets: Convert Allwinner legacy resets
 to schemas
Message-ID: <20191220224531.GA20297@bogus>
References: <20191219090712.947490-1-maxime@cerno.tech>
 <20191219090712.947490-3-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219090712.947490-3-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_144533_569312_0B91D98A 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 p.zabel@pengutronix.de, lee.jones@linaro.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 10:07:12 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a legacy set of bindings (and a framework to
> support it in Linux) for their reset controllers.
> 
> Now that we have the DT validation in place, let's split into separate file
> and convert the device tree bindings for those resets to schemas, and mark
> them all as deprecated.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun6i-a31-clock-reset.yaml      | 68 +++++++++++++++++++
>  .../reset/allwinner,sunxi-clock-reset.txt     | 21 ------
>  2 files changed, 68 insertions(+), 21 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
>  delete mode 100644 Documentation/devicetree/bindings/reset/allwinner,sunxi-clock-reset.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
