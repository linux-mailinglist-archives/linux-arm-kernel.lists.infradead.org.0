Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0529016EE88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 20:01:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ilfrfquDDxj1rSqoZV6X8XnnNS5PjZUoBY6BDS1qlY=; b=IVr3ZjXAdHZHQ2
	wTqm03PZifbVKeRJCnle7G+0SFPd3fX/UPqlNGvLfIJEtcDibF3ELRtW9aEvk/vizuWcbLzg1rwHB
	bYUWgE/NsSM9Nd5kDai3F2r04ErS7sePf5Pamn3UqOa/T1U0XhtYKMA2kDH+dv53ln4UmrFuCwvnm
	nIlg3ojUvVOfAF15lfYV1rfQEHYPMHAc05d2fpWdDkbzuMN0UiGrBuGstOZjl0GpQ1laFiq+SyDrw
	bpvmq2UHOnUuXO3xmCMP/eJ5V71mE02lEuFvShH/DfJrHwRXxLzgFE1du0zhNYu1Ib47GuT2rLqil
	KPRTMVEFjDMY2ztvemIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fRx-0003df-Hi; Tue, 25 Feb 2020 19:00:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fRo-0003dD-2E
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 19:00:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id j20so551526otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 11:00:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1P9Yso5Vb5UKxpvMNmGS2V+IOHCpyt5b9VLkhPIxN7E=;
 b=bX0SgHD7tlQCadWgT/pryERsExQlerUeNKBBJh0VFlqXHfyOHQ6GBKan6//inq1QEY
 0+9QjcQjsxREdXZJ9KxFhaymXGK78DzDP9RJ3vjezGWTg4yAXpxHayGopsofxYoMArNS
 dwQYuOVZKTJ41ZswClt1BRWm8JV3uxsg/iHhEhz2DK8R7TPxNFFOBw/p8qYP/NqYYesS
 F9L6qsG3EahoNydeioMRRNETtGs5lHcckRiwGeOicpl9gZDDx8sZ2lO1a9gDc7W+olNM
 DlXTkIQIDnMVcTs6oc7bTGgEAJodyBsWMm7yB3o+hUUh5NP9BnLIarPdzPKypkjBO3oC
 DUhA==
X-Gm-Message-State: APjAAAXNyo/nyBUP740OreBwGqUDBaU3sytiqAVKllR7GqjwjrNm4yOR
 BD2HHpzx7fKkJDwBnVORNg==
X-Google-Smtp-Source: APXvYqxiHG0UPocpZw9If5DlL9JboqJVuK68KZ4rncHtmoPexpmqSR8EMGl9Oop4I5g2kwHh0tIb7w==
X-Received: by 2002:a05:6830:1498:: with SMTP id
 s24mr33773otq.79.1582657246623; 
 Tue, 25 Feb 2020 11:00:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w197sm5526241oia.12.2020.02.25.11.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 11:00:45 -0800 (PST)
Received: (nullmailer pid 1593 invoked by uid 1000);
 Tue, 25 Feb 2020 19:00:45 -0000
Date: Tue, 25 Feb 2020 13:00:45 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: ARM: Add recent Cortex/Neoverse CPUs
Message-ID: <20200225190045.GA1553@bogus>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <79ef74956befe089d7994ad24ab25132e95e9ac9.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79ef74956befe089d7994ad24ab25132e95e9ac9.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110048_107066_54417BFE 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 19:35:28 +0000, Robin Murphy wrote:
> The CPU group has been busy since we last updated these bindings...
> Add definitions for all the new Cortex-A and Neoverse cores now
> available.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: no change, just resending for completeness
> 
>  Documentation/devicetree/bindings/arm/cpus.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
