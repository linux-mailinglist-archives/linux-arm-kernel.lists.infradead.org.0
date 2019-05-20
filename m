Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DB423FE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pb96CzcbnYJt+gQ2fLx1ycMY0kdnUmEVR9uByIMn384=; b=By832mouuYiwU/
	3K6bPB34QGWAi4ZV0YmJjAOT1t2yD9APFTQiholjny9hZXSrVLGovaKazO93n5kcZl3LHz7kbio/n
	ae3TILECDDYIlGnRbVR49UR+zglOIURpIqzrJX9Td611seauvZclCSqMpDyaUWHiax/NExZrPYUJh
	P7ImGjpOzK7pTaJ4l4HYWPvrXXN95Xzc8QPwGI6+RDz9Q5ra2kIQsL8RR0DbS+XL8ifKc0hmvUqtT
	UeSwY+v6kmDoSa8TjyISk87BRNsinhWzfBxjSglPIKmmybB+21Pvv8q1qVcBf3m5/S1evahhRG7l+
	eXvSjY0ytF3hTR+UbdiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmeI-0004YX-Oa; Mon, 20 May 2019 18:04:34 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSme9-0004X8-9p; Mon, 20 May 2019 18:04:26 +0000
Received: by mail-ot1-x343.google.com with SMTP id j49so13785053otc.13;
 Mon, 20 May 2019 11:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sa417ZNxztSzV34gBCNtKBCrm39utqje6hlLc0wW990=;
 b=fjPy0z87voFVjd4LRHXwBJv1E0lIJRbAa1BuCPTXEjgF4pASSXLtA1JnLIa6eMgspy
 Ocql0kvac07s40F0Odx66ZcpIy9vBxjYN6pH7/uiDEeVx98GkP4r5bWnFK6IYqUOSLMc
 Lc7zPn52zxg08H03xTsUOiTDyHFBcC3lqW2dzKy0EHRppHFN02bQa9gHEu6LkdZQjqlV
 AuIBvwliPWNcJaiAECWKo4ihWOT/5a6AAqIERiROQF0YkthY89TlV+9l0v5uOwN95BU1
 mKFOAFlzz2o0vxtj06zhgCdukmvgI7Phr5jC6PZL1x7XOcqwdJnPd+dxH/jBYKa82CJQ
 WggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sa417ZNxztSzV34gBCNtKBCrm39utqje6hlLc0wW990=;
 b=WwuVzWJGXkWBCkAe4qSNWIvlhEY0cNcxKAVY1n1Wd/DtoBMOoxt79JIpc5757CwOGt
 4jXPr7pe4Tr+Q+g70nUbgcLlZUZ2O0UzFd3Wo0/UOGvA9MVZzmaQVzq1rOpJvn+K4WtV
 CEvYFO9b8ToFr6qwbOeFb2FIvWFddXbJ3ZfYYqi1gCoxrv3BIPDAoV4SGEXlDsj16pnd
 +JxhjeCDO4AUHjmusd/IStEUGsmXSyLV2vT8gIdOIvS0HKiQZV+0URDq6rYr/Ui4Y42R
 LetrpPIDSjtBZTflJuzBSzZoaCeppHE8oeAdgumk8F8kBM7zH3QqqHuBn+ez0wDkLnFZ
 aVJw==
X-Gm-Message-State: APjAAAV00rlygG7iQ01wHYimgl23KUl8t4+ufe4BtF2bOsh5yRdbVSpL
 M/DTq24PqCrGN6XwKoHIpOGwjK9FkLoBSYWeu16X+b8rHKU=
X-Google-Smtp-Source: APXvYqxnZAE3XgjrCLfuG5LdXQoHW0DgI+PUYOXuxiszmOJE0G57IH/zBq9juUtuCXpiHhya+YGcobYFC7w6J355qwM=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr45271608otb.42.1558375464251; 
 Mon, 20 May 2019 11:04:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143812.2801-1-narmstrong@baylibre.com>
 <20190520143812.2801-6-narmstrong@baylibre.com>
In-Reply-To: <20190520143812.2801-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 20:04:13 +0200
Message-ID: <CAFBinCCL=44M33gf4Qn5wij6XEq=WR-_ttCPB8XW1zbt_xNKvg@mail.gmail.com>
Subject: Re: [PATCH 05/10] ARM: dts: meson8: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110425_346001_010A8198 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, May 20, 2019 at 4:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm/boot/dts/meson8.dtsi | 42 +----------------------------------
>  1 file changed, 1 insertion(+), 41 deletions(-)
>
> diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
> index 7ef442462ea4..fd8d57d0a3af 100644
> --- a/arch/arm/boot/dts/meson8.dtsi
> +++ b/arch/arm/boot/dts/meson8.dtsi
> @@ -1,46 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
I believe this should be GPL-2.0+ OR MIT as explained in [0]


Martin


[0] https://patchwork.kernel.org/patch/10951479/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
