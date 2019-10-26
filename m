Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E67E5EBE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 20:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6sLn8VIf5/dbkK+r1xS0lTvEY2XevCMxJ/bdlj6Z4s=; b=g6KfITvfviFLE/
	oDD2cayVMkVjtQywUwAdqYRczntFRVozYqoWclGxYJSpG/bdCQWH2AlP7qDnDxW2hw9NbvPuIdeDe
	eDgHu34v2Mmns2ejW8wLdEaSJWfAU+BHoh7ZYiZOUIIgL4viw77/rimIRZ/veKEoQ/RMzvNzStSWs
	FCZfSGIAgFq0K8bA6mQFaFdLMx0EHbDDzNfenZd6UYaqPi/NTU+gfEqGD8s/AAWX4cn4oegFtQ1m9
	ONCaEo/Huu/shNgHkWmAl8Cl3EJkZA86j6/FHGrMh88s7seF8xYiMrCIM/o/dqTxxlx5R3EOqzBhe
	xN9G+TVChiIkI8np0nzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iORCv-0001tc-6v; Sat, 26 Oct 2019 18:54:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iORCm-0001t5-CD
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 18:54:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so5807307wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 11:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WOCOgOVP9/3KdLQah7ogN6soj9MgJBMp5zydxBeS4k4=;
 b=R8evbIc/iJ/MP2CwCJW8LJbpCKX6L5gP4U+EiT1Rsqa38pVgY81dZZ9UUnHnNFNol9
 C2rd5dS4G9oJVzHdBXpIwGPjv++7CFWhsyi/NBVB1V4qy0d0OEcziYb9eg1040LkuS7D
 /Rafr+VFCc4d8NDklQv1JCPEIf/lLlegPm5P2uYZrKg9IYF3NlKCWVWhKsaPukZdpHIg
 XM11dOkZnNZNhdxtjJmRGLZp7pEj9C8JrRD2di014GA+XI5w3qeOuIKk1ImhTA5dX/3u
 pqlQwZLfFnIzpXXiyXzyerPfGbFiSIlg2kyF0duukW6sKIRnOae5tSx+KnR3Vie1XX3a
 oZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WOCOgOVP9/3KdLQah7ogN6soj9MgJBMp5zydxBeS4k4=;
 b=P1IYwtnVqqYAjeyM2PePEaH6E2DPCYjE21ZrlLs+i359g675+WPaMF33jvWA29cpB/
 +EPMXjArAiFfXyP6xP4m30gRAeh4sVkmLi5wuQCDrAH0XTPyCqSH5mj3HHKtoGSbqVer
 sd5QpbP9VIdLQ6ydpC8B7AvQfH4HlXZlQVQQKbdRwI5psur20I20D2cdj+w/dyDu+do3
 Efj/6SvXmB00o4aBlE0kLA0LsoYZYZfBqf1RgWRBVVxGqihFG/NPsJkSTj42iPtNv3mu
 NeyNLdP0gsjOC3ZTm0RoxDQilXnlM7uBJJkb07ZNjSIPAM5j2JmjVEZeB0pQk8zEvY9I
 5CEA==
X-Gm-Message-State: APjAAAXHuUwM7bdiiHVX+8PjqK/x9ghE5dr8ngaSPN5EWpLDYI6/j/Ko
 9YCGvBpUBAo2sMthGsXuMoA944KRA+xiu1xmivQ=
X-Google-Smtp-Source: APXvYqzyqxrAU1QqvoHlbftGy/crKZJM8TEtfIUPzJvpEntZhvyxhB4BHutPyxU4cFj5bPO0Ooop1VWRv0QnQdq2+X8=
X-Received: by 2002:adf:e286:: with SMTP id v6mr8558351wri.241.1572116065463; 
 Sat, 26 Oct 2019 11:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191015152654.26726-1-andrew.smirnov@gmail.com>
 <20191015152654.26726-3-andrew.smirnov@gmail.com>
 <20191026115524.GJ14401@dragon>
In-Reply-To: <20191026115524.GJ14401@dragon>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 Oct 2019 11:54:13 -0700
Message-ID: <CAHQ1cqHQar8ZoVa3p+LfuPyJixcwfeWv7spkmwyJc60cekEywQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: zii-ultra: Add node for accelerometer
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_115428_443724_DBEE5DF1 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 4:55 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Oct 15, 2019 at 08:26:53AM -0700, Andrey Smirnov wrote:
> > Add I2C node for accelerometer present on both Zest and RMB3 boards.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Chris Healy <cphealy@gmail.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: linux-arm-kernel@lists.infradead.org,
> > Cc: linux-kernel@vger.kernel.org
> > ---
> >  .../boot/dts/freescale/imx8mq-zii-ultra.dtsi   | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > index 21eb52341ba8..8395c5a73ba6 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > @@ -262,6 +262,18 @@
> >       pinctrl-0 = <&pinctrl_i2c1>;
> >       status = "okay";
> >
> > +     accel@1c {
>
> s/accel/accelerometer
>
> I fixed it up and applied the series.
>

I'm fine with that change, but FYI, I originally had it as
"accelerometer', but changed to "accel" to match the name in DT for
RDU2.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
