Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA29362C2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOLYZwIZ9DWDsbN1ELxz3kLIT64hd6bpXCJNMLVdCco=; b=p/2NMQFvGfJOUF
	44ADTYOIy6KXt9AkSgEgmutaqMJuUz9WaX51q5lfw0c9etEYGftCg3TArxki3vkapxdnPE72IvQYe
	L5tBq1meTNManypBsgFW149tjllOjZ6Z3AokvP6uIplOnPh0ICTx1EtOr7ZagZzw+JVo5xWCZ2MC5
	vOPyRFV43NUBWMv2ZSHxBJdWaIhT3OnKkYoC11RvxnhJ9N4ZidvwHMDX42DNvlbuW+F9zpx71QAuK
	EMlxC9EURVZXzJixVGxVyjN/1NxCllGcNktgpiNUl/AUG0i1x4NLBoxrBVqwVuBbRCWSA9ZbEldEE
	T//6nhITo5FjcJ6eLcpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcX4-000739-ND; Mon, 08 Jul 2019 22:54:50 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcWq-00072p-U0
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 22:54:38 +0000
Received: by mail-io1-f67.google.com with SMTP id k20so38972467ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 15:54:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ycpHL4sbweieRz87Isn9PkqL7bhl0hfDPx3yX+jjAVA=;
 b=WmlWV9A2H2T2K1BTrBntDIm8yS0VUsM5+SUuOVLuPkavlDfJojkCV8hzJ+IPnH1JOq
 NaAEC5UQgax6CQeNUcF7+/eip9eEj0O2yP+B4/VoHmdty0ZbDy72SKxrUa90FDM7hde9
 vhsfh7XASiXt+qPAfjirHJFH0ywEZp7PUr1S1HnnW6XjjDVFQzBoQRwwwCiOlsRDG86c
 OQAanlOFXJgfB/RGmdkWZk16Op7E4ODdN8401/iyY8kDChQ9oRZ+mo9VlJTHg+W3jzkp
 ID7xojf8oCFYPJmOoL/MsL8HMuIGwOvxT6P/4EpVU/mmNojlZDfIeMdu97h8jv2N99DM
 6YPg==
X-Gm-Message-State: APjAAAXHNaTzJpvNnxbZZn8wvdFTmoPX4AIWCaqlyz/8YWRcePmeQhqI
 xi8H2/SI1ufTe8WkpLQb6g==
X-Google-Smtp-Source: APXvYqwhZ+6uIDGXwGK71Hxeb4xD4EDSKJ1wG2t6qeC7PmQXTgu9bkd/NfOlFZzmFDgL3K5q7QIbNg==
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr20869180iol.269.1562626476112; 
 Mon, 08 Jul 2019 15:54:36 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id n21sm14107367ioh.30.2019.07.08.15.54.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 15:54:35 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:54:34 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: omap: Update bindings for TI
 K3 SoCs
Message-ID: <20190708225434.GA24701@bogus>
References: <20190604170146.12205-1-s-anna@ti.com>
 <20190604170146.12205-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604170146.12205-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_155436_966660_A67191C8 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 12:01:45 -0500, Suman Anna wrote:
> The TI K3 AM65x and J721E family of SoCs have a new Mailbox IP that
> is based on the existing Mailbox IP present in OMAP architecture based
> SoCs. Update the existing OMAP Mailbox bindings for this new IP present
> on TI K3 AM65x and J721E SoCs. The same compatible from AM65x SoCs is
> reused for J721E SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  .../bindings/mailbox/omap-mailbox.txt         | 59 ++++++++++++++++---
>  1 file changed, 50 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
