Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5F79A7D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 08:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyQUgUvHmJX4llRru6LJPNvh3d+fsucahaLfEXQMq3M=; b=c5trVveDpk4K/f
	EMkoXfaR4779ZN2OQGz2srCiznZY0qRlirE7K/rR/qQvSczw7F6kQxYW68YuOaYUg1ZWqVkhq+ijk
	I+dnC6MhN9LVpCtTPgsGH/uU1tRsrPOjhYGWkOweA81fweiPhYYBHqKa/JQDB6iAdlzTkyrvkNfuS
	9rU4jtlOSOHNZUmYR/FZEkk54hE8J2oVzO9DpUIVBFo7EsH9E92TSSVDNDbZAZNBh2o6153j4/3VD
	1odkx/TFcU9/8s525DD1XSYtUqCyazw1anyCbn06OgKEEKLpsV4+b+NLZATSvOsfvT45dzvXDz5Zo
	8t90ZZdJO8gvzGuUnB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13RD-0004lQ-8Q; Fri, 23 Aug 2019 06:52:43 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13Qn-0004gt-KW
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 06:52:19 +0000
Received: by mail-lj1-x242.google.com with SMTP id h15so7825659ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 23:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G5vut+/7GfWn6npImvF9Rc3EcWl6Bwqxpc3Tm/7byaQ=;
 b=MVIXR6k8i6ZWuPASEFHHR9F0nPCzK0eVjc8PYz7FptLy2OJujuacqW6lgWGhwQySFz
 3QAySOWoE9nAwQwl1xLEODlrOsAyBMu2u04vibbBBVpvxgU2d/d9lFgSf123gf2E114D
 /jPW1MjyPfCGwgmewUy7qWtuRuFl0ZdoBgJUXWuNSSUvkanykJHAMib9ZE1FHuoQnZgx
 XzaapAMFiJGaBP/N7hmC43ow43jjVG9Li0erAVdh6tyQNjy9HmQDLOQfs/eqEiCTGeze
 cBBi02p/e6U/e0HvajIHRSQG3k6yQHhDjihSPwrKZVq8gfHYtJswFQUJzcr833qCT5/D
 N/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G5vut+/7GfWn6npImvF9Rc3EcWl6Bwqxpc3Tm/7byaQ=;
 b=GfzYwr9uM9z1Tb1CXLOEZkRAi9y7P9wMIk4PLQiqnNEQkPua/y0ANYSXdn/9OE6R5N
 U9VX34zNMZUSTO2XRXiTW4de/NPocFHaFTLImWvn17Q7M0ddEkKxUe354JhiCIWCo8wt
 Uym/C8afW/5M0K6r+BxG++2RFwJ4WH7l2JfMJpVRiKnA3z1njlSOX0VUU6+k4qBIXujG
 v5cDX0ZFxgem4728qEfqCdyCkYUQXrbMp1w5eMMmmECTuYSbT27vBX/KzDENCzJ0oslq
 OmJ4LpXF3acYYfmKriPZYqbTjTNGrDvQAPU2lBd3J2Yq+X0d7zBHps3N4Ebz5adNKztK
 NixA==
X-Gm-Message-State: APjAAAUnDiTEV3Vl1sutsXktTxl0fa6PcVi1YH7F+PksqopIinVE80fX
 Jcp5DhqQCG7Lta6ilDcO+tObQAQakjeCJjjkXEo4Ug==
X-Google-Smtp-Source: APXvYqyEKzwPdx0ZjJjocJJunKwmjsRZdIowtZKK6Batd8JU0Y56aba6StNeDVmOZui0Y27K+B6WJCN6um5Z3JBIC5I=
X-Received: by 2002:a2e:80da:: with SMTP id r26mr1814316ljg.62.1566543135677; 
 Thu, 22 Aug 2019 23:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <1565707585-5359-1-git-send-email-jcrouse@codeaurora.org>
 <1565707585-5359-2-git-send-email-jcrouse@codeaurora.org>
In-Reply-To: <1565707585-5359-2-git-send-email-jcrouse@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 08:52:04 +0200
Message-ID: <CACRpkdbtPo9dr7E2hZ4=fEWTXappWTaypKJyd9M2jz0tYu7HXw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: Add DRM_MSM to defconfigs with ARCH_QCOM
To: Jordan Crouse <jcrouse@codeaurora.org>, Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_235217_724223_FD073ACF 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Anson Huang <Anson.Huang@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Brian Masney <masneyb@onstation.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 MSM <linux-arm-msm@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Frank Rowand <frank.rowand@sony.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 4:46 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:

> Now that CONFIG_DRM_MSM is no longer default 'y' add it as a module to all
> ARCH_QCOM enabled defconfigs to restore the previous expected build
> behavior.
>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose Andy will pick this up?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
