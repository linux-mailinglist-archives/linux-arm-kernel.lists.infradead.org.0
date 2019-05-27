Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E87E2B9A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 19:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIoodxwpeGuEoKTfUFnbdd5KTeA3wofoW/gWmuCcNOw=; b=HiOgr7iLtzPRtA
	bjNdlbWh485FYOIWhC6cwyoa+BNhmC0erVnsmXQ7kRw2DSB+J4Xv7/oCcBSwCkY/w72OIuP9qY159
	YFQz+b0q6zAwx8PPmALtqHe2hH9GZ6uoMLAhCzRERCZPjltnPmRnzl2MT5mc0O5ZI95G3aoiaUVqr
	yyhA9Jt+izKQgB+voulXmvCubgGyCuUZ50qN2XhYqCAtSuIilAVkRFvdMekjHFrvphwSJqqCYvwQT
	PKqN3seW7jWhGtzgn2x28jD9C4c2BeQNLkS6Wtm92K+x50CV74xU14wCV1g4r0msj7YYfJPBCV1tr
	X0jFaw/FLf5rKYZumN+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJsc-0006AT-L8; Mon, 27 May 2019 17:57:50 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJsS-00069M-La; Mon, 27 May 2019 17:57:43 +0000
Received: by mail-oi1-x241.google.com with SMTP id q186so12430439oia.0;
 Mon, 27 May 2019 10:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hDEYY5ygEYM7eB8269ZdfC9BLmmN/DHPKYh4QFppUlg=;
 b=ToqlEVP2NUqk1yF13crV2WHETC3Rsq4ZiR2PYfd/TyWMJVA6FhZGrByCR6zCejUNzX
 H6kN3G6X15TWMGk7g5ytqjtUJDlelgsy6siA8+nqU6ejM8qsDp6RG8U+k6SQgI0QogBs
 kvVja4Yi/60/tOSkYZB/Y3SJRzQFyoHtkbEk6V9z8W6L1HWWEUL8A8i8+MnAj7PdRTk7
 klyBlz4jTut2pFPOc4O/mT2mnfPwflAZQYVx5Tcx7RP90t1YgaS3NWbfqaMemxgWisUW
 3DQhU3KWZ4LKOmQqVzvxmQDF8FcTcjxebNuN+CcE9kiBuMNLEnX1f8DBCrbYIdzJe5+C
 f80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hDEYY5ygEYM7eB8269ZdfC9BLmmN/DHPKYh4QFppUlg=;
 b=Kf/hD3JcJ0cc2aWumlpDY0YT4UHIjMDZ4Q7pYljcPJbgybrA5oxugToLbhihCG+/ZY
 z8mE8juqQOsShzvJdvXzVHoHTfelM+tl8Ku7/Hnub7IOdDTpXBR1t7wCIhIV6xfkFYfD
 LEI5Y6iP85G93dS+xwUlsMzvm9g1GaNOCXN4oYSUAYEuORwm+1Ka0zsxz1+qNKP8izuY
 PPzxtftEiJdyrdP2Fou0PH8cyrWbLmLtn7vXgyyXmOOsjCHXoNVUlSWdELlVVTzcOWWX
 XYtbOx0t8+KftzIa+tbDU8kLvNfFdGMsaPFXCEonWjKjWdV5/e1F1DCv728EA1KKeggm
 /2lQ==
X-Gm-Message-State: APjAAAVP99mkeGPK/EUvLaCZ46TGYuVjTIN6AZj1oUF8pp0pQd+70ziu
 N90YcLsRWP/N5Qh86OiasNd4Siu9cogLQfF0JyAZpyoc2t8=
X-Google-Smtp-Source: APXvYqzab+WElPiNBsDpIzidV2Ij/UyqpF0GjvkeY5qPyeOb9lXKwJVd5EfTjjin5MC7D7V4d97PzrxHd9FeOB3RKqQ=
X-Received: by 2002:aca:4341:: with SMTP id q62mr131767oia.140.1558979859769; 
 Mon, 27 May 2019 10:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
 <20190525181133.4875-9-martin.blumenstingl@googlemail.com>
 <7d169605-e117-70d4-5c66-47d2f80f4d4e@baylibre.com>
In-Reply-To: <7d169605-e117-70d4-5c66-47d2f80f4d4e@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 19:57:28 +0200
Message-ID: <CAFBinCCyVHAG3yum_ty2dWXGaScafRcNPU-bHjxaKu9kzr8xQA@mail.gmail.com>
Subject: Re: [PATCH 08/14] pwm: meson: add the per-channel register offsets
 and bits in a struct
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105742_243219_0DD1CA6C 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 27, 2019 at 2:28 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> This looks a little over-engineered, but it's correct :
my main motivation was to "not copy the 20 line switch/case statement
from meson_pwm_enable() to meson_pwm_get_state()"
I extended the idea that already existed for the "mux_reg_shifts"
array and made it work for "more than one value"

please speak up if you have another idea in mind, maybe that makes the
result even better


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
