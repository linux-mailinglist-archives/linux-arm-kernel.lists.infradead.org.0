Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4F91E6A47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nus4mRtoJVjRnWljNeruXFOvYJLo7EHd0km3YGmdhz8=; b=NXGEREIKqZN5Xh
	9uLSpvyQZjeLKNdBMsrIAZKa5zdnIHfmDHgFc5x02qkDo3PGtZ5otPJJWpdu9HTY69WfffPcACukI
	fHP/qwrpvoUWU2qqtZlUXNehKxybDeNQLEty1H8PefIIWDxhySUOgMFHzF31JK7XU1NrW7kwpbGLi
	NRSobCETx4AKzxkuTSP9g/rjixoX86mz5uTmhR4PWHMOJSLDHPGMNQfBBviJ0/MAzZI/qsnLaCTKY
	uQWYmu8/B9wKRZpBtN1N55j9gt8PrJ4NyoKYxcmPmVs9LOK+nt2c22i+racu9XDX8R9eZJ79rQcaR
	+0NBsElj04L2Avz7MNbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO4k-0006cM-DW; Thu, 28 May 2020 19:20:22 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO4Y-0005sU-69
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:20:11 +0000
Received: by mail-io1-f67.google.com with SMTP id k18so31433451ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:20:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tVeDlV6NVoD0UCrRZuL6pb5QLcWmItD89ccv8vXcKkk=;
 b=UCOgf0twI+kwkHD594jXi3A6E5ele+0WS98n25Traz0ZqG1rb/lZACDgCj3ggqSQRR
 Ef80gbfBheqvhEKeCeZotWwrzHkAxaYDPmsx4IoqtId4qrJ7tVQ1VN97/7rHAWJnVYnA
 BP4KjhJojIeV9vIVG8cgCuW+RJmOhVPXjCkvFw8Mund5oHLIW0rlFKHT2Ris9thvsAtK
 v2Rf0kpTm8vC5zNtgySHJGZTdbmzwxhdU73mv78KWpE9dVs0a4RVqcINYCx1S5jmbeXh
 vUfHZVrfc/8Ku5yw20RkkU9bYDwLJ0db31i5zQkpqnRcgd4JG7iEz9811Wmp2hMtfYJK
 70lA==
X-Gm-Message-State: AOAM530lGScazscc1HyXTAcr92P4nYzzlyRHnCdewF5uhmKGezcnG1AS
 UepDYHxTwc7tvwEgRxqMRQ==
X-Google-Smtp-Source: ABdhPJzF8L1ZbZJieZLdPk1C1tH8PhgkvZo0aCDEh9YnWAnyDMjl9zwYPeJUQcYomxH+ZFHE9EUD4g==
X-Received: by 2002:a02:707:: with SMTP id f7mr3824681jaf.119.1590693607804;
 Thu, 28 May 2020 12:20:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h23sm2890867ioj.39.2020.05.28.12.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:20:07 -0700 (PDT)
Received: (nullmailer pid 530453 invoked by uid 1000);
 Thu, 28 May 2020 19:20:05 -0000
Date: Thu, 28 May 2020 13:20:05 -0600
From: Rob Herring <robh@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200528192005.GA494874@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122010_264940_5645D9FA 
X-CRM114-Status: GOOD (  31.26  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 10:47:38AM +0530, Viresh Kumar wrote:
> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> Hi Rob, Arnd and Jassi,
> 
> This stuff has been doing rounds on the mailing list since several years
> now with no agreed conclusion by all the parties. And here is another
> attempt to get some feedback from everyone involved to close this once
> and for ever. Your comments will very much be appreciated.
> 
> The ARM MHU is defined here in the TRM [1] for your reference, which
> states following:
> 
> 	"The MHU drives the signal using a 32-bit register, with all 32
> 	bits logically ORed together. The MHU provides a set of
> 	registers to enable software to set, clear, and check the status
> 	of each of the bits of this register independently.  The use of
> 	32 bits for each interrupt line enables software to provide more
> 	information about the source of the interrupt. For example, each
> 	bit of the register can be associated with a type of event that
> 	can contribute to raising the interrupt."
> 
> On few other platforms, like qcom, similar doorbell mechanism is present
> with separate interrupt for each of the bits (that's how I understood
> it), while in case of ARM MHU, there is a single interrupt line for all
> the 32 bits. Also in case of ARM MHU, these registers and interrupts
> have 3 copies for different priority levels, i.e. low priority
> non-secure, high priority non-secure and secure channels.
> 
> For ARM MHU, both the dt bindings and the Linux driver support 3
> channels for the different priorities right now and support sending a 32
> bit data on every transfer in a locked fashion, i.e. only one transfer
> can be done at once and the other have to wait for it to finish first.
> 
> Here are the point of view of the parties involved on this subject:
> 
> Jassi's viewpoint:
> 
> - Virtualization of channels should be discouraged in software based on
>   specific usecases of the application. This may invite other mailbox
>   driver authors to ask for doing virtualization in their drivers.
> 
> - In mailbox's terminology, every channel is equivalent to a signal,
>   since there is only one signal generated here by the MHU, there should
>   be only one channel per priority level.
> 
> - The clients should send data (of just setting 1 bit or many in the 32
>   bit word) using the existing mechanism as the delays due to
>   serialization shouldn't be significant anyway.
> 
> - The driver supports 90% of the users with the current implementation
>   and it shouldn't be extended to support doorbell and implement two
>   different modes by changing value of #mbox-cells field in bindings.
> 
> Sudeep (ARM) and myself as well to some extent:
> 
> - The hardware gives us the capability to write the register in
>   parallel, i.e. we can write 0x800 and 0x400 together without any
>   software locks, and so these 32 bits should be considered as separate
>   channel even if only one interrupt is issued by the hardware finally.
>   This shouldn't be called as virtualization of the channels, as the
>   hardware supports this (as clearly mentioned in the TRM) and it takes
>   care of handling the signal properly.
> 
> - With serialization, if we use only one channel as today at every
>   priority, if there are 5 requests to send signal to the receiver and
>   the dvfs request is the last one in queue (which may be called from
>   scheduler's hot path with fast switching), it unnecessarily needs to
>   wait for the first four transfers to finish due to the software
>   locking imposed by the mailbox framework. This adds additional delay,
>   maybe of few ms only, which isn't required by the hardware but just by
>   the software and few ms can be important in scheduler's hotpath.
> 
> - With the current approach it isn't possible to assign different bits
>   (or doorbell numbers) to clients from DT and the only way of doing
>   that without adding new bindings is by extending #mbox-cells to accept
>   a value of 2 as done in this patch.
> 
> Jassi and Sudeep, I hope I was able to represent both the view points
> properly here. Please correct me if I have made a mistake here.
> 
> This is it. It would be nice to get the views of everyone now on this
> and how should this be handled.

I am perfectly fine with adding another cell which seems appropriate 
here. You can have 5 cells for all I care if that makes sense for 
the h/w. That has nothing to do with the Linux design. Whether Linux 
requires serializing mailbox accesses is a separate issue. On that side, 
it seems silly to not allow driving the h/w in the most efficient way 
possible.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
