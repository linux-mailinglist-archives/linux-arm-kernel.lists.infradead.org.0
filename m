Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B517B3976A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 23:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eu0xTruKGs7hFcA5YNdfhJRgolsVACq9MCOKCWDNxmE=; b=sdhJDqXZrywVVh
	e0WDk3iqXjCzi2D2rvSHH83tyTMEnMI+tjP+1bShLzXWZ/Qczq2n9rPsxWVE1rllFjRbXRkwZLeXA
	OuporFVw1VM9mhLrB1A+RhLyE0VUIx3EoabxtCDKJ/bnHcWTp31RYUNzyxeGJM6eWDjJ+stsJxVij
	I/XeH5Hbu2wROhzNGHcEfNpGGT6vQMUK87/VM27KRrW0xiQIpjxbZeMcRHVZbf1u2OnPoIwss93Kl
	cDeJAqo/I2vU92fmrKK+X4UZPJw+607WCnhosS8ZxA0dOWmS3VUjjQ9U+x/4uBaMZtW/EoY8neXIG
	1OhU3y6tcrvHZXLlYUCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZM8s-0000Y6-JZ; Fri, 07 Jun 2019 21:11:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZM8i-0000XB-FF
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 21:11:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id y198so2642535lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 14:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GPc4uqgBsBwvM/V5yLC3GgSCS1qEGuH2AgCesOfjZVs=;
 b=Xj+2CqjydRXkCSQdyY7hh8PknmG976aSmUGB6M0CXKwV68YBSlt7lEEc+0Q42HLwWz
 Kra3lWvzcZx8eZY4JLM9mGD+VkNWxtwDyVXjTFTgP11NG2vkLXXXisA4gdEpta8GgDB2
 yxGporWlOf2R6G+iU1qVE/dS2KcDdPsOgzlWsQScxqbH7f/eMvtehgLWrh/1s1mMzjg1
 BK/0CrHmik6HkETFYVX4kcOMMJv106KemH4Z0D8fzGvw9Y3KVrowv8NuJWMIEnm7Eorb
 QD7hXFsgXb7V41En3COZDajj/mMY4wVVGLQ6hrmrSsj80bmLgb4VTYAq4+CJUHOuV9ia
 B5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GPc4uqgBsBwvM/V5yLC3GgSCS1qEGuH2AgCesOfjZVs=;
 b=HrO3w0HD+8wdRa5rui9/iSKtfgFrheV5Lx2rrKC1XExA3KU2t6Mieb8MW8TPyaztQs
 9nDeIDRAGquDPTCE/HM7eySQXGdJhPV1BzWYHHNrzF1hOIygPEWrvB+p6ne0sdYY1K09
 rBuZhB6ySM442qU0gB0jWDoopBo+MGrFcWJKTd+xaMRicLMp+xR0cvuSJtsAOU6/UiWJ
 aQaa0cD2cXnm5sqtgttXDRwa2n60QXQzJq9LWD1clLWfRxOgNSPjKGUjjvBF5pRh1Vpr
 9IiOsp/MlxUjFSSXrKBE2VGBdG7ha1BFOgzQHiqvWRQp4flXVok3aoXIcM65YutEA8hP
 Gd1Q==
X-Gm-Message-State: APjAAAUYifThKPmWU8KW1Nx4IOhZe/Epbqtp6P+UjFAc+GeTVf+RqH/M
 4MAkweHhRYD0EzYAANRxRQ/qPBTZNFkNlOyj9XRINw==
X-Google-Smtp-Source: APXvYqwLMWoxXQVxSrAqsjepyHJHrlxKQondxww0aj1IMUZLcbBmaGIZOjMLnDuUtqzxjWJr+xi7qFr48fEF7tdb+eo=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr26200028lfu.141.1559941866676; 
 Fri, 07 Jun 2019 14:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190603010455.17060-1-masneyb@onstation.org>
In-Reply-To: <20190603010455.17060-1-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 Jun 2019 23:10:58 +0200
Message-ID: <CACRpkdYP2C1cUN9w9uguSbXV3vkCDrm3o84qNbpTiaD9TcdMog@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: qcom: msm8974-hammerhead: add touchscreen
 support
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_141108_523636_5FF73077 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonathan Marek <jonathan@marek.ca>, MSM <linux-arm-msm@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, absahu@codeaurora.org,
 Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 frank.rowand@sony.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 3:05 AM Brian Masney <masneyb@onstation.org> wrote:

> From: Jonathan Marek <jonathan@marek.ca>
>
> Add support for the Synaptics RMI4 touchscreen that is found on the
> Nexus 5.
>
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
