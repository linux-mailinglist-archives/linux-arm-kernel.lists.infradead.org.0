Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB3F10DA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8nQCHMm+HBSRypIPRxyni7Z1XWorQMpM2IWm/hogfw=; b=nT23mTNGTmFOxs
	LO4myfvZwiFxxVWY7L0BpG3YYVTeQJN/2BuIQ9FLi6J15GCJXvEAzyYdeLHFmolO0FodJjbFPUQUY
	iLzjKhV5JQvsCLhGzQcM5+QROJvdMJxiRcU/9fGkw7r4VweUx5J4UqZw1GOCmTcpm95XKvX62L4Y+
	HSGSa5o6fEr2lo0EBYlzQuF/0DQOGCUtjNwEqAvLjym0Gl6xSZwm5kEUfUgFWzYVGo0EujMdN9tXw
	5teH09lLU5TIJ+yujvFMaSgQZV9EsnxlHW/lKWDUH2TJ1784E9Lcb0SNRNyX6JmFtA38T+WsbiqhQ
	n8UKCsl7xJv/OTowYS4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvPp-0000xb-Aq; Wed, 01 May 2019 20:01:17 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvPi-0000wG-5k; Wed, 01 May 2019 20:01:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id g24so80192otq.2;
 Wed, 01 May 2019 13:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HxbNQi9DeZ2IJLgdIUVTw8HAwd2FcPK6Vz/jlq7BRoc=;
 b=ku3GkRIjbmUNjSg1owf9ZOqxFDWaPqHubDpxO1f89VuCkIboJwM87C8JQcluCuTeUs
 W9qIjd7u4BU7TfAxJRC0JuugDmAnTI4QDC8rA/JL9uQQpEV8InC0GSl4DaWifepE94uz
 j/IEJ62PUpCKax8riANWRnB8CFU8/3KMLmOIkI4TAWcqPXi0s0JoU7xzoPk3EfeDQuFv
 OZIqLVqSpSzoW9z4tJRcxa0WpeKwrml5UCfcnO79cPjf6t8SbG1+pxw+QzJqNE5emV2x
 yRtLZDZ7qy91UfFcdDio4mNLyNzVq6iDAYv5kubhELLS9WxUQ769uKYimptjV2dEk2n7
 uXaw==
X-Gm-Message-State: APjAAAXjQ5veusUdky3vQaZZsmYdnjTGPISDzXW5CzqKCideeFVlLmqc
 Y5OOoZm58c8pbXUgM2MggA==
X-Google-Smtp-Source: APXvYqzcF2UnIXneOHc3vVzJEv6m01JtjNnKY2BTBLXgguBiPwEBqQ+LDGuHzLgGqqLZG3bvV/MztA==
X-Received: by 2002:a9d:2066:: with SMTP id n93mr14060248ota.193.1556740866212; 
 Wed, 01 May 2019 13:01:06 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r4sm16901646oia.2.2019.05.01.13.01.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:01:04 -0700 (PDT)
Date: Wed, 1 May 2019 15:01:04 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pwm: Update bindings for the Meson
 G12A Family
Message-ID: <20190501200104.GA29281@bogus>
References: <20190423133646.5705-1-narmstrong@baylibre.com>
 <20190423133646.5705-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423133646.5705-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130110_216284_17AA2EC5 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 baylibre-upstreaming@groups.io, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 15:36:44 +0200, Neil Armstrong wrote:
> Update the doc to explicitly support Meson G12A Family.
> The 2 first (A & B) AO PWM uses different clock source than the last 2
> (C & D) AO PWM modules, thus we need to differentiate them.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-meson.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
