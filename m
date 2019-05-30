Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC3D30508
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C6zcDEjJfCOFdAfep3GgZqX7Mt2XtPYxdtl4RvHFNJY=; b=fxW7EF8ZMTruej
	Lh0SFZ9OB32mDmv7itg1ky+Kvic5Pahpjy/nW+p9hjkA6kQTnTXFrAzS44eVSTVdDUsRP/fsMlHBd
	S4W5nUcWgI1FbDnnarFf1Albj6Z6lXW0HZrMDsFG3MvUOL1x9pDFA2GFHRcJ9YNvm9mI/DFxfUGpO
	L1+qgNSLfn1DH1X+28owjgK7ZKmEkxh2LsPaLnR0MDS7Jje20Ft+cLq8TUOgrwIkAPI2cNFVnLBmq
	fvEEHPyH/ToqlMQg3PQwwjLBqOIjt2rzC8FKzhGbK0JZMjNF/4hj3M/vUgjF90EGUA/6RVylY5h5H
	JEA1IbiTe8y4yORU8maA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTyD-0006cK-BN; Thu, 30 May 2019 22:56:25 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTy6-0006bz-TX
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 22:56:20 +0000
Received: by mail-oi1-x234.google.com with SMTP id b21so2337586oic.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 15:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=mF9BT0vVIhQ3kN58HKKzZDfeqkZ0Lp4zeTFNG+RnoRU=;
 b=FpYoC2OjsNV06ZZlG55K6obFqq1qTn+6823Vl4EcFnzslNEyHCJnGYxopBD5N03dBE
 /gbVhIu9PlINsThp7NYupqePgTNSNTRzA16/okgqV8nFa0QP+qB6SpZEoNmLBaHrRJtk
 BqErzdbA+iW9UJiie5F3oax4yTWyteUcYu4DntIwgzLsU7TGW4hiM734ov2fE9COVOgi
 fawosDX6cKeDcmnKtfIy51q507NDgIiIInVaRWgnTvOdfI7DtuLmS7nN+McOjI5duDZQ
 um8RTh+811b5XMDHhA7qK1jhPg4S6N8egyAHVzFM+zRFmtqwpFyeQQKLSvFRCg1Ao0/M
 rBiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=mF9BT0vVIhQ3kN58HKKzZDfeqkZ0Lp4zeTFNG+RnoRU=;
 b=YwAMJr/9Ea7n+bk0iD+AueX2mm5l/JBOjoXN/ZJk/+00gcZNv/Jd8H7XGIY7F+fWSm
 wzcdqzUChE3KPNYyCmMY8QMMTY6nCwiOKHYYqCWmFBIuOaVbePqGhYtHnbPyUPzKRhcS
 oFrJDOx7BMwVP1Cnt/ZQnJMxP684CaZ7pEBrcmRE8b7vX2L6K8RSamPJccrhdAtx0tL+
 btAIJd/13OkRdQ7l3azJKc/Kk31e70najShlyFyuu/l38QOj3+css60hfgS1iZNGnUJS
 ib5d9QPA9gel16eMpne5IepQ0GsbFcbK9247uOfF8IrocL5kJ5x257MK1HpR5MEV5iMv
 Lrpg==
X-Gm-Message-State: APjAAAWVqBK3rGzurws5KVztmQ45c6dh6sPPEzKAS5sPFizNqvlhq0FQ
 wjhYA7Bmos45GXQviws3U7nuwqArl8IxtoBeSoPAHLkqfQA=
X-Google-Smtp-Source: APXvYqwkNqLb9Err9D4C+R209/ji7mwIOMA7+WPRFnsAST6VmtTBtYUPWS13pjwbNgwIn3eoYvrZnfXQF2g0++vHKpE=
X-Received: by 2002:aca:ccd0:: with SMTP id c199mr325784oig.63.1559256977216; 
 Thu, 30 May 2019 15:56:17 -0700 (PDT)
MIME-Version: 1.0
From: Tri Vo <trong@android.com>
Date: Thu, 30 May 2019 15:56:06 -0700
Message-ID: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
Subject: CONFIG_FRAME_POINTER support for Clang
To: linux@armlinux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_155618_979713_E6A0CD71 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: irogers@google.com, Nick Desaulniers <ndesaulniers@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, stefan@agner.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

I'm trying to implement support for CONFIG_FRAME_POINTER when building Linux
with Clang compiler.

Currently, CONFIG_FRAME_POINTER relies on function prologue that is emitted by
GCC using -mapcs flag. However, APCS is obsolete and Clang doesn't support it.

So in order to accommodate Clang-emitted frame layout, I'm thinking of
providing Clang-specific implementation of code that relies on frame pointer,
most notably in these files:
        lib/backtrace.S
        arch/arm/kernel/stacktrace.c
        arch/arm/net/bpf_jit_32.c

This will likely involve putting "#ifdef CC_IS_CLANG" statements in the source
code. Is that OK?

Another caveat is that Clang implementation of backtracing won't be able to
dump saved registers or dump precise pc value of the caller, because IIUC that
information is derived from APCS's fixed prologue.

What do you think about this approach?

Thanks,
Tri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
