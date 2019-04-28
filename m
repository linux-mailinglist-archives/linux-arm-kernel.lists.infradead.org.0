Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686EBB68B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TM7yxqnx1y0J/2uuJN+5LQmmJAKX50IueI/ErRdZmdc=; b=jN4gpoA57jNA2C
	5vvhl1jh0YL7WYmZuQAJimajgOFm5E06wy50NjmKyZX8qtMK4D+57l4TtDL7lbF6pau49ANiSMSSK
	FCoTRpbHCtT38mzIxwZ2KRISWF+anY1RDiJSmhzy2PIitCs9gYaNaxtjRNx2F9GkHANIwdggZIENd
	hvIY/WMqS49g5+8kDqywQzW8SD8dAIpX6Deg95SH0suCKwjEpYp44PCMjXOB9KtKq375cZOjV7p9R
	T3PgMGn4gn+wlKl2RiNV6cFyFbOShP4wfoLF4A1eRPQGlir3MkJOaojO+ukQzOpHUe09ulklQqnnp
	7tH1p7EK/0tQ23U7mOOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqKC-0003zp-AE; Sun, 28 Apr 2019 20:23:00 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGt-0007jo-Hu
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id j20so6375672lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GDyqHHG6mSf8mW4mAzhodjnMRViqRdGwjO9AqVKt+ck=;
 b=HNzF6jYd1HRs8heauPBUiglVBIg/wQPBPJd2h1kUXuQntk/x+R/fufmp//920zTZxl
 xWuOkoEdAu9iSiOnlLJvL1TRsTFegAmg07W9wZz8pTzcgmdu9xhzsQWSatdQJZR1AjPm
 C9RsTbxpEZr+znX9uwWshuBtol3akO1H74mkLln8+rn4IkH40PFeyYoZJzclpWMyZJHt
 F98d8fuEvJnmv4UuLmQ1nCxmCUZr7xOjPFBEnoUuNJCwETm3/DoeyfTXNKKKAYvWHD+Z
 lHLIV75+99f8hI3SYlKBO6bgPlv0+YvIpv21b+TD3Lbz0GFF+WS2evPTXYFBV2FtztOu
 ydmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GDyqHHG6mSf8mW4mAzhodjnMRViqRdGwjO9AqVKt+ck=;
 b=ErIb5Tz3zFEYxOVK6xGydN/09F87CvMQOpPrnMIl7rGjNMDi1xhm0HEfnDeKk9sjTS
 qtSAtd38jtAgcL7KrcPlWUsJHupTO3a43OkArJ2xatEgARfpw+6MVr6mgqufG2ts+1vq
 xScgR4i1QteZHusR5I3nxJuDdh3lSYrYBY8FoHiGWgOH78rOmFbSrKKlAttbqo1btbpc
 Lm02oWbF55rSqUn9eUKtH/iJjxeQeUw378k5r5TMCaA1syJ6KpamV6JZW1YtWtbvGcY7
 W8TzfKBg4pxgOgy0kiBsaOhveQrctw6nk/PlolOztmyupbV9Al7A04hLzyM8JHUH2XfU
 WolA==
X-Gm-Message-State: APjAAAUzRcoo/vFtT53XIuvutVNCFjs3ZUYXXDhjQlfNl8y+xojaP7FH
 FbNqg4WoFZss5CD51FbooUynmw==
X-Google-Smtp-Source: APXvYqwJKMGBuAf59uOX9PQa3KnaIlw6kRdij0ZP/IXXBMk0j7iKVfhWSHojSSl2ZdgcwHFYACm8GQ==
X-Received: by 2002:a19:b83:: with SMTP id 125mr15038363lfl.84.1556482773997; 
 Sun, 28 Apr 2019 13:19:33 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i64sm7486836lfe.18.2019.04.28.13.19.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:32 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:34:25 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 2/2] dts changes for ti-sysc driver for v5.2
Message-ID: <20190428193425.v2ee2qeq5kjp4pfk@localhost>
References: <pull-1555343712-332506@atomide.com>
 <pull-1555343712-332506@atomide.com-2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555343712-332506@atomide.com-2>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131936_009582_EEAF5672 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 10:00:54AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit d59b60564cbfe77d85c2f51b29941d8ed14984d1:
> 
>   bus: ti-sysc: Add generic enable/disable functions (2019-04-09 08:58:48 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/dt-ti-sysc-signed
> 
> for you to fetch changes up to b2770b2d6f1b4d33e919fc2a9ccf536efedc1e40:
> 
>   ARM: dts: Add l4 abe interconnect hierarchy and ti-sysc data for omap5 (2019-04-09 09:00:54 -0700)
> 
> ----------------------------------------------------------------
> Devicetree changes for omap4 and 5 l4 abe interconnect
> 
> This series of devicetree changes adds the l4 abe interconnect devices
> and moves the devices to their right places in the hierarchy similar
> to what we've already done for most l4 devices earlier. We first add
> a shared omap4-mcpdm.dtsi to make adding omap4-l4-abe.dtsi easier for
> the mcpdm changes. And as earlier, in case of unexpected trouble,
> devices can be probed the old way by moving one device at a time to the
> old place.
> 
> This series of changes depends on the ti-sysc driver changes for handling
> the external optional clocks that the mcpdm relies on, and is based on
> the related ti-sysc driver changes. Note that this series does not depend
> on dropping of the leagcy platform data, but I already had those committed
> along with the ti-sysc driver changes and noticed too late.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
