Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6551D8D1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 03:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QM0yDXS5J8W+WBzGo+8JxSUI9rxsC0SLTreUYPLNJtM=; b=h738m0FvOu0w6Z
	is1/HjQ4smVNfmBt/wecQxrxVC6jSe33t2FX2AxDOyf63pcUx6oXNezVz9qYCyLFiaguUbOAplCbd
	3ESIBwRjTDdlK82by40lXHlOvocdrEKQo3PbuO1pmbZdoV1mI1aWOA2WUENu6OVGZRLaQP91fb1z/
	d4qshAqLPJ5wrc6YWLvNwSecHu3EoFghuEDyHr/mvYgvCerk3J09LNLMlF0NV+SPJdTATQmpoSx0w
	AR1wTZwXckJkqVzx6XxJABvx0/OOdelHQYabp5DNMAxx8kNCa2dwyN3ruUOeF/guD/I1ONOOq5xYa
	sOVxbMpS82v/9l/GVijA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jar5x-0005fF-5j; Tue, 19 May 2020 01:31:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jar5n-0005ek-Qe
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 01:30:53 +0000
Received: by mail-pl1-x643.google.com with SMTP id k22so4953442pls.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 18:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LgMVdXCk9Y4Fkqf44jq13mswdAa1avDRlnZqO0g5o6o=;
 b=T4c9syE2N/TuNooFzWa/GS0n7gi6fof9ZrcCwd6tqzjUOuM4j0VWLLCqT9VlFt7eM8
 QnhCkYnEr/UzmOffONgE0umf1rJLWLpioxFKsjoyPwOCgUF/nA8qopO0/rJxaHqd77N8
 7G5NVL2LxnvgQLAY/YyCGviSXY7lSywSQZr3VeDUiKWYMNy1YMSrWd7sVzuOu1pMhE4G
 49AZTBtM+shipY67LlhyGB8FtDbLBTLrLGp9KbLGuoU+KAGvO0FS/8YE33dpY3FL0rhA
 PWvb6NKeV/5cBb85VRayY9AYTpQhwt7mj1pRyaneizRAmfWsPPy5my1sypTcg3T5BwWw
 0GMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LgMVdXCk9Y4Fkqf44jq13mswdAa1avDRlnZqO0g5o6o=;
 b=ZjhYoa2impTvcdaEaP1UyzRLbKiSFE7RzJbmx31ENZ30lP9Mid4MxKomGjocOo3smk
 6MC1RAkskvvweJNzZ7Yy603JZ8jFnnt6/289RtVwG3XcFVzesDuZo0CEFzY7e8MAh0HS
 5EHrhR9mxALXsQmZj2atgeAEcMlTG9L+SdiA6V4DHb/zRBYqfYs2iP0UtEOlTt5oCkZ6
 OiG4hVDBCUIif7dFdF7+h3G4pvYW9UWqYEorDKbGYA+/YaXAwn8N+V1vghFyfrqHCWyG
 HZgh8HwNqMjibdp+N1Ybh49pKSFKYs0kVBXvQa69Tpy3wj/UfKAcJBAPAW3l7l25HJ+m
 cMEw==
X-Gm-Message-State: AOAM530eTMy56w1PcTW1wWheiO5HuQQk0D9jYWi6FbsWJS5G8gxUrtC3
 l6BUzE5Xsc2J4UFxQxwkXgHlLQ==
X-Google-Smtp-Source: ABdhPJwN5uQ6ZRocOB6ItmMfmFwDisBz5cuvAIkR30rNXA5NEEadjVEZvbK2RsAgxdtE9h7sVXma+w==
X-Received: by 2002:a17:902:b98c:: with SMTP id
 i12mr4596397pls.41.1589851850376; 
 Mon, 18 May 2020 18:30:50 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x10sm8441543pgr.65.2020.05.18.18.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 18:30:49 -0700 (PDT)
Date: Mon, 18 May 2020 18:29:27 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200519012927.GT2165@builder.lan>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_183051_871473_85DC9189 
X-CRM114-Status: GOOD (  43.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 14 May 22:17 PDT 2020, Viresh Kumar wrote:

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

Does this mean that there are 32 different signals and they are all ORed
into the same interrupt line to trigger software action when something
happens?

Or does it mean that this register is used to pass multi-bit information
and when any such information is passed an interrupt will be triggered?
If so, what does that information mean? How is it tied into other Linux
drivers/subsystems?

> On few other platforms, like qcom, similar doorbell mechanism is present
> with separate interrupt for each of the bits (that's how I understood
> it), while in case of ARM MHU, there is a single interrupt line for all
> the 32 bits. Also in case of ARM MHU, these registers and interrupts
> have 3 copies for different priority levels, i.e. low priority
> non-secure, high priority non-secure and secure channels.
> 

In the Qualcomm case we have 32 bits in a register where each bit
written will trigger an interrupt elsewhere in the SoC, as such the
mailbox is purely write only and the "read" side is handled by some
interrupt-controller.

The three copies just sounds like 3 (or 3 * 32) different mailbox
channels.

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

I interpret Jassi's view as this is a channel that passes 32 bit
"messages".

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

But if writes to the register is ORed together than it seems like the
hardware isn't supposed to pass multi-bit messages, but instead is
supposed to carry 32 individual signals - somewhat similar to the
Qualcomm block.

I don't see a problem with having a cascaded IRQ handler for incoming
notifications.

> - With serialization, if we use only one channel as today at every
>   priority, if there are 5 requests to send signal to the receiver and
>   the dvfs request is the last one in queue (which may be called from
>   scheduler's hot path with fast switching), it unnecessarily needs to
>   wait for the first four transfers to finish due to the software
>   locking imposed by the mailbox framework. This adds additional delay,
>   maybe of few ms only, which isn't required by the hardware but just by
>   the software and few ms can be important in scheduler's hotpath.
> 

So these 5 requests, are they conveyed by the signals [1,2,3,4,5] or
[BIT(0), BIT(1), BIT(2), BIT(3), BIT(4)]?

In the first case you have to serialize things given that e.g. signal 1
immediately followed by 2 is indistinguishable from 3.

If you signals are single-bit notifications then you don't need any
serialization.

Regards,
Bjorn

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
> 
> Thanks.
> 
> [1] http://infocenter.arm.com/help/topic/com.arm.doc.ddi0515f/DDI0515F_juno_arm_development_platform_soc_trm.pdf , section 3.4.4, page 3-38.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  .../devicetree/bindings/mailbox/arm-mhu.txt   | 39 ++++++++++++++++++-
>  1 file changed, 37 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/arm-mhu.txt b/Documentation/devicetree/bindings/mailbox/arm-mhu.txt
> index 4971f03f0b33..ba659bcc7109 100644
> --- a/Documentation/devicetree/bindings/mailbox/arm-mhu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/arm-mhu.txt
> @@ -10,6 +10,15 @@ STAT register and the remote clears it after having read the data.
>  The last channel is specified to be a 'Secure' resource, hence can't be
>  used by Linux running NS.
>  
> +The MHU drives the interrupt signal using a 32-bit register, with all
> +32-bits logically ORed together. It provides a set of registers to
> +enable software to set, clear and check the status of each of the bits
> +of this register independently. The use of 32 bits per interrupt line
> +enables software to provide more information about the source of the
> +interrupt. For example, each bit of the register can be associated with
> +a type of event that can contribute to raising the interrupt. Each of
> +the 32-bits can be used as "doorbell" to alert the remote processor.
> +
>  Mailbox Device Node:
>  ====================
>  
> @@ -18,13 +27,21 @@ used by Linux running NS.
>  - compatible:		Shall be "arm,mhu" & "arm,primecell"
>  - reg:			Contains the mailbox register address range (base
>  			address and length)
> -- #mbox-cells		Shall be 1 - the index of the channel needed.
> +- #mbox-cells		Shall be 1 - the index of the channel needed when
> +			not used as set of doorbell bits.
> +			Shall be 2 - the index of the channel needed, and
> +			the index of the doorbell bit within the channel
> +			when used in doorbell mode.
>  - interrupts:		Contains the interrupt information corresponding to
> -			each of the 3 links of MHU.
> +			each of the 3 physical channels of MHU namely low
> +			priority non-secure, high priority non-secure and
> +			secure channels.
>  
>  Example:
>  --------
>  
> +1. Controller which doesn't support doorbells
> +
>  	mhu: mailbox@2b1f0000 {
>  		#mbox-cells = <1>;
>  		compatible = "arm,mhu", "arm,primecell";
> @@ -41,3 +58,21 @@ used by Linux running NS.
>  		reg = <0 0x2e000000 0x4000>;
>  		mboxes = <&mhu 1>; /* HP-NonSecure */
>  	};
> +
> +2. Controller which supports doorbells
> +
> +	mhu: mailbox@2b1f0000 {
> +		#mbox-cells = <2>;
> +		compatible = "arm,mhu", "arm,primecell";
> +		reg = <0 0x2b1f0000 0x1000>;
> +		interrupts = <0 36 4>, /* LP-NonSecure */
> +			     <0 35 4>; /* HP-NonSecure */
> +		clocks = <&clock 0 2 1>;
> +		clock-names = "apb_pclk";
> +	};
> +
> +	mhu_client: scb@2e000000 {
> +		compatible = "arm,scpi";
> +		reg = <0 0x2e000000 0x200>;
> +		mboxes = <&mhu 1 4>; /* HP-NonSecure 5th doorbell bit */
> +	};
> -- 
> 2.25.0.rc1.19.g042ed3e048af
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
