Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2EB464E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btqxQWlh2N1hf2AUEaZmwkNgVJOmnXWJ9J/lOZC9tS4=; b=TXR2n6ay/mESo9
	J6E36z1pOdStx1gyqIfHPqrULXxkYeIOwR/3tVkTBTD2gSo0B+4L2aERgtvjSxon8f3mJN8T/Fl/B
	0qOy7jk1CbAKbcRleDu8B/d+9WxuFFwqNocLtVcCYerX1iUdgLhffd2DvhQaalzSUu4txH6RHL6lJ
	H0a7QCxY7IxYcW8qCOqLY/8ufmdTzvJRrQu4pTXy+ErXmZwgLvc4jj0dST9QTztU9UqPjjWhHWA7g
	mS19zRZU+F9H33HGi/7uKYpHZQeUMh9ckyQyVY9sQavsYX9QMbPcahoJqwvmZYcWl5NTjtuf4SYQ1
	OMICQs0IyKTw7xgU16KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpMv-0005Ep-00; Fri, 14 Jun 2019 16:48:01 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpKx-0003EJ-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:46:00 +0000
Received: by mail-qt1-f195.google.com with SMTP id a15so3205477qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:45:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tkF76/YWyBi2DNFHRTKUkXkyJ1fsnWPr1qR9pgyZkc0=;
 b=qCoIHSd/ZfeAVLnQVTawVXvKACQfHI+QpKQeuURVmqaJX7Zb87fDvoMCLzPoENq3s9
 0REcrFGfr9HQIkNq9SYXkVOcSRXuaIumsPTLg1Dc+J6IrssRNQlZ/CVQpQN0w1MTK60L
 FttTdiVfumQY/frWTvXNVtR7LO4+jTOrpihOnmopy25K826ur+AZka0/Hb7cvl7z0Gvp
 RDKcLW8ZZuhlqm4WVaCVf1LKZcDyQtG/OLXge6saXBgTfip2y6YFXQaavXKIJsJWQmUz
 3PR9QGDjNR9LwJm9uLMuvZxaRn97zVY2ELU3XsPdaww4PWHVyTGP/ZuyZ6Qte6CwrICa
 gqrQ==
X-Gm-Message-State: APjAAAW9wR9KYEdizA+aoMTt8mBcHVM5dgPbzAgZZvtPQ2f1KVLOrZby
 cfcO7pZPuRrRNupOyqgZpQ==
X-Google-Smtp-Source: APXvYqzeZjnaIMhoekYjI1KAjGSgD0u8xfYWVwEDuon+Prg33JgQL/mvg90QKAMLqnJN9uLyklsNNw==
X-Received: by 2002:a0c:ae5a:: with SMTP id z26mr9212014qvc.65.1560530757901; 
 Fri, 14 Jun 2019 09:45:57 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id e8sm1819685qkn.95.2019.06.14.09.45.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:45:57 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:45:55 -0600
From: Rob Herring <robh@kernel.org>
To: Nishanth Menon <nm@ti.com>
Subject: Re: [PATCH 2/6] dt-bindings: serial: 8250_omap: Add compatible for
 J721E UART controller
Message-ID: <20190614164555.GA18636@bogus>
References: <20190522161921.20750-1-nm@ti.com>
 <20190522161921.20750-3-nm@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522161921.20750-3-nm@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094559_445151_A2D921F1 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Nishanth Menon <nm@ti.com>, Vignesh R <vigneshr@ti.com>,
 Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 Russell King <linux@armlinux.org.uk>, Tero Kristo <t-kristo@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 May 2019 11:19:17 -0500, Nishanth Menon wrote:
> J721e uses a UART controller that is compatible with AM654 UART.
> Introduce a specific compatible to help handle the differences if
> necessary.
> 
> Cc: Sekhar Nori <nsekhar@ti.com>
> Cc: Vignesh R <vigneshr@ti.com>
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
> NOTE:
>  - If Greg is ok, we can pick up the uart compatibility via the k3 tree,
>    else, I can spawn it off the series into it's own patch, but it
>    seemed better in a logical order.
> 
>  Documentation/devicetree/bindings/serial/omap_serial.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
