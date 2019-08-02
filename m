Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2644C80299
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+t49LeAy83Uw+jqF4ez1NGaI+B3hAakD1MX4P74Ubs=; b=mHicC3u4D8Opw4
	TflKyfLLZ/Ix1aMyit270AG/ZhROKqd7DQ6w/CseE2A6Yr1tBw8PCTiathI5vrNXglk1BpSuxD932
	wfxUYCRDSXgq8NzJwKijjVInlu/Znh2ddyBb6/fQnmSVrxQWvqMkZT4ZrtemKsEcIZZNPjm5A/StB
	9juA6vzTtRBtLuCnBEyEK/+XEcNTcUuaVQpzbpgQQ9chMMK/kytLR75WXIkaizBB6YcvlILGtls0J
	rZGtQpZVKewapNM+sJf6CQw3zKwODUAF7UwTTAVFQgza9sk32mfjyCOmEzL1B9MR7n5AgDP469nI8
	LyQSMP/cLexEfQjCelGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htfmq-0006za-Bl; Fri, 02 Aug 2019 22:12:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htfmf-0006yO-0q
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:12:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so74186115ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+UTa4hS+EXj/U99uNyyPqk1MVnPhgyi57dH76aybmKQ=;
 b=pXLWU6o2Ovk3U6DVFUVW1p6qkCDFE57igqoa0u3mCDqZuS1rTVmHHdUx2BQtAeoW+R
 h4B1nsDvEqgJyw0cwq3REWuMekXDDsQEh/7qmi+SWxBRCiY7Asw0famd/I8G9j55bI6B
 J0VZWYJvtkxZxBKsQ9CJfoeDlpmPoUz1z1ej0VcQaFTT+0qfhYTyIx5cjt0ROnimczcb
 uTzFA86ixpCev86ZJtqJD7eUARjkKM67WFn5fXuoBD7a19TsaZ31ZgEi3S78yR3wIzhg
 UdbFAedgnK2UFAg1Fpie7nBoHdgtJfEKJ5/Fa3M/pom86bBOGdg3e1dbKH2xvUSaLRcS
 wGKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+UTa4hS+EXj/U99uNyyPqk1MVnPhgyi57dH76aybmKQ=;
 b=VLgXtwV78UKmd4O9a2Hktj7B9ZF6tUIhSCqiBS3UNklvwPx+hPHqpTaSFhj8u5CZ0I
 BgKP2vW/5YPwL1u8O5S0MX2/i+XMUJv+nWT4S8yL7KFd9BYsWyx4Q0fTA1KHxOLkG94c
 oc7woQO21TPnmamuugz53fxrIR7TmWbjoWrqQkEZLfycLUEZKZQTwbgiLUZRNud1uS8h
 1OnbPP0cq6lYPiPre2bZSj7C/YojfXRpMsFWZCB6JB3Qdcg7ykx/lGDEnpsLjG9Fgwvn
 sToSqgut3rmlyoGSSO4CPE3xz03d6nrn5m8XxYMtJ0W7PLAPid9LdBuzqNCWZSp/pzyR
 4w2w==
X-Gm-Message-State: APjAAAXp4RzBgMHeECLMbWygijPq5vqeO7p5OzsOvBnE1kgfh4baDAGS
 ZTEEx6Dan2uZgy8Cz3RGwSxubS7VbBNXaHMMEsdY6A==
X-Google-Smtp-Source: APXvYqzZIyjd/WByfLX30s1F5wa0IgLODONWYyAQiHrY+OAceXxnYS3eMSKW4bw8sQdw9FSkXwvWHhJ6Bu8mzglQucM=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr23942436ljc.28.1564783938269; 
 Fri, 02 Aug 2019 15:12:18 -0700 (PDT)
MIME-Version: 1.0
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 00:12:05 +0200
Message-ID: <CACRpkdZeidAcHS9f1PFAQ46QGwkKrC7pv8mtUXE_0aHRWNHFiQ@mail.gmail.com>
Subject: Re: [PATCH RFC 14/18] HACK: pinctrl: bcm2835: Implement legacy pull
 for BCM7211
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_151221_061715_1D03FE17 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 11:16 PM Stefan Wahren <wahrenst@gmx.net> wrote:

> This temporay hack is necessary to make the BCM2838/7211 work with the legacy
> pull configuration. The better approach is to convert all affected DTS files
> to the generic bias control.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

I don't understand this: why do you even need to make a *new* SoC work
with *legacy* bias control? Just use the generic pin configs and be happy.

Or did someone produce a lot of DTS file using the "hack" seen in earlier
patches that you would now have to fix? (Sigh.) That is why they should
discuss with community first I guess.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
