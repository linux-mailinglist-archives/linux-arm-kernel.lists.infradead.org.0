Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F5633AF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOKHYbuwYalxFzTmNQUo+yIZrKrvcgotDzcKF3Cehi4=; b=oYJGoKv/4DTXWP
	lVfJmORRJWobW8YTgSnzGocdmYMkqkGvCaCOZuwfxbf8MDEdWH6pCeerRrIYh+/3ug6DxC0zkiPBS
	HFFWUVVh4P2vmn3QxVLXN4yY9IODEWCDzydNTcPEMy0YNjI8iuKRDBE4SPphfj9aGOihYi1TDYZ+D
	TZ6P397ZMwo8cBc4HOJMDBFUS4gOqhhaOrqrv0IpTI5h6jscKiVcrrwHckeD80wlH/7fpPDJOAjFK
	HOevNHRLexwJysYzfjiQnVRfYGHKtgOIStYnHgjqbq4JH29SOuQZedJEGZjd3blPPbmhX7JzVKh48
	ZCxObBcxQXT4yzSaoLRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvF5-0007Wm-5E; Mon, 03 Jun 2019 22:15:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvEw-0007Ve-GG
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:15:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id c5so7492453pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 15:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=AS+5msGMEX1/8R6Y37Be553kjtYeh4WbTw7nlVDQ3fw=;
 b=qBcbQOrH7/lAUooQqY7B354nOSfo8120KYrAagGRLluXFqf/5E8SAIO8ERKuFud2gE
 DrWecjYJNk/bl/ev7vgVtZOG7sM/RMZmAB+BubapSjxCH878TfewaumtVkfkG0jQbQST
 a772e/QIUaUCP1tbEY/5RdTLGx/POkz5uABZ9GTS22CyHk6+ZpJ20vj62+B6trv4A/Nq
 RDjLugBO9fExWsJmkkk9aGrASUEWNz+TVzULoJxaync77pFmd+mRHhuPFnw77c91y38j
 KZGFBsxGV5BIYnuogEDU6PDawdkkRN9orJTj9zTZgDforVxWoW7hDZm2sUBPctKOnY9z
 WTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=AS+5msGMEX1/8R6Y37Be553kjtYeh4WbTw7nlVDQ3fw=;
 b=bodPJONC8m89uJBQeCdhnZQ9DbeDASEWf+OTk1b2xb0hg4y8K7czCSsSKt39PxlNIw
 qwSKDh/dnfuYW2psa4mmrIeRFtCXhujM06+p6ETxHIV6gLf7zz2DGJy/Gca0VbkYHzeq
 EG6q6UeWCiJd+AA0c/2abYcAzH1aa6ICEAX1/w4Nt2WPwy2sk2T/eZdHlXyOBUMCKbML
 YHt4r7Ao3JW5qH81FIx2Pd62MpLYo1yrsEf9iYocE7axvTUmDed54CG66tx4x01mdBCw
 EX5F22Kio98TMwJwSf22fOe0TzAd4oYfQJK81xdsqqw/AAzfXBrUlSH+dMzEmH4T/D/K
 g7AA==
X-Gm-Message-State: APjAAAXtqkveWUQ/tM0/aGci9zY1iD/HwqhxztQfLmm0WGpCGw1saim0
 pfmqDZfmVcru4SfIHMApgqX2VA==
X-Google-Smtp-Source: APXvYqzW4UJMHXhVyffvyuhaOGHNRco6mfxCHAHPih8GypHJkUx+ZG8CTCoQM38gm5YIRTyALBFE5Q==
X-Received: by 2002:a17:902:31a4:: with SMTP id
 x33mr4946785plb.331.1559600137824; 
 Mon, 03 Jun 2019 15:15:37 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id d6sm14561224pjo.32.2019.06.03.15.15.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:15:37 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet
 Support
In-Reply-To: <CAFBinCD67XCpT-zmppJ3SSs5Q5ruse-otGqMLdbeaTnkr3PKiQ@mail.gmail.com>
References: <20190527130043.3384-1-narmstrong@baylibre.com>
 <CAFBinCD67XCpT-zmppJ3SSs5Q5ruse-otGqMLdbeaTnkr3PKiQ@mail.gmail.com>
Date: Mon, 03 Jun 2019 15:15:36 -0700
Message-ID: <7hpnnuiad3.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_151538_549312_7E03DB8E 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Mon, May 27, 2019 at 3:00 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Enable the network interface of the X96 Mac using an external
>> Realtek RTL8211F gigabit PHY, needing the same broken-eee properties
>> as the previous Amlogic SoC generations.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.3,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
