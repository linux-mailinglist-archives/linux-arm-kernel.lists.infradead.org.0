Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31D6170B9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8pA8kvd9IngVXp0+54IKI/BADGWOgI+ichRJ4sUSUc=; b=ZmMEFYM+nXo+nk
	z7arED+eyHn2eVa1eHRjy55Ef4itPzG+nC308KL6C5fAeoXDTUkfG77mdwwlad2MNH5FFpgGpHal+
	VsGDPcOO8NUS7QKS81aENKpqehiGFaweo4/Y1cpRgo+GYPxsRzIhb2ksb39F1cs52Rha0izyr6IA4
	iLLeeSHs/oqJ4dyBTfqBfrz3q72lQ3seZx7c+N8UHrmy3TD/Fs2LW/9t5oWMe5ccEDRzMHpvqzcMJ
	cQ5TApc9o1FTg2Iwth0WMXPaLMjYLWtORd/6EEe86HMYCXmNk2SKj0M8tRidqwiN0KBWL2HrEJw/b
	sv8q7Z4g8fqEBE+NMbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75Do-0001Ke-B6; Wed, 26 Feb 2020 22:32:04 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75Dd-0001KJ-Jl
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:31:54 +0000
Received: by mail-oi1-f195.google.com with SMTP id d62so1213288oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:31:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rTUAqhPmK+qIf2l5k1SuT6H7Tq4pnUlwcojSvmo0cfw=;
 b=k0ks76Dj2eifYDKMWWfgObx/65x5f69lbBNynQA0RBCNjl1q9YFtDpunfvpN75xsWB
 y90QUMlTCcBwiEnmsE5woOm72bIkVeeJLeYJAjvIbVZFZSxq+OURtr5tg5GKP77YKPA5
 G9p0fu7r335DZF1NHCKdtylROo0wRmaP2abtU5//VqUY+fXyAycC4gmOiwrlNYELr1cT
 daRqvQG0+miAR8h7EeWjxEOUQlWncS9dC0RXN59H7GUCKhBsJu4hmPJo/dvp2vTwvd7a
 TT+Aqso4JC2X9pjO7f9g2oxKSnrA7K0P6yl+u+Qk0FkJ6jZWqzD/Y5AJ5olTdzsjaRB1
 UhzA==
X-Gm-Message-State: APjAAAXfv5tBSNrvUUU6WbX3DI+GpFIr+khY44L/wbf6tClFQ/RmaSrJ
 Z6RyhmjxiRgFcti/OTHAvw==
X-Google-Smtp-Source: APXvYqz4Q/TiEhVDfkVrM9F8s2F7tiaSAWB7KSFDKSdZapJSp9W6VGyFqddUm9OUZR088Uvlwll1Vg==
X-Received: by 2002:a54:468b:: with SMTP id k11mr1016759oic.134.1582756313012; 
 Wed, 26 Feb 2020 14:31:53 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q5sm1297178oia.21.2020.02.26.14.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:31:52 -0800 (PST)
Received: (nullmailer pid 21822 invoked by uid 1000);
 Wed, 26 Feb 2020 22:31:51 -0000
Date: Wed, 26 Feb 2020 16:31:51 -0600
From: Rob Herring <robh@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: Add PinePhone 1.0 and 1.1
 bindings
Message-ID: <20200226223151.GA21764@bogus>
References: <20200223172916.843379-1-megous@megous.com>
 <20200223172916.843379-3-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223172916.843379-3-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_143153_650645_E567C8C1 
X-CRM114-Status: GOOD (  11.71  )
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, Bhushan Shah <bshah@kde.org>,
 Chen-Yu Tsai <wens@csie.org>, Luca Weiss <luca@z3ntu.xyz>,
 Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe@baylibre.com>,
 devicetree@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Feb 2020 18:29:15 +0100, Ondrej Jirman wrote:
> Document board compatible names for Pine64 PinePhone:
> 
> - 1.0 - Developer variant
> - 1.1 - Braveheart variant
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
