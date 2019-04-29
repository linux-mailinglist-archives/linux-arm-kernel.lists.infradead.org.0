Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171AEDC67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xlxPBkTL8HYRrj9qpKMIDjQwUTMB1ATNVlJ/GwczoY=; b=Z/y6Bfq9VvYnit
	3npGMooFF4ZH+U6x8+GoUMhVJncw1B8rPBPeLL8x1UEGd/2UlEj+fE8ftO5FGHYtn6664ogQ5dpUH
	mx725cCu7gRj2fdRwL47TgABkI+hHamybRmH08fW0FETxXiT89RTzftwk9Xt9afYPJ2/eYqeiIWGR
	7nMjerSPG4vgu5I5tDUOhkWrCKYOO4D0XTWEAU3iJJgulOUF4VoXEIMNdMYlgKaBWKCMvX41pCNvb
	m4SaWlUyOZe2uIqRQD8u9V/89u8s2UyXzaQhjm+zLpw4+UvKQ6/03oX7cOUYYUHxLXdtr19z0fGm0
	fwzhkzL3IOn8WhDtcBeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0E6-00078j-E7; Mon, 29 Apr 2019 06:57:22 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CQ-00052Z-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id t10so7258870ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SHAo97tasO348HfLbqzi1QLl8e7aUh7u5ghLPIX7jR4=;
 b=Bx25GQ+Vg8h3bIAvxuFOyOJkBUe5oLMU4lLgnZ6Opo8i9eoG9Rny4BV4i+yjljxRsl
 +iEkSBAkAvTseW7n9WMAHP5uIT/djZmnZaqvpAq/aURkg1vljvAx58j921h67eILh0aN
 ElF9Gf/6hWkQQQgwoZ4+5dHxrWwvqEc/8oY9uGyyRDA2Q5dPOeIlOXW95G12xhrxX/t4
 oA6Hb0+gnUPbw5CyjFPPOQjolQ4GlrMx7+y6BzRXA1NP7g6SiVzBtZGY7wDzhk8iVnmh
 4Z4FwyZBIRLO0GA9gw6GNfhhqVxb84r1G29OZuQJxcQ9I8uXXkhoj8ank0+C9akVNsc7
 1JIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SHAo97tasO348HfLbqzi1QLl8e7aUh7u5ghLPIX7jR4=;
 b=N0+gZqonrDOi/KzfbcBWasQCWq9+4zm3BU8sNAMbtOGFhfWoJ9e3vknhH3j6q/VyO/
 XuuzgaY3d/4Ua8A2VFksxSzxY/EiBhQG7fjvngkJ47X8Bf68dutBzOCzpwNlm8bS1+fO
 JDzOqRHs2XPR9YD0xN2iFzdOsTLOt440RWngncCoyq4Fiz01rQpL+A8ke0NcMTJTrNvF
 5V/UrzximpEazX/9/teVrDPMvqoenDyIaw5VVQ2UEUMtUjy+GG8t1x2s8RXUy8iohPwI
 aGdOm5yM0TknRqowygL3B/aWe+k4EmRsQ1+1FJNI1ifDei522CxI4WaicP7dNgnvj3oQ
 6LqA==
X-Gm-Message-State: APjAAAXYzZii6BhjVTyNJxlwiOWZCWlj8F1HfHmuCT4ntIrgiRm8PDMP
 oOJanSl+jje7ojNNi2KxOxEXRA==
X-Google-Smtp-Source: APXvYqyINxOBkmrs30yZxPM0tqUHG5qpgknKP4Q/EUL832BKipxT1RvzUH9aYL/M62qE05dF0z+0+Q==
X-Received: by 2002:a2e:2d02:: with SMTP id t2mr28409241ljt.148.1556520936951; 
 Sun, 28 Apr 2019 23:55:36 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t8sm129956ljc.25.2019.04.28.23.55.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:35 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:14:30 -0700
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL 2/3] arm64: defconfig update for v5.2
Message-ID: <20190429061430.ngtjv7udurlx4pwl@localhost>
References: <20190416151140.2598-1-dinguyen@kernel.org>
 <20190416151140.2598-2-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416151140.2598-2-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235538_575879_E37A9A4E 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 10:11:39AM -0500, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in these updates to the arm64 defconfig for v5.2.
> 
> Thanks,
> Dinh
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/arm64_defconfig_for_v5.2
> 
> for you to fetch changes up to 09d7d3e5291b3a531e36a5b6ef6d6088bb541aad:
> 
>   arm64: defconfig: include the Agilex platform to the arm64 defconfig (2019-04-05 17:45:42 -0500)
> 
> ----------------------------------------------------------------
> ARM64 defconfig updates for v5.1
> - 'make savedefconfig' cleanup
> - Enable PCIE_ALTERA and PCIE_ALTERA_MSI
> - Enable the Intel Stratix10 Service layer driver, FPGA manager and
>   Altera Freeze Bridge driver.
> - Adds the Intel Agilex platform to the arm64 defconfig

Merged, thanks.

In general we don't like it when platforms do a 'savedefconfig' and reorder the
file though, since chaos ensues when more than one does it.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
