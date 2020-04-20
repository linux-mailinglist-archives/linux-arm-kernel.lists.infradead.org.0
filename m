Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9955F1B1182
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRK57YADd1po0SyIma483g9rzrF1E0Z9P1AC/KH8xiY=; b=Qytq0w+1dHU1H2
	pG0XXYBOaVqQY/ryDyZo5j5T/emTuBlgZm5RRmP/8jMiwEOGuV66FLbHGqSFWIYpzixVkjVlpBN33
	WNatuwsKznyxqibrPmxSRv//wKkmsE8xhHiDZoT7nbJxwcVu56k0KNOZXDstlyHirBy1/Hv0AjtjK
	kho+FWjhXwhuLET5DFaCDK2uWp0RhEnaUAmtVlFN4reYralXfsweRbTycYFuPWm5G/Xx1pJEijCMY
	UQr6VsPtkMcndM0tgHXnF8CqlTBSPXiNpFpkuN3w5oqVyWjlo3YhUs7PXsf/F4gSNVKegMyz29oPM
	M2vIcGizXWRQsRSYq1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZFE-0007Wd-Oy; Mon, 20 Apr 2020 16:26:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZEy-0007Rt-Mp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:25:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id q19so10643548ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 09:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I0v3xLrp79PXZrzlOv1LUbwRJO7GLXI413EH8rUtBcM=;
 b=gBw5HtURfzPQpn5revaajTUwOnm2ALHUdEl8tn8OEcVzdwKtIxhwWxVIsvhYmrHuEr
 XiChK91ZMcBuis25DaX+gwQ7HW23mWaMlnoN5Li9sMxsExzzLeN9LzVgd9X1rmOCcLXs
 VlMlSCYETye5uZHNW6K4Y+xeUe9rBowrgZWgAi3wkZRajhxivyaGseLWkdXTWCJ1DmY7
 wyNC6kNgiAvvJDzRm4dW1Q6+XYDCV4Ap+GnM6sn/3otcDaCQE7veGIxK7J4f/sUh64dh
 Z/yzpdyoPOPa7umwrvTd8zPSV5jhNtNL04M2v3azFVZFnRGCiaOO5/ieyL4B+nvbaFbh
 wHCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I0v3xLrp79PXZrzlOv1LUbwRJO7GLXI413EH8rUtBcM=;
 b=XNWucwk853S6vIMONnGFNksf4bHtrP9tnKqaDB2sQTWMkaBb/LkSy/3BoJ5Rb8wY2A
 kJmjwEyyOItR0UtjNISEgcW44weMWCjvCDwRybBGUVXStmEAA/YbOYnSC22jDsNV31zr
 ow526bLXaaQihBvX429N3ob0oRAmP72XAUF5rhkCUjPbYeavfriK6hNMhUw2GX5PGmOy
 WL9stOuG1LxV/1ivaJWQI1Yi0WSMOi4TIrLBSKj3X2Nf1Ln60OxNZgqTFqtoynhv9MrH
 U4pX4pUeG8wxbVVZeBeSHPQE8VDnFf5VsyJa4J8a00bXEf0ISnm2nFNUbSR4031knwEu
 fmMQ==
X-Gm-Message-State: AGi0PubcmBMNUik6mfRorxi5RVRNYmSLxeEE12HvDnIVIXbKbz/9RbC6
 dbsAMjk+MtnwP7V/ZmVQk8cB2ktKbbcAU6BdnwyP2w==
X-Google-Smtp-Source: APiQypLTxd+Bc4GLYJLdA6XxlFaDKqQZSeP/c2xWLWSrdwpyO/4Pm/CYJJRfWwRHkWxUkl6lefGFGweYxYKk1eOAqrI=
X-Received: by 2002:a2e:7215:: with SMTP id n21mr4301352ljc.199.1587399942333; 
 Mon, 20 Apr 2020 09:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200417103232.6896-1-sudeep.holla@arm.com>
 <CAN5uoS8vGCABXvscR160=Dy_iZytinB2y+E2wbp6_KyQMFW5Tg@mail.gmail.com>
 <20200420145712.GA307@bogus>
In-Reply-To: <20200420145712.GA307@bogus>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Mon, 20 Apr 2020 18:25:31 +0200
Message-ID: <CAN5uoS_C7QxhjhqtMq5s9ZP22Lh-yqwTO4FUmF_-FhXB5NQf8g@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092548_774673_97BE9634 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 17:35, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Sun, Apr 19, 2020 at 12:04:27PM +0200, Etienne Carriere wrote:
> > Hello Sudeep,
> >
> > On Fri, 17 Apr 2020 at 12:32, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > SMCCC can return one of the 2 return error code here: NOT_SUPPORTED(-1)
> > > and INVALID_PARAMETER(-3). Map them to appropriate Linux error codes
> > > namely -EOPNOTSUPP and -EINVAL respectively. -EINVAL is also returned
> > > for any other return values.
> >
> > Reading back the SMCCC spec, I see that INVALID_PARAMETER(-3) and
> > SUCCESS(0) are Arm Architecture Calls specific return values.
> > The only generic return value that applies to any SMCCC call is
> > NOT_SUPPORTED(-1).
> >
> > As for an SCMI SMCCC transport layer, any other value than -1 means
> > the call is supported and one should rely on the statuses provided in
> > the shared memory buffer related to the function ID.
> >
>
> Yes I agree, I had the change to reflect above initially and for some reason
> I decided to extend.
>
> > >
> > > Cc: Peng Fan <peng.fan@nxp.com>
> > > Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  drivers/firmware/arm_scmi/smc.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> > > index 833e793b5391..a8b5ecb8927a 100644
> > > --- a/drivers/firmware/arm_scmi/smc.c
> > > +++ b/drivers/firmware/arm_scmi/smc.c
> > > @@ -114,7 +114,11 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
> > >
> > >         mutex_unlock(&scmi_info->shmem_lock);
> > >
> > > -       return res.a0;
> > > +       if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> > > +               return -EOPNOTSUPP;
> > > +       else if (res.a0)
> > > +               return -EINVAL;
> >
> > Related to my comment above:
> > I have no strong opinion on that as I guess SCMI SMCCC transport layer
> > in secure world firmware could ensure output argument a0 is set not 0.
> > That said, I might be nitpicking but I still think th 2 lines could be removed.
> >
> > Is there any strong reason for testing finer return status from res.a0?
> >
>
> No, I will drop. With that can I have you Ack/Reviewed-by ?

Ok.
Sure you can add my Reviewed-by as well as my Tested-by, assuming I
tested this change over the right version.
I used your branch for-next/scmi, from commit a2fe6324.

Regards,
Etienne

>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
