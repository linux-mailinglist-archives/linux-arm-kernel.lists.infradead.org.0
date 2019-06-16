Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34312476C2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3rdrTUjk/VYZIbiRT3A/7qQQ1d7RiXW9iAMoNs0TkM=; b=de4BD4iRgqS1E5
	08FQaV9TwgcuhWwWHcKk1XFOiW4m05bnTYvcdQoFk0icIMHjVlA+9F187u72uVexJjNbmZQ/z67K6
	sAB5nJdI3hITJMTZM+VDEB3S/MYSWsOMqG5u+ZimqDOFsrfxoMpYG/CMma7KCSYgxnJwAMOrtLySR
	pLQ2dvkTLzQEuXizpWuzc43+HaTSBkJozTBFxgTnFfGH3umzLTDG2tAEruLHGuSgqEav1oC6xvJNY
	jCmR3GxN4K6r7Raqk4YA3fxBgh9dDBM0E7IDm7qX2Osy2r86HB33WTCMbDrjMm2WeTjI/Uhntz9Ac
	UttrL4EMBGNHCNNWQ1VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbrP-0000tK-2J; Sun, 16 Jun 2019 20:34:43 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbrA-0000sf-8x
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:34:29 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so10930540iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J/Rl9KPoyNh+eRPhLhJfKs2yvVQamk3ksTPb5HC2+lQ=;
 b=tt+9LhrJeVw9iwuMWDcMch2hUfHcEfBnmTnxQuVTfQF2+JCYbyvJS+f7CxMs4M8+L/
 oA1KsLKvM2owpjEEUwUEnK6pJVUlqTk6ikywC0Ex2ySwXsai/rfkxFufDnTPZHZzHvEi
 3a1JI4tMmfSXBOv5meOaFhJQyQ4S3U03nwp04kukC7DTAW6oGUse8OcS0maiCEnmALex
 PdWLBKFv2JYgpnVPNlPWNuGEiHEx1wnwm3ooOmjW48SlbViiQbTe+5/7/QbJGjG5HMI/
 klGRgqdbujwlgqIT0IW0h9s2OgJRqdDFZMCooGapXvBcawYRCR5G4sSTG9vIeVdxprpa
 DleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J/Rl9KPoyNh+eRPhLhJfKs2yvVQamk3ksTPb5HC2+lQ=;
 b=QPErlIJFFaxoX6KkTlcHhgsrTNzsm2iPZHUr1bkFzF8ixXhSpKi/GhQI4JW8efFGgb
 lP5zeH4/ccAwv1oQCZsLdQqCeIr8zztcsWJxGJXnxv7oyAC8Y8Ytgm27dMwFFAqQQU38
 gNWvZmUTWm7aHHaJ07YYLM9I3/dm1g6acDizfpAi5y9lqDYMnhpsVu5LajsDmMD24t2E
 xMJ7QZQIY2+r6SNw6/BjlPbAZ9exjpRkyHNQizJXTyBnVtRsBAdhLwri3RFuZjPGnIa0
 rQhoklHdWN2ebv/JFVPJ+VV6eu9e4srj0aIwwO6E0+/OO1lWIGLmY+HDH10Syteukxrf
 Y2dA==
X-Gm-Message-State: APjAAAUChYXd/9+tO63a2IOW2+DRQerrBHfBjdZMxNgj6uPAiU6K4ixv
 EwzRgLJscTtlMB2teoHhxiSXrBjl7STdP9NnbJSyXw==
X-Google-Smtp-Source: APXvYqwZ5Rh1DNl+xYvGHFsN37yH2C60kNHih01DnvUD2q8UFoCzBHM3uvpvj2P3Rg/noeJmVYctfdufOyGc8EzpBcA=
X-Received: by 2002:a5d:8347:: with SMTP id q7mr12895821ior.277.1560717267609; 
 Sun, 16 Jun 2019 13:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1560323885-602179@atomide.com>
In-Reply-To: <pull-1560323885-602179@atomide.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:34:16 -0700
Message-ID: <CAOesGMiRi4G1eW-v8X-s5YQbxN-iGOzpX_psGfNMdW2MD0PT9A@mail.gmail.com>
Subject: Re: [GIT PULL] three fixes for omaps
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_133428_314510_49EBA639 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-omap <linux-omap@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 12:18 AM Tony Lindgren <tony@atomide.com> wrote:
>
> From: "Tony Lindgren" <tony@atomide.com>
>
> The following changes since commit 4ee23cd76c0ce8622976b3da0e2bc89e6d94f6d4:
>
>   Merge branch 'omap-for-v5.2/ti-sysc' into fixes (2019-05-20 08:33:03 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/fixes-rc4
>
> for you to fetch changes up to 8a0098c05a272c9a68f6885e09755755b612459c:
>
>   ARM: dts: am335x phytec boards: Fix cd-gpios active level (2019-06-10 00:06:57 -0700)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
