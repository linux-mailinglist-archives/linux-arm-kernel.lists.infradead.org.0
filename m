Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18081D8E56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 05:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NTsT2wum2SNkovRSRgzg8cM9fewV2uTpxwMLW/tNWQ=; b=u5Y41pvn+dTTuu
	OnOwh5wN4KPow5OtiLkBDEd+xN1puLzSauiz2dU/R3rS3f+9FztUEXDIqzuYObedk0HbgVgagiHLq
	1/HRg6hw2OgaY4kq/mE1/DgA5SkENhyvNbMiJScNQTvp5Ryvj04s9X+KIgtW1SnUpMtPCiuAAB8CS
	LEN6+aZB0Gu7J4H+SwvIbtvYPJPfVYLvB1FzTP8oBfLN8VchYShaykHzTVAdD0GiXgLiVrpLatR6C
	7tJjiGL9GaVSU+PMpZfY8qPqIuWjn2RxNcbvSS9NuDyz2YRIGGxZGfgo8NJ3TJHs6mqnQWrt/vJYv
	np1xRBWnjRGeNJPvxHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jat7v-0002Qh-M3; Tue, 19 May 2020 03:41:11 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jat7l-0002Pl-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 03:41:04 +0000
Received: by mail-pj1-x1034.google.com with SMTP id ci21so737584pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 20:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CjNWuQJ9v0nVBb91ffdU0D6mxktZAQ032o7BcB0bNE4=;
 b=F+AEHxuCaRGPIloYgy1mhW3Lfe9dOfLHKUZU9PfFM6Q0ED6ra92Z9qv0lsSJKjefzL
 /G445Rt2MS+je7xFwaI3GdAaNppQpjtT9DZtZL1M+OFv4qHAM7NbdDZvrZQpYy476bzA
 qFgVBP+l5L3NYSHQLLu/Kv4IkKI1BZeeHoCwRx11PEdPNVemStjkzdTRV4MbtpajRJQH
 KY/4gQBQfdGL07373QE/k5YwyLOPIzVyqgueoA6pnQwXx8wUe0QKKoI3d8wNLCT+oYQP
 MEDCH36FGnkOJNXu58mqL3PjD+FQbyE+D2IL6UiNHtKkxvzRDycr43draHRKBAdCtxgx
 vfvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CjNWuQJ9v0nVBb91ffdU0D6mxktZAQ032o7BcB0bNE4=;
 b=a8Y7wh6bpu4DmYotDGHZ/7HEugP8cahgrC6nXvYQGwetIKx3se1Jcq9Uuwj8O5DQkz
 byZaHsXF81Wx5FqJIN2Ef/iCsoGlJwCGZu70mYDPAtyxW/3hz6ae/qu2HwikZUzhVzB2
 rM0hDfyKRF3kmCEiUYZ9v5ycU3Pcor2BWPbj+7Dbln9G8IPhM9WIg2htz0QuyCXZ48zx
 ZBytWNdt1WxcLIAMp26D9xaES6SSfDgA5zIaWpQbBmZgsi3c4OyynnbOTpqbHamylRF5
 Vkrmc/zkK+suXE6sS2duC55chQfRIaDQppAbYdvK7NMatUFJNjr6kNUsn0OEjwmhVMgx
 ZM9Q==
X-Gm-Message-State: AOAM531pCIuVtgLcTt81RDYpqAJFe1kfcx/Y3DAyvOSIUbWSaVAiPdcV
 s47Pe6/CYBg6FOGuSX6yRznmxw==
X-Google-Smtp-Source: ABdhPJy30m1f36llwQe2czJwRgWZ2WYib3wh9j43NkV9xeaRb2PBycPJMqqn/lVk860NFOK6XhPyZQ==
X-Received: by 2002:a17:90a:1b6c:: with SMTP id
 q99mr2824172pjq.214.1589859659084; 
 Mon, 18 May 2020 20:40:59 -0700 (PDT)
Received: from localhost ([122.167.130.103])
 by smtp.gmail.com with ESMTPSA id g1sm9573943pfo.142.2020.05.18.20.40.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 20:40:57 -0700 (PDT)
Date: Tue, 19 May 2020 09:10:55 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200519034055.hfvifqz442yfduhg@vireshk-i7>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200519012927.GT2165@builder.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519012927.GT2165@builder.lan>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_204101_672986_9AFDAAE3 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1034 listed in]
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

On 18-05-20, 18:29, Bjorn Andersson wrote:
> On Thu 14 May 22:17 PDT 2020, Viresh Kumar wrote:
> > This stuff has been doing rounds on the mailing list since several years
> > now with no agreed conclusion by all the parties. And here is another
> > attempt to get some feedback from everyone involved to close this once
> > and for ever. Your comments will very much be appreciated.
> > 
> > The ARM MHU is defined here in the TRM [1] for your reference, which
> > states following:
> > 
> > 	"The MHU drives the signal using a 32-bit register, with all 32
> > 	bits logically ORed together. The MHU provides a set of
> > 	registers to enable software to set, clear, and check the status
> > 	of each of the bits of this register independently.  The use of
> > 	32 bits for each interrupt line enables software to provide more
> > 	information about the source of the interrupt. For example, each
> > 	bit of the register can be associated with a type of event that
> > 	can contribute to raising the interrupt."
> > 
> 
> Does this mean that there are 32 different signals and they are all ORed
> into the same interrupt line to trigger software action when something
> happens?
> 
> Or does it mean that this register is used to pass multi-bit information
> and when any such information is passed an interrupt will be triggered?
> If so, what does that information mean? How is it tied into other Linux
> drivers/subsystems?

I have started to believe the hardware is written badly at this point
:)

The thing is that the register can be used to send a 32 bit data
(which the driver already provides), or it can be used by writing
different bits to the SET register concurrently, without corrupting
the other bits as writing 0 to a bit has no effect, we have a separate
CLEAR register for that. And so it says that all the bits are ORed
together to generate the interrupt, i.e. any bit set will generate an
interrupt. Which also means that you can't send data 0 with the
register.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
