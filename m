Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33B54B637
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lp2SpG20IzLpqodqgB1rfEYy75oMEbi4pmosTlK4I1E=; b=dv4
	D98kEQIRWnOcHmt4+wF8/O/D0axbWGinz10ERHbxpv/srIUraHpP9BsinJzOFgsJJnJFrv//1il1U
	N9F+MMyXBfju9q/ZWa4LirZNvXS0vpHn0ZZqNw/cCk4UKLg9W4bvSztejU4tvdkomuvGNLFkeL0Nd
	FzwDtX9OX+r1PpOlswbcG1Ld0iQaiRzqfdRGfQ6J05SWDIuNoDMpfn1JPnrFAqqBEgAYxtRuz4liW
	8R7A37IQ4YfhduXEe15zzMBEoEvE0j1EwXqrqXMOGl6FRVR1gzWDTlgkZI89o1ABUlSkqpGHwLRZN
	bdbtWl2vgy8VzVUbhRpqRQ2zXUo2yDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXu4-0001BL-Mz; Wed, 19 Jun 2019 10:33:20 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXtu-0001Am-6z
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:33:12 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so26413462edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 03:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=prEybEoj3o72THb7100BZUry/UY6ESPQt+/gDIQ6hiQ=;
 b=tVas4JGmOdoKQezw4IF79qN95+X8qColzjmcI3e6zfunnwrk4v/uK5cRGosZERZe3d
 q+1k/lykDe2XKSF3V+d+CMFjaiieiEix7qix0IiK9GDZtGMFjVK4Xmt4xJffp5zkTvii
 OGCMeZh2pBMITEYxnJWydgUahODNSrJNfHgeiSIa9E5XMitvmYnvzNXYMxvfnbG6P6nA
 VmLhV9zTEbBSuEijR5CHjP8juCrNi+anqBj84x1aqIkEadfSsHG3tgiEQk/h5Yn3bGV8
 lU60+NrEERpaM4L+hy0dF+gdwLTV46Q60ysF5fZRK04hPSsTwNO7TCqeQhRGVtsZHrYN
 DDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=prEybEoj3o72THb7100BZUry/UY6ESPQt+/gDIQ6hiQ=;
 b=HnAGBs1Sg7i9+yHdqQHHOKozM0a29H7fI0YFm1d5zyi6UkiuqqnCg8uKSr7fbVx15K
 NfVJJ1lHH7ZMH50YwW+pow5WSAIhMsGOH5/POx7OYqGNIjoVKrx1grCZDMgUscZwL6oo
 NpbtFDvO11r/z8jMP1KFXT3KdR1IzpApPI4iP3JVdnRdAP6oexvRaYH3E3voEPlHwP52
 0iW1UlT6vGB9y+PRvSZ4rBdFmkhgS/iW3300r8Z7qnJOzr1hU3nRDm48gckSRvwcbSU0
 RA4RlSNzjZp9QPUID+FmIu8Nh4NKkamnDC9fSM2AK0kmuHy96kPVZDwNOcYOIy2baB7K
 htEQ==
X-Gm-Message-State: APjAAAVMQN2qDNUkxTWTjShI4IBxo1cgARDsPBpwxjkb1al6TrwP0Ea6
 fvyEgsvmNHkN9Bix7GdgVXhWpssLFXh5230m/LTw9pXIeU8=
X-Google-Smtp-Source: APXvYqzX8mGO7ITJj1XftqEg7XqO2KRn1y1bvLQ6LhtcOVJshnjAoaYwzzE8VLfRAtuLSK0EwAus+ih4cqB2FjnNTSU=
X-Received: by 2002:a50:a56d:: with SMTP id
 z42mr111759388edb.241.1560940388055; 
 Wed, 19 Jun 2019 03:33:08 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 19 Jun 2019 12:32:57 +0200
Message-ID: <CAAfyv35dAdTp_co3PmwMRj_g1AZkrrtmCWjuAhcQEQw+fn0ZoA@mail.gmail.com>
Subject: linux-sunxi: H3 32khz clk output
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_033310_282117_A323E008 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.belisko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm trying to run mainline (4.19) kernel on nanopi-neo-air with wifi
and bluetooth support. Wifi works fine but bluetooth seems to not. I
find out that there is missing 32khz clock from X32KFOUT and also
BT-RST_N pin handling. I tried to look but really have no clue how to
add support for 32kHZ (orther sunxi have osc32). Any ideas or
thoughts? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
