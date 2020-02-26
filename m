Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14472170223
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmkSaU2/7oQ1XpAPAMWlQlD7IobwI8i8ZjrIKChJFSM=; b=eryGz4e6dVTqJe
	QM/QFrMPPcykZRi//QNwQigwf7Tan+e7d24KZgzCxMyUioz8rlkLHRd2anSC83GGdfrXR5pc2NDA3
	Fe8Jh8Skk+Hf6qXiTWHMBxCqHAP5IqqQXcwbeBbBosPgR7BB+m8YqBrtiwZdc0zDvcIWgwxjK3VtZ
	U8lNgQ/tDRatgPGOimPX/86fA6AcbQlZruFbjA8/bKnYCpFHfEacn0OWPzutdOH6oBv39SY3iAkOV
	Qn4s9+6kuepGCS/JuWgB+m4vGp2Bzr4eR6r0fDdWKqa+v7RKGCGkI0mfkgYuFOpt6j6VAwPpyB2vU
	KyNrypX9+i0VNnJNFi3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ySD-0006Pv-2o; Wed, 26 Feb 2020 15:18:29 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yS2-0006PG-EU
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:18:19 +0000
Received: by mail-oi1-f195.google.com with SMTP id q84so3378476oic.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 07:18:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fYm1FLvzpWart8O8B29NpqJZu5CXwIwbKoUSVw9pzR8=;
 b=rzHnNxuZx5/eRZ3/UDAN1gGjKU64DqN9Pj0aCi0kEdSGtpFW6XRArAgpOa6hmglcNi
 HSitwC5dlQkNb2TjLbiUV7KaKDD4Gq7EeBoH0PpED6fJAttSZBYDooE0DnjwvV6X5w42
 pXYAvwtsPTlRKeNiO4yvOrsxlP6rudbV5yHTCSBRYiQXCXn2MoXuK+TbNhgnVcMVH75D
 FwWJKRIaVI9HUqU6lioyZaAUHzJh6iTt8o3svBOqPDFWIBkv9G7sEkBFfxDO+UTJzxmP
 PQhf5PvrTr9Y9QGshVc7v8GDJfq/ynpgx8HxQPqtj7e4agNLvU8t5y13+ZRvLw5G/LM2
 J7nQ==
X-Gm-Message-State: APjAAAX49RUTxACraG7gr+dKtZiQthdSjZ4uJEFT/6FCb19O1J3Dv1os
 K7Wv1UVT1uzp5aKYgXmI6w==
X-Google-Smtp-Source: APXvYqx2YW5yQL3vP6vRMKcu64GAOBwTbSvG2qgbbAZWZqs/Hl8t2xyHxllc7hnR9+UoRACfoez3Mw==
X-Received: by 2002:aca:5646:: with SMTP id k67mr3608068oib.166.1582730297617; 
 Wed, 26 Feb 2020 07:18:17 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p18sm214800otl.70.2020.02.26.07.18.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:18:16 -0800 (PST)
Received: (nullmailer pid 21302 invoked by uid 1000);
 Wed, 26 Feb 2020 15:18:16 -0000
Date: Wed, 26 Feb 2020 09:18:16 -0600
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 01/34] ASoC: dt-bindings: Add a separate compatible
 for the A64 codec
Message-ID: <20200226151816.GA21237@bogus>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-2-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217064250.15516-2-samuel@sholland.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_071818_479735_ABEC0699 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 00:42:17 -0600, Samuel Holland wrote:
> The digital codec in the A64 is largely compatible with the one in the
> A33, with two changes:
>  - It is missing some muxing options for AIF1/2/3 (not currently
>    supported by the driver)
>  - It does not have the LRCK inversion issue that A33 has
> 
> To fix the Left/Right channel inversion on the A64 caused by the A33
> LRCK fix, we need to introduce a new compatible for the codec in the
> A64.
> 
> Cc: stable@kernel.org
> Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml  | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
