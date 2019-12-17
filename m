Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AC01234C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFdaGuoYIJa4l1cy0qACwFeyuNvogT66fmMA3X3ogB0=; b=mkC9HpI9GV+a8q
	v9glDYITysuwosruHI0mptuVigpwVtowCKWlpZqluJ0aa8z6Jy0ksfWFwJgZdu3CxJbIawXcQbMKH
	1DikCBzvXQM3jl+dqVLL/yzUGn5qD1vF6BkKNmS3RULCmMIMDbMVOtfZLLX3G4ANWJi0y4FyLGLiM
	eBAgfyQVAkXB8Kq69JyswLeO9UQzClQCiFhvLCTLXg1c6qWw46beBMQV2EBUYyI/OcpSyDWYixaPd
	BEIB8ALTSbigMiOaS3Iczu3yWhA78Omc0w27Z59c0MLxIf9h2scX+jT77KJ9yAZyffocMRxMkl+x5
	U429hiHwq4IXSpknr3qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHX7-0003u7-Ru; Tue, 17 Dec 2019 18:25:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHWy-0003tO-KW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:25:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id k8so701679ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 10:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jo3/k6HeLWByk3JzqbzlDt3Xg6ep2UUq9K6e/8xjHQg=;
 b=nuCpdps6sZn78SQU9DzoRiw3IkjpyX3fMC68SuUg1v8a4/ryJ7bFCfXkRH1s7Acdd7
 CnJ9S8UWiu5pXovzcoDEVWKANwWy4+QDo8DGKSMuAHP+t1i5A7Ky/u9lzXlq3tkV2Psc
 SJ0ptyxgT8lfa9ilAFG1ucc1muLf3QzTFrvVlUtPalcJSYToEB2jV+P7nfDAG/1p75Ug
 4RlvmQ4srs+k2wfj0AXgsPm8+bAbQY8gcO7NRwZ3x1sjJ5yTBw6LwHeyJ7zf2+RpxnCT
 234STMIOJNdnX1Nb5tW1QQMSg9Ve0mp+AXT+TqPUShwZS/mr5eic1Y18meRO9drwnmBU
 eM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jo3/k6HeLWByk3JzqbzlDt3Xg6ep2UUq9K6e/8xjHQg=;
 b=gxd64N73zC6wYsqRE4HjjYSsxXp9xlkBe79lbuzo0SkQa4R6NoVOdT4Awo4c3sV2ng
 M1wEY370oEAReoCkkc4qysExVljPfjaHHu2WMVa9ehA9ax/wnRp2Gvm8RsdOFJKUMVEo
 C0jdfI+PNBbSubGZs/3degPqEg35Pq7xvRNBHQkQkCbk4RTg1tXnR3U3JN0VBli/W3m7
 h988u/7NP560Dl03otwsa9Do4hcWJe32Z8vtsr+5nYpUMhnwfjiF/DTD8PGKD9GZHZCe
 GGR1HECzjtWohi3Z7cu9b9wlAoml8SXt8H4pUFJK/tsLyTTAPgvFjJDgaPvfzM0ezkkK
 TVGg==
X-Gm-Message-State: APjAAAUNKYJkDLBagQkP+NEewVNzNl3wZ1KGzJZB/dcGAm4pXJplX9OP
 l+IKTaUJ7ik+/RU4bcOfrk7Ef2dIUGxc9z2FOd0=
X-Google-Smtp-Source: APXvYqzW1YksSJ6QtiK3LM0rolkvX9vCpmJdwLz7NfDCGnoVddPs0R2yuhQXciocVIc/pbFL+gJfSbYSUFtAqLX4HOs=
X-Received: by 2002:a2e:b5ac:: with SMTP id f12mr4472796ljn.0.1576607110175;
 Tue, 17 Dec 2019 10:25:10 -0800 (PST)
MIME-Version: 1.0
References: <20191213153910.11235-1-aford173@gmail.com>
 <20191213153910.11235-3-aford173@gmail.com>
 <VI1PR0402MB3485AB1908AD6B6617CFC08C98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <CAHCN7xLrX0R7Uag2vc1qMp4z=1r3haCWrcp4qJT0H0eC3RiA4Q@mail.gmail.com>
In-Reply-To: <CAHCN7xLrX0R7Uag2vc1qMp4z=1r3haCWrcp4qJT0H0eC3RiA4Q@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Dec 2019 15:25:04 -0300
Message-ID: <CAOMZO5B_CCEf_cdAWs_FDC1c6t0RG1KjRjGidoDPmPmgxY=ebg@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_102512_698424_2535C07C 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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

Hi Adam,

On Tue, Dec 17, 2019 at 10:07 AM Adam Ford <aford173@gmail.com> wrote:

> Out of curiosity, what is the rule for when things are 'm' vs 'y'?
>
> In the Code Aurora repo, it is set to 'y' and the mainline kernel for
> the i.MX6/7, the imx_v6_v7_defconfig is also set to 'y' which is why I
> used 'y' here.
>
> I can do a V3 to address the other items you noted, but I want to
> understand the rules about the defconfig so I don't make the same
> mistake again.

In arch/arm64/configs/defconfig we try to select modules whenever possible.

The exceptions are drivers that are vital for boot such as PMIC,
pinctrl, clks, etc.

The CAAM driver does not fall into this category, so selecting it as
module is preferred here.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
