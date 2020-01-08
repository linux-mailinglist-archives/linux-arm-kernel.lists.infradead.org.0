Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0004813476D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKD4OZoW8h3MmVI9kLxuLq05MQYF7XASC4PUo2iikLI=; b=OFnfOXn8NJzAcE
	DjhzzSNpWNFb/W7gg/PsrKZgG+wH6hSOWLVPYF3dHbp85eyVDxRgwn+VeHHR2qcQEk+Wch+fX2D8V
	omLLfRo+REsnGZNNEKWkCwoMa1KRSREpqqOBOszHFpLYyQxlgn7zWjilOLU9obpUyv66akfYClQ8U
	sKE/N5S936siFbbKynCqRs6rTNQb2B5ed310os73gOF39DIcpHsRRDwGXTedvJTwF70+djMPOXyMn
	BDe85+vcwfun1q7k6Mn8ZPXagJAiMTG0p9RhpQ6OuE0JylI2OqvXrE8f1FLIY9+Rc6sKrJt4Btl3f
	GBzTqY884mlMSL+ZtUbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDyj-0005IA-Jx; Wed, 08 Jan 2020 16:14:41 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDyb-0005Ho-Sj
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:14:35 +0000
Received: by mail-oi1-f196.google.com with SMTP id c16so3108098oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 08:14:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SrlaliDEGGOH4VVc2RtqMQylQGZdgoDQmUqlf4dPj7U=;
 b=qIzHlj9t452D6JONgPf8HbK1eAxzzQln82ut4/bkCs9tWByac3J0zIMeLUaio5/t2H
 N61uEZGTg2oiBbtZPqFpofKYO0VY3jVU5yGUkB5i4OSqL6h0fzv6Ri6AHGxsIxLNQrDv
 s922mzmt6Vs9NCtQxN7wlZT+nzoUDdnZA1nNRMsfB4UvPrFqjHu6sLdVj4NWYSP2sBNo
 +By/azZsZhabOXA+jHSALS+XWvDyXLL/5WC0XN1fq81bWTZ1FcVP3mY0Ex1vQEMU9C8n
 pL6V7r2x/gHloMiEfc9WsHK/Zlbq4r8vlKyzPgIUTRVPeiqIp6cY96Mu10R0I3rmTw4W
 r+/g==
X-Gm-Message-State: APjAAAU2rFk/pFYEx8Z7uh2URTh+RUyKfzJgo8U1ylEYZNGZ5/hLX82a
 0UEq4T4uNejpTkUNqDW84JNb5h0=
X-Google-Smtp-Source: APXvYqw126qJOothBcZ7IDsJbRXC1DDVJfjK9zVqkLY3CFMQJrTV3TuFfYvAn+Mu+NqyYR99/JhHNA==
X-Received: by 2002:a54:4f8d:: with SMTP id g13mr3479582oiy.43.1578500072948; 
 Wed, 08 Jan 2020 08:14:32 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e17sm1243835otq.58.2020.01.08.08.14.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:14:31 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:14:30 -0600
Date: Wed, 8 Jan 2020 10:14:30 -0600
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: memory: Add Tegra186 memory client IDs
Message-ID: <20200108161430.GA8334@bogus>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
 <20191222141035.1649937-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191222141035.1649937-2-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_081433_928774_B2E20B9D 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 22 Dec 2019 15:10:23 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add IDs for the memory clients found on NVIDIA Tegra186 SoCs. This will
> be used to describe interconnect paths from devices to system memory.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra186-mc.h | 139 +++++++++++++++++++++++
>  1 file changed, 139 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
