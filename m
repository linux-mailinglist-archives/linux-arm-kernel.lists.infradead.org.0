Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEEFBE0BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 17:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBLmyv8cJSvrOWq61J5jZg8sYLxGEDB4+RwvjGjqvFc=; b=LLRjrk8uwmD6Kh
	gRnhenery27tZ69VRjAxFjJjIgBNbetwhp874TB2ZJ0AOl3xecVcop9ct+W2dM6xF4IlVblTFeik+
	3d2t23S1EwnSlTH3WuRWqrO7VhQ62CGgxYa0SC4Wdm3VyZOIHb2LivIM0gVD2q38w9QAdK7V003aA
	AX39CUD+HErzJhI5/vyNUfeDc24bifIbhoJIxhaxaBMhJNBYhoAiniykEaMLaek+MJFy+0IasJGUC
	+c7k5opyfBv+MWAlUG+V9ZbojSF8DpiHC63cJQw/DLyNSLevDyMdYTTtlzoY+aZerNF6AHuUREM43
	VrBSf5Ekxn+JQQXojL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8nV-0004XX-4Z; Wed, 25 Sep 2019 15:01:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8mE-0004SU-Uz
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 15:00:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id q17so7339957wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 08:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=yrL9qSy/3grZaifloxyMrl1qoRWf0gLjQ/fLitAs1Sg=;
 b=tWFEpt1lBq/s0U7lRRMcg92G7ibk3Zphd/xQ6319ivkDGRcwuA2VsUEEhRXg6p3Rmo
 UFFLhSxCcBbU50mqQ0W8FKmttRbATzcWCmWzUlzCYmIZf7A17ZZWEAdjUO3Mltty3bJV
 gPuGpquxOoSIhqEJg9Oa8QbSXdbCW277ihBHN4xSJurJgqArzSADU2YFcSm5U73benaB
 CseZ5S9N3BtBYiecF3XIxDjZ2ZSvHqLN7yJQQZNDkFJWfr8qH7co/SD6q7xm1QQdVXbE
 URk33RcMwYrT1AJwrVuvrmUKTijJubzDzzZcglUtnKOBSJhwpSL4ci9KcKrbyZ3YSve1
 djtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=yrL9qSy/3grZaifloxyMrl1qoRWf0gLjQ/fLitAs1Sg=;
 b=qgdv0dmOc+hMRkIkzVfjt93IE8UY5ltdryS9NASjmBIuz5JnVjk8qQ6Q+/DffnFjUQ
 o4IFVAcjXuDI8ByHCvXJFGIbm4R1Cxb6MRK0ijjPsJ5NK91AR3GpEPH3W5tdES16KWvb
 LK4gYcEhQ2ZY9ehaSgv2XJAPuCzkL7t+DMLjFAeLK32YEUvU2oK/6W/l8RImWw0GhZD3
 MOvy2xfeinphKqpJHuwCCsnlIWpa0h1JjXXysss6o1gkLAjfc4ZFOyjqhmXhXuy1QFkE
 eWv43XzCzIsZx6X6kZu5NqjCA856PoCA941UWwleE5bS+gxEwuGOkXSNkhGXdpviJ1+z
 4rLg==
X-Gm-Message-State: APjAAAWewN8w/7LFmq/rfO8qXsInJoNvAI/bMwrYUnsY5WgUrpzWoZuu
 060BwoPMx8AEmeAatK7GE8a6MA==
X-Google-Smtp-Source: APXvYqzY26KY3DPvEXCysVewS/BT+v0bJdfTqB6QhZQoHrrjhoEyJyWKY2tBc0+lQU6tMfc61ziGzQ==
X-Received: by 2002:adf:ff8a:: with SMTP id j10mr10224298wrr.334.1569423620189; 
 Wed, 25 Sep 2019 08:00:20 -0700 (PDT)
Received: from localhost ([2620:10d:c092:180::1:87a6])
 by smtp.gmail.com with ESMTPSA id o9sm9880475wrh.46.2019.09.25.08.00.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 08:00:19 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: RE: [PATCH] net: stmmac: Fix ASSERT_RTNL() warning on suspend/resume
In-Reply-To: <BN8PR12MB3266A4C33D234165A0F2A978D38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <1568714556-25024-1-git-send-email-lollivier@baylibre.com>
 <BN8PR12MB3266A4C33D234165A0F2A978D38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
Date: Wed, 25 Sep 2019 17:00:13 +0200
Message-ID: <86ftkkzaiq.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_080023_144010_7611B024 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 17 Sep 2019 at 10:12, Jose Abreu <Jose.Abreu@synopsys.com> wrote:

> From: Loys Ollivier <lollivier@baylibre.com>
> Date: Sep/17/2019, 11:02:36 (UTC+00:00)
>
>> rtnl_lock needs to be taken before calling phylink_start/stop to lock the
>> network stack.
>> Fix ASSERT_RTNL() warnings by protecting such calls with lock/unlock.
>> 
>> Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
>> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
>
> I already sent a fix for this. Please see in -net:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/driv
> ers/net/ethernet/stmicro/stmmac?id=19e13cb27b998ff49f07e399b5871bfe5ba7e3
> f0

Ah good catch :)

>
> ---
> Thanks,
> Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
