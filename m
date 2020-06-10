Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7281F519C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClDEPqSVEOPxjUTev82F/UirzzcCKs+9QADpZrNwHUE=; b=boTcoIw8+vTmba
	qspZVnnbDzrZEqW/0TqIQCWFCAI9Uvr2kLpM2+711/qF7mv1z81j/P2pkSZiwL1scMv4tcgtzbF17
	WL9UdZJ8Nkpvr7lo/A1sJ+7ha1KDEAuGbQioeULzzVUvViRbPt4bLCyjrpXp/NcR0vG/qlNa69ykt
	Y91sxvMDZ9nG5uZ42Z46xqQA3q/jv6S4vaYZ1Y4VEnv+3UQMstnzpebMjFCRyHjIZh7cDcyLYjmTj
	a1HYPZ9oxspifSItX51xcvN6qcNz/22r36O64KWxyuUh0Uf5yM53DbUPocYd9ZFoZGpQ5DJLnC53z
	j4svShCuLDKQaWrP92Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixS2-0008KI-VC; Wed, 10 Jun 2020 09:55:18 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixRj-0008Eo-4t
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:55:00 +0000
Received: by mail-lj1-x231.google.com with SMTP id 9so1690628ljv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x3zJYnC4xPTLUvpdLo3hJwVKdm6pQi65dX2AKRAnoeU=;
 b=bvYAdsPRtcgtKGb3QnS8DYfgeu9iZZ+3d2bED2t8THtIt6RXgj3rz6bJ0WI05t7K47
 +S2m2gtlLbauUSYPZl432zrDFRlIBRN2mPTRZgZDiXnJNOSYx4dZAXcyf2SSaaUokmrx
 qVB2HZbK17hqs4ANJ7RnqHLEaM7R175Avt5uOuhEsndixOsScfNf8E6yth0csDjL4++i
 11C+CaDkudPtzHu2RUUIqkccZzBAv+hx+fUpQTfFTIjk8GRHt2BknPV2aPnw55VrtjKi
 BxJJMY/+jFPOQCFmUxcecRWR1wsGxP/jiYvWMPeMx3abSq8ULRS6glsS4+oC4Nrlsum/
 9Yzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x3zJYnC4xPTLUvpdLo3hJwVKdm6pQi65dX2AKRAnoeU=;
 b=SY3/Lr90ymLvBVUzOBsMZsWTFoq3X2Xs+dWFq4N9w3rm2hwnQmZEo2oCXxpeTJkBoc
 ltpZs88uwMPbDIhoOeujuePH+OJdw/9aTvDQkTujpB7Gm4CNqskd2zQCYVkHMQyFJwGV
 g9VvfTotyYu6PJ2I1amb/1Tg/TrmCsv0/6tN3vwYUxMykXXfmSqWrYHgULXTL0Cfgc/Q
 v/sif52YddKHkAlEMK87wosweSAWuhsd45VfpGkRyUe7KpMIh203Ed7wiw2gkk5A4j/l
 gzvBwNelUtYubzzp+0Gv9ujesrf226C5uvWLwfxqJeadH1ZwV+0+GATrUD7dXFJW9gMh
 7pbQ==
X-Gm-Message-State: AOAM532OkmyttfGjTVqXox9C7JBoLrCGOpjKQw1Cabt1bupJfMKBrZn1
 Q4bh35JtU+JxEveQT9y04w207YIT27D9cFfE7iatyQ==
X-Google-Smtp-Source: ABdhPJyaZm9bWv1+tQfyTESsLtLgh1gwb2LxItCKaISMEvf2pjgPzCFpj8OL4bZ3WpufhOyscllUPZAmRJY1WJJKSVo=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr1288366ljz.104.1591782897430; 
 Wed, 10 Jun 2020 02:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-6-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-6-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 11:54:46 +0200
Message-ID: <CACRpkdabXvC2z3TEzChQb4MAOuFEZXQ_wN63mdSGTQh1YHxaHA@mail.gmail.com>
Subject: Re: [PATCHv2 5/6] ARM: sa1100: Use GPIO descriptor for gpio-charger
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_025459_191105_1A193C64 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Provide AC detect GPIO via gpiod table instead of
> legacy platform data so that legacy GPIO support
> can be removed from the driver.
>
> Due to lack of hardware this has only been compile
> tested.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
