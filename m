Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DD0D8FB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gJqaB47NrE+PTdRfNXgpM7e5snoAh7x6jnJKfifTP0=; b=jylj1FSzwCW06Z
	oEbxd6qL8DqYrxQ5keKBwv9RXF9UMGWCONEOjDLWqxQpnBRkC036lJsQPCkSmRNE251CgDfx88AkW
	MhP4PUnIydPifOuRQN1lMC8X2tN9kGoMeRNFenXJf5wQ+QAJUswWNCyRtNbqs2gG9JKoCVrRpeJWP
	XDbPsdQg8gTWKwNcGSXqMIHzIZyaFpjp+GrQOLazPv68XvuJ86gtEv8An46H4BAabKc9wshnRgOHp
	GpTJpBqWaD+pIssz2xdO8F1wWaHXlhx16kjjrqIwjlq9B3/nrC8Vm3DEGvKfrcyf6bdojpjMgTr+A
	3IEmdJb9CgeoLHdPkPtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKheK-0001hz-2I; Wed, 16 Oct 2019 11:39:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhe9-0001hT-C0
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:39:18 +0000
Received: by mail-lf1-x143.google.com with SMTP id u3so17181797lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 04:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U44zrrUEGPIKyeOF3bZO4ezT9IQ+ohS6tJrNxnkfoIw=;
 b=cDtS4Ct8KuWqEQHwFav9PV5/jOHM+PFzylmEbTUwCHv8M5H22ez/ZvgXU/AlP81CIn
 zUg+2LXILvxP4B4af9Kxb2/A2cnMT4tmyYdBWfqseP7P4MYnum45g04lADPpkCG69UnW
 vVA8/Qv0SaxwIKNR7jbBx3KlHfXludJgao831emYBXLIV8pjFPNqAnlJR/ZTIiewQl+Q
 owRk7DdyytF3GocIiBNMbCCbV4/lySf8+Vw2fA9MPyUxsbRyTQu6J/8HzTSPD7gGvkIJ
 RAri2J/k2MjTmbHWeksU8eTZLkYqYQvybVdg29MIySSnluDQq8VkQSOzLvpC47pOQgTM
 cn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U44zrrUEGPIKyeOF3bZO4ezT9IQ+ohS6tJrNxnkfoIw=;
 b=bPgGrPt83klxLXhtDmozHnC+qDl846P5vCJDGc/cax8tQxpF77LGq6HN+xkufyOHli
 UU12qxydJfWM4t/6pPzAzM+toMmoWSIkcyzxpkoq0Efh4Pj11w521bCTwq9o7UDqCqZN
 Ri6wA9rooGwejv1xIg/NFTMiLX5tgC4qhZgODcA7fKuJQF/aVkyiuD9yQ84JL9VoeJBa
 W6KZw687dL/VRAPpsOmxbECykDWLP6izQceVCsGM3KcC7665fd/oaaScGiNJsqBqS4hr
 uQULKiBmoD3dpqek9AHuqoefH+O9GBifYqOScMjcCOcpARHH3ES8Iy7SjPJFHOVV4PvN
 UIqg==
X-Gm-Message-State: APjAAAXUziLL9hzPJdaw42FlYZyXUrafgJ6t4WRXcvTKv1QrCIDP+qRT
 5Lm5vkG1Vht1czH6tl127yX+9vJKXxSIy2ZB8qI6Iw==
X-Google-Smtp-Source: APXvYqzfCYDzmJNrYkCLjNO3+528qx9sXazaTJ4hMTfKdtkfJD7qb/QPqfw0WxRQrluNmVoZn4BGeuPjiL8sr+GDC28=
X-Received: by 2002:a19:22c4:: with SMTP id i187mr5079447lfi.152.1571225955627; 
 Wed, 16 Oct 2019 04:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191009091606.17283-1-amelie.delaunay@st.com>
In-Reply-To: <20191009091606.17283-1-amelie.delaunay@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 13:39:04 +0200
Message-ID: <CACRpkdYGAAU5nrMgobQNo_CZyAHdee5owGqTPYcy6D8DYt_Xjw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] pinctrl: stmfx: add irq_request/release_resources
 callbacks
To: Amelie Delaunay <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_043917_410705_2D7D4887 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 11:16 AM Amelie Delaunay <amelie.delaunay@st.com> wrote:

> When an STMFX IO is used as interrupt through the interrupt-controller
> binding, the STMFX driver should configure this IO as input. Default
> value of STMFX IO direction is input, but if the IO is used as output
> before the interrupt use, it will not work without these callbacks.
>
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
> ---
> Changes in V2:
> - use gpiochip_reqres_irq and gpiochip_relres_irq instead of calling
> explicitely the lock/unlock.

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
