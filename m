Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878FA1E32F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq4ybHLyY+FvP99oOTwzV7RUj+Aa6AawmlyovqXW+mA=; b=h6ZhJXyyVYwBK/
	s4foZ7znfd+OmFTSEul/W3PVhOpNx233gwV+new/E2HuS6oeP7y5DDvdV/kePjRtgiAUEd7ykbRQi
	U7DqpoJFtrh2ABrGvHd4cr97OyGUMw4uBUR8biRO66by0aaE8ngaTubxEjRLEzWRqgwtrAIfhlP8K
	d/VDrsE90mnVk+MJciJKlJ1u7AmIqusnzQ1jbEv2BdE/AXc+mFwlk9i2JztyIjBk9GWQzzcF00Hlv
	QvTavqrn8DEtXZT6LE/6oeOHy5f0bC1+AwAdlWN9JJyKjZEWpmjDJypshWXAE020dVUBLiNR/QU+2
	mjiqpXzL39fjr4HfrzKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiQR-0004ps-6K; Tue, 26 May 2020 22:51:59 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiQD-0004p5-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:51:47 +0000
Received: by mail-io1-f67.google.com with SMTP id k18so23980219ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:51:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=b//O80efuR9XCAH6meLDCFiWRVl9cYjfSg/OL1ItrFE=;
 b=dWmVGffQSoeACKXElq78Q2CeJvTvS+fN59+73lFC5Iv7tXBIyA7AU7KIjacBsr9eRv
 mNoc+Mi+0DMGN0TRB2jCUE+VBudpfgxzwE9UdKf3mXwpLh76tJrNO3dcVD0mR78y+GCR
 PML031cMVTXVREjJjnveNqIRm6OVTXJKUBlfqzJL6S2rqVqO+FLBXqRF6qXJp4U6GV3n
 V5nP1XHaXzR7syaG9TcO/as5wiodHdRx+V9XzaJnzTsgP/96WtZ+UH3VvcWjhuvY9I9q
 vtfGGVl97bVcuRsah/2BkO0FSJgR1r6j54ghdGv82T3MUM+ref4e4MMN8zfqynUM9TM4
 wg9w==
X-Gm-Message-State: AOAM5315KSGd0Ivycymvj17V8gptns65JBbmlF+ajETqcJjPllBvwCbk
 VqpBuxJ+By0PVAkj+9wUfw==
X-Google-Smtp-Source: ABdhPJyzPZNiAEIXvFn8cBENJZbF+cuL2BgGEDt1Uc90DnYvpmSvolGQ6Om+x4XqHV+RQZDT2HHctg==
X-Received: by 2002:a05:6638:44e:: with SMTP id
 r14mr3241032jap.53.1590533503186; 
 Tue, 26 May 2020 15:51:43 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p75sm524459ilb.23.2020.05.26.15.51.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:51:42 -0700 (PDT)
Received: (nullmailer pid 536270 invoked by uid 1000);
 Tue, 26 May 2020 22:51:41 -0000
Date: Tue, 26 May 2020 16:51:41 -0600
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v5 4/5] dt-bindings: counter: microchip-tcb-capture counter
Message-ID: <20200526225141.GA536209@bogus>
References: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
 <20200519083716.938384-5-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519083716.938384-5-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_155145_922523_37BD1464 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 10:37:15 +0200, Kamel Bouhara wrote:
> Describe the devicetree binding for the Microchip TCB module.
> Each counter blocks exposes three independent counters.
> 
> However, when configured in quadrature decoder, both channel <0> and <1>
> are required for speed/position and rotation capture (yet only the
> position is captured).
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 32 +++++++++++++++++--
>  1 file changed, 29 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
