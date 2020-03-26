Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33DE193EFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 13:38:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5eimKDcUH6p0hB1Yt0Vc7sx9eX1Cynx00BfT2nwwNI=; b=lAJP9WtDoceAuZ
	SiToGxueadSvmrZtZqBl6I91pYuxK+xNOdcgT4YQSyH0/5wCFyF3Mg2+IztBVP2H/wKa0V8MPAz4B
	Dzn2bxWoIB3zETZ1i7ncrcxyPRvsTAS85xHN0wPEYt6Xp+28oU9KMvsyvjHESBtf0fgYsaFTUb35C
	VBzqYvcCN5Sx4qYWKoH7BNdBGY3D82RgGl/HgZcwoTB3Mxl4c6BN1NHI9sqmJHFArd+y5bnlFDcui
	roI8Nfs52y7jiEvvdyGpwLZVpsZfG9MTYwi4xf/v6i1ysmuM7KT0A6cvPlNT9+hD0C8uXREXHMJL+
	Z0cDQ+zcsF1frJITJyaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRlo-0003kw-1F; Thu, 26 Mar 2020 12:38:00 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRle-0003k2-AX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 12:37:51 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MBmDy-1j5KI333LY-00CBxt for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 13:37:47 +0100
Received: by mail-qk1-f173.google.com with SMTP id i6so6139238qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 05:37:47 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0HgBozgTggXg4eXC2lfG42KbxLFAVYCPdqqconlqIlhqeezx4s
 NnL5c624pTd0kCqXVhxN1MmM1hWL8FU1rLsq28U=
X-Google-Smtp-Source: ADFU+vvb7BIXY+D9glCcU91L9kO0tyFWP+EOFEhwVrFka5N8pk0bXgtM967EIkNgE0o5eeGQr3N7S8aDV2fUMF6iRbU=
X-Received: by 2002:a37:6455:: with SMTP id y82mr7866531qkb.286.1585226266623; 
 Thu, 26 Mar 2020 05:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
 <1585205326-25326-2-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1585205326-25326-2-git-send-email-srinath.mannam@broadcom.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 13:37:30 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1qJv-Euvh06fqFxn4Cx-wkh4gCMOf29DAmQzWKZJji-A@mail.gmail.com>
Message-ID: <CAK8P3a1qJv-Euvh06fqFxn4Cx-wkh4gCMOf29DAmQzWKZJji-A@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] dt-bindings: pci: Update iProc PCI binding for
 INTx support
To: Srinath Mannam <srinath.mannam@broadcom.com>
X-Provags-ID: V03:K1:sETlawbqwEh3qB2XUQJ0hsUtM+GpvbYWusfqCK18PfrZuGg5ANr
 cZ7kYiECbmNsGnBj7ZINsqT1GumxSk89txW9XLY36f57Ktl7kcEGgFVf9k56Nyo9nNC4CyK
 93E6i0Q1A/f87OljhZUweab1b9/dSHaqvx1g8l4G5xzy1FJUI3b8CRtl/PfMnyji3+SbHSD
 RSdYTWa1IhO7FFl+bf/4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:52Aqo1TXBmc=:4hxybj8qL1hNcv5cbPzBnC
 quW4ib0LO9Ef1Yz3iKPTvC2MEJ2h19ziOqmp69pWu/qvUXWTHikJcBMSXXjn8k6ZeeZIr0qdN
 ymZYd88xp6dtMf363gSTjP6NA0i+43ysinJG3WvKeXA83U0NfdfMvp6NbcGoFdzddQbarOhbF
 fiSYaLqDVkSyAbemJKg1kLMGTCU8UYFihewpovLhjKqVzqMdNhglVj3zfCTWyNOW8IQDeIKTd
 5PcvIhPIa/EP7Jyj43rT8gDMR0U7DcGwz1CZNzWcMjAH4THzOoi3aKUoTKHUf0iKMQ+Lt0joX
 73ba0lWeqWz4dnAv56cOV3Ho442a7PlyTy/uGJLbVT5FTNjigTZqgsuFyAfzvS90Vt/WBC1ia
 wyh8itlTut13EMLuxkV/NIWLDXAQjKUe4kBBYXsbnNZBiMJm6eViKV3HjK866IjklH246kM+E
 4i0Qnz0zGLJnpDcN0zCL5nistLrIquUiav2Eb/GFpVXoELvkCEqqPH9+FuMVVXC6GswIs5HZP
 cCoqN1/KEA1Min0aG4RCHW9aP1nHV7JtpM7asjHdo7Sy4wDHE5eivZ+VEebayB88qkj/Gs1aL
 eNaDc+DMWwAZxacODrdrCN+H5/ne6t/vAKCbudf40pCv3WfClECHazp079vQt/lp6BslcDMRr
 azDwT1AZEBIKFcZmREkah2DdFwyFdnM6PY6aKu7u4mm5Kj2EZ0GteKwT/tkiChO4sIZRhnHws
 v/MROIrQkqfigyYi4il5cPv8mw6Us1HMEzvskTIwYYOIyKTWtAeUa3V3e6lQS8QdHLTkA3fyR
 ZEsLOvFwxJbENrVuzQNtsXw7qgH+ViG7HC7pzS2daxBbWyVwbg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_053750_658497_896E70AD 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-pci <linux-pci@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 7:49 AM Srinath Mannam
<srinath.mannam@broadcom.com> wrote:
>
> From: Ray Jui <ray.jui@broadcom.com>
>
> Update the iProc PCIe binding document for better modeling of the legacy
> interrupt (INTx) support.

Could you describe in the changelog what happens when you get an old dtb
with a new kernel or vice versa? If any combination won't work, please make
that very clear, and give a reason why you consider this not to be a problem.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
