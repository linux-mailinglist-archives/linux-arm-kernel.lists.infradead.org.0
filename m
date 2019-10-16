Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33FD9151
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HErYVtEhT/onra41jvREKwH1o5xwkYDfRzzHeIkhaeY=; b=CWcXwaPNYo5Zab
	80m9hYensvXnRJEvfYctSYtvjh8YhntxfDizABZUiWHJh/fpZK4Y3lk29o2c4Hp/eUgKP8fAfs6q8
	aMc5wNwDpHMy2QnQNwVESLMpZmqCQi8BV230DONPkxLDL0rG20Iqm4tWzNiXBUW6p35Hcqh3uyyj/
	YUyFy9KfNTKBjuXSToEnXZI/WeKH90FwM8qfgyuCA6dJRO+5AQOfJiWJb4MuPPGq4ELFxGpvzobvc
	9uSzkyCO/qovKl0xgKg8/8/AUJ+94KAjU6MlxvPhZ8c4W6Da2FSZPZq8cAQQL62Rwhl2aF6+rPXsP
	FOmLk5SAmbrbu3j6FbKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKigh-00052m-3U; Wed, 16 Oct 2019 12:45:59 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKigY-00051b-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:45:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id y144so22551301qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i4Tlr8aaqHcqUHLIi1olwgg1FH4Wnc+VjJ6hwR+CHZ4=;
 b=UKDHkw+AsWNstYEdbran6nGCcRGuySyOhWzrs1M+lF6UxheGXfo+LcAWpEEbBx+GjI
 HjCtcPXBKQn4jwJy1cZJVsUKfW7IO6g+YkpfauBjo4HyT9qSp02EWBGyi3sOIeJrqugJ
 aNGP9AwBpU3FcCHdLXdwuvd0t0yyMgPBETbTKtu2DJj+lWiGvu+3fDWYAeAUK+WOEA4H
 F8rc+vcjQUPehy7NV4y5BA6xRXQqtAm5Nw1nm8zc582Y3Dcivh6Z7Y2lxO5s11cE/WnM
 Jkct9SJXs7YpPuGDgp+lQ+hSbBaEXPMKYZarrYIGCt8VYRjlw3XqOdiH5adCuAlguYgC
 XyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i4Tlr8aaqHcqUHLIi1olwgg1FH4Wnc+VjJ6hwR+CHZ4=;
 b=bSvR28flfIp93Nh2jg0qSu308zeV6AaDq9juKFpCE9QxycqFyXEXXBgLJr6TlxrZa0
 6IVDZLU2YEqM58E3qru6BklRHbs9/CyS83DTzkcFJ4wq1UwsMcwZA5NUH1HFLMOyHLNw
 nB1dwBJ79wBgsrvWebYSE/hbhg4V2Wn4wrK0wMEO91pwuADoaBzn8Xehb1Gi3K3+mSsi
 nRTz1cH2hd+HZlNw1NLmPv9F3NGrs1APsffoIzs0YfgnH1UHwtZxRgKmSJCg+7Im5KDY
 /MD9uSbI4hmGCatCHyiWR9R3O2h9fcW5liyo0UkHLQSMb0yipvvaGaZV9JsDGjup01QA
 v18Q==
X-Gm-Message-State: APjAAAV9kP1bd2GI+lHVZJxq2xFgBDxDkFSFsuAh49pFMOemZGCGDKnB
 id4O4u9xdzbiZ3vOLkvz8zzafsxlDItDBZFimWfhRQ==
X-Google-Smtp-Source: APXvYqwOzWo5VbcvN0U8TDnN+1xwjUKgMyRheHPwsr6x9P70GL0NWL/tbYoCuW4aAJr51oKXjooJFWTyMu0zdWYL5a0=
X-Received: by 2002:a05:620a:751:: with SMTP id
 i17mr39890335qki.340.1571229949254; 
 Wed, 16 Oct 2019 05:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191015091708.7934-1-jay.xu@rock-chips.com>
 <20191015091708.7934-3-jay.xu@rock-chips.com>
In-Reply-To: <20191015091708.7934-3-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:45:38 +0200
Message-ID: <CACRpkdbtfamz4H-RNUfdSz7eAOzRMgu-QPbVAVZKtC+Lg5VP9g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: add rk3308 SoC support
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_054550_094920_F16A782E 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 11:17 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> This patch do support pinctrl for RK3308 SoCs.
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
