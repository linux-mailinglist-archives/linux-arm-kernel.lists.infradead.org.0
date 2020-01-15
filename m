Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C55B13C748
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7g+KEUh4uXz6vlIZmAVjiyoOta/3/y3T7HnDqMZpp2o=; b=F3e6+X5XxtAp8v
	Vx+IY55czaxYrHvA1FU7iL2L24WypgVDEYAp/sUkHuW5fWjFBvEGv9tCV3N8jg02oAVvqGA2kgrEO
	Xk0PFzqGDizEWyfbVhJizle1pUhlUFkPsxRpEP75fif5KDlXpCJ9x//8oHnZkmCIdDU7axMt29bs/
	b0w1RhaxQNtUxxoMstYybxY5dvv66s+LKTkQbm2bPJ5hHOPHaG+Wc4aDXWM51iecWGYVDrlNITgJ0
	z69DvmiHb48Hr/jEsv1dcPmjzm9oxvAEXikcxJB/pNs2JfXnrCgkGWPKLZ+WKHf2H+uk/bNLZNOdN
	Lr8ZaGUU0tjil4xb8sEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkSo-0004zV-7q; Wed, 15 Jan 2020 15:20:10 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkSP-0004x1-Sm
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:19:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id 18so15686289oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:19:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eb54G3sc1CCAx4sR/HWrdZKKEAIXwHpDF1vWmKUoplc=;
 b=lezxboRm+4/A/c/XIropxDeDKmM5/WlLBnwuqiqVE4fn3TIhff9SpJYisBv51I2b2q
 TrAdIJdLMFuDd5zNiUtH09BiqCPFlSoUWkAhcl0GEVAyXGBex1K5qR9DWN8/mb/Zc83q
 Z+KMUHVfv0Z6TeZ5UpjCQE+1e0ac90TNXUTq66QeM1DF9H2BKdIFjHAMw9FeiDzTo2dr
 gSHxfbW6tDYRRB8iObw7esap8WOYsra87WBOJx0QvioTy4PzOgRmgq0DOALjLO8BZK+l
 rSibhqQkwvorGXZzEbKzvxWBtZsRABs11jTLBUTy978I2M9gZXVXBJelHrcobcCCUWu1
 bZ2A==
X-Gm-Message-State: APjAAAUp8ol3S1p1Qlukf0BYy4w87HHYLCi4vqNRNmgj+RBW9HjnyMxs
 49bqvvjbciPy/N1diU5O2soIV+I=
X-Google-Smtp-Source: APXvYqxVqKoLdd+fbtG6CzSQC9KqdbjwYGIs0ro0mRmSetpOc5WY7bCEacyc7GhXJIdH77SjOXV+CA==
X-Received: by 2002:aca:f507:: with SMTP id t7mr213622oih.156.1579101581932;
 Wed, 15 Jan 2020 07:19:41 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m89sm6686763otc.41.2020.01.15.07.19.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:19:40 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220379
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:19:38 -0600
Date: Wed, 15 Jan 2020 09:19:38 -0600
From: Rob Herring <robh@kernel.org>
To: matthias.bgg@kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: mediatek: Add MT6397 Pin Controller
Message-ID: <20200115151938.GA8182@bogus>
References: <20200110145952.9720-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110145952.9720-1-matthias.bgg@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_071945_921652_D9727979 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:59:51 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <matthias.bgg@gmail.com>
> 
> The MT6397 mfd includes a pin controller. Add binding
> a description for it.
> 
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> 
> ---
> 
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
