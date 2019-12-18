Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C446124DFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UI33tBQdIbjNXGsWf/vmdzLaUDmS4FE4nw1Phv7o2MU=; b=FnHRirvbKb5Mbs
	D4JLVVXqWw8Tkixvq4B331F7Yn6FtCVYnWyOqrkrzarxPBH0MqFCzz1t23rKAimQxjTorgrf3RWtL
	FXe90ZrCmLcA1ClOPx381HPmXEwS3Xxru3iX1a2FRT/QF1HznyC9aCjYW11cyPZEvkynRNYBiW8qu
	yNPlgDLMa7+AJQieO91pErmpuo5oqigVEp80qnngQt5H+eg+Hv2OFPg112PyPAnkslHcRThrLHt2Z
	L9C0Z+dTijsObV//nbgHTysB55eaQXr8NlHuVbJ0Y1QI+gK/+NEt9Muueb59yArp+0P2+lmAtbAYG
	sOisfjPARRTbCBbfswaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcMS-0003Tz-PY; Wed, 18 Dec 2019 16:39:44 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcMH-0003Tc-CH; Wed, 18 Dec 2019 16:39:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id x14so1312045oic.10;
 Wed, 18 Dec 2019 08:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gdAO45Po9YuV+XFMQHJe5tneYkfCGzzogZXiqxLk6H0=;
 b=F0VfYhJK1sfUyaA3wqqHXPGcj2pE8Eam1UhnmBVzmTHV0Z/CopAMQObvjCA/YjTHx2
 GkAh7vuV44a4XxC6R0RDnk5dEDQ32FXYeVwpx/s2/U7OURA4uTgWVh1aY6WEjk/1U3xm
 J6Ulax9f7Tnu8KSa+R5ZeReglM4X3yMzPsJi7g2AJgsv5N154MB/yI8hV4oqp5w72meV
 Xt9cE+6mvJdE7mq6NfL2tZRNKurPz1ehoKt7lirsiMf7p449rzebAo4VFxEiKEct/zaj
 Szi5cWycdZNy7rnJtVbhNbnZdn1GoT9uNNpt40MYi9aA/niEg4j35CzdgtLqvjDEvzJM
 QVQw==
X-Gm-Message-State: APjAAAXf6uCJ/pQ5kGfJgX6h9aGRSshEaF6d37zMPgwUK5n/rjIF7tGh
 J5TWysBONaiwAR2D8ki08Q==
X-Google-Smtp-Source: APXvYqwZzlCoqCU9R29CGoBnW4k+58a6Lpq7/BNdGzEN9RUDeQUc+tVmy/ur9JVEH+3B2/7X2EE1+g==
X-Received: by 2002:aca:cf50:: with SMTP id f77mr932786oig.60.1576687171970;
 Wed, 18 Dec 2019 08:39:31 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x15sm950375otq.30.2019.12.18.08.39.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:39:31 -0800 (PST)
Date: Wed, 18 Dec 2019 10:39:30 -0600
From: Rob Herring <robh@kernel.org>
To: matthias.bgg@kernel.org
Subject: Re: [resend PATCH v6 01/12] dt-bindings: display: mediatek: Add
 mmsys binding description
Message-ID: <20191218163930.GA18363@bogus>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-2-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207224740.24536-2-matthias.bgg@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_083933_416559_51DF7351 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, rdunlap@infradead.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 ck.hu@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 sean.wang@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 07, 2019 at 11:47:29PM +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The MediaTek DRM has a block called mmsys, which sets
> the routing and enalbes the different blocks.

typo

> This patch adds one line for the mmsys bindings description.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  .../display/mediatek/mediatek,disp.txt        | 28 ++++++++++---------
>  1 file changed, 15 insertions(+), 13 deletions(-)

Otherwise,

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
