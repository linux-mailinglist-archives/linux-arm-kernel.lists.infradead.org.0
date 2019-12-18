Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69BF124799
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRfFyUq7ZOEkmWX51Q8HNrHDkbarSgcLA2+ta0H2Ti8=; b=HHpKFmEsyGiIxn
	ZEZRjlobKK7aX8tjUuXMVVyNgzckhPsJPDcFbO6qpsiK5e2rYLwKhlVHinEqk9Yj5GXn/9QadV7V9
	sdLrzcXHdNq7/vnHR0YdrwaBuR9w6nIkcM9lXnSrfQ8jd3uSbTgfPknAR1FYwEu5DAHp31OikBcB9
	f10YlAzcCYmacgU1eZwoRdIOFxVcZTmkp5F0medwGQM9uUX4X9a2Oo0U+NenzSso5BXuImrXlTP4O
	Hx9ZsREnjDKMpv0Af74ZatGfCRolEsNBCuhjsiPZm5clfhIaUrjHIYGVjjrXS6VVdpT0RHgSvhP5c
	YU1E0ibs2+R9PoTjfQMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZ1V-0001ce-Su; Wed, 18 Dec 2019 13:05:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZ1N-0001cI-4S
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:05:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id r13so1900155ioa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jtI02BX3MhKCqZlbqoLQVhWQvEfC77FuEIUpdmy5BAY=;
 b=aBKakUm1IyTAdGLznrQ6P38rhuzcxBW8hJbBt9thj/VSUe8BS8U0qZy/3JTsM0Wp64
 Ii5UVUHm2seUE3Y1eaIaUMpTuUD//dQYSwn20SzwEzodAiRoBBt5e9lglOEp6KvpDZBd
 Z9MWT9BmNI1ajGsK4hdZXFA+fk647WBQ/Ib8JfWCviAS8HU8x65mfiGcR4cRK5KzjA/Q
 7nEdlAWQvd7mxEHiT8k+Gc5E6N961zRtsBOdkLVM4rsfWPnccC8AedWQr6mHlwSy6vX4
 MXIELFiacE6NpVIALXsUMDis5oTwELtouxvJPgQZT1G2zfX6e/xz/SArpHtdd1jC+YcU
 T5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jtI02BX3MhKCqZlbqoLQVhWQvEfC77FuEIUpdmy5BAY=;
 b=OLOs865Ke6xaPzHxezXXIlvrymSX7GFeOlJaYctY+EZX5TI5no6XtKIPBpK/Ef/Ear
 JWP2ak96z1vPa7/BuSBLsrxy+zi6nxsPUXW1DM2X06e60tzxKJMphdfdylv3ZyEnuaNg
 EwP5dOCYjdT8e2GIpze7AV4p+ARfmbJYxj8Ejjtu3ISOrbXpzzcNYxgoYavXFztzphMh
 AmZnvTCY/8f+3E8xhGjXhS6HcNhHfiUQYFqvLn9VBSeZKq7i4nbamXEFcIxLylRUNKCG
 p16Tyha8aL7rjVKx+WfXRoh3Ma2hTkwO8eqvJvBpoiVoPtkUkDkDHiUZAmKWtU3afufk
 yQkQ==
X-Gm-Message-State: APjAAAUtKCd271jW7ZJulLWUon/b+inz762HJb8ie+1wLGm3PgcBL01h
 b4T+AYz4luqy++3e+cgSUB4FZQN6I9L+YO67Guw=
X-Google-Smtp-Source: APXvYqyNAwsARVArObXF0VfIKgBdiiW7WvQbMsAZzjqiVlMZu9krh0jZyV/7Nf2jXTjMZEovn1moXOEZSFAYxGNAIPg=
X-Received: by 2002:a6b:ee07:: with SMTP id i7mr1121712ioh.78.1576674343420;
 Wed, 18 Dec 2019 05:05:43 -0800 (PST)
MIME-Version: 1.0
References: <20191213153910.11235-1-aford173@gmail.com>
 <20191213153910.11235-3-aford173@gmail.com>
 <VI1PR0402MB3485AB1908AD6B6617CFC08C98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <CAHCN7xLrX0R7Uag2vc1qMp4z=1r3haCWrcp4qJT0H0eC3RiA4Q@mail.gmail.com>
 <CAOMZO5B_CCEf_cdAWs_FDC1c6t0RG1KjRjGidoDPmPmgxY=ebg@mail.gmail.com>
In-Reply-To: <CAOMZO5B_CCEf_cdAWs_FDC1c6t0RG1KjRjGidoDPmPmgxY=ebg@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 18 Dec 2019 07:05:32 -0600
Message-ID: <CAHCN7xLoScZ=b=eZHXnWt4U_Tr-N3XdNg6f9DHejQNc0kYvZUA@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_050545_178748_B3C65C5B 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Horia Geanta <horia.geanta@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:25 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Adam,
>
> On Tue, Dec 17, 2019 at 10:07 AM Adam Ford <aford173@gmail.com> wrote:
>
> > Out of curiosity, what is the rule for when things are 'm' vs 'y'?
> >
> > In the Code Aurora repo, it is set to 'y' and the mainline kernel for
> > the i.MX6/7, the imx_v6_v7_defconfig is also set to 'y' which is why I
> > used 'y' here.
> >
> > I can do a V3 to address the other items you noted, but I want to
> > understand the rules about the defconfig so I don't make the same
> > mistake again.
>
> In arch/arm64/configs/defconfig we try to select modules whenever possible.
>
> The exceptions are drivers that are vital for boot such as PMIC,
> pinctrl, clks, etc.
>
> The CAAM driver does not fall into this category, so selecting it as
> module is preferred here.

That makes sense.  Thank you for the clarification.  I'll keep that in
mind if I submit future updates.

adam
>
> Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
