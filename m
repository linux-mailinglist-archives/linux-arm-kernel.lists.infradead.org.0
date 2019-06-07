Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFA039755
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 23:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly7HiNTv11pmAvhpk4MAOVopLIIVmE6uDk6kecLjk9k=; b=eb8vXt/115XNgU
	S4kMv3NhnPEiB651fJmx1b1yofroPez/Ag3+9SBrk/eqIhwy9zpOd1GhaM/EbvEZK5jC4OPA6i4dz
	uVEVwEXeCgwomEp89/dFIojSGlFMnO27clTdXGEilyRCYMOJsJEmqJkYNjInztwrdgjFa4YZ5V+h3
	tnGjz/qoXgQUuYKdZET5kwxN61+R2oWxWX40uHCLwna83sR1dU4ZAhRh28H5XW8QQTcJ2WKFrZQG9
	PnjJoWJes03HkrYL2NGBiHDDCY3wEo5nksLPXzyiexcGg1+JCO+3MrMtIP2XNfV3gYN7WmpncpAaZ
	H/Yg3pn+faoHvqRbglkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZM4T-00071F-4y; Fri, 07 Jun 2019 21:06:45 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZM4K-00070c-Bg
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 21:06:37 +0000
Received: by mail-lj1-x241.google.com with SMTP id j24so2923060ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 14:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ngGsJ3sa6qftNEqIKxcUHf+2Y/2GL6FaDVqLdkUZI+U=;
 b=NOfBgz52VTuWpjz7V14ZcBELLxddIR64OTKQA2xzLIUhsP5/le33K3ipkbvzpS+NkU
 TWmkiy05Zzo+Sq8ohP322QzhhjfpVeWa3bmyyK/KZJLgA3RCPiaJ0nbUV6gxuUPQRsiR
 hJHfhpW/t6Z28Jy4XvFxx+geHjK/yYy5OuNGkeigArmPSC0v/6zCUFzp8bwFS1Iw/5bp
 +ekz1pj2MJaEvb2F+QqbdjFM3A6f0v3/J42m1DO7RMB9LDgmXsQxC/FZuZitbQv1Aow5
 +4H0ysai+Q1d9tSXFbGxA+jZGnU7StunRABpEMHuadstqz4nLOPTxZhqWZ+6jBCFPgMf
 fufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ngGsJ3sa6qftNEqIKxcUHf+2Y/2GL6FaDVqLdkUZI+U=;
 b=CQixGmUC9SRGsMleooxLfLbPPpUPZ1CSCDgxilmgyc9W0YPRxaZztX8FfbS4jnxFzw
 AvcdXai0oeQ5cip78Y8QaG2DcTv0vJjvepIcp52SJaFQY59lmI9zwOFAFU3388nYAxNL
 AFIie9O35QD3X6zwJw4KL94UPdvi7qbL0VAnmPbQcK6cbSqzwJoYDSmTHqFyeqwl93dW
 XNpbV0jVi17+fDtqj/2hx4hpu4TU0KviRiJV7pEl3xXALQYi4ybCUyHnnds103rTAubA
 M6aDhvlrhjc08Y+hDD3Q7HuxmFYqjKOi9YiG1XE7YCNSluOaVVwi9tmZHuaYhLOtgo2L
 tvTg==
X-Gm-Message-State: APjAAAW4CON/tsWZm7OD5reAe8MGxuPmcUqRA+kaplP1g/b5t8oGtlDF
 sHh4DeBngo1o4TAH6xM+NVXzAIZr2HRighvOxe87XQ==
X-Google-Smtp-Source: APXvYqwzWHOHL3qBWLcwt+um28DnahteXeh1UMVYjgkOQaL8ZQiEb0mBtE051TG+KFU+85SgayUB0dlFm2sVY1/RIA0=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr5273384ljj.113.1559941594784; 
 Fri, 07 Jun 2019 14:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <1559097838-26070-1-git-send-email-92siuyang@gmail.com>
In-Reply-To: <1559097838-26070-1-git-send-email-92siuyang@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 Jun 2019 23:06:27 +0200
Message-ID: <CACRpkdYYYxCti4zRzF1bG+cb+NAONVjg1ynOww5DpG7dzi1B6w@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: ns2: Fix potential NULL dereference
To: Young Xiao <92siuyang@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_140636_425235_D9E7406A 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 4:42 AM Young Xiao <92siuyang@gmail.com> wrote:

> platform_get_resource() may fail and return NULL, so we should
> better check it's return value to avoid a NULL pointer dereference
> a bit later in the code.
>
> Signed-off-by: Young Xiao <92siuyang@gmail.com>

Patch applied with Ray's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
