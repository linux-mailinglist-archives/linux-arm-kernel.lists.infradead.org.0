Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D41960D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 23:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8od0D9leqXxT5/CubFW0M3V4c4u+3ACzYGVWGhTag0=; b=mOyHT2rWE1KR+Q
	gLHTW742z/i+jw2uB8UkXnb7t+EAzyeAzNpEPbq8FX2GisTCax6sUJm883Bz5b+zVlu3rNhwDvasd
	cBTRX/Blvxc+nxTl/mhCQPAkeyB9Z9wAGJXpbZw0Vhs6VYPqUL70z03U+XrY3dyuq5XxS9r5cziu7
	aF/cURMrxzWaWLSoyOJ8NYuUlX3K3rX1twseNqcQ1Hlb/EhQIRi/DXSUv6HMS2xg23xkZ7BmDNAKR
	YeM3EDNTaf8gPDIDLUx9NA5p+jgdVTWSrBvbv4hUzlbZad6SmF2WzuKhgNBWt94l+Dkf+iNJxTjtV
	DtkS+91xRBfM1VULptGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHx76-0002PC-Ry; Fri, 27 Mar 2020 22:06:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHx6u-0002OC-LS
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 22:05:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m15so4313645pje.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 15:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V9qwFjfcOrK0L+Z6+O8bfnxTyMS4r1ZhXiuuyox2uvQ=;
 b=AOjaVCkD/+gCJc5F7S06JCc5oBDxz2JF1rwGwspQMbkwKHkOsgXaTgyKmFLr7xzUv9
 kvXaszSKgI6qhLDHycDEKbyF7YOM/J2UwAt8t5/533w/zacXPT0nHLhEeVf0hM42LL8I
 jBeXTAOyTQk8PBVBuV8UXJBoMk+y0KAgkCoFWmY7MgGz4xl/+0M+bxN3EY6nYOYyyBXE
 SbflFWPSiXeUQ0IL0lHdMrgTBfgkJC1+Hl8JllwNFo7rAFCKIxe6XQmmU1XKDrWOiEop
 cz2y1vY4GApWZg/AhQtrsFHlChT3mog1UvkKeUtF0PBDQPPp2gWPr2kUQeuZHJs6KX9q
 TZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V9qwFjfcOrK0L+Z6+O8bfnxTyMS4r1ZhXiuuyox2uvQ=;
 b=GrWs79fY5ZcxzSw2XZ5wVjqdN8FtBgWHOmWYWdxexpB2S9kJWYCwBzZu7WaQrBdX46
 2KYMIPZqIZqNmJYiw12jyjbwaA8oqMkzF05itLyfSrm8GS6b2NNZUQVf1CRcAMxQnaZ6
 tiC90coBwJTOPqcBAoaTGA/GLqyLMZKxEjYC8O1v0VhhS2ya6EHLsVqZlsRx3bV8Slnr
 RuFt73ANAUy2Nc7b6zzaJ8aKRpVCAg4hlZ3SOWWs5JGBCWdFGEEa+LWOC34N80+7OryX
 UuK2wHSTQ4LDaITPZ9raYUebQD+iOvZkvAMnp/onZ6RFxc7fBAJS7NQXcaiErMUDVA+s
 cr0Q==
X-Gm-Message-State: ANhLgQ1XdtGgW2OPkSChPFgpdHsyK4F7lbACyZAvaKp/3KIwOsb6kyg5
 8J+Gh0WW99cWAxb0sMDk7Xoe0Q==
X-Google-Smtp-Source: ADFU+vvOwW5ae8gnn4rURyluPK7mymGqsX2Wt7ZW4cw9ZUQ0/VarXYdCUo2GLCTGThPxMRPaMkMBZw==
X-Received: by 2002:a17:90a:2489:: with SMTP id
 i9mr1519082pje.183.1585346748265; 
 Fri, 27 Mar 2020 15:05:48 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w4sm4863933pfc.57.2020.03.27.15.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 15:05:47 -0700 (PDT)
Date: Fri, 27 Mar 2020 15:05:45 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Marko <robert.marko@sartura.hr>
Subject: Re: [PATCH] ARM: qcom: Add support for IPQ40xx
Message-ID: <20200327220545.GC5063@builder>
References: <20200106135715.1159420-1-robert.marko@sartura.hr>
 <CA+HBbNHEetusFNH-8Qmva=2-_HQRRJ33qfBRSudZBVW+vK0tnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+HBbNHEetusFNH-8Qmva=2-_HQRRJ33qfBRSudZBVW+vK0tnw@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_150552_714650_FA5B1A25 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Luka Perkov <luka.perkov@sartura.hr>, arnd@arndb.de,
 Christian Lamparter <chunkeey@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux@armlinux.org.uk, agross@kernel.org, John Crispin <john@phrozen.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 25 Mar 03:25 PDT 2020, Robert Marko wrote:

> On Mon, Jan 6, 2020 at 2:57 PM Robert Marko <robert.marko@sartura.hr> wrote:
> >
> > From: Christian Lamparter <chunkeey@gmail.com>
> >
> > Add support for the Qualcomm IPQ40xx SoC in Kconfig.
> > Also add its appropriate textofs.
> Any blockers on this patch?
> 

No, I must have missed it in the past. I've picked it up for 5.8.

Thanks for the reminder,
Bjorn

> Thanks
> >
> > Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> > Signed-off-by: John Crispin <john@phrozen.org>
> > Tested-by: Robert Marko <robert.marko@sartura.hr>
> > Cc: Luka Perkov <luka.perkov@sartura.hr>
> > ---
> >  arch/arm/Makefile          | 1 +
> >  arch/arm/mach-qcom/Kconfig | 5 +++++
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index db857d07114f..3db642722af0 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -152,6 +152,7 @@ textofs-$(CONFIG_PM_H1940)      := 0x00108000
> >  ifeq ($(CONFIG_ARCH_SA1100),y)
> >  textofs-$(CONFIG_SA1111) := 0x00208000
> >  endif
> > +textofs-$(CONFIG_ARCH_IPQ40XX) := 0x00208000
> >  textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
> >  textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
> >  textofs-$(CONFIG_ARCH_MESON) := 0x00208000
> > diff --git a/arch/arm/mach-qcom/Kconfig b/arch/arm/mach-qcom/Kconfig
> > index ecbf3c4eb878..1772eccb5caf 100644
> > --- a/arch/arm/mach-qcom/Kconfig
> > +++ b/arch/arm/mach-qcom/Kconfig
> > @@ -12,6 +12,11 @@ menuconfig ARCH_QCOM
> >
> >  if ARCH_QCOM
> >
> > +config ARCH_IPQ40XX
> > +       bool "Enable support for IPQ40XX"
> > +       select CLKSRC_QCOM
> > +       select HAVE_ARM_ARCH_TIMER
> > +
> >  config ARCH_MSM8X60
> >         bool "Enable support for MSM8X60"
> >         select CLKSRC_QCOM
> > --
> > 2.24.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
