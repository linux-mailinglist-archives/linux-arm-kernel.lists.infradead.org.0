Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A90416B60
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1UZ+YKbQQv24rWnzZlwvliMiBBWNbjQyV3gyFxSbqM=; b=e3+CZU0etrHEgR
	sUFB5rshooi77AkCiPOG5w7F/YxwRY1Adn9NplyVjWyKW2jj5TDTTWiCZ/m31JTB1KFSM4nEjKdp8
	FKf2hYTIJD4Oz9lTqFBuR2W1o6/bHrq56TaNeuatp6/WDWnMVYg/0AXD043fxqDpC7/ySraJROw6V
	ZhWKW3YH2OUYDYlIYrxks4Oa8AulyCxNu07zuEiPfhZ2QATPnHGGWLQeFTJm39AVBiCrLLQ6MPRMR
	Enulhb3sRDQkZX9tEuAJBJxQ8jE+S7Fi6UlBAh144iKFkgkIEhypqsAO8fN12wq62AXxJx4hUOcYI
	k6wzHIv6HUg0zsiuX1pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5oq-0003Y7-UZ; Tue, 07 May 2019 19:32:04 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5ok-0003Xg-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:31:59 +0000
Received: by mail-pf1-f195.google.com with SMTP id u17so9167833pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:31:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+BHeCC0KibMuGQaQ13pNV0ld+sIiRc+E9RP4V7KGKCA=;
 b=h56V85HY20g1PRNZdazBj0KUpEWQYogWE8BxYweR0w+UGdnX0v37PeNlRK7P8Dx4Qk
 UJuqnfMysqIVHLJJzWpqJTAlChHePl4jmKTZAzHmJ1onW1s+oD2nvRIt+jmRzHgebXAg
 zyXTw4J/cLDzyjLaywXQ/cdQQCRM5nh7UvnP7E5L2OVVRkxs1h0bSYMCU4/dKz9SUMfH
 K7LmU11OiHMTEhG/u/Zq0dGADUsXxGVJFsYeQD0Uwvy+BCvANDZJiVZGP/wEXwziZrAp
 Lh5ETkJqOctOoSr6541NNtbcs26309hLWZH7kGbYssQd3JkKdD3Xbvd8W35DR0DKrB0g
 hfyg==
X-Gm-Message-State: APjAAAXQnHT6f/jDMrz1/cstwU6Q3waCkzJvC07lRygmHu1KWxD7firn
 IJpIR/2KC+HaQDZLW3pS2NPZZg==
X-Google-Smtp-Source: APXvYqzBLzsZYmzhOtRcPH8guMtfDVgap2dm+RKSPAKoX63LYVwZrff17koc4QYNdq+YQtiKmPRMzg==
X-Received: by 2002:aa7:8dc7:: with SMTP id j7mr42767214pfr.82.1557257516723; 
 Tue, 07 May 2019 12:31:56 -0700 (PDT)
Received: from localhost ([2601:647:4700:2953:ec49:968:583:9f8])
 by smtp.gmail.com with ESMTPSA id q17sm35415411pfi.185.2019.05.07.12.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 12:31:55 -0700 (PDT)
Date: Tue, 7 May 2019 12:31:54 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Alan Tull <atull@kernel.org>
Subject: Re: [PATCH] fpga: zynqmp-fpga: Correctly handle error pointer
Message-ID: <20190507193154.GB30078@archbox>
References: <20190507170257.25451-1-mdf@kernel.org>
 <CANk1AXS2m+v2uMoE0gLhKqYhn_NcbV8gZq+ogMsC_Zp81ZHAow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANk1AXS2m+v2uMoE0gLhKqYhn_NcbV8gZq+ogMsC_Zp81ZHAow@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123158_234088_BEFDCD75 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-fpga@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Moritz Fischer <mdf@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alan,

On Tue, May 07, 2019 at 02:11:06PM -0500, Alan Tull wrote:
> On Tue, May 7, 2019 at 12:03 PM Moritz Fischer <mdf@kernel.org> wrote:
> 
> Hi Moritz,
> 
> >
> > Fixes the following static checker error:
> >
> > drivers/fpga/zynqmp-fpga.c:50 zynqmp_fpga_ops_write()
> > error: 'eemi_ops' dereferencing possible ERR_PTR()
> >
> > Note: This does not handle the EPROBE_DEFER value in a
> >       special manner.
> >
> > Fixes commit c09f7471127e ("fpga manager: Adding FPGA Manager support for
> > Xilinx zynqmp")
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Moritz Fischer <mdf@kernel.org>
> > ---
> >  drivers/fpga/zynqmp-fpga.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/fpga/zynqmp-fpga.c b/drivers/fpga/zynqmp-fpga.c
> > index f7cbaadf49ab..abcb0b2e75bf 100644
> > --- a/drivers/fpga/zynqmp-fpga.c
> > +++ b/drivers/fpga/zynqmp-fpga.c
> > @@ -47,7 +47,7 @@ static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
> >         char *kbuf;
> >         int ret;
> >
> > -       if (!eemi_ops || !eemi_ops->fpga_load)
> > +       if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)
> 
> This if statement also happens in fpga_mgr_states
> zynqmp_fpga_ops_state(), so we'll need this fix there also.

Good catch, will fix in v2.

Thanks
Moritz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
