Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8AB13BD31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ng4CU3STo+9MaHr8s3vvnMxh2tIVGFZOfWCBX5sIbMg=; b=cxux2O3yGMfrTr
	alzhO/FU0Z+rszn+QJSuwI2lnMOi1oRdQq4j40ZSmXb/6wblLXrU3HAm7Dc3EaWJYbM74DHmuQnfG
	cbjOAJeL9t9rHJkCu5YObYAG3J1DiRqAP7/ILG1NOGhaQL4gwTvT9VqyYoZ0wJiRCf9x76D3nAa9f
	su2/N8ZwJUC340rXSrrS3BZMLmJ/hu1Z+Zhv0Y1HUqLaC06lb5vLjV5+yuvjfHFq0sOCHq/00qPzs
	ecaELwNvP+hyA4q9ebJlzJWysav+UVfsF4dIKwkY4S98xXuRxV5Dc62JGIYo1IyZnLlnM7fW6GjGB
	1mGptzf216TCAnnmyBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfgK-0000aN-4G; Wed, 15 Jan 2020 10:13:48 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfg6-0000OZ-5o
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:13:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id 9so12255722lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 02:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vO4qe02zao/A+ruoIXV88YhdBiNPhMumkEGKgg4RymM=;
 b=i0Kvn+Ey9/+U8pQ6/uBTFMH5I8IA+l8DqIupDU57PCn5oW+xM8FTvK9P7H8tLqGF5D
 cRk7hsCmntfXi0iXXggSozStVld6pLWOkD2y/Yqs4VSnXLYA2zx4an1gTT/j/30F7Enm
 hMmu7rUyi/ywMOG/7JsdqwIpD1sGfVL2aN9EHANJ+yWlIKA6x3J+iuOFXzqAE1ziZWQS
 goLWInYuXbPP6FAUWz9ROEzeW9jgydpzRLd82aBT9AQSx2NvCpCSGbaJmJnk97vFA/s/
 mKm3nQBzK4XkJYSohl7AB6oERKp8mwXOFi9brhB15oJluvGQw+MUkEhLZdqD6EtMEO3x
 tQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vO4qe02zao/A+ruoIXV88YhdBiNPhMumkEGKgg4RymM=;
 b=C11MxyN/o6NfpYmG5kBn4l/jRiXJXJOjDjCAinGCPxqBmmYSOuMVT6Iv4L9MfAK0Ez
 T6Q7gBlFfBdnqogIOVwoMSw0HVJMgYqG7WyuwFd5M5JV82vv4+Soq1Leqfb65hxlv/nB
 I4NoeOGPJ1bN79ORIiXUr+JQpylJCjl18gx1QC0mhs3SL+EM0AFsMTnlw47aoYTshNxc
 SoOzJ3BfEBPtsr5qJCKDyg7WQTOnUYKV54L1kcEKp2rvRJ1mZgm7c7qbIXiIGcIEqcaW
 vcw0w0Iqwk1gxveRfM+62MkG4jMI8/Ugad0aUD/mLO6UZ5S/VyC+gWBA4IWTR+cyDJiP
 DEfA==
X-Gm-Message-State: APjAAAUkpyVQc6r4XepRD/fW2mi7YI4V5YdNMALi2ELD/ixeuXKOWlBs
 9wYBo7sBdSxTG8CyZXCsptEtddVQNoFhcXv2+oaoKg==
X-Google-Smtp-Source: APXvYqyjpPJG2PlBkvker2pjrEMpaojUIm0M1qm4uQATc9Ei5oB+Qf3k1pXdKzW50LZY13BsnF1kUP4nXB8QRKn3Zq0=
X-Received: by 2002:ac2:465e:: with SMTP id s30mr4450440lfo.134.1579083211682; 
 Wed, 15 Jan 2020 02:13:31 -0800 (PST)
MIME-Version: 1.0
References: <20200110174426.5463-1-krzk@kernel.org>
In-Reply-To: <20200110174426.5463-1-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jan 2020 11:13:20 +0100
Message-ID: <CACRpkdY+wC3xx9r-4rsCeV3xJQbDoV8u9+9UGJ_9Kg9Swn87jg@mail.gmail.com>
Subject: Re: [GIT PULL] pinctrl: samsung: Pull for v5.6
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_021334_226441_2CACC0CD 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Sylwester Nawrocki <snawrocki@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 6:44 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git tags/samsung-pinctrl-5.6
>
> for you to fetch changes up to 225a2ec19aac426ef29f0e4accfc890c87d38bdc:
>
>   pinctrl: samsung: Fix missing OF and GPIOLIB dependency on S3C24xx and S3C64xx (2019-12-15 12:47:52 +0100)

Pulled in to my "devel" branch, thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
