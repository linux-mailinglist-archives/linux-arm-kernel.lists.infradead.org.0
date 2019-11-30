Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1D610DFA1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 23:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+tRDwQK99mhuxMbZ4WdXTgsGu86gEHErn49z89RDbo=; b=EWzIMDYxh3VdIc
	RgXvJZWXIR2zLMr25wjX94MtFYf4KT+5p45T4nPf7yNoUOpvFjBpWVBX6BcMHvc9GV2nUKPw2Fxm+
	Ob9ai8w3evUMKgRP+YY+2dkTcL00l40f5/rgNSUYTMCOYYmw3123/UmdhkO4ZCJy3PLCRZK3KXuhf
	7twB7UWJxbupOjh66iS4Cz37sGY5TfqV9Js75T+BpvEWlj0t56FFtYT7uY2ksgT/FZE/CcHfM5lxc
	NwROMC91CV0jaxMh406utcwKmqgl6VnrNXL2gBllELpY8ebNVpkcmFtdtKRmk8eankmkgy6VD94u0
	UaYvfpWUVcJ/2KVsoCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBGJ-00070x-0R; Sat, 30 Nov 2019 22:30:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBGA-00070b-Hb
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 22:30:39 +0000
Received: by mail-lf1-x144.google.com with SMTP id l14so25120355lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 14:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z4tOixWpgcrdjui38T5oTL+44XGlT7eV3jeFaOo0/CU=;
 b=JUpwMiLS5buD2r0U3njb3GQpt0fCXwP17Q0ZUa6Jo+q2lhsRmjFmbjWLbTtas2sF59
 4BQA//Z9gPOq86l6QfB+uiuQI5tjuprAreaQetVwcpYuKgEQkdDVaP9ACd27aWjojJOh
 z7bhwBsX9TQz/Vy9CfFVKh53pw4eA+x3Frzj08Sk40CHRwuvzZhhRDjEu8NsuESJqiKm
 goKc3Sl/dzGfxpZSZrhC0uFJzOsYlaO/auX8MzdyS22mbUmgAgQTzM28OK4q/iOCqI2v
 KSz9ZOqCe4xKnziGCMnS0V0HF1SwTTwIGs1kNFVezgjkjCGR+p2eeDifBu9FwI1cE49F
 JKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z4tOixWpgcrdjui38T5oTL+44XGlT7eV3jeFaOo0/CU=;
 b=GG6DAdLPV1jfhvkZfYBH1Lelq88mWhKPYTA0ZoGlVY0q8G4YH0hDnN/K157mgRfL2f
 qOzgoDr8bAzNDMZ69CFkKGgzGsVYqdEHh/el3fQkE2v7TmlhdnK/xQfgWzYfs6u0BT2Y
 mmiLe49mZPKEAZ9/A2JCV7DnRDEgrD5CLK7yxJfGGHakcE7H9h/xPFKnz0IfQpWJNdb9
 sevKNm6RhkyIV2ZNtLIQ/2LLA/U+1m9YEsI3JeZXsh+ptGZ99hrXLr3mGJPActlvQxeO
 T+mfDb0/PjtUT74fnOladNh/+ZqV5dO38D68qHS00sszNf/Gf++OeKKatCZk97+x4wwo
 3pCQ==
X-Gm-Message-State: APjAAAVIP/jrfjNDRycUY/A3TTnnJLC3g/sQ41jMUOZ9FDn7iyDD0dIQ
 ROd1ggXq4jRscN6vtkp8sM9+W+hqkg+dcw5Dok8=
X-Google-Smtp-Source: APXvYqyuHeD4Xafj7MsA4yP65IUXVSAqx+KBRYqbOdUBNOl/5bFe92S3swaJTTlNZZO4J0bx19bSxo9sjure05JDEGc=
X-Received: by 2002:ac2:50da:: with SMTP id h26mr4784575lfm.80.1575153036513; 
 Sat, 30 Nov 2019 14:30:36 -0800 (PST)
MIME-Version: 1.0
References: <20191129234108.12732-1-aford173@gmail.com>
 <20191129234108.12732-2-aford173@gmail.com>
 <CAOMZO5AyLBrsxr5rqkWgf44X0CQdqHcdaCLRaWLC25b18bF+xw@mail.gmail.com>
In-Reply-To: <CAOMZO5AyLBrsxr5rqkWgf44X0CQdqHcdaCLRaWLC25b18bF+xw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 30 Nov 2019 19:30:51 -0300
Message-ID: <CAOMZO5ALQQxoWFC9J5ZwT6DtsuVg-FaWCcGbcPK=psokWWRF8Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: Add GPC Support
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_143038_607778_7F84F5F3 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 30, 2019 at 7:25 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Adam,
>
> On Fri, Nov 29, 2019 at 8:41 PM Adam Ford <aford173@gmail.com> wrote:
>
> > +
> > +                       gpc: gpc@303a0000 {
> > +                               compatible = "fsl,imx8mm-gpc";
>
> You could do like this instead:
>
> compatible = "fsl,imx8mm-gpc", "fsl,imx8mq-gpc";
>
> and then you don't need patch 1/2.
>
> Also, "fsl,imx8mm-gpc" needs to be documented.

One more thing: when you add a v2, please specify the SoC name in the
subject line:

arm64: dts: imx8mm: Add GPC Support

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
