Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A711D100
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6o9fUHzR1SKVlk47JqEY8nCxDoNnMqE8ZRnd9JseU4c=; b=G4bJZ0O65ZE3Pt
	wHWAWe7rjsFRWOI8IWcUTsdc1tCXLupm4e/Ob2VkgJAtbLRXJR2Cc1tu6JslwWNQ82adJy4/jtdeu
	s13zh8ogQgK+usKOl5nqNt4eMtYbOH0rGYJ0qIFSnXZ7Og94MeQBkxAsuteawWqo8ji+vRz7vA0kJ
	enQfnGBoqlX21mV7VckEZptTqdJeFe8HbhKR3/XlOMNV16ODPwZjhQAiO+hz6KQtnIQxEIKc90zy4
	uB1py1X6PHq94Vs6dnBVRPcpeblYY3yayqakGd2SnDzeVP/slvH2/zc7+XWQZzzn5CPPt41+ZPkzG
	6jkk1WnMyp35kwmcayag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQO3-0003Tm-K7; Thu, 12 Dec 2019 15:28:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQNq-0003Sc-IR
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:28:07 +0000
Received: by mail-lf1-x144.google.com with SMTP id n25so2028534lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 07:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a3HoIlbnDsQ+bG9LL9JaGOgzii63aNDgW55yKpCip9Q=;
 b=iKPEiMkKQgBQ4g2yPLGxQjeGhMyleGCLknPgXerp//TZbCetjQRPk0GwMRD1WJWWh+
 nrTwHEIOkBB34TYXuOi9YObv2wC3fdH8p08IfQLU9LUXhNp1ObJACUNQryh4iw/iN7/J
 oCIvUcHOAR6nY3v4xCJEPkm5FKaOWK5fGZEvnN8WVIqtXw48XWCRpddOiN/OlQ2aRqgo
 6ZhVx6Nlt4upYgtta0Yyos1/+smXER5q20OgjRzSWGBMxYavvyZjdM+H5G9HKjXJvlBE
 OBVTQb3i0yF0Ljjqvd5Rt/U8xxg8LDV0m91fNszkUwKDKlVtlWupOQ9+ZvGmKAdeg7Cp
 //Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a3HoIlbnDsQ+bG9LL9JaGOgzii63aNDgW55yKpCip9Q=;
 b=RrhtS2UN28klkRDp7cmW0tF3OMklnOitsLrRGm/4SivzySYczrfbdOXy2aEqP8F6vI
 HNIUs+99O6h1g6bCIlmLVX6KsXkfAN4G+LSR/8pK5GEz6dyAVBVaLpL9QZvVKTrbtvGa
 ND26qyjETi5KSISad/RmbajnKOAcjcs7fZnEAyhTlBPge+1O2WAV0rWaIDFaW5pcD2mS
 WdlLKw6nTYH6KbjwCPlc7vHgFjIFiqrwgNE7xZTB4P2GKdba1BQ1HwAY4NsMZ6UNKFBT
 GTpsjK4WBt2fV0zh/i0dq7+4SwgFWl04E9xWiyyyuHg87jDnzxWzA89BmV/T8TraVkLB
 a6Zg==
X-Gm-Message-State: APjAAAV2OPdNzLXE/NwWhj9MfxE/NOneJtJ5Y0dLnPa5e98+6Y5A/vUE
 5ktw5L4m5FF8JAmi0o3rVwI7mQWqWx5gCk6f/6IK5Kx5HRg=
X-Google-Smtp-Source: APXvYqxiy9bV88GGh0k1LLBojYnrA1fLF0F8FrE5iWdwSwTFvk+H0DElw5XdBSrCzUI8nlHvxA8+NcTHLRbEJpbUXLc=
X-Received: by 2002:a19:2389:: with SMTP id j131mr5789532lfj.86.1576164484490; 
 Thu, 12 Dec 2019 07:28:04 -0800 (PST)
MIME-Version: 1.0
References: <20191202050110.15340-1-andrew@aj.id.au>
In-Reply-To: <20191202050110.15340-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Dec 2019 16:27:52 +0100
Message-ID: <CACRpkdaHXYdHOtCE=_e549rP5DpzP0ayOR4nJmq055Ftiorr-A@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: aspeed-g6: Fix LPC/eSPI mux configuration
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_072806_656102_A6148D79 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 5:59 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Early revisions of the AST2600 datasheet are conflicted about the state
> of the LPC/eSPI strapping bit (SCU510[6]). Conversations with ASPEED
> determined that the reference pinmux configuration tables were in error
> and the SCU documentation contained the correct configuration. Update
> the driver to reflect the state described in the SCU documentation.
>
> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
