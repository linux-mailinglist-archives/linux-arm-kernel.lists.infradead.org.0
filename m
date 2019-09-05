Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCBEA9CA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3+RzR9M0C89z65naB/gRdxDjhWs60c4yGRxH2e70iE=; b=tvFzsNgyx5x75a
	WK2oYXzxfm0KhIe7ZBMentSDYslIgHaZ4K05MXXIM67gX+QXq1D7pfY6bqUCHD05CmP4ZTwslPwSR
	EzFMwJE015zeHDDsBrhpWGSSHsR7ehgvjjmqJ7cEZkkLxyEas4Id4d8Bak2YWGp2NNVpYkM5HMFqE
	eWOTwU6dgGzACDku9XmZT4WwS+0ti05TFCfnrW6YAJoRvUYjQ6/Jn7xQ2ck9I6iUtBGTIQ1yL7SbC
	9vc0rrnNMcNXm2Q9xF6tQC6g6Me9C0UA78XxPf94ygBKuP8mi5JU2wzLii5ZJetEdVTpTKyyZLbuk
	Mp38G5fvBm7d2PIwU/0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mrT-0005ws-4O; Thu, 05 Sep 2019 08:11:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mrE-0005tS-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:11:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so965061pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BNUhBxF1OnG3d3ID43Jl2Sra4Jf1K5JNUVXSe0J/Mmo=;
 b=FsniQefV8YjuNc/PRrZO7rOT/9G0ax8+aLc2Sz/tUwIKjH+DrNsgTNPIdCNssllbf1
 yTsw2jCCl+nhi3JG+3OiKUJbn9m3OqZzU/MwtpGG7EvVTeby+PTM1a4kWl+pAl/W8p2f
 QW3A2gnfv/hpd5csElAMUYftBSWWIMgYAbyA8tas18mDueWBGlE+8y8yMlS7K97UJz1e
 FdGd63Y59wGv26usW5cD/I64bNqERDONTXMRb/TQ1dMOR3neAW0ou+hw7gmHuZ/jLN3R
 Yq6qr2hqq64hFguW6qK+LgttRPvNo0jBVjB5hpdOXr7pVzj2BUERpVvhbtWwaa3rb9Bu
 0X5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BNUhBxF1OnG3d3ID43Jl2Sra4Jf1K5JNUVXSe0J/Mmo=;
 b=QQhLKf5oJk8Px7ESDdVGxNHv8qeH9RKgJc+N/f6WJ2x/sNtcgEqM5B411dENPry3wq
 NtSqwMqz68OCJph1fZluS8gCx2ucTAWypeq8BoHGUmShmfUlfqV2i9nsHsoSLm7+sYNd
 oS4n9LOT2sqdpGTpxmU26qVDZXdqi08OFuFpboIhiKN+8Ewhk4r8kxsSOirpLrCbhO7Z
 nhgeN/Op8MYt9BTnsLii1sKdcyKZMDcA5pxHJZicbCKQxXzvN0rUMKUIxH63s5TxUIRN
 p/BGN+uy2aU3+LSEDc5M/D3MCbEdW8qtB/a8fwpTBN3rEL5ftwcWZp0JJyd1JOS/ayxT
 SOQg==
X-Gm-Message-State: APjAAAUkns+ZzrmdUfiVqMr1egtJGdmLGPRcMvpe+UutjS6WWhzYZzHC
 WKLiq6U8jc481zDhrze3ntWIsQKU2kflelxuZUE=
X-Google-Smtp-Source: APXvYqxtpDJ3+oWsCUzA9PrngplgA8XurQG2hkrTxbU64Fwo0RP5J+VAvVKFqCivcEjjcIw5AUIW1TNKX62bq9nBXEs=
X-Received: by 2002:a17:90a:338b:: with SMTP id
 n11mr2570783pjb.132.1567671067543; 
 Thu, 05 Sep 2019 01:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <20190904061245.30770-3-rashmica.g@gmail.com>
 <CAHp75Ve0zEkuD-75aZ6FU+A=DvX8NvVvY3n9p_pYDyfa76sxoQ@mail.gmail.com>
 <1ca6ffddd2452e218ef19ea84ac6c6277e1a9725.camel@gmail.com>
In-Reply-To: <1ca6ffddd2452e218ef19ea84ac6c6277e1a9725.camel@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 5 Sep 2019 11:10:55 +0300
Message-ID: <CAHp75VcCUuCNx35DReO4YzSgDv0YJPKXdpL+xNyjwOZX8jvVtA@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: Add in ast2600 details to Aspeed driver
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_011108_375770_A62C17D5 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 2:34 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:>
> On Wed, 2019-09-04 at 19:30 +0300, Andy Shevchenko wrote:

> Perhaps this and your other comments below would be best addressed in
> an additional cleanup patch? This patch follows the formatting of the
> existing code and it's not very clean to differ from that or to change
> the formatting of the current code in this patch.

OK.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
