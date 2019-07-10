Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF38B6401A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 06:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nbvkaYUZKsnL6pyu/FSAsK3vF7srdLhfGg8Z493DhvM=; b=TDpE+Uudv95hFJ
	Z3TtssiKRMRgsyupdotXtq54KWMEIAohEMATEEAnRM6eQO7E+1yYtkxNO+KkSpciYERTFrnh3POaL
	oJoMfZbghvk5BmWAeM/31znvqzIzvs2upaNBprALr6VU8jNZuiZP0kdI0EG0GtdoWDV+9aegRlUs5
	oAsUilOrM7InDFwIU+UQcEgDzlFkJfdHebs3ReWQ6E6SKe0QlW10hE9Y9HHc+yvgRuHNNH3Me5DY7
	X51MeoO/zKWpeSCFpMhzwDvfOp0tKDGsA/nBB+QTHSshm37tZle8pDnw3/gOzp95IF3y1vNKdoezn
	7OZPuwwF1HM6FMBC3ocA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl4GT-0006sN-CC; Wed, 10 Jul 2019 04:31:33 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl4GF-0006rj-EB
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 04:31:21 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x6A4V1O3022269
 for <linux-arm-kernel@lists.infradead.org>; Wed, 10 Jul 2019 13:31:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x6A4V1O3022269
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562733062;
 bh=NL0p8549tP4Y6hjgM0f3d+yvfYYRWKVEjoGHNGsWz2o=;
 h=From:Date:Subject:To:Cc:From;
 b=wNnHCdaQ+RleMyhI181KyRmG0ekakGzdXslVLTVwmzcbVELtej3at2H8ko+nwVZRU
 5OW+6NfX4MlcOjUOO+fh2amilJ/tQ8b9GCtSllfrKXWqKWY7vgvqWr/kc/v76xog4c
 qKsXpWjpUcqbwwE19BhFLVogMkM8RRaNvlNuY6SX4P3bKSHKQUnvfrwPwRT+KOj1BZ
 F2BZ/33JoUDWOs1BAYNJjgYyaribk7YowZfWHXaVUm/lVASBdKrsEg3AhxEKbAujX2
 LSXMKMWMnv/j8HLlO0maSD8GlKzXDGwJF597YkEVqt4eQtFY53QKjufaCB07swESUn
 7tns1T3WCPBLQ==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id j21so345198uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 21:31:01 -0700 (PDT)
X-Gm-Message-State: APjAAAVGVqc+11u2SVp5oZ/Bx3hsSXEHrbMes420q6rs+Y9o5Nd3v5Xz
 ji+hCUH3VUygB2lSLHpi70b4ncpxOSj+zKWA/X4=
X-Google-Smtp-Source: APXvYqwvzyWAZCiFIry0oNqUjkphe352NGv9d9Jy4gXl11JK87bPaBl4wN/pIxpeQmVqfym5dbPLL41JIQSioxJBgJU=
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr15210467ual.109.1562733060560; 
 Tue, 09 Jul 2019 21:31:00 -0700 (PDT)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 10 Jul 2019 13:30:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
Message-ID: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
Subject: Question about ARM FASTFPE
To: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_213119_702901_120A393D 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: masahiroy@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

I have a question about the following code
in arch/arm/Makefile:


# Do we have FASTFPE?
FASTFPE :=arch/arm/fastfpe
ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
FASTFPE_OBJ :=$(FASTFPE)/
endif


Since arch/arm/fastfpe does not exist in the upstream tree,
I guess this is a hook to compile downstream source code.

If a user puts arch/arm/fastfpe/ into their local source tree,
Kbuild is supposed to compile the files in it.

Is this correct?


If so, I am afraid this would not work for O= building.

$(wildcard ...) checks if this directory exists in the *objtree*,
while scripts/Makefile.build needs to include
arch/arm/fastfpe/Makefile from *srctree*.

I think the correct code should be like follows:

# Do we have FASTFPE?
FASTFPE :=arch/arm/fastfpe
ifneq ($(wildcard $(srctree)/$(FASTFPE)),)
FASTFPE_OBJ :=$(FASTFPE)/
endif


Having said that, I am not sure this code is worth fixing.

This code was added around v2.5.1.9,
and the actual source code for arch/arm/fastfpe/
was never upstreamed.


In general, we do not care much about the downstream code support.

What should we do about this?
Fix and keep maintaining? Delete?


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
