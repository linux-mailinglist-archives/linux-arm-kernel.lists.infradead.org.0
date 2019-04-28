Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC04CB6A5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ftAgDdvXkmI4NiifLMxDejIvO9gsjlKc+cQ5lRMVGA=; b=k2Aaeuc4Ro/Wb3
	ETCKqA03JmzkA7vjZ6F3TbQaSLWS5JcFmaEL9kexsy5C3+luu0SrZ2uinSwdNlKvRnWgOnmcI1HHr
	7umsE3Fgu7WPG73pJqBnRfeh8uIm48jDDhGYrFxTf45cEWGgbbdliBuj19RaH2+uP54YJ/Zzmq2a5
	UA6+ogxRZmzFrSVjiZBPhh0Qvv2Fy01Jlro+4BteyhUE6cL4rtjyPjIEob2wQ1JSi9y3OMCm/cPBF
	emb0anEnbMd91GBsVZGK2hYAshArfrBA5ksMOgozlTNkUDXC5vDUiRReQHbVYgFf1Dyjo8CrLdrlf
	P0AEI90iWhinRzSMkvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqRx-0003PQ-Dg; Sun, 28 Apr 2019 20:31:01 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIk-000292-Ir
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:21:34 +0000
Received: by mail-lf1-x142.google.com with SMTP id h5so6374615lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MDwfb20PfsmJbnLhnzITSgLgbX14LcXwFXBEACD85s8=;
 b=QGMuXUcGbM7yRSsnWi5wD4ctReXw5DmmIwYhCWUeHYdzLBxpsixcB2TUIZSyojQHw5
 oYC6o7fCCWNrksY0BqU8/YrGGgVvmgHy0qRNE90eiCznhNqY0aR1LWnIUT6wMn31Pjf4
 3OsIKsXkIx3wIGI9DQCCj8CXVSZMA2SaJ3N2ovCeYbOBdvOHLqbJkJDCFw2I76xs+F+y
 NCht3a2yKbxSjRgIMvwXFwroo8RnuS4thvMsPgpF4POWHGQUdywGDIlhGSL4DiPsScKP
 Lh/FqUAcCHrwcEC198WzcuwqK/E9kAmymPmSz6xNZQg1CLukHbqAsYM+TdDluMRXTGcG
 mTOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MDwfb20PfsmJbnLhnzITSgLgbX14LcXwFXBEACD85s8=;
 b=MbLtKK8pCay27lmw4WEPw1yGH7OpJJTp8dpO+pGzKx5OT/W/St/DZ4BQWWBlwQDN1h
 uZ4Uj82cCaozWTvSxViCMCh9559Yp4NkwNMz1fdcKy5y917uyBMeJX5Cgip27r6JbcLM
 fzC6BE/OsXWVLCXrFatwFwEoXpk+flakZeqx0f60X6pzVA4ZW7VKWW1ssIlqX6T+Sw7c
 jELYWXntYCLO2Qk/Mckn0z3Fq10LaUOSqFFDVaFdG3twAHeYXvUVOeRyTlendPtCzQ5k
 f1XUmwQO+tcUR5bfE3ylJcCJWlCNs9pr84qQDWwF7Eh2UwiE0mPef7jbDawYHw3UkT0G
 Zq3A==
X-Gm-Message-State: APjAAAVL5MqDC2CX86k9AcOBlLgJ7Z+1N9eue0Odi4UWKPTctppcrwz/
 +Q4t1foxaz0hpCxFNguUnqS6Kg==
X-Google-Smtp-Source: APXvYqwq0d0l6fUh2u0MQx6meqMLR6JSxpYZlfjxiQbbMLWYrPFqy69zWlG6GrCAszxEb62ShwF92A==
X-Received: by 2002:a19:6a06:: with SMTP id u6mr31780844lfu.26.1556482888965; 
 Sun, 28 Apr 2019 13:21:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z7sm7013159lfg.40.2019.04.28.13.20.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:38 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:53:58 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.2 (#1)
Message-ID: <20190428195358.awsdkxsgua4xa24w@localhost>
References: <87r29t6t5g.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r29t6t5g.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132131_753780_1D434A34 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:08:11AM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for dt64 for mvebu for v5.2.
> 
> Gregory
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-dt64-5.2-1
> 
> for you to fetch changes up to e97bb6d478c2943df0867f7fe72ffacc4f993301:
> 
>   arm64: dts: clearfog-gt-8k: add wlan_disable signal hog (2019-04-21 19:07:47 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
