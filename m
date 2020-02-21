Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A616809D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGuy26h1+JDX+e+mrly/q8BdZAjz4ZR4hOawwDXGi7I=; b=YEMWNqXq9Fugqg
	Aw/7mQWX3w8PoXpFI8xh0L7Rz/e8aAKAf4yS6bON5aTbkTQ1fZOVNKL6QrM/OTEc7aXa2RiYOBH6A
	UygtY616ptqrcGcPmvPTkxHxaeh9nPwjJE4vNP5ev4JCG6MQpHZHs+NlOpJ+6PaKCr2NiUapfjNOa
	AFGbreVEdqaxMYWwpD/kXaeKBSvOABWxOEJWH1USbgCW5T1IkG48xCqf1U0dblrt4i9aJDIBWxitu
	u1cNtvNyfzBlKSJfSPxbq3VAZo9mZcsw02uMMjnImu3VHk164iWrrmryizhJWvKRGjlaABYW9MLh0
	bxhL7KVG7vqwi7HFdriw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59YM-0007pa-Qf; Fri, 21 Feb 2020 14:45:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59YB-0007Of-HU
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:45:08 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so2419918ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D7H0nLZLfPLMvCph5hwyr9duK+xVs3IbYudoH06c9do=;
 b=ZmmmuWIiC4m3STzQoVx5OWjfevcGXgj2dE2igO0Gwa28aZUoG6DI+0TmuYyHUEbKzu
 8Q0GomIcIIjcm+iWqGbPQznhzi51NLQkazdcpPB22p5nEFzNklowRDH1tz98tvinRyus
 JVJctZIvlJKR2qmTy19dI7mojx6df5HmJP2I1xiGALmaOWqG9/NXYRnkKNzlb+/eNaFS
 aJAWXlnWIk2/P+Yl+ejHtRvnAXRAWQjE2DSv3WG8sqjHHXbOq8cUH9Huyux8lvHqOl35
 stzBHXSqZFzKSVtnAvkIrQI8XKHEPQUBEeWlg5dGdsBb5H1IzhSyFkSgI2gmPTo82n+9
 EVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D7H0nLZLfPLMvCph5hwyr9duK+xVs3IbYudoH06c9do=;
 b=JQOZHZiPoaaIRr22V/9xrHjXWmBXXYQ7VSVcDvw/yOFTCJnLEWPwRlMJTKXUU9l+wu
 G4ly3usmMKGmhM0aGw4L2APkTwFWIPgtl5EsSWaidF/qtWVEJXZqvbFb1Ok9SYJYPxCG
 f05nWgQUgWgRR9/stYycl4n7qTItBNR+E++ONBbVCIO/GmdYYISgnb+7TKaZkMtEzfo2
 4+IT/ZT4e8XqbSSc+NjamlHn9fcApqV7CVWCg6K9KHqfo5cCifmXn8ZL5Y3bjiIukZBh
 EirBMwrV28uDZUhskx/NpoSjsymN02LHkuCSZG35RWxf542cbheC8/KgR2Oo+Rx1dYTp
 Wgxw==
X-Gm-Message-State: APjAAAVcIMfFKnx4sca5opl81TXKs8/7SXAwyxnosn7nnoQOSuOv3JEj
 fWTCvkkXutj7FBZlo59cPPomXgwzWpEF9d/nH7PFQg==
X-Google-Smtp-Source: APXvYqyH1op228/uT3a0GVKtys5dZFCvQZ6VFBF+qI9pOeMLciTXqxLF8hf209U+UX9YSS8Q0rsF52Fv3M5LlI7ewKY=
X-Received: by 2002:a2e:9013:: with SMTP id h19mr23015684ljg.223.1582296306067; 
 Fri, 21 Feb 2020 06:45:06 -0800 (PST)
MIME-Version: 1.0
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
 <1582012300-30260-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582012300-30260-3-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:44:55 +0100
Message-ID: <CACRpkdaCC5-GWKyeoa8yS9JgHRvW_+AdqTYxy902TC48pMzXdg@mail.gmail.com>
Subject: Re: [PATCH V4 3/4] dt-bindings: pinctrl: Convert i.MX8MN to
 json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_064507_608860_529BD704 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:57 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> Convert the i.MX8MN pinctrl binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
>         - use uint32-matrix instead of uint32-array for fsl,pins.

Patch applied with Rob's Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
