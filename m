Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918516437B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWy8M6j+okZ6WY4K8xBgt8CP+PH67cCmt2o5jf9xa9M=; b=TdQcUTpdUikWww
	ijWcTkoL4eOVMfyJLYHPsTRfSXR18tm+cQ9NmnHCRxAwWVB6kTYUdDADj3XHe4zYR4p674szIzd21
	38kve/AraeLDlYHjRWo6GgLjhooonVNdqA/QVYRAIRXtkUsFJDufYvG+FwsWHliYK1HawPECNm8k9
	GM/S4G6p3Zl1qZYk6Mye8otFDFgLDdu7j80mTnm8bGYR2TgfJhMxaoht736uHQx7OKlS8Eq8bTDkB
	e3YCjlmo3kABvkq8jzIx0acprZHq3XxjzCe5hbwYsKeZlXlv290VgWxL3PUlE54EkXAO9e6eui3sj
	F1zmjWmWitnZw6nfo4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7tN-0008BM-7L; Wed, 10 Jul 2019 08:23:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7tA-00087m-1E
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QY767RqJrW4/pz9Mym84zBwSy2nSQ5aS7CVKzOkpsik=; b=kQxlQ723VHcBLDdghKMLytKZD
 kO3SiHgwcrO4GB+jHKuzdCQMHE/MqBWk2Sp3ayNNqFuI8d2jKL2+qKFRQVscJ84Ja00age9a1HG5o
 5E3Tg4RSspWUgzvxO7hZCL9jRCdf5s7aS0/W62INzpTW5TBIbUWeawG9NRlGHq0A6O25Ox36BmxWY
 UpyXYsIvAdcopWO/m/bEgpiy8e0J89T/WJII8NQ9xaiYMxxyFiZ+tq6kwuf4Vza6MrOjZaAP35oTj
 4pbvhCN4l9dy7YzrQzRpWWXzditczJkJ+goXeyIW7ZggrKWG2mOJS+GxMH2jKdyuCuWkDMrtHxcgi
 6WtBW5lfA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59328)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hl7t3-0005Zi-VT; Wed, 10 Jul 2019 09:23:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hl7t1-0003km-Hp; Wed, 10 Jul 2019 09:23:35 +0100
Date: Wed, 10 Jul 2019 09:23:35 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: Question about ARM FASTFPE
Message-ID: <20190710082335.uzusesefimzpjd3f@shell.armlinux.org.uk>
References: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_012344_227672_393A611C 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Olof Johansson <olof@lixom.net>, masahiroy@kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 01:30:24PM +0900, Masahiro Yamada wrote:
> Hi.
> 
> I have a question about the following code
> in arch/arm/Makefile:
> 
> 
> # Do we have FASTFPE?
> FASTFPE :=arch/arm/fastfpe
> ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
> FASTFPE_OBJ :=$(FASTFPE)/
> endif
> 
> 
> Since arch/arm/fastfpe does not exist in the upstream tree,
> I guess this is a hook to compile downstream source code.
> 
> If a user puts arch/arm/fastfpe/ into their local source tree,
> Kbuild is supposed to compile the files in it.
> 
> Is this correct?
> 
> 
> If so, I am afraid this would not work for O= building.
> 
> $(wildcard ...) checks if this directory exists in the *objtree*,
> while scripts/Makefile.build needs to include
> arch/arm/fastfpe/Makefile from *srctree*.
> 
> I think the correct code should be like follows:
> 
> # Do we have FASTFPE?
> FASTFPE :=arch/arm/fastfpe
> ifneq ($(wildcard $(srctree)/$(FASTFPE)),)
> FASTFPE_OBJ :=$(FASTFPE)/
> endif
> 
> 
> Having said that, I am not sure this code is worth fixing.
> 
> This code was added around v2.5.1.9,

... as a _result_ of a discussion and deciding not to upstream it,
but to still allow its use.  Fastfpe is faster than nwfpe (so has
a definite advantage for FP intensive applications) but we decided
we didn't want two FP emulation codes in the kernel.  However, if
someone wants to use it, it has to be built into the kernel, it
can't be modular.

> and the actual source code for arch/arm/fastfpe/
> was never upstreamed.
> 
> 
> In general, we do not care much about the downstream code support.
> 
> What should we do about this?
> Fix and keep maintaining? Delete?
> 
> 
> -- 
> Best Regards
> Masahiro Yamada
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
