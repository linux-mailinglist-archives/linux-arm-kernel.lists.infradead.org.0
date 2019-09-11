Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4942CAFA1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PchffW9DxxAO3eu3KH+E09z4HJ99E5OXAPZNMuHe63s=; b=mPcqvsVN9HABZT
	EXp66q19S1eQqf9ZVUopF3lZuBOhWSyV6AnZHnvT2fC8tnrOHHzDSwoAfiUN6/zXeYaKYuOlMrqSJ
	BW43yfEFQK7E/cRJmod2CGuqj/HVd0L/zMra8WvlgJwJ73hulnrBcVxoPYx+iBICh0nkEpJu3oXHe
	A8CUmVMFs6XPLfUCwFghCqoDEw/6DWvlhwOLZIzTdn7FGywkUeDJKt3VxyvudE9dLaTVPIxEvgM2S
	5aaURcF/zSCRKvY7geZjB1PV2Nv7WEjNPhhpiwFLOI4JQLEROisXq7XiUlHwyihuGFeb3PSX4BX68
	pU11Zq/asfHOGkiHOq+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zdV-00082F-J7; Wed, 11 Sep 2019 10:14:05 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zdH-000819-1o
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:13:52 +0000
Received: by mail-lj1-x244.google.com with SMTP id q22so14845757ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 03:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aCnVGzJ1aayFY2KVyD1Mv7oUSY3ckiY/y1eytoodkhs=;
 b=IsmloQ3qh+w0RxxWI9INZ9WRb+/A5095NFWDlOU0ojKcniCg3x8EawwhTpdwT1nI3v
 LWk8BbA4ERR32ph5dS97WZauymFdmjDcgntluwX6FCCKLbzZdAqN7tjZru61pYKlNRSV
 QYyHm/3HKhdeo+cTZaEaE87uLdzYHPpP3PD8Kid71nN1CyD+Me+ORjfm5oWjxJQ+zwlL
 y1TUbT5IxbD0E4ySpZNyKclMiNdDEVSz4nNLYlirjrjnYQNE2KKMLQsl62ayYl2m74Ju
 ATAllJQxj3IB0o1IYMuC84V5aUBxTRhsNK++jZHUBqWMNK/OxiN931IpoTJv/NAb47f3
 hIcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aCnVGzJ1aayFY2KVyD1Mv7oUSY3ckiY/y1eytoodkhs=;
 b=kMWsz3zl5vDOnHh+Xa+JbdXabaT1nICftRFtJFdQSp5rWo+rAXmqEAnsAWFh+r6iI/
 nl848biai7ptMebjf5nbz7PfTAwOJCLR+eP1h4jwqUKuPyWKlzNaqfXNyXn1CT2zH7KG
 8i+v9R3xo2Jg4iqfS7S7AZz7ho/bcvhw0Zc38Ui0+F8bR6FCSU0wiHZnp5H+s46rYSdM
 /dY0iuVJ1svHnf+PNlzxMs1kq0DZIDw0tLH9yKiuy5vhgfmq0ZQxrErVrClHZcRYOP5x
 GMEf9JQxM1qjzQ/wrWfj5KZpxPjGaComJQDPRlG5vVw8hlZ4h8vRSHcFtpyCjJsM9pjC
 Xdbw==
X-Gm-Message-State: APjAAAXBTivRanaqPlM/PPhfsnRsx+PsBnO3kwsTnEnXcaqnHUweSkVB
 +xLvut/akxaPX/D9deY1ybQ2AiJfE2owG7FE7O2yag==
X-Google-Smtp-Source: APXvYqwuhpQk3V/zZTpDpM2cpbb8dbSgHN/jIKUQd/PGzomP3IPupkj6DtiQG9j+nks1pOHj0dx1JhhwudEsWNFOZbI=
X-Received: by 2002:a2e:654a:: with SMTP id z71mr22911168ljb.37.1568196829591; 
 Wed, 11 Sep 2019 03:13:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190906063737.15428-1-rashmica.g@gmail.com>
In-Reply-To: <20190906063737.15428-1-rashmica.g@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 11:13:38 +0100
Message-ID: <CACRpkdbmusuLNfzcxxnYk=Up7UT3GMdLU4R+WnS86oTV9PNcWw@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] gpio: Add in ast2600 details to Aspeed driver
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_031351_093781_92C77324 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 7:37 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:

> The ast2600 is a new generation of SoC from ASPEED. Similarly to the
> ast2400 and ast2500, it has a GPIO controller for it's 3.3V GPIO pins.
> Additionally, it has a GPIO controller for 1.8V GPIO pins.
>
> As the register names for both controllers are the same and the 36 1.8V
> GPIOs and the first 36 of the 3.3V GPIOs are all bidirectional, we can
> use the same configuration struct and use the ngpio property to
> differentiate between the two sets of GPIOs.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
