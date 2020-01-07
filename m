Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598F91322C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSRJKWeucJkbelvTAKTyapC+KuQy9SijAFUW8ijynKA=; b=rt7fThSraj2Qbq
	PBtajIkbBc5raA5GzaSov/v++cK+8UxyxQ4THwns8dJkoANm3hMIV3woXWS1lZ2lHpTxzw9EvJuaE
	xfSFtCzgwHziDzZAfG7eqX77/ncFt0iyRiXySNy4nOLvR82MVkjmSKd/zjr90gqJ7QKfyGqo9Q/rN
	orBSA4D6xXZgaIQK3UPFYpziAJVrG1PxrmkUh0RxMcdSchMU4/KaMIvwK+9m0erpWwypi291iSNLQ
	fs7j/B5cAgieKuAl9Bm4Nk/jqaUbVJHKFgYyLa+iyaEWAvaOZAArn34rs9yhWap31nE+gGpa8PcwU
	rwK62pQ7e/DCg88MezJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolOX-0007LS-3c; Tue, 07 Jan 2020 09:43:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolOP-0007L6-Nk
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:43:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id n12so38409014lfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 01:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I3KYUHqjbV/la2pQs13q7xW2zW1+aOUSJ/ItOMkEioA=;
 b=UrjgJBGylGsxt2O/37GXsCrU80X3acd5iK9tF8j3b+FFY6/zrEKHNEHxExKwF2XBjo
 Eutk1xAIMJpAuDwWUe66mKIU89kY/4y/G+yYX++jtMSPLmIFPhuBkhTS+cgBPwhRqObf
 EsJA7DVWNM3UW5nR1ALsyiekYnLeNaj2z9l84Sdxr88nXQ5ymB+KH1+s+APM1ihCFHka
 QCY2yelgoalwPQcc1yyFY1Jh1S3ipyxEfNoDmU3Xri6ikRV+tkGtsMZYlneuZ96P8PRi
 AEr9BYeZKPxqSoVNPIDJJnLMPVtH3suNFxg6DazjcZz79CVwmPOG1dXrZCKt9Wud0fcN
 qU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I3KYUHqjbV/la2pQs13q7xW2zW1+aOUSJ/ItOMkEioA=;
 b=PUF6gellF2QX9lqoQwLuNBtIoXCGxSDamo0vTR4tfTxQloTpeWYfiJ3qBYnjdH/lwC
 fUY47rsD+uBMdSIXnVVZaxTQIYPSexc5SMi32gE4obV0zLlenq5MJ0vtATi9O3gdzTSC
 M6BUp/5csUMcKMpnuJUp7FPlyK1xy/nNp23F+VZtBxYj4zXFT1PITCdy3++5uuAwd5oV
 XIvRhWrczQEhE1ZUwgrdGxJacL+uCAb72y2nIv+FMwBVL8IkTBS1ovsO0Uh/DqjYEXVV
 Unms49MA5rm0uEzYSr4MkE9S0pIWg7kneqgh7+ATXCQ+ELyM2NIZ9e2rjekj8h9pb6BA
 Wi0Q==
X-Gm-Message-State: APjAAAX29uVuhxn3wNZO5IMd9o+6dFcVXlNttrjsZrkOhhtO81vEIyN5
 F+skWcnaR94jBd7yYk4ZCdzOy5FJCIrt+aCUkTozSg==
X-Google-Smtp-Source: APXvYqwlnUnUD6Pz4nc1kPRcSvnFa6RimACaHIJvGNUu2qiaTC1sqx9RJ3urXdFSnyhcPkKPss4GSSAD5kvOk3IkGKI=
X-Received: by 2002:a19:8a41:: with SMTP id m62mr58874379lfd.5.1578390196075; 
 Tue, 07 Jan 2020 01:43:16 -0800 (PST)
MIME-Version: 1.0
References: <1576723865-111331-1-git-send-email-mafeng.ma@huawei.com>
In-Reply-To: <1576723865-111331-1-git-send-email-mafeng.ma@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 10:43:05 +0100
Message-ID: <CACRpkdakKeOhuOY_amLVbf61jQsMLfxRjWE_J-4Zqr2wrQGuNQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: armada-37xx: Remove unneeded semicolon
To: Ma Feng <mafeng.ma@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_014317_815698_ACC4BFDC 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 3:50 AM Ma Feng <mafeng.ma@huawei.com> wrote:

> Fixes coccicheck warning:
>
> drivers/pinctrl/mvebu/pinctrl-armada-37xx.c:736:2-3: Unneeded semicolon
> drivers/pinctrl/mvebu/pinctrl-armada-37xx.c:803:2-3: Unneeded semicolon
>
> Fixes: commit 5715092a458c ("pinctrl: armada-37xx: Add gpio support")
>        commit 2f227605394b ("pinctrl: armada-37xx: Add irqchip support")
>
> Signed-off-by: Ma Feng <mafeng.ma@huawei.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
