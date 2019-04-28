Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D8EB690
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK8W4aO9Poups1vrcacFaNbNNIzuIAfAL5y5QFLUGKE=; b=NyrurN6ze9zo9d
	a1rrwFFJmYs/N7xIoqyHuZ8B1MYb/ZOYaoXSJaHp9xVeuSngGY6hRdwUW5S/hBPxe31C0idMSwJAQ
	ENeZdyumId5HQ8KYOgqcsNo7KjR+goLNMnNlxJ7olylJb7YOg1ZukwP4NzhLnHdKnKbTYjTYpevKc
	krtyqh1p3GzGVtEUFs5AIi71Ho4T2jh2iCnat2fFi1CbGCjJx1AsA+Oi9HbbYAocSp5Z9i5jBHWhk
	tJ0JRyYhnLg7pYRQ5GGcFvGAEPgRs558zylvQdC5yEh375cZN/BXTUDD7PHsH8XlINcOT5+PYE4tN
	T2rhUA0+8aQXcndsl5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqL4-0005Cq-By; Sun, 28 Apr 2019 20:23:54 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqH4-0007yk-Qv
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id o16so6338941lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OTgHSIzAMnhIxjhq+Q002SiRS0jLF42n5DlhxOX8ogQ=;
 b=Al+YKQK4PxQHbFf3yNZJ3pmQ3ECZvJQDS9OUzyqncHMxRvPoytCNEs7AfYvtqp/2Ih
 TLyW43NLjugklDqfxOOK2SdbGypxO8o0OcU7jaR8/TOyIdF73cBVQTH6UDwTkP2Y4dKb
 dslHa9dVl0Vpz5cV9VknKUtJEHJtUzd9YV02HBoKgVI7CtRflSgykyb5xdrNG8XoEeog
 ig8ivX/ePYtreyJjvag0ld4CywH6mAj9WCNJcHki0ZC8z/u5zpzC7jltdFeQmeu969nv
 9gLudP9RcjSfoDorQjrm13MVc3ahyv16olVFza9BGmb1e18E6XCoZ+Jgb3iK4W1L8LLZ
 nt0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OTgHSIzAMnhIxjhq+Q002SiRS0jLF42n5DlhxOX8ogQ=;
 b=GK/G+T+u4BU7A47x/D4wurbZHCImS4mCyboH2tBgA0Z67ZT2ZaZr2otjJ/pnih43sl
 oXsJqqN6TYm5cyZ9MsxRaix2frJwcGk2OmuYn4pdroAQQb3UwG/u8wdX/ZV2cUwfDVng
 uIdU2hHdp8g/muwGDQtBSVQSk7xTtjdDkk9Cf8l7sgR63sHH37TjstTbaFYT7QKjY0VX
 e5nXwXAKBVHwjeyulwRITVA3MQ4pwS4IifkEmlhcHSRTZHb52TMgywS+7Cj6ZvoiYxlx
 00YFgRXWdjA0EilV1zHtJn99WZnW0wwoerr9/3w9umpXpFeSpOquKg2sLtkZoehnytuB
 Q/rA==
X-Gm-Message-State: APjAAAW/x28VXYQvJrVADdjMmNbpW/EgE0d8mnBkQKX63B6lXjX/vh/U
 7fdF8i6fn37yRucy+Gw7PKIDIQ==
X-Google-Smtp-Source: APXvYqzT6enuzRX/Wssf9zeOWBpBF7BMx1i5LhFZalJ28NC+AKAKZXK1oyv1vAmYNFhI6k3cs788PA==
X-Received: by 2002:ac2:51da:: with SMTP id u26mr30417517lfm.32.1556482785206; 
 Sun, 28 Apr 2019 13:19:45 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u8sm6929896lfi.83.2019.04.28.13.19.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:43 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:40:34 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 8/9] arm64: tegra: Device tree changes for v5.2-rc1
Message-ID: <20190428194034.lxwucyeae3ch4z4t@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-8-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-8-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131947_216555_A5D026CD 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:19PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 79a3aaa7b82e3106be97842dedfd8429248896e6:
> 
>   Linux 5.1-rc3 (2019-03-31 14:39:29 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm64-dt
> 
> for you to fetch changes up to 2f03e39b5bfe41f3a0d9a8b01231e7e5045cb9c4:
> 
>   arm64: tegra: Remove regulator hacks on Jetson TX2 (2019-04-17 16:48:44 +0200)

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
