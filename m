Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004BADC79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvfWBFF5g4+JAgt+5hLojvTcVRF8a/D4cbMyEIc2ma0=; b=d1/G1Cil5CQ4k+
	R5dOBB39z1ypB7IFTHTRK5MJiDImvMIq6050D/mQnWjLQwr9TDRR/6S9JjdJGuKTR4/BX/48Xsaxj
	ZsCl8FpanvLsBjNYEb2Bh3NOZ3PRrAWBBpr/kHUZ0B0J2HYp06qR26vHXz0FF9KqvL4KcO0EgMLPw
	+Ace9uDQz8a4NKC+JkztxW1u/9coSWCEV30CJvKOAv5u2F1cJxvk1zvQSNv39KiJz3p3FD4mHxCIv
	lnR9BeU4e29FBFNl/Rl9MUyg3KQoIJW6VJSe9FZO4TIGBHHbSawtQrn9bd6ThYkZzlLq+qRvqw5NG
	5ROvB1x8p0ue42o8tYVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Id-0002vo-ND; Mon, 29 Apr 2019 07:02:03 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cr-0005et-QO
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:17 +0000
Received: by mail-lf1-x143.google.com with SMTP id t30so6961367lfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PlFBUhtDp3twaleN7AWp9dOy5vz82QcC368RhcPcaTw=;
 b=ELa7wCsH0JiOJ8MNnzzRVR0XvEYizCyh14cP6/0xPDz4VHKAGiJOhbQpMJdm5eVp1c
 MD2+6a7mZHFtY7Aib719TrMURvySUrAICTZ7QoYErOZQ2tzzLES3/AHkafdSxgkScJTv
 miUpUPq74edJltb+FPI2bPr2hNqY+PeW/x2RDeykMTgJOpCsFX1rmjXZkSPXBiYM/LaA
 5cJFy2mh0e0R5J4m7H7mk06soVNc8rySKXd2r8Sju7JAXIkyMwpk4RaRZBQRUVl3qaGx
 ycMkS9JQDEd68qLbk5QQKPzvNq65LnPko9jnNH38xlBmu8PRVyzwRjPLb9ZorYe6KbJl
 JLrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PlFBUhtDp3twaleN7AWp9dOy5vz82QcC368RhcPcaTw=;
 b=WmrcOKrcJk6IAFP4/IKIMXtWIRY/zGmceC+WTWHBjs9vg5oaCBsjBzj4QU8se5VUNQ
 3y98r9pr4rjtoqswVJCLXXiNoEOdc6drpPmaf2zTwhLA718bdf+8GekrgCkBFQ2OppEO
 /lnNGFFLIHV9NFdwlVKOzYsAHlwy0UnIuXgm/Zk2WRzsQ7s5Q7fEuoKi9wUupfWgpcv1
 CGOM8VyfrJurO3ElY1/FUo/NrhpMdoSMQBFBZqCPOF6uLfmUrVLQUj2RxtwKC0NGCFeQ
 C21Wlawbz9TPIUtj//zNOO8H4xR0mm3f1uULu6dDeG8T3aqNNZCpjjdfUNkSqO4imZ0+
 9V6g==
X-Gm-Message-State: APjAAAWATwjgxWXLkb3TMgIwKDe9BepL6k/C9rRzCRavwm0HmRanYBVV
 HSH9jN42f7TehxrItMDliLmgRA==
X-Google-Smtp-Source: APXvYqy/UqLsEM8v9JREyKlmu+5MRUOCdqwm/iq2NOkFHI/BWUxtIeR/THPLu890su3J5nANjyBPgw==
X-Received: by 2002:a19:4f19:: with SMTP id d25mr22056399lfb.124.1556520964244; 
 Sun, 28 Apr 2019 23:56:04 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c17sm5060681lff.84.2019.04.28.23.56.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:03 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:35:24 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 4/9] memory: tegra: Changes for v5.2-rc1
Message-ID: <20190429063524.leg3na2mcbxxz5qy@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-4-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-4-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235606_484511_203C066C 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:15PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-memory
> 
> for you to fetch changes up to 67a8d5b0fadfd931f7e6a78e9ee7b2792a7114aa:
> 
>   memory: tegra: Fix a typos for "fdcdwr2" mc client (2019-04-18 11:51:17 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> memory: tegra: Changes for v5.2-rc1
> 
> These are a set of fixes for various issues related to the Tegra memory
> controller.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
