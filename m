Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45352BFE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pGqNjzDLH2jKgK8Lcsi3G8dh3ByoxkO2udkp0VV8rY=; b=tMUbncOvnyPVXB
	L9dRQEkj80kzUk2x+fNSxAdB3N2wrMBqIfNiHRa/a6ECAEcn6YHSam7L1Fme3U4kaSwhOZH0GUJOn
	pzeGDy6+dr0qwVqGYWXMOyZ2X1oATAL5IBg30y2wjKukIBpvctYc7xe7NS0p0HBb1RDBw2dZvYbKD
	5pQykauBxpa2t76oIsUJdltrr3ePgrisgEpMbkdwHTU8xXR32X+C+ATepGlc+S+Ag4MsgF5RUiuZB
	y/QRnFtUitLhBcpLPvgmSnN6BCkyHnp1cxVmmVJi/MjTV2r/OCK5/ryQ3K7hS04qJCUUT3H6SvzZy
	IrManHvkN2zfpNqKZYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWGG-0003r5-UK; Tue, 28 May 2019 07:11:04 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWG9-0003q9-9s
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 07:10:58 +0000
Received: by mail-ed1-x542.google.com with SMTP id e24so30193665edq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 00:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sh90EuYxrh193Q7HMx34uXLBv/PVyFJE/lBow6rEA4k=;
 b=mvV7ZF8uWhYgBjffMM77I5Ql0OvSQtEllUykBqYO1LqPUptUBQ4Clj555ljFp5HxVB
 tBckbCbOVOLWEI507jR5cxLEYPcv/ryx77EQ82dXt2UJgPSyJ4DIYHQxIe2n5IfLP4F1
 zwXLmW47ZFSuqV5IbKxsIGoUh95Y4ol8HmxTUegtt+E0uYC4T9yp8jWlpqgfLBY8hc6M
 W7mDI5P+EBlppPHhvwyAF71G1KPnEW8JSczuerHrAPmaGNxqSQPQVVs6tEN+O3J6nZMG
 MJ9hP6X7ANVuNFMa4njp86xSk5DWoatQd5Hi86TEx/W2JcB3nUMBy9qb+IIujHqVuZzg
 26BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sh90EuYxrh193Q7HMx34uXLBv/PVyFJE/lBow6rEA4k=;
 b=q9fIZA2oYpP+FXKKRj3GftbwjtyFAK7Nl0p5JntYCA+hhVs+SkKSK2Psd+UltgzSBE
 NUty+H+juZjLL/CnWCEZviI/9w72I8bJ/elX/5F2MVEgxLRJBRTahiaFtzCsLR/jCVia
 hrDuk72ATW2CrZb+Ale5QN3Y9r4MZ2avrP7OQTyAhQSGfPBjV/1/INgR2L5gQJv+Xn2o
 FTGKVQ6cHFohMNKGFK8QBNfszXklWG30eJIYLmbmfmNt4KJsMJVNyxaFN23YlghFtuLp
 YRRD/Gkcvzn4I4oBlSYa9buBRM4bjo5WeANHJ/uFzz0EDq06IY+QOjmhjclvsL70FYOj
 B/cQ==
X-Gm-Message-State: APjAAAUYePGbgEal9QRW8ryXFZyXf8m7NvWvRkxWwfzSt3t2iRIoVweg
 ODVNx7U9Rl5oDkWW/Td4lb2niyoM29D/2YUYZk5SnR/l
X-Google-Smtp-Source: APXvYqxNBlLhlVAOzGwcr+/jjrcH1xjzXnuJsY4nwozQ6IgG1ptIELlUIhMGBLO4K8gY4sqaP7ZTZpxsWKMvSqs+/sg=
X-Received: by 2002:a50:ba5c:: with SMTP id 28mr48087986eds.238.1559027454465; 
 Tue, 28 May 2019 00:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
 <20190515144210.25596-3-daniel.baluta@nxp.com>
 <CAOMZO5A6Gv5k3up0AtKrhQPyMLMe_8SXift68KEP2J+j8D_cJg@mail.gmail.com>
 <CAOMZO5BTqwnun6d7G1vcHUu_Rs+xfvgxTzamWnBPy76W7eeF_A@mail.gmail.com>
In-Reply-To: <CAOMZO5BTqwnun6d7G1vcHUu_Rs+xfvgxTzamWnBPy76W7eeF_A@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 28 May 2019 10:10:43 +0300
Message-ID: <CAEnQRZD98TKduVLshGrBANRB6NT7Se6CXD0cgd5XRYa6grAo4Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_001057_363033_DE024E18 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 10:33 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Thu, May 16, 2019 at 3:35 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > On Wed, May 15, 2019 at 11:42 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
> >
> > > +               simple-audio-card,codec {
> > > +                       sound-dai = <&wm8524>;
> > > +                       clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> >
> > IMX8MM_CLK_SAI3_ROOT is the internal clock that drives the SAI3
> > interface, not an external clock that feeds the codec.
> >
> > It seems you should remove this 'clocks' entry.
>
> Just checked the schematics and the SAI3_MCLK pin clocks the codec, so
> the representation is correct:
>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Shawn,

Can you have a look?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
