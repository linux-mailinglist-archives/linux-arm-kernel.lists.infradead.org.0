Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4DBDC45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlINIrLrW0X80l5YgeUtBA7CahPEvNvYVj7uVJyZRU4=; b=u2MhQIb+DvwZxB
	dyjA/+s7uhvhv+bA0wNsUpurFjl10DyfqhJNjBB1+uXHu187Vs8tizYvr3UicJEaZfyNMizoXEZc8
	+RwVFh1P/AamR1dJnfdMFsNGITVeI110Kg3HqRU7JB0vwZfs+rb6CgBJE2W5rRWzUqWMP5ItvoLwK
	0sSjdrqXNOXeHprRTH/4GmJTZ+qSDTCZqz5wUCeVaSXH1RyP52vJZCkSCprnn4V0jYhzgdS9cvGiE
	weu6h3JCenT9fKVIvNly/hY0Z2VDeJvMmIibDjLvfP9wUYek4QQ1pvaQbmN/Rocc6OQf+QVk7goLT
	uXWmRJrraEPAZM++SJ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0C8-0004lh-N4; Mon, 29 Apr 2019 06:55:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0C0-0004kw-Ij
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id d12so7075311lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AIeezEA/LozukeQI3m5yr6THPK8kT8/IIA7DSil8IQQ=;
 b=ECpvxpa16+Ovj6gfkjS/kfbp7mHaSIv20xxaLy+Ix7p889maFGcmWji/dTXZiHoJBm
 hmSP3O0dX15ITQ6bW6u12KiN4aacaln4qyQPeem6OH3dBYpOz2yNUrIoPYH5IbzVQK5t
 GjvOlrd6JaIoE/h9bu85Ss50Khg8dmT6BiDuFTMqyrQhC0iyUB7IAAfWwyGGlakfhSws
 /7Qu9L5gi5wa1oEPMWRLHvRY3sMY/NwhneoxBGx+0oFQPPuUTtBSWFcL5W3l2lVhsMA2
 xPCBilrZ7NfWcnVYoQoq75lhtg/rHo1FoMxHE97w1IxxNYbfcZ/sza+DrZCk8zy2KUvA
 2yBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AIeezEA/LozukeQI3m5yr6THPK8kT8/IIA7DSil8IQQ=;
 b=WxIcwzc/t8hjpn2RHZuaWwGStoHJ6VAAV/upafLkA+SeVpAFsY55N9lGvgIr4WkqRG
 et6CGWaXq1CgaHTQhzO9LIyYCS9eN+KMWwJTL5fMKBaSvgwWyQvIyR3eEyMmyq3YddZL
 m+cO/TPoGSIjxu1ijyzIv+55tJsqTnbdafC9F7bUeNqBIQ3xH2v7UxYKSe5zF/ALqwCY
 dYBNHJ/ppEZhFMxUTSeDqSG8+9B0F0XI/jqD6+WPiMBYznmnj4xXafOXBxme4VQlbQAy
 CDrzhv4PHrW0vM8SeqK0vUd7Z5RSuJi/OKr+NYbVc4drzPBrarRAakGHmXToVubJ7ulo
 IFug==
X-Gm-Message-State: APjAAAWcX+K7J8WxYeFpZVfpMLQ+3x/BBrW+Vx0D8CubTWXr4bb2RLN1
 d3dkhIaoFnxcIqBKDdndj6MzWQ==
X-Google-Smtp-Source: APXvYqwiojHGGnv7Gwi0tK6NdfyX7owDtQ5xmifd/f6JDQp/Av9qg+JlIQfhauePsjLygsJXtk1MFw==
X-Received: by 2002:ac2:5326:: with SMTP id f6mr30864558lfh.100.1556520910604; 
 Sun, 28 Apr 2019 23:55:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k4sm1098534lji.11.2019.04.28.23.55.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:09 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:02:00 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH] ARM: stm32: add AMBA support for stm32 family
Message-ID: <20190429060200.oer76j4okpqxqd4t@localhost>
References: <1554990248-2771-1-git-send-email-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554990248-2771-1-git-send-email-alexandre.torgue@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235512_683153_8A614E9C 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 11, 2019 at 03:44:08PM +0200, Alexandre Torgue wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> This patch enables AMBA support for stm32 family.
> stm32 family embeds different amba pl180 variants.
> 
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> ---
> 
> Dear Arnd, Olof and Kevin,
> 
> I only have this patch for STM32 soc part. So please consider it
> as my pull request for v5.2.

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
