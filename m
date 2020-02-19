Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59E116524D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0Yi8wWBEllQI4Y1Bg0riTlVeRr/2/bkaGpGy2Vmpa0=; b=EOEnWaSCweS6wj
	CUyNq0i4YsYUaQMXyMJ5vk4brcyv0dDPEnvlfRnRlmcgcgKXsTybfIqGMZdMIpugP/rjdhRk4Atbv
	2HgowGl90SYNsEboWGE9Lat+1bBdbVJBCBDXZ26BquqX5GlRc5AqWP7I6b5GxQsaH21F+Q/uYUv2x
	1X9AQ0csxYuX5NIu8WjYt+qjC4y9ps2nfLwCIbwge/7x8JQs6E8KLBBFp27fqckqALg5VyT8YH64i
	fuvLn0zn27S6UWRsIQSs+0iAnFyh6vrgmyifk+KxhKB1Sg17LZmrkQEmjbVNtNWhReQV06mfk/jHe
	lFbTMGp3odI8TNiDExDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Xcy-0004RS-JU; Wed, 19 Feb 2020 22:15:32 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Xco-0004R4-EZ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:15:23 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so1732233otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:15:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EsyWvJOyrd+rl8zt/yVD/N5zbUQ/a+iWqVsccdyLl7c=;
 b=qkJ7EEMjMrnTrudhgZgbROP4l/6QB3ebWHN3dwF0dQ5xt1BWr5Q97DNsPz/D3+GzCe
 mWNk8Wb0y3R+B4Q8KEODPS8DnsrxCcJAZ8fvZU61Nm4zSJn7GdGAf5xGO3DLjFqdN2CV
 KVFsg9sb3Xnl0Kyhs9+0QBRsbZGAAGaYBAjsUR9apAha0FX24eZ6lqrVAwej0NWwdPE5
 mQY3qNU4ZrMWeA6JyldQ6uMpyNJXLPE6a1raHWtz8KuX2VuQ0Qdpxe+mwTL5Ilflj7tT
 k9XUe4oNJkIZub9EVM7WFIZoTP8sk9ZDuEhspyb0SLRijm+d3+LkNFMNR+/yI/WYVmol
 tLsw==
X-Gm-Message-State: APjAAAVCEvRLX2q3EDcLotUJTDVP8eg40u+VEWyXE1h/RK1wWCdYcvZp
 mW3qf+QbG1XkEvy5enc3lg==
X-Google-Smtp-Source: APXvYqxrUC2cR1cmZAnZ2pXCjXxrWUGvheKcevmkbL0KODlWdGTFn9ryHxdhD9TA1gW4M9OcUDhS8w==
X-Received: by 2002:a9d:6443:: with SMTP id m3mr20508149otl.20.1582150521498; 
 Wed, 19 Feb 2020 14:15:21 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i13sm402628oik.7.2020.02.19.14.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:15:20 -0800 (PST)
Received: (nullmailer pid 1518 invoked by uid 1000);
 Wed, 19 Feb 2020 22:15:20 -0000
Date: Wed, 19 Feb 2020 16:15:20 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/2] dt-bindings: media: csi: Add interconnects properties
Message-ID: <20200219221520.GA1461@bogus>
References: <20200210100417.78583-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210100417.78583-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_141522_489487_25D4879E 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 mchehab+huawei@kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 sakari.ailus@linux.intel.com, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Feb 2020 11:04:16 +0100, Maxime Ripard wrote:
> The Allwinner CSI controller is sitting beside the MBUS that is represented
> as an interconnect.
> 
> Make sure that the interconnect properties are valid in the binding.
> 
> Fixes: 7866d6903ce8 ("media: dt-bindings: media: sun4i-csi: Add compatible for CSI0 on R40")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/media/allwinner,sun4i-a10-csi.yaml        | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
