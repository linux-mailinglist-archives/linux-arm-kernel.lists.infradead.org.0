Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A709181B39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ZQT4PsLLgk+/vnAnegEdHadSt8dtV3lwtLjeHe+88Q=; b=boHh1PUcLo1BVDa2nAEaeXsuR
	A/IkcOwCEz3BAsBxjn8NMQjDGNtfl3KKuqwzGZbENBGsArzwpMMGrCFDY6T8bgmBnNX4Y+v/xjUx0
	A4vy4z/HNMDHq38Y1/JJ8uLO/cfWgD12Hwr8cHgIV7mYa67wj62Avtg07lPewn1vtI4qSu94NoswX
	BVgIVt3AvOA/7Mr3kj++Es1mxgMMvaYfSOLLV7X3yX/P1W82IO9D3JXscjDHMSJQWgn8rQY0Cu3Z9
	+yEbviWvTtZFeZetwHcuYZR+Wsr4DCnQMGKGd6iB+ccgjpugk7MHRu91EFzN79n3fzNY3Hec+wEsn
	gTqF+yaFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2O9-0007Nv-18; Wed, 11 Mar 2020 14:31:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2Nw-0007NO-IX
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:31:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id m9so2870248wro.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 07:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VjzeEKChSA5U1RVRAuBtpoNW2CBTxFFw13vMlkz5Qxk=;
 b=EHqlZFnV23fFnJW6akKlxvTs10LaICmJ/QCOlISSxIB0cw/p6s1ifiyS3OZVNq7Cra
 /3936DKt8/JFJz9DaopJG5InbBeZvZQeuOQZ6Aed3ghopyfvrWaRZCF1LE/x6R5kBpJn
 0/A1PFt0H4dOR0eMsY0VrYnR0krQmusq1cJRptn09df4Qfb6qmziQ+zua6UH2O+eMec2
 Bw8N02JXEbs4uNpXpKNEvAUIqsava8YurAY6JtdU3NoMUaC9nfqn1m24q5apukcQLlnC
 b1m2mUIIDODwT1Dp8udTeIrQeUioqm9GfvpINHA4RYsiD3ooKoLqmsKQjaZJENIv0tX0
 dBGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VjzeEKChSA5U1RVRAuBtpoNW2CBTxFFw13vMlkz5Qxk=;
 b=qdN63TaYktCrc4O8VNBFDLABvQIoBzpeNaqpPfn6Fg8hRTOVbwEnUmRtXQZHO1waKB
 +iM1YTYwVLz5WibohymVk+NI3lsv1Jv5qn1c1IvWbtvZmDBoNllhsA91aA07NvLwLWr1
 35flQUXGEAdqIKZEAxbzxtilveXTaDjHpXYskjvXN0dXVcDYkxFykt+U7UBjE2eyROFw
 JnrFF9jbAwtgBa/ycVCeQ7fl34OlxYMTO+arH8kaG3KTLmLGbWw1jLUj/5YaBe7D87gZ
 CLlY7gGQwsUsXXtdaQvbmY+CszL1hNz9NUiSjmkIw1Eqj1hFXswjwVmRm2lpTB1pgF0R
 FNgQ==
X-Gm-Message-State: ANhLgQ2VK7bh2eSjC+7pOZqrhqBdwpTBzjT0Zl4MQM8ZL/LcOa8i1UHu
 pWtiYKURedYHNdEuchEPQXg=
X-Google-Smtp-Source: ADFU+vuCLwEwQ5JWv5ljZuN0njk0gngoUTdcQ0yYvpJ5vzAu66rQL6Q1YmXNCUN1Wmmj/p+P6gqpCA==
X-Received: by 2002:a5d:5090:: with SMTP id a16mr4872952wrt.191.1583937058668; 
 Wed, 11 Mar 2020 07:30:58 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id 138sm3297085wmb.21.2020.03.11.07.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 07:30:57 -0700 (PDT)
Date: Wed, 11 Mar 2020 15:30:53 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH V5 0/5] Add support for PCIe endpoint mode in Tegra194
Message-ID: <20200311143053.GB494173@ulmo>
References: <20200303181052.16134-1-vidyas@nvidia.com>
 <20200311105141.GA30083@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200311105141.GA30083@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_073100_637320_F7F254D8 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, Vidya Sagar <vidyas@nvidia.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============1393865775893303322=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1393865775893303322==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline


--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2020 at 10:52:00AM +0000, Lorenzo Pieralisi wrote:
> On Tue, Mar 03, 2020 at 11:40:47PM +0530, Vidya Sagar wrote:
> > Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that can op=
erate
> > either in root port mode or in end point mode but only in one mode at a=
 time.
> > Platform P2972-0000 supports enabling endpoint mode for C5 controller. =
This
> > patch series adds support for PCIe endpoint mode in both the driver as =
well as
> > in DT.
> > This patch series depends on the changes made for Synopsys DesignWare e=
ndpoint
> > mode subsystem that are recently accepted.
> > @ https://patchwork.kernel.org/project/linux-pci/list/?series=3D202211
> > which in turn depends on the patch made by Kishon
> > @ https://patchwork.kernel.org/patch/10975123/
> > which is also under review.
> >=20
> > V5:
> > * Rebased patch-2 on top of Lorenzo's pci/endpoint branch
> > * Removed unwanted header files inclusion in patch-5
>=20
> Applied patches 1,2,5 to pci/endpoint for v5.7, please let me know
> if something is missing.

Great, thanks! I've picked up patches 3 and 4 into the Tegra tree for
v5.7.

Thierry

--i9LlY+UWpKt15+FH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5o9hkACgkQ3SOs138+
s6EhXg//cjYE1EBraQovAb9Meb89XpZgwlbTBz4wVpX5gGBnmOdMVLAJdqSbXdVQ
AxZT3EVQOzy24ZqGwb118iN3a28CNYU9FLUdZM/UoPnA4NHC0Dk62cIeWUly7FU7
geukEaBFNJSl/6EPuAo0Qobgow0Yn5anvPjKgpZ+0BKK/e/+aUYZNzFs0vpde9xq
9PPsB1rGj0KrrDSnAFS1hxrL85yL8B5Hz2X//Zm/WFgC3C7X2lSSCL9z4RWyeT1F
pNc41o45blCOmcA2wZi7WbaMCYkyBvQyjEmBPBTnF/6P3R+J3XWtyWcTJOSwgjby
MHLshrbG0T4HNxFtbZ38G14Q//mCu5kYuGWLW/P3187nejD2XF1wNGYSqmwE9Eny
zcOH7tqEofowLvCjLa3BZtHiSiAxRdwuLY4Q6nh1tEydpQqo5bKp3A52B6vjdqoo
7GBhLvJ6tIal+dZUxI7nMz7wPdb53TrMws6rhQ4/bcb1oprZwXQzL8DGoNij6aBl
kYU0OvWb1Wh9t+EbLa3BKdupY/OuBVK1zu6/mH1+MYTD/FZviyj+EXH8rPLbzki5
THwdnIDEs0dvf3nEfIjXnyVfr+QrVOsrsKOpyfjHq3N0yGeOXavt1Su/XHZ8mBDX
r2nBg9NWA2vPlngiW49ndo080lFoiG3mGmRwgk21+1HJIDdPcys=
=QA1n
-----END PGP SIGNATURE-----

--i9LlY+UWpKt15+FH--


--===============1393865775893303322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1393865775893303322==--

