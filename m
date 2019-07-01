Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624275C5A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 00:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKxMTNLRwTsCKkCyCTrHq5yPTwOGm0THI9AI3Ow/Jv4=; b=s5MFbZknesiQW9
	qrtV14RLFWz2/+a22CZOuzF5waSVSZWHZmBj0BMc7fOIJ2JOJ3cZt5FVFIbrQ+EcqjAjz3vCNtyCQ
	OQTAUISS5yJzUkBNqJDmQ6x+yWYWfVjh9Lwmce0B89uB+f4VH/j7OwEnzLA6lZs1hGmok93pLkp1x
	u1//geTE0qr5ZXPBDwSUWDst2VaNYC34++0EXBfdwINuekf/mKOIO5tDgLHW63jz280K3kQMv/xxq
	/ItOUe2RdqPNLO6PymwiN6trYlkRsmljefZkpjdC4rWFfHBZGbFRb56L8Av5pS20l4zsGP9kp8lFC
	kr6elp01bPB8o1e2txcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi4hu-0001Qm-TC; Mon, 01 Jul 2019 22:23:31 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi4hX-0001PP-4j
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 22:23:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id j29so9834745lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 15:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2wtyF9k+M9Sp3ixRETyqNzDjqwbGgO8VjMoLib9+uEM=;
 b=VteiKNKQh79Qm8CoRWdNjk6yPQylVr6oz03BNkby3iZobZ0ABz233igqKr2/0ha4hM
 5TsqRtgPPM+v5ZoWu4su4hSKRS801gH7E2mPVfi2X68z3QuJw+YMmlgx+EiRAxlbFaBR
 lljWMZUhSuhR0o8jFHlgxzO1Q6rIKP2Fbw7KH+Y4wkbpE0xSS1I8CzksDSmGYkE6qlxp
 9zUbU3nfYX7iTPp4ic1HfziO3dOc5MZZmDIQQON58TtPw3nqUAus2rwFY2Uc9gzlPkaK
 9bo/gBY9MOi+VDaxPqF9gcQPmwYanozMpwXlBBmeVJ2/wAjF4IX6aJ48tXsXyPl0izIw
 tWMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2wtyF9k+M9Sp3ixRETyqNzDjqwbGgO8VjMoLib9+uEM=;
 b=p9JQJzMIkI1WLJ3c6JNif0nOfXvXVRdXE6Rn4yXVI7Gx/eJvqh0AzY+f2PNQI+t/FN
 I7vXgVF0C+G1pWzGMyQqaLyI17PNA4Jtng7vkvf/hekB99ClH5zm0na0jOJwmLCmUnQI
 jCn4hzdVTdLxiqpjvA5XsE5QIf7jNCnK7O7cSgE78+KDceaWp6ocb4TfpLPvKrwyZqMO
 vcD1keup2kLPI2MocoBERAz89FpdUoF1FObttmxT84EFhUw7QjrtEPZ6LStuyxf+N6+I
 M0TBYp83qJoRmAxVtbWW/aWzmkUqluIxocBgrfTakIszMMlfnYhUu8nItJNTJcXLSRAH
 u3Fg==
X-Gm-Message-State: APjAAAURvSQdRbiPmSvGGYhIzib0Md0x4XNNlb7BJtm+Cl4H2jxbmtXc
 9cq4vCcTiwjNdFqKGuQ0BQyWcw==
X-Google-Smtp-Source: APXvYqxXUJCxAMknfd90Dw5kyxBqugXFP39g8NB6vkK/Zc5LYan7Qe2PIy/n0JhXJF94rOEFNiOUvQ==
X-Received: by 2002:ac2:44d3:: with SMTP id d19mr12576713lfm.30.1562019784102; 
 Mon, 01 Jul 2019 15:23:04 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v17sm3887093ljg.36.2019.07.01.15.23.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 15:23:02 -0700 (PDT)
Date: Mon, 1 Jul 2019 15:14:10 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: fixes for v5.2 (#2)
Message-ID: <20190701221410.24zwrfekeuxg2n6a@localhost>
References: <87k1d5hiie.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k1d5hiie.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_152307_326989_7ADA06F0 
X-CRM114-Status: GOOD (  14.63  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 04:49:45PM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the second pull request for fixes for mvebu for v5.2.
> 
> Gregory
> 
> The following changes since commit cc538ca4308372e81b824be08561c466b1d73b72:
> 
>   ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog (2019-06-12 10:36:36 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-fixes-5.2-2
> 
> for you to fetch changes up to 80031361747aec92163464f2ee08870fec33bcb0:
> 
>   ARM: dts: armada-xp-98dx3236: Switch to armada-38x-uart serial node (2019-06-27 17:34:38 +0200)
> 
> ----------------------------------------------------------------
> mvebu fixes for 5.2 (part 2)
> 
> Use the armada-38x-uart compatible strings for Armada XP 98dx3236 SoCs
> in order to not loose character anymore.
> 
> ----------------------------------------------------------------
> Joshua Scott (1):
>       ARM: dts: armada-xp-98dx3236: Switch to armada-38x-uart serial node

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
