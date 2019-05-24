Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4AA2976D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1OfUZBmMmvRC5uH0BoBxSQ7fGawesDQOOpv3mY7yRw=; b=YBAnKuiQLuN+PZ
	Sr8gPTKJFZ8a4OjQXE3cN0xoBooWr5Zvg0+9IgLB1pU3+Jht++gs1BNLnHS2rHkjEaK/ykWUzw5/c
	aPsRaLJZxeHKMixy6OKVu6CwRH3MAFWOfGdQ3NvlIeonEJsEgjzwBtuofjKqUscmlRlRUc4g73emS
	JvQRNwHqMVxBcntxbiiyBiXA1s/1Ld6u3b9cZ9bXu1QiOEtUnKglPVvMZwrDNJVhYldvV6w+XOpEb
	lboWvyb1MxMGyX+LcuAw0IxsdbXIXCY/NcHAIL8+VmtcUIo3pcND+yjs+C2uq/65iSQXDuYD4HtZD
	kCusKOuJesGPs+Ghhpgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8YB-0007jv-95; Fri, 24 May 2019 11:39:51 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Y4-0007jN-DU
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:39:45 +0000
Received: by mail-lf1-x144.google.com with SMTP id y13so6874099lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 04:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nw+POxuhjOTYtQGqsyL5bjoYOB/aPj9wvUKgQQiws2g=;
 b=aSJXq0vshoZfdpD7APSg/y2msxZ7hmuQ/3IG61oqn3lb25YTcDYaR/Ch9LsaZVLkNI
 tsjggAF53zFVHqcg4TyvWOG6PxI4DK3lvoaYFBQ0YyINy1AI+hMnklmoV8IN34juFbBp
 V2Fk+YAcJtkVKCtnPXSkyiRWAsB5EtK0TRSYFGZHYEr4VN4BnMfrCdR/goetTFWFotTI
 hoho1HBtwHsWg869aZZ/7GYsEVNtnt8sP2yedOHb4MoIr7dbryNBHZY9l0eTQOS0/TNf
 9N6lzlEgo3Rc2vpuPOYbd+8bTnsnQimZh0ymYy4+mVTGMKP1TFxwhNvRgEsqqnxAN1OF
 TlpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nw+POxuhjOTYtQGqsyL5bjoYOB/aPj9wvUKgQQiws2g=;
 b=quMgsYSYn+YpaRsSBq5VYcWtk4hAtCcU0JHySWiC9PSw9lF9vwa7tiEJhxIQQ953X/
 3qA/7zDoJdYHy3uaZBBtMfEXQjZNZ/XP5JWVqIE6JMAKeEzjiix1YlheTI+JFjj34ZBD
 Ct7J522tO1bhnhNqNfnJywaEh2aPDi/HNmrdx3He7b4IppGOOcFIpTf3gxsyJhcIJVjr
 a9kXfwpKK+SxteTfoYUrAFJjQV7r3qKyPmovvCIvdcJOJh0A8VfchdKhsm0G7icP1Rie
 kuu5rHLeDztKZFpwMNHIlr/13LgFA8UViZXeTPDN/wD+dh45R+g1usxj6tWvIsBHCrar
 6HEA==
X-Gm-Message-State: APjAAAXVKSzl53IluOfF+Uz0jpPVzpeDhVxdzOgLsK5xyGosg+Ig5UOc
 S6bOYP77o9+1m1ETHvpIfPAJeO4ToxdcqjQvId3Zhg==
X-Google-Smtp-Source: APXvYqy63wjVa+ai/FqWlFI9mg2nO3cUq8c4ueKPOiEFHwFicAI6R4MrXweOnXhthzdjjDkjD3IR/5eNp1n8GTFbd6s=
X-Received: by 2002:ac2:5935:: with SMTP id v21mr9221532lfi.117.1558697982150; 
 Fri, 24 May 2019 04:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190514085316.17883-1-geert+renesas@glider.be>
In-Reply-To: <20190514085316.17883-1-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 13:39:30 +0200
Message-ID: <CACRpkdZbv+Xr4_1EZ=Zmry_3coGP+AaWgM8F8jaJmvH5vrFHTw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm-boards: Update pointer to ARM CPU
 bindings
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_043944_477779_0EC65431 
X-CRM114-Status: UNSURE (   8.25  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 10:53 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> The ARM CPU DT bindings were converted from plain text to YAML, but not
> all referrers were updated.
>
> Fixes: 672951cbd1b70a9e ("dt-bindings: arm: Convert cpu binding to json-schema")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
