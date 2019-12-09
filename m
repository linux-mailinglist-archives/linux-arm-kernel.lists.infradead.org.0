Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1839311721D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNtTtl0xnpOuh/8G5a9oWI0rhRoIi9svo+L6dyuRmLw=; b=WLroydSJEO2XHE
	2MMy4qS2D49ujfkI9ehuyrOWM1/1qql9RTJji2O5gyBIiJ0rdZnXkoTFEMWkf3EpRi7XDtXn/qh66
	5omP0q4WDEScQjCjrQDGdTL5k00BX/WdGyGuH9vc7Q9Uw2ko//h50vyKy44WnrnpfgO3l+YQesNML
	F8xthfW1BdDr6vG4lFe6L1kLTLoPZKTfIaRr2SYW5QTFFZ1H5b5EY6MGk13PKH0ylWjDRoSaVkKUC
	kjw4yfYWDbJkcKoN+dw1RZdQkmREBrofYA+25Qy/jr9fMKr3xPLlhMQMs8n55GqGWd8ruNRU/8ej3
	ATMjcBe2XKPdb2TIhmug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMC8-0003hY-Bb; Mon, 09 Dec 2019 16:47:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMBz-0003hC-FJ
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:47:28 +0000
Received: by mail-io1-xd42.google.com with SMTP id z193so15465912iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 08:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XHum4FDJDIcgTeOwvhbTJMdsl7kGHy76x1fPGptU0Ec=;
 b=udziYz2dZA3xvFqA3QmslCERX0mkXTBQnwhiY585MQJ/oxeg4n8eBFiLdH/jTCa9VF
 QMeKhP4j8Whn63LiUzZk2afaYl18gR8ZiV/okxSNcgW4FTki5hTkdPIVMkHS5g9eH9M4
 zHhZs425J0FiJkW884QLhuPZrgc67h4LbuvWSNeMWR5+AZ7dlAVzXsZOQaLMbTbiIlKy
 iXX64YMFlMeM4nFli7q6FzA+0hH75n4/Fj2xusjLxbAVzrwTbNGX4punKE1HosatLHxd
 wngfe/KRWwgURMfP+qbt0/t/FaozZl/F9FCgTNtMcxictPVnzFGKaa2DngeaYwBGqcdT
 04dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XHum4FDJDIcgTeOwvhbTJMdsl7kGHy76x1fPGptU0Ec=;
 b=T18m67+T6BbZtcFQ0Hg5cyerTod14tSZcP+we97gKDi54npLuqJEJe9qwGbiz3+3kb
 Z5XI2Asg8khABIPgvSzpnZlA+qFpuCUr76IJKisgze+MZ03GcNfeLEP48U2CsuezKzfm
 l/XBYOhCEQYvK2JCq+hVD/DyM19vjMpWy4pafZGtJAI0ye59oZNQUY/0tsD9Pz02KNDv
 2+VLcr3PDrZPUmkxaEhPJxbt2gMOBdhN29q/I1fa0tcxz0i/MNdf4t2hWuxbAQfZuSep
 mXyh7cd7jSCfZhCWNF7PkW5xKw54IJYqdBScJPPe1Z83dU/ZlH5+XiHUnhBUz+86RUKs
 rYaw==
X-Gm-Message-State: APjAAAWO+it/Hex86WpNcHXz8Ope75BoOBVInX+MwiCAOfEeT94/5vbu
 gpGW4DSOFtQWOHF8TFVcCKNU3GmmF8oAN5ZJ1p8=
X-Google-Smtp-Source: APXvYqyRfLHLHr8UPDK5Qg/R0LOdnqfw2mns2KoezyJYWV0kZLZ9FzWmbX14ZpFaRwTi7GmfNPgc2uuS2/cMCzOhYbc=
X-Received: by 2002:a02:13c2:: with SMTP id 185mr21935228jaz.0.1575910045615; 
 Mon, 09 Dec 2019 08:47:25 -0800 (PST)
MIME-Version: 1.0
References: <20191130225153.30111-1-aford173@gmail.com>
 <20191130225153.30111-2-aford173@gmail.com>
 <VI1PR0402MB348586BEDA9BE13CEB10C75698580@VI1PR0402MB3485.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB348586BEDA9BE13CEB10C75698580@VI1PR0402MB3485.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 9 Dec 2019 10:47:14 -0600
Message-ID: <CAHCN7x+roEAmteNLT9KkLxPvL6AFFHMUW=J_cLcSdE50kODZQQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Add Crypto CAAM support
To: Horia Geanta <horia.geanta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_084727_535276_F6F22033 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 10:23 AM Horia Geanta <horia.geanta@nxp.com> wrote:
>
> On 12/1/2019 12:52 AM, Adam Ford wrote:
> > The i.MX8M Mini supports the same crypto engine as what is in
> > the i.MX8MQ, but it is not currently present in the device tree,
> > because it may be resricted by security features.
> >
> What exactly are you referring to?

I don't know this hardware very well, but on a different platform, we
needed to make the crypto engines as disabled if they were being
accessed through secure operations which made it unavailable to Linux
without using some special barriers. I didn't have the special
hardware on the other platform that required it that way, so I can't
really explain it well.  I know on those special cases, because some
people were accessing these registers through other means, the devices
had to be marked as 'disabled' so to avoid breaking something.  Since
I wasn't sure if this was left out of the i.MX8M Mini on purpose, I
let this disabled just in case this hardware platform was also
affected in a similar and people wanting to use it could mark it as
'okay'

adam

>
> > This patch places in into the device tree and marks it as disabled,
> > but anyone not restricting the CAAM with secure mode functions
> > can mark it as enabled.
> >
> Even if - due to export control regulations - CAAM is "trimmed down",
> it loses only the encryption capabilities (hashing etc. still working).
>
> Again, please clarify what you mean by "secure mode functions",
> "security features" etc.
>
> Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
