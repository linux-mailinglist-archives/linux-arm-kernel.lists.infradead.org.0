Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F14CED69A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 01:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAOb+qyzA+nJcA7qucKJzlJiAhaFW2U2JQ4mnf8DyPc=; b=tyEnOOM0GS+2Qb
	apl/q7/ybEOzn8ghUA7EfRkUI20p6S+2dDkWJ9VTb38VSRWP1rkDeB3iulRRqeXSv+vOy5BX7aBUr
	ra9uvGDAwtrqAkR79LmWjKTcbtLyfYHXR1bk9itjTHzzi1EjcRyuVNY9kBTC4XMTB2gCQt+UJAv9W
	A8v+oJMjBQQS67amQs50Qh7Tuo6jItNKgO5SneyHed279L49uWLf9DrlKiSzW+fAYWZGOXEaVZuEE
	mWxwcUhBDew58vpFKj0T7IbUJOtdGexzuGqYWS0GCbS/vk9zMrYNQ7sNLPXPfvctJ6+JgpCXEkYGb
	9zFDwt8Me0ZKkjCnE2Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQ5a-0001Ir-Lx; Mon, 04 Nov 2019 00:19:22 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQ51-0000wT-IF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 00:18:50 +0000
Received: by mail-ua1-x944.google.com with SMTP id i13so4429413uaq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 16:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+5L2eq9DWTqYID3ithkG+AoL6nhEs7tI6RGB4Dd8Zf4=;
 b=oAlES9Uid7iSYZ2y6NPfHWjyad0j5hCqs5prmtdgJ2mK997WAVlxzJG3ynZVmC7nVi
 mB54L2mfLf/Ymo2mr37VdY7P/VmPPDIkSj6dVPXoVoUbv4/bi0abmhjwnmb/FELUCiFe
 WUmE0cxKBRBV/GLK0T6OlpT++peIpQTvzfheDW+VYHwnVh2WMPfAGGv0Jll4lQ9KmdAX
 KUTaR0YLzT9+mGViBviY1QVrl63MXjbWJ1L7dXjYhxykfLjDCnezbRw37cjm6t8NlKrx
 vUEPiPlqJXQVEvz5N1BTYEZa2S6mllw04JXsrNQAwnirXTN3hH91Hd5eJcmUXVJGR71Z
 pSrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+5L2eq9DWTqYID3ithkG+AoL6nhEs7tI6RGB4Dd8Zf4=;
 b=AnCajNoD/chSoWSwcQBfWNVZkt7uIciJheK66UyYgv9/lg9fb5WoDuafraPXqgwzb/
 zeoMgkdJpk6ZoT8ZGfuTTcmwdw9if0LGs5hXaeb34q70gEIUHGKeR2XUPcDKnJMqJiDu
 vzGS97WRxPsBwTBTBLpv2/PpNaTq9FhFZXyCik7Um6EREm5JyiwqdrPKnla69zLDCglu
 Ouw2fxcLn8uCbAW2JS+wEGEGNlkMlPDgxS7RhyJO8FDZ/VE88xcjDQBx7+0MdC/BfT60
 hzBorRc1FJ4bpgtL1HlPRPBnamzNbdY2FKUKo6tHgwKbUalq679azPvfzp0av8WcIZZv
 /N+A==
X-Gm-Message-State: APjAAAWVcV6ip+jRSKCrrGOyf2j/7vNkEQuR1IAlDoqlO9bH0EGWeLyy
 McKOOdrWyGNVRGS0LoqB/ZVcXK8uzxO961ew/6/43w==
X-Google-Smtp-Source: APXvYqxaDMOhPupmDshbsu4K1ddLDJNFp+Loev7XOmTsYtFTpgq7W/3FH8VrI3bEONc6DjxIfdtklet+o4Mib1wkwhc=
X-Received: by 2002:ab0:70a9:: with SMTP id q9mr4518172ual.84.1572826722501;
 Sun, 03 Nov 2019 16:18:42 -0800 (PST)
MIME-Version: 1.0
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-2-yuehaibing@huawei.com>
In-Reply-To: <20191017122640.22976-2-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 01:18:31 +0100
Message-ID: <CACRpkdb8D_zxHfzY=+ramnNjXVsN9MMO8Q-3=iZFLS2A_ZDQuw@mail.gmail.com>
Subject: Re: [PATCH -next 01/30] pinctrl: pxa25x: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_161847_610794_DC45985F 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Neil Armstrong <narmstrong@baylibre.com>, Baruch Siach <baruch@tkos.co.il>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@axis.com, Jon Hunter <jonathanh@nvidia.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Andy Gross <agross@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Ray Jui <rjui@broadcom.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Lars Persson <lars.persson@axis.com>, linux-tegra@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-oxnas@groups.io,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 2:48 PM YueHaibing <yuehaibing@huawei.com> wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

These are too many patches changing too little.
One patch should be one technical step.

I'd say squash them all into one big patch and resend.

You can collect the ACKs you received, but don't put
too many people on CC, they will be annoyed.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
