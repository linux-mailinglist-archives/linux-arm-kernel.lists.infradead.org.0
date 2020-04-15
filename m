Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1CB1AA989
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFVET9m24X1MjIwfM5DRkcoO6zU2AqZPt3I9O82OYLg=; b=Mdxf6YYj5NpeWI
	KXuo3P8by+rvJl+2W6GZPYpvQALXWdCD2xz6TZoUId6Re5hf2+rr9JM79wgogjyAJ0NnO4FAiYt96
	kRga78W1+p/K9ijWQQuTlVcmABQVeyLKVGPvWjNQCnyehp9cPZprqbmE8FpJ4rkJTpY8zmO7SL4ev
	qUoMrq2LMLrVWkTa4sTGJnY7bdunZrKWJlL+cH/hruv/nFHOWdbOA1JQqGDGZL7u2iZWsDrd56jvN
	KDPcytqJcoUmYwhrTaoQ2oIbq2G7yu6ic/8HLErDSY7q53txbMGW2czn3iXce71I2IISoOqpqP+vV
	f7sRr6KIa8I7TSgEMbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOipN-0006j6-JP; Wed, 15 Apr 2020 14:15:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOipF-0006ie-Bb
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:15:39 +0000
Received: by mail-lj1-x242.google.com with SMTP id u15so3867972ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 07:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iD9DiJbsjFvR0l8VWA77X1IH3xwznCsLM8hKGPl+PRU=;
 b=TCBII8GdGPliEdTt5zYPCbSfN/GirM3CNA1L+hF8wVCUcb+iXhsn7f4YnEpddGWFHV
 lndjOYl1+Ns7/wuISMz2Dd0D+/VawofNWW5V73ksyTbJB5ra4IO6JKqx91XgSn1JhF40
 nZuZv+M+5bEI1JnwoyBiAEOkCtd4T1RpAF7rCY5QFU0LCjN0ubdhmg+9YC3+sTOeGY7K
 ZHKAFY9iv12Ap88OB7TIzT3ncKuekNYZTwCBD7GgsLT79eRn//B2ibp8bMrWjLZp8QEs
 1BvhUkRp9v2avwM7XwqJKPmnl/Zj3hF+0DaW4/KdN90Q+6RKfJWxkK/aCb1XpBHgtM+S
 Lifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iD9DiJbsjFvR0l8VWA77X1IH3xwznCsLM8hKGPl+PRU=;
 b=J0Pne8jucTSvP8N+9F3V/N4zpzgxkhrasYlk4CgQVbSfnGoUIOTde0O7T0ebEuJmIk
 FPnTGUKggRQ2L7ZwtzMgzAmncy5XlREDTjFXd40XbhbFgUF5PQM+3saYYTJqEnbwHhdA
 xJPV7hqY4p1600K1jvRJjtACxvWtgx1MhWa8CnQwmhRP1YZM1ieULxLZXwzalcmAKlD7
 sNSiRTtw/NlggJxdLuSDi9bX0Y4tQc2PdEwoJRSnXwFZMG93tJErj7XuhDNCJORarSMr
 zs5KBPLctNeXcnioFBUiiOAelezMKWxyjXaI80gDL2TIBeWBMf2Bumegj33rqz3ZX26E
 bFvA==
X-Gm-Message-State: AGi0PubFd6gfKkOfhd3YG+1oVa5lIyfSQPLl6EFkQOagfYwl20M5L25q
 hhhr/wdj48yEURlne37Nv7Gcwf5mcUm8MawMA0hFVA==
X-Google-Smtp-Source: APiQypIcyGvGInNcx/iI+quCACUkFCbt3D6BOE2RxrRaAY7YSDkYMPEja+ESZ2QVxtJaLPp2pbfh6o6G0FQktdlPVf0=
X-Received: by 2002:a05:651c:20a:: with SMTP id
 y10mr3324332ljn.69.1586960134977; 
 Wed, 15 Apr 2020 07:15:34 -0700 (PDT)
MIME-Version: 1.0
References: <1583673879-20714-3-git-send-email-peng.fan@nxp.com>
 <5e96e916.1c69fb81.14365.050b@mx.google.com> <20200415131612.GC31928@bogus>
In-Reply-To: <20200415131612.GC31928@bogus>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Wed, 15 Apr 2020 16:15:23 +0200
Message-ID: <CAN5uoS9CSspCeMWX8JWVDdLtjX81F-15GL0QqrqzNgnnRiMpxQ@mail.gmail.com>
Subject: Re: [PATCH V5 2/2] firmware: arm_scmi: add smc/hvc transport
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_071537_918440_1C38AE3D 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sudeep,

On Wed, 15 Apr 2020 at 15:16, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Apr 15, 2020 at 12:58:58PM +0200, Etienne Carriere wrote:
> > Hello Peng,
> >
> > I  have 2 comments on this change. The main is about using
> > arm_smccc_1_1_invoke(). Below some details and I added comments
> > inside you patch. The second of on SMC return value, see my
> > comment in your patch below.
> >
> > About arm_smccc_1_1_invoke(), this functon currently relies on PSCI
> > driver to define a conduit method but SCMI agent driver does not
> > mandate CONFIG_PSCI to be enable.
> >
>
> Yes this was discussed and it is done so deliberately. I have added the
> build dependency when I merged the patch. There's no dependency on
> CONFIG_PSCI.

Ok, I understand your point.
Yet it seems to me there is still a dependency on CONFIG_ARM_PSCI_FW
and also a dependency on a PSCI node in the DT.

However, I must admit I don't know yet a platform that enables
CONFIG_ARM_SCMI_PROTOCOL but not CONFIG_ARM_PSCI_FW, hence
so far, so good.


About dependencies, it think the dependency on MAILBOX in
firmware/Kconfig should be updated:

 config ARM_SCMI_PROTOCOL
         bool "ARM System Control and Management Interface (SCMI)
Message Protocol"
         depends on ARM || ARM64 || COMPILE_TEST
-        depends on MAILBOX
+        depends on MAILBOX | HAVE_ARM_SMCCC
         help

>
> > Could you add an optional "method" property for "arm,scmi-smc" for platforms
> > willing to not rely on PSCI Linux driver? If no property "method" is
> > defined in the FDT, invocation relies on arm_smccc_1_1_invoke().
> >
>
> Nope, we don't want mixture here. Why is the system not using PSCI/SMCCC ?

Ok, as I staed above, I don't know any platform that enables
CONFIG_ARM_SCMI_PROTOCOL but not CONFIG_ARM_PSCI_FW.

>
> > "method" naming mimics what is done in the OP-TEE driver (drivers/tee/optee/).
> > Here is a proposal for the documenting property "method" in
> > Documentation/arm,scmi.txt:
> >
> > - method : "smc" or "hvc"
> >             Optional property defining the conduit method for to be used
> >           for invoking the SCMI server in secure world.
> >           "smc" states instruction SMC #0 is used whereas "hvc" states
> >           instruction HVC #0 is used.
> >
> >
>
> It was rejected, you can try your luck with OPTEE :)
> We will just use the system conduit here with SCMI for SMC/HVC transport.
> Details in previous version of the patch.
>
> [...]
>
> > > +struct scmi_smc {
> > > +   struct scmi_chan_info *cinfo;
> > > +   struct scmi_shared_mem __iomem *shmem;
> > > +   u32 func_id;
> > > +};
> >
> > Add here a field for the secure world invocation function handler:
> >
> >       scmi_arm_smccc_invoke_fn *invoke_fn;
> >
>
> As stated not needed if we use  arm_smccc_1_1_invoke()
>
> [...]
>

Regards,
Etienne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
