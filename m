Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462E51D8E76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 06:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbXfJWwKnvHwon3xiNFh/8K9tVBuL94sG+pgQwH0kww=; b=m63u+o+D6sVAMP
	tbOiO3Z9lTyf3NWFnkPTzOpmCM3bN16Zm+TuTZQQqalgjE6i+MLsiVq9WM5+Ts46KsmpNyQQtTDP9
	c39CqD7S2nFfU78Pco2UgK4YWyxYvqcIeQ1VsboyFqmgMhPfSZks7JDG9v8ZMo1yZ/hLYp3D/jrkm
	Xxm3CjBAKNeRj4UMXLmmgJ6vGu2+swWyndm7/MTKL8orCM1vD7LSjqssQVHtghncWsSGXiVQrxpTE
	uhuW1pzXGLiSz4lUi7vjqLigL8F+8vMcp7uLhLzsFhYCx78Ki/bJytRY+A7Rfv8zLt6gyO2AinRsl
	J3aEcjNPVtEv7gDPSHkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jatVL-0000Xb-Kn; Tue, 19 May 2020 04:05:23 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jatVD-0000X8-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 04:05:16 +0000
Received: by mail-il1-x136.google.com with SMTP id j3so12041159ilk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 21:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3tOm8zzhCxaJy3Xz/20xYyI/RssQ51tXhkdhSGs8XvM=;
 b=PZ2PdY14xr+Ro5d+ddOFHl4D+ksurvlmAHT//qsqdw6SDeJ+Njtcdx18griVnejEdH
 RyRkSXIYdKX/QnNCX73NqkQSMFny0/TLKJVmtHCqogKergXIYgNPnC+sWShWwHid6DgO
 rZChs500Frt8l+dJeR9HN/bKB6DMTCd43fpRBI1StRoTu2ypdjcromQ1EdKQGaF7jUL2
 k1Mo4tt2cZ/sfBEpHouIAjKpsEHx2ZvW/f3+q1ym8GsM6In6VWrj0ykApbU5WXFbKW7n
 XTBb6Te9L3nMOrMTEcdrlWbdIKxPWpZW8GAUT+UEjPomvSFpmSDC9JtXZ3rsk5ZiVxU/
 WhyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3tOm8zzhCxaJy3Xz/20xYyI/RssQ51tXhkdhSGs8XvM=;
 b=sm7u5BO27jnr20pyMUlUz1CdJSm7wKt41e/6ocLR05HkuZRtDcLhNnOq2ekqajQbFI
 XEFTZzOEwGV4mTVj9pw72f8jzMLYMQvjFE7Lzj4NYc5dtRY4Z2KTG2QOEQwvm70Sfp8L
 9lTn7AsRirhekWb042ih9iLkXR8HmlCNRip2uzMPTfeLMRXg7o9LdeklGij2DkGRkBXb
 snoHrmUSRksO5/LblBMfZc+SgUpkio8+ludxemR7YCW5tVDeay2TkdG5I+bSavVc9bPd
 oYglcjtS4bEKZ6Cw0WGpHoDXhKdizl0e0fZ6QtONR5595wNkGAa9s7ZqvDAJg/MPnRRo
 xS1A==
X-Gm-Message-State: AOAM533tr0/CwosNmsvubNTBrVO0P8hmqb4BiGi/GIGs7kJ1vBIeBLM/
 8KK0sJiPrWZyQx6MPIEV5M7RO7FfTj4X9kadp1E=
X-Google-Smtp-Source: ABdhPJxNZWuYH/8A7JmkXsS57791uw/AMFZzdoXTYEeXfyUEtNq49rXkuAD3c9lok1aG2vmSkwVYra8Cz/oOSTZ1rpU=
X-Received: by 2002:a92:d40a:: with SMTP id q10mr20463435ilm.87.1589861114283; 
 Mon, 18 May 2020 21:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200519012927.GT2165@builder.lan>
 <20200519034055.hfvifqz442yfduhg@vireshk-i7>
In-Reply-To: <20200519034055.hfvifqz442yfduhg@vireshk-i7>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 18 May 2020 23:05:03 -0500
Message-ID: <CABb+yY30nmbBUzYG62xGEbrr7107h_Edyq3jKPheZAQ0Cvr9Yg@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_210515_478602_F769B861 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 10:40 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 18-05-20, 18:29, Bjorn Andersson wrote:
> > On Thu 14 May 22:17 PDT 2020, Viresh Kumar wrote:
> > > This stuff has been doing rounds on the mailing list since several years
> > > now with no agreed conclusion by all the parties. And here is another
> > > attempt to get some feedback from everyone involved to close this once
> > > and for ever. Your comments will very much be appreciated.
> > >
> > > The ARM MHU is defined here in the TRM [1] for your reference, which
> > > states following:
> > >
> > >     "The MHU drives the signal using a 32-bit register, with all 32
> > >     bits logically ORed together. The MHU provides a set of
> > >     registers to enable software to set, clear, and check the status
> > >     of each of the bits of this register independently.  The use of
> > >     32 bits for each interrupt line enables software to provide more
> > >     information about the source of the interrupt. For example, each
> > >     bit of the register can be associated with a type of event that
> > >     can contribute to raising the interrupt."
> > >
> >
> > Does this mean that there are 32 different signals and they are all ORed
> > into the same interrupt line to trigger software action when something
> > happens?
> >
> > Or does it mean that this register is used to pass multi-bit information
> > and when any such information is passed an interrupt will be triggered?
> > If so, what does that information mean? How is it tied into other Linux
> > drivers/subsystems?
>
> I have started to believe the hardware is written badly at this point
> :)
>
H/W is actually fine :)   Its just that the driver is written to
_also_ support a platform (my original) that doesn't have shmem and
need to pass data via 32bit registers.
Frankly, I am not against the doorbell mode, I am against implementing
two modes in a driver. If it really helped (note the past tense) the
SCMI, we could implement the driver only in doorbell mode but
unfortunately SCMI would still be _broken_ for non-doorbell
controllers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
