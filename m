Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CE71ED864
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 00:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HF2XhsisrnMUC+VxwvlR3B9uvKqIdfbsFmxj8UyL/KE=; b=oNsdpjTOrCPmP3
	0K/JUqn/0xLOfaKx4rUIZOv8Hs0MppQsDEEMdZIfa2aVs1Pq5Aedkq1d3S8OOya4O8l9yLlxIe+rA
	XbYX9s3YhSRAE5SBI6Rrr7BPxalxZmyuwzW7sKunFFzVggNuYQ7hROAty9TOA1aSuTMSlkDrznQ90
	/xTHpjpyWPkpPdL5+zZSKSY7EvUGkHDWWK+39NSoflNchRFzs7OGQCzN0g+cdVkXBUHmsPW4EUFk7
	rk4M1EMXv2uzF/Hp2OMZXyXaRGPlYYD+icazMNm1HM9WNSPB9uaSV8pkfSySQDqrYd6Z6tQnsBrvd
	RXCsohI92gRW/ZvyQJPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgbWb-0002d8-Dn; Wed, 03 Jun 2020 22:06:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgbWT-0002cD-R7
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 22:06:11 +0000
Received: by mail-lj1-x244.google.com with SMTP id c11so4773233ljn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 15:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kZqWRAwkoZGm0MT0LhnL1ITCWUWQqRFExLfdOqT2sHM=;
 b=ifeeWNzF4wAPFHd21i1T7hZ+XQ6kUW4qhTa1hOviPEAn2zLRmxrTk+PNyY6YzjnT0W
 wrZnnAVGSZDC/eVD9dmypYQTNtVP7cklzWMfI8aP1cmBXiCBALQKH6+NOZTaZgRtegxa
 Jur7UHc1fR6FnuJNg+Df8haSfvODK8uVx5mIDjKH9QZkWiSKhsEe+5K0y4f9tn1dlvBQ
 hVpSSx3uugyxrCir29UzLvNT3zb41Z2ALoA/SSslvhH5zGTlUpAuVwqZs7JdaF9+dhnl
 GbGo+7g3eL+Uxl3b6SOexC57gwx1Suz5jvxY0KLHuYBHcBLeTNtFhdDkkjcpv0pRigsT
 RpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kZqWRAwkoZGm0MT0LhnL1ITCWUWQqRFExLfdOqT2sHM=;
 b=kx00nuJUSQ2Exk80DS/NOLjjXvapzH+3xZHjaHRKLexznvStnKwwSaGsr4ZwJTLq65
 tFgBv68QNrTppPJRebjVe/hNmFaCOHdD/TXl/gNv1zmStd20BsmAmlkY9v0k+9cDfgmk
 cH0FWcRoKYh5P8haaZ8g3NHb9b88bVGsNOgxjRZmqQwioDNcV/zVIHEj2plPnYsMvnh7
 UchMio9kTa/Hdy+1Y+1PQypYjPZHb1Jyfmqnz05BXgxvWG8aWdC39OifMab747D3gOUW
 z3J2Xun+Q8VhR9PUbHB1j6XhWy/vS8ss0gnMu0IbhEz0ibmoAP928TuYCgm5awMhOPXW
 uoAg==
X-Gm-Message-State: AOAM532XRClf/edYzBjOaJBGPwY9FjRhaPM+Pp/74PF5u84tKgPGbk7l
 czXj9ChLUV3zBtIoxp38OJOidwSl7SN9eRbj9S/cxQ==
X-Google-Smtp-Source: ABdhPJxVc4P8kuV8rJARiopGCBcGT0QqtREKnWBawX5I9+sY0Q0Qd0KfCLEAs0rplFWBOdvE+GE+YbcX9BpW+DwedR8=
X-Received: by 2002:a2e:a40f:: with SMTP id p15mr665797ljn.286.1591221967893; 
 Wed, 03 Jun 2020 15:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Jun 2020 00:05:56 +0200
Message-ID: <CACRpkdax2rFLnqY2pBEjfV6GH+wCHOrc4bQ7iYZEzWo=Fmi0NA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_150609_910593_FDB85AEE 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 31, 2020 at 9:37 AM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:

> Commit 6d33ee7a0534 ("pinctrl: pxa: Use devm_pinctrl_register() for pinctrl registration")
> has turned a 'pinctrl_register()' into 'devm_pinctrl_register()' in
> 'pxa2xx_pinctrl_init()'.
> However, the corresponding 'pinctrl_unregister()' call in
> 'pxa2xx_pinctrl_exit()' has not been removed.
>
> This is not an issue, because 'pxa2xx_pinctrl_exit()' is unused.
> Remove it now to avoid some wondering in the future and save a few LoC.
>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
