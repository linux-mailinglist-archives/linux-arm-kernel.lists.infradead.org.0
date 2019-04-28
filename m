Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD88B694
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIgHkXqbsJlHo6EiUsLMwPFzm3yzPQU6UdajCsbty/c=; b=ZYxNZkCks83Zxm
	6bQE8gnphLGdNwz1/F+pqArcoOmXadfB8g/Euu1IySGKTz4W1WLx1B1tvV0OjzUg/lIBJKs9A6Qna
	LCjYklocP0xk+9P5uBmOhu5RwDK0TR2HtqDT0qd0VJFQcHmHSCrM0S7QQGBLAl0sZwsf+mrQD8apQ
	2kTMpghO18CWToFTLXpPNQJlfS4tnnta/GRpjuxrHU+KweoGNem6IhcJ2PCZj4DrVmKCTBVFfpIs7
	aBoN6cP7WLns40X9UICahcWSZUFywdWfaJRAiqRWn+ki7YDunj9ef7PottJp/wKuER6IiIiGWsaN1
	pe9uohf6LfNDb/uLS1Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqLj-0006AM-ES; Sun, 28 Apr 2019 20:24:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHD-000844-Da
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:56 +0000
Received: by mail-lj1-x244.google.com with SMTP id c6so956236lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L5e3wbWqS8WkszlaMFT/steJzf55OCNLo5odjAjwYFs=;
 b=BLVkzEB2++GEgSwcTi/ldXdAinUKQgf1Hh/G2sKU3n05u+fqDSrT6ln2FXNVk4V6PS
 tCTqZg5crLxGjvOoB5pU9MThZ8TtD0fhsxAg5RCh3N9eSL0g+o7dvMsOK2uPS7O6udtC
 ahEgxhvv4FvryQFLU68kds8Ebp8LRCDSk5Kjv4cVrrJNaohU88/cvfHB/KBdJaDgyrES
 9CnNNRt91Ow2DDP1Npgm5ZjzGh707/2UQsfn9XKewIMiXtkczPeACB7rQDiy9GOQHz6q
 NQ8r1nMWqvaGW4dx3OBG8pKZw+REQmvktO3UW6Z8T4oSg8pvbg5MjwRf5WJMBJJlYRJY
 H6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L5e3wbWqS8WkszlaMFT/steJzf55OCNLo5odjAjwYFs=;
 b=tOutCZtqm81x84oPyxLnxNgd9JaIpRBbvtswB8qq3uT8qDr8Fnd+0KUORK2RkCSBNW
 ti92z2DTIZ1TKxRxDSLe455nSuMrTxjDnKd3X9LADt7R9Tdu7KSJ4Leq2RfMWsbDyzbn
 9XEuHFzXYAonizcKrzZ5dgVTfTlYGkRDsQNV7jbampYgDwyOyb0bs6fmIcrwMzmotPWK
 FSqBWgqt4gKzM/eOjq5ccwx1IEmSLTRBguwiDBiJQoLO1FagWINuHBIq53OZif1e0IfD
 OCiO747L/e8WRvwSkA7xu4HT1FIPBosh664NdV2WKbHPBz1ToCxurfKR6lvyJ+spX9bA
 OnLQ==
X-Gm-Message-State: APjAAAWEFTC6MngVfYzLGC00omHMmYEZe8hR4tNkxyp+rrR52tcrQ8UZ
 PBYWjV/dWMbi2HkdOfJxqhJpOhm6JQCsxA==
X-Google-Smtp-Source: APXvYqyQ98SuD0+DHFp8gSvtm5cheQtB/6rS2yNZfdaaeixQ1j1a61mwwLSp0wY4wZwPxi5vn2rK1Q==
X-Received: by 2002:a2e:9bc7:: with SMTP id w7mr26168853ljj.58.1556482793912; 
 Sun, 28 Apr 2019 13:19:53 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r21sm3907678ljg.51.2019.04.28.13.19.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:52 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:45:49 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Second Round of Renesas ARM64 Based SoC DT Updates
 for v5.2
Message-ID: <20190428194549.vqisfqzwzkttqxwh@localhost>
References: <cover.1555683861.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555683861.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131955_454420_0217A193 
X-CRM114-Status: GOOD (  16.16  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 04:33:55PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these second round of Renesas ARM64 based SoC DT updates
> for v5.2.
> 
> This pull request is based on the previous round of
> such requests, tagged as renesas-arm64-dt-for-v5.2,
> which I have already sent a pull-request for.
> 
> 
> The following changes since commit e3414b8c45afa5cdfb1ffd10f5334da3458c4aa5:
> 
>   arm64: dts: renesas: salvator-common: Add GPIO keys support (2019-03-27 13:02:12 +0100)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-dt2-for-v5.2
> 
> for you to fetch changes up to b7f5a8e435ecc7198407f44a2a5a6cdae1056b0d:
> 
>   arm64: dts: renesas: r8a77980: Add "renesas,id" to VIN (2019-04-15 10:43:26 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
