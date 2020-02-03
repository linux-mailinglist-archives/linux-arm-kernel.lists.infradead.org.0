Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DE9150A38
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhfCau5khNRpN+uVgB1LSdjyg6q1Tf9iJzuC/lm0LmI=; b=tBkdTZHhf+t0N3
	XEWNBHjcB0RDfI+rjOcvR6xpUQCBlYhMVvTDyki4A9fmslyyY/Vwg3Jw8lCTR8PE2aMGAD6jvMEiH
	sIQ1W1cc9Yw8qf6rjXapfYo4Ow7yVgxyJKJDPtJ8RwW+7kirUwAK1dYpPhdLimqGTLfKt2dp1R1RH
	04MoVjNWKibZ7w1yWai5q98UWh6hwxt9O/62h/c3Gk87F+IS5XxVaqqySGWpQdcd9BBZg0I77tGUU
	emrVVrlRBRThRuXnvZdaIsw7D6c5bIk2hPTDWeIpt7LpjtnBai+TriOYwjPgM4kvmrJLsPe0XYTMR
	dr9TS+jGEHY2vNC18Uqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydxo-0002DG-Jk; Mon, 03 Feb 2020 15:48:40 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydxa-0001yu-P5
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:48:28 +0000
Received: by mail-wm1-f68.google.com with SMTP id a9so17753424wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 07:48:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=afJ9NnKQp7PyXqtyKvq2Ncapxl2sLhWMcC2ZgY83MY8=;
 b=JZOJBjPV43Qy/H8f9jWMIvySdH+MJfhTj8EtUPfMOvfg5o1odrUC7h1OwUcTlZN4Oy
 5VELevKMttO/wHLMU0m/g+6L26uQD364sFf/dUAPgZJ4QNEVl1FyrMwVc3aQXNpU7Soa
 q63J/LMmVxWD8nRfNy2H1PkXWfDRSt+Z6+ZT+TAhIMH5A8oXZe0FJHIjcpFXUzjs40tr
 r4ZxqoxB4h8xrZDjdjIPuP8xmNsRruuiN/Ap9NNO7kvVLs1ZzFkMyOvaMHkKoG9Q0ugQ
 a+RrN/6O9f2yu25TD3FMmupWic9r4N74kWfW3OacXIX2+Lyhj2jY+BPFfUlyaFL0X/M3
 3kmA==
X-Gm-Message-State: APjAAAVoO4/eRT8Vf5mSYmTANMIxOT7yKX5WFWdktTvR4wBp6N8vJaIG
 fiK1GrN/xsY1ZMEN7aPbPQ==
X-Google-Smtp-Source: APXvYqzGuCIWbWw2i8bVfM/fZQ+6hFFwHGkTtJjO/5XdTvktJ8cdRX/uWRtt25gET6gNabVAIGUlDg==
X-Received: by 2002:a05:600c:2383:: with SMTP id
 m3mr30832163wma.32.1580744905443; 
 Mon, 03 Feb 2020 07:48:25 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id b17sm26278098wrp.49.2020.02.03.07.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 07:48:24 -0800 (PST)
Received: (nullmailer pid 21624 invoked by uid 1000);
 Mon, 03 Feb 2020 15:48:23 -0000
Date: Mon, 3 Feb 2020 15:48:23 +0000
From: Rob Herring <robh@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 5/8] media: dt-bindings: media: Add Allwinner A83T Rotate
 driver
Message-ID: <20200203154823.GA21568@bogus>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
 <20200124232014.574989-6-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124232014.574989-6-jernej.skrabec@siol.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_074826_825220_ABA2A3BF 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Jan 2020 00:20:11 +0100, Jernej Skrabec wrote:
> 
> Some Allwinner SoCs like A83T and A64 contain rotate core which can
> rotate and flip images.
> 
> Add a binding for it.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../allwinner,sun8i-a83t-de2-rotate.yaml      | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
