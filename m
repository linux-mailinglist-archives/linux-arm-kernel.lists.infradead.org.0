Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4485BF538B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 19:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMo9D2a2fkVR+TlnvJOPnKLQi2Xd9KIcY7ZIbC6SWqU=; b=G+o9Cs/7bBA+Mg
	VohJ7ryM+x48zu/3BpDOsNFLncPZM8LJ6/q/8vNeWTu9IErLJ0quBDog54Ma/FQBWvhwxDN5EZR8V
	6ddnrbBQtqDKDGyIYh7rYpCJUqbydKDkbLQ8ZgclGgZBvahfcQaAlS1nT0aeMVX6rJ22UViqoxzNh
	hdkGkqy3ION4/6Aj/9SzV0+3J8Kkv+gLDvIIvrv9KkwqQ+YC8YYzT8wLX3mjNZurSsgIZ5hWdwX4f
	1h8V1ZUvbPH9ZPurQUrv5npBDblNusGmTj00R+ktw6flS++82fk+g+G0Gjeu/UAF/KsfQfhWrBi2c
	RFY6dIO/UtDJEBTcglkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT948-0005zm-2A; Fri, 08 Nov 2019 18:33:00 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT93z-0005zK-5y
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 18:32:52 +0000
Received: by mail-lf1-x141.google.com with SMTP id d6so4800981lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 10:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lToQqnmkEE+3h6EKSzEwHbEtxzI5gjkHTGGJ/R6Ms+g=;
 b=lcHEVb7YckDXFfsmujq+tBplhDyXzSN17INAzOfQUCVo3wTMQva3RP33Xv9nXfYBxj
 h9bmKM1uYwL0kEB90uo05qupp97MNVFoB7zExHvF7mfvHs4mBBm7M8zWldoEESN1YyC4
 MQ81ugyUzIuLEIjXNFXsahBEic25PtkbR7okMliSY8qgXmSFSNUYczVE9p+PmXgmJ8vw
 FUbuQlLTfSgBv2/vNNj+v3hPgE5uOfygOBJQNMVySJXjiDSRCu4pWYpN4vBdJ7Z667u5
 Rk6z69XyC03d6zqJ6hN/5EsJP9CjmqjCkbg/blKjmjznqTwdwyvVLQ+6Ni2ddgeFedvm
 Anfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lToQqnmkEE+3h6EKSzEwHbEtxzI5gjkHTGGJ/R6Ms+g=;
 b=Tc3+raBUhONdguc+MA1EHmbG5Lagbf9lKMAaZd1+8XkOwEexwnhZfsEAaWHtaTjC9Q
 Zq/17qjVasf48MKT6BSFVTtHZXFx3yQS/bpNJjm/kK5WACDESofQtU65sckGbMnlEkqX
 3ijgsYKvwvPKvpLoZRztYfbWjs3BQFsOMj5XSZSGdxZjd9LsWIHGm99sMMzC5+jWu25P
 JvUS2sXxBRy1+27r7FDT9WGNH+BbMZfpPXwIRQffKPWKFIKLz/umXrmIYsqo/782a1bB
 kVpIT/PeHGwz5bYIKKrt3G+IIV3shxCpxVjIOmEloZxB8dYkni0WPlM83j+9IbMdPV85
 ymtg==
X-Gm-Message-State: APjAAAVLt27oUL52XdWauS0GUIwX0epcNym54ldoYY0S5KOvzngWzDNN
 g46a5u6v37K2z7d/5vio+9xDWA==
X-Google-Smtp-Source: APXvYqzRjRBxuTT8nQICr11eg231/AYdCsmsmBFd6/CQVulerzD2GhqHzkUb29FSzv7DhmLAnynRQw==
X-Received: by 2002:a05:6512:40e:: with SMTP id
 u14mr7666027lfk.73.1573237967355; 
 Fri, 08 Nov 2019 10:32:47 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g7sm2915256lfb.4.2019.11.08.10.32.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 08 Nov 2019 10:32:46 -0800 (PST)
Date: Fri, 8 Nov 2019 10:31:24 -0800
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [GIT PULL] ARM: aspeed: devicetree changes for 5.5
Message-ID: <20191108183124.r2wdql4rmdbzx2up@localhost>
References: <CACPK8Xe8XiJ+oEp3_AXO5Mox-mXWVrOJKQLJMKJxg1WdYCTzMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8Xe8XiJ+oEp3_AXO5Mox-mXWVrOJKQLJMKJxg1WdYCTzMw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_103251_224622_58AB4201 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, soc@kernel.org, arm <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On Thu, Nov 07, 2019 at 11:18:10AM +0000, Joel Stanley wrote:
> Hello ARM maintainers,
> 
> Here's the ASPEED dts tree for 5.5.
> 
> The following changes since commit 3eca037f2dfce07a31da0a837ac35d6d846614b0:
> 
>   ARM: dts: aspeed-g6: Add timer description (2019-11-07 21:23:56 +1030)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.5-devicetree

This is a weird format. Mind changing your script to not put the '\' at EOL?
It's messing up the parsing scripts, and git doesn't use it.

> for you to fetch changes up to 3eca037f2dfce07a31da0a837ac35d6d846614b0:
> 
>   ARM: dts: aspeed-g6: Add timer description (2019-11-07 21:23:56 +1030)
> 
> ----------------------------------------------------------------
> ASPEED device tree updates for 5.5
> 
>  - Lots of work on the AST2600 boards as bringup continues. There's the
>  eval board, and two IBM boards called Tacoma and Rainier
> 
>  - A new flash layout for OpenBMC systems with larger flashes
> 
>  - Better support for the MAC clocking when talking to a NCSI device,
>  making Linux less reliant on u-boot having done the correct thing
> 
>  - LED fixes for vesin and fp5280g2
> 
>  - SGPIO support
> 
>  - Facebook network BMC cleanup with the common hardware moved to a
>  shared dtsi
> 
> ----------------------------------------------------------------

... also, there's no shortlog and no diffstat on the pull request. We usually
want to see those.


That being said, I merged this branch. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
