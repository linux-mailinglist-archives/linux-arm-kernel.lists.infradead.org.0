Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D706011EDC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4QXacGjq24XSDZ3jhZRex7Dg2cORk70mBQ6PM6vY48=; b=D5acm4uCq//q/D
	1+KDkQg2FS2NJW/ECNgO1eWwN84cVFIdGh6JLN2GTVRihxhz8YkuSDMdb9sPYdxU1M3QP54OgzEur
	3JykfHC4Bl1/aZ/0fsKi6AQgmNuv3GvYs128ZWI67XTsx1U/J9d/Akh2Krpacmlk4h87xVyuWzwRU
	MhGqNR/vk6PxelYmURdsqXmdnuADiv/OxVAidQxn1NwbyXsqPAMj/txi8XSrlbMKDJFidT+LR/Wer
	0VKixNuohE0ZxVgBc7DVG8wV9kq5dAAvXBi/2CBv7A94fAYfuLM1xcb/m3iXKHgfEWua0Fxu2Z1mI
	dnnYO07Ql5T3Syq6skGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftRx-0006yb-Ad; Fri, 13 Dec 2019 22:30:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftRe-0006y4-MS
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:29:59 +0000
Received: by mail-ot1-f66.google.com with SMTP id p8so860448oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:29:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rR+gZbOwT0EsEu0FOYdJuiAybFzLvdlDbKJo+AcjvAY=;
 b=cyyjQqXYJXuy4nMfB3MT+iyS/a6QxZt6qAwU3LwVD3Zj36rD9m6OUJIBuBGswS9XeH
 QqEd58qZbrMW3kg0ZTJQptqI77gLaD9m8GoLqN3iT/hSNMydvwrVXjM16rvjgCTFe+o/
 He/Y1P34HtvLShBFZlM9cNgHr4XrZy8nJHEm8M1D100m+skYk1RVndoFtz1FiBfzBn8I
 1e2wRDn8aakkI3k49FSAAKdehoEJKq+UxAYCNL5YToG1TkKh+8Uvq18i11rFPteVwv+7
 zcEAC3kgUjq8lUta8AaBzeaOYrBZ7FYIA7mMbVsI3W2dBy+7zboRlaFF+nbp90GMjWAc
 DPtA==
X-Gm-Message-State: APjAAAVwVsH5e9pp+CurFJjQ1LmuHP38i36JBTMwyMk9Fnxv7NYpizl5
 KJYd+M6lfWEbyd99qUpTfg==
X-Google-Smtp-Source: APXvYqz/BOJnsfjRa1QIsTdoyon+mgLtBUzCEcJlYdRndVcChgXQfvNXFKkQfnQ7B8mLoWutEbZ+oQ==
X-Received: by 2002:a05:6830:2006:: with SMTP id
 e6mr16336398otp.367.1576276198049; 
 Fri, 13 Dec 2019 14:29:58 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g25sm3807433otr.8.2019.12.13.14.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:29:57 -0800 (PST)
Date: Fri, 13 Dec 2019 16:29:56 -0600
From: Rob Herring <robh@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: power: reset: xilinx: Add bindings
 for ipi mailbox
Message-ID: <20191213222956.GA10172@bogus>
References: <1574412258-17988-1-git-send-email-rajan.vaja@xilinx.com>
 <1575283131-9339-1-git-send-email-rajan.vaja@xilinx.com>
 <1575283131-9339-2-git-send-email-rajan.vaja@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575283131-9339-2-git-send-email-rajan.vaja@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_142958_736941_EB4040D6 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, tejas.patel@xilinx.com,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sre@kernel.org, michal.simek@xilinx.com,
 devicetree@vger.kernel.org, robh+dt@kernel.org, jolly.shah@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 02:38:50 -0800, Rajan Vaja wrote:
> Add IPI mailbox property and its example in xilinx zynqmp-power
> documentation.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
> Changes in v2:
>  - Correct order of tx and rx in mbox-names property.
>  - Add interrupts property in example.
> ---
>  .../bindings/power/reset/xlnx,zynqmp-power.txt     | 43 ++++++++++++++++++++--
>  1 file changed, 40 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
