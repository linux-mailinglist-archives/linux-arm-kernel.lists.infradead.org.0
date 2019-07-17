Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FD76B839
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itYrHfPDK02Ouc78I5OT2YgOeS2TnmblUEv8bCncXME=; b=ZoQIf3Yc1qplTo
	wVS1lzOI64ymNdZdjY3XZjeyb6Mih9knJu0ysE2IjAtA6t70ukX8D1Szqb3OpKkIXeyC3JRvk6TUz
	X1og+XdmF12OES0hZ497W+62AVoefVpXcHTbNxu74vvRSx7Ce1IJZ2/FvLctvknLYRGiZNMaykPko
	e1WwFGWLuGl8E7F7Ke8BilNSi0NrrvbCLd+wo92+on1iKOICAiA+PlM0elon/THHk1lF7mctRntgg
	d/hUdVhQQLZsoFPRbGmvvCeCgsPK8tAWtGt7sg9wvWdjf17et98SbbuO/TsHhsUERA11T5qp9cQoE
	b3UuYbCxelLQOqhWi/Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfLK-0003if-Iz; Wed, 17 Jul 2019 08:31:18 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfL7-0003i3-70
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:31:06 +0000
Received: by mail-qt1-x844.google.com with SMTP id h18so22456115qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pds/1gSMFiprMXZtpb+croEbMG/8G+VprC//ZL8i4YI=;
 b=VGbsQRn6U6kYb6plw41KT49QLVKXHxnDeDUq6x8R9ZcUzR1KO/HRfF9mLflrbKfhXl
 kC7+nMCwrTJ2J0fMWkJ6EdK+VY8VFHPjehYEPAJbRDI6Zza30WZk4fX72SFSNY7xdd0J
 ql1uHNn6WR+PHkfIP7X5ZPSIKUnsQ5Sx/wOmjczvRWE+6xJVHIp5sEDfJ+8mcToIuiBb
 HIkktiqqm0o/psr+iz0yxfugaTm17IZTqIJYjYuEvTgYiHWv1v1qQ1v6cW5jftkmAFbR
 nFxFoWVi0RHazXTbuXbBD6Nt9MwjcN/jC1SBVDIA2iIPKBypHN6p718EW+1oQx7/aqkm
 6Jpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pds/1gSMFiprMXZtpb+croEbMG/8G+VprC//ZL8i4YI=;
 b=Lg0UgHwvND0z2fG9pbKKyJeWjsXMVAV42npevC6pvPWfjZvOWFbab0gRuyqtM7aIlB
 A0yVnmITSitpCoeG0KjF12IaKQ/CmHFMF/HIKOyO2GDNFqsImANtcWOcQklrXPa0/S6S
 DUErN7kPlKtDLGVLiR11QF/pMV6IvV1Lcvu0VWKZCwOvKy+H1sRq9k6V1GLCuknlPrEf
 7PQm2axEBeFCRCY709su+u+UWtEgvkuYfZ1O1iO3qENbIBH+2PRkq8/nPoHKak+jnBq8
 KGr95fNVNYFMjXkbQx90Lsusi/Cl8DRJ48uBofxqusLWEM0M5rOAiZ4/VQPJRAhaR/hi
 x9Pg==
X-Gm-Message-State: APjAAAXiue3mkge4y+N/AQ8G+wWNyfzyuMpBjsE0+lXHGv7ZAk7IR41D
 nGv8L/LqnVUonu84WvqnYSHgHe57YrksYLE4uhY=
X-Google-Smtp-Source: APXvYqzp1lAk9uOOUY5V4b8FesQOhje/rpMg+PEM7ePcouMUEG9v/kRzcloJROLhQKhkpWkkIWQD+eAP4dyPGnHcwIc=
X-Received: by 2002:a0c:8695:: with SMTP id 21mr28008087qvf.166.1563352264156; 
 Wed, 17 Jul 2019 01:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5CdBhJmdbavfWzpx0YPhAXgQvA+ik3GMz0e5U1j6ytyHg@mail.gmail.com>
In-Reply-To: <CAOMZO5CdBhJmdbavfWzpx0YPhAXgQvA+ik3GMz0e5U1j6ytyHg@mail.gmail.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Wed, 17 Jul 2019 16:22:08 +0800
Message-ID: <CAA+hA=T29ek3B=s_aRS9Rk82cNHzx4-AD-TZh4T1_L1ja66rBw@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] arm64: dts: imx8: add adma lpcg clocks
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013105_287253_8D59AC05 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 3:28 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> > +       uart0_lpcg: clock-controller@5a460000 {
> > +               reg = <0x5a460000 0x10000>;
> > +               #clock-cells = <1>;
> > +               clocks = <&clk IMX_ADMA_UART0_CLK>,
> > +                        <&dma_ipg_clk>;
>
> Putting the clocks into a single line helps readability, even if it is
> over 80 col.
>

Is this a new rule? I'm not aware of this requirement.
By looking at imx8mq.dts, it seems also have not followed that rule.
I'm a bit concern that it might be super long for other lpcgs with 5 clocks.
e.g. enet.

Regards
Aisheng

> > +               bit-offset = <0 16>;
> > +               clock-output-names = "uart0_lpcg_baud_clk",
> > +                                    "uart0_lpcg_ipg_clk";
>
> Same here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
