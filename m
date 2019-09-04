Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A61A93DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 22:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6P6o4eatuzXIWWW+Ct00f2+LAh/TYlh1ZTBqT078nNQ=; b=iJCl+0cwBhnIVl
	l9bPfIXUPhMm6bp6xIAcenAVREIxBlwZd7i7U9nY0pOUjkOTQnczVfnQrnvbIZsk2wKj3Hxpci3uA
	Ict8t5TSvXYUfvoSQhtBn2bvLrNo1bm4UDn5yjdY+PYmVtnKY3HgAUscSXPNJjKPS08CI1x4z+8dw
	BQHZR1W8TkXwjcxg0jji3dVm94/SVHHO3Zk63faRZu3hNLbrpUmejS8Gy0sLCwbwqyRkKPXKOY3oG
	IB7Ms92nMXfynIFWp92AEGrji/Zua9lQDVXAeWR/JwvGGQgB3hjX3bcA64570z0cNJslY/ousMgKo
	6i2fFnd9dvl6dJGRGdKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5c3X-0001Br-KJ; Wed, 04 Sep 2019 20:39:07 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5c3O-0001B7-7S
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 20:38:59 +0000
Received: by mail-qt1-f176.google.com with SMTP id r5so107427qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 13:38:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9MvZy1FbaNESC5hiYskF8A5TsTUh4jxrhX3nVcTTYmc=;
 b=FezhQWIyYtfhM+RPwf9BWbdfptDLldXmcLIIs1V2uMnFNrAa4NDKkWBM7PnG68ep9G
 eL9vmhTn/Y7OQx0vDTa7+UuVeaY+5cre38UtOxAo3LiEq3JYFaLPkBO5rabf2s+2NyQP
 FQFSQDK0CCjR2MFqbU6nHcrJUtfKoQ3WAqj2DarBSvweldpLfryp3OS0+um1McPloiI/
 3rxNT+OH8Mysf3MA8kCqbXU/JUNY0E6/K497AXUwzQnVOVYrWC+UF+cx32YFyxOqbwua
 wcKO6z2BQjzIDfZ9yV059Spd8AUxnEqJ6MAdiVEhKTz6L0/FC9p6ZzKeqizSq0wkqZDX
 D7NQ==
X-Gm-Message-State: APjAAAWxt4uLh6Fjdy/Tf3INovVDiCFYUXFoP9ONhNOo3BCNtG+XLiJC
 OqQpFN2MryeQ5bO3NH1ijbNn87620sHp6cGvnbs=
X-Google-Smtp-Source: APXvYqy7XTIfEdC7D9TnqQEhUpBTB+scHJcwLQbjJkCRBHFsN5ejgGauPka+3ex40mC9hoqrTRolPDdEBvgm1bRJH74=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr17522357qts.304.1567629537029; 
 Wed, 04 Sep 2019 13:38:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190904175002.10487-1-krzk@kernel.org>
 <20190904175002.10487-3-krzk@kernel.org>
In-Reply-To: <20190904175002.10487-3-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 22:38:41 +0200
Message-ID: <CAK8P3a2oOD+9qGtAzotZKVNeGSW4x9KQkg_jaCd+g47dD_O4SQ@mail.gmail.com>
Subject: Re: [GIT PULL 2/5] soc: samsung: Second pull for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_133858_265718_9CC3398C 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.176 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 7:50 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Samsung soc drivers changes for v5.4, part 2
>
> Fixes and cleanups for recently introduced Exynos chipid driver.

Pulled into arm/drivers, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
