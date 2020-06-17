Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2BA1FD903
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rr16vQhdKRR2iPacl5MSYeHX0fOh1IhIS6BSfc9N5jY=; b=rDqIcdRWHB2AbI
	GdVpjTdiuanxm+o3eaWPb2aLQxuagNqi6z6z1nlq8heBOqk2HiRgfk+oM8cAqUKvsOMP6NsiwOlT2
	jWKiXLclw4mNtXgrEkxM+oqGFjUqzgZhSKY8C2/Mwp1WLgypTEJ8Z1taZsWVLRop99xaesbqJ1NP0
	rf+Asvk0aUKH/cy1mw4cqPRDuf0fZXIGjWYlLHQ8dX1Oo6TWkBSTu2mwWqJDqsQpW+ae0YT83U8Vv
	PrnJ8rpwue01MGaHyBjhvvfa5R4T3Dg/n2diA730P/Aeu5Dwf0bF5ZXfHzaok+jhLHQM975kemUmo
	RYcPiszAnCPYVmeX/exQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlght-0000ru-Iv; Wed, 17 Jun 2020 22:38:57 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlghj-0000r4-58
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:38:48 +0000
Received: by mail-io1-f67.google.com with SMTP id m81so4896216ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zvm6Wi/JhfHZije2TzVP/BE8Hn0bB8Py76ZIIBYPOgw=;
 b=pQFdqZ1Ol+UPRj5e8fZQ8LoMItGtVEQaD4Jy0tHapCUT+/AQuVN5TWaUxB5R9LQAjB
 Mzv7vq0WydpieZnUOT/8B2k/hqoJBLCOH0pXDCtwOiNySJazr1K3rsDJ7q9FyEFcebih
 AMKcyjribov3h0konQqhTVUyaCpL0UsiWQgliIIp0CFo7FZvIzF5FObXb9680DiiIq2u
 roWBEG1lSa7m8RKNxIWv5PVnRxhBTRJ3csFm3NwNxdE1CBAh3lbSC62Rguxn57DVd3p7
 +x6BkFuf3xCecLFtukMpO9y7yAZ6JX5llZde7ieeqT0Hw/Ku7fjgbqAEC02ttgC4p1v1
 Ryow==
X-Gm-Message-State: AOAM533oVo2CV0iHeZyV2kn24tA7gg3oGDcI/gDimBDhoR15upgs5cLo
 EUY7brLCpQhzNPN1H7wcHQ==
X-Google-Smtp-Source: ABdhPJwRjmmjDo55yNTup3etyMo8kIw88xo+I0teA6HCDNX/YZbUsYSz1qb0GmfH4mDQpVpYEEtbLg==
X-Received: by 2002:a02:29ca:: with SMTP id p193mr1530021jap.129.1592433522665; 
 Wed, 17 Jun 2020 15:38:42 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id t14sm488074ilp.73.2020.06.17.15.38.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:38:42 -0700 (PDT)
Received: (nullmailer pid 2967167 invoked by uid 1000);
 Wed, 17 Jun 2020 22:38:41 -0000
Date: Wed, 17 Jun 2020 16:38:41 -0600
From: Rob Herring <robh@kernel.org>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH 1/5] dt-bindings: fpga: xilinx-slave-serial: valid for
 the 7 Series too
Message-ID: <20200617223841.GA2967136@bogus>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611211144.9421-1-luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_153847_195193_C5F99468 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 23:11:40 +0200, Luca Ceresoli wrote:
> The Xilinx 7-series uses the same protocol, mention that.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  .../devicetree/bindings/fpga/xilinx-slave-serial.txt     | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
