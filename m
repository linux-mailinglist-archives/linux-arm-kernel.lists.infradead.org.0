Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEDB1AD03D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XS+z+ig8GD3NcdE2ihvyXaCNZkwd8CmhICJWSJAJ7ZE=; b=TSCeTh6WSCdU5wM9J+pFUUVG/
	PZmxgOi6vw4CUI9IxnPnffitEhpe30Hk6yrAaIEWHSx98X7Y8J6ltC0DCiPMOoiyTWrKKp5CXms0x
	U+0Ek+HQAk1JDNzcLAfGa46pWB89QvcDXBsvEn9Hk3gsVqu6Wb6d2xaCLFGSRYwu/Irjah+3jk2Jl
	DB/DPtQFwW5Ula4tZ/VjWAMRgdU6H9N3pOBNHc9QKKBusKs8479WqYZfRzEES7nDlxaO4Lgz33lZB
	QkyXFaWQKGJQqEzCdJPfpYZbH5hZA9ovMRY22pCOALDK1lfu3W/Rt8eSAYcZKLFUHhnrzSYesPhKd
	CzzCO6l/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA4b-0002VU-Ae; Thu, 16 Apr 2020 19:21:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA4T-0002Uy-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:21:10 +0000
Received: by mail-pl1-x641.google.com with SMTP id a23so1705824plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=czdAFM6p6v4HQnalKB/1Vj+iwWqk9dWQoxg5HWsT0cw=;
 b=TCAsK+LJL2ZXC/c/k81+myBJTXrWpR8xZC9KxhbBqPsvm01uq4XHI/P/KEpPP4vtoo
 4IEBoYoY2RKXvJ9DdBTzU6C5FOOWBVlzrfNtSY6ZAU/wrCm1b4gCCbJfbaZYia56nNO7
 0m588yJUuLlLQi9P25zlOzNUQ2ViRpl9R8RhAu22F8BVUqJTnVot7WrBSq5xiqvSQBGc
 xgJmOAAAeanK/8hvQs7NQ9vzakXSxyiDQ9c95cJTy4bK+TklDSWRW0InIHKddx9LnVz+
 BmKEFLQsR9lyIJnDNPSkz0n/fhyokUYakgFcFUmZZOIboqjwIM+P3ITC860H3bxrFFiY
 /i8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=czdAFM6p6v4HQnalKB/1Vj+iwWqk9dWQoxg5HWsT0cw=;
 b=hPjr1JH/V9usFw6js6TNSR7o1DjwJIqWgbZuI9xsOFxxk0Pq+K+5jKC2f2k7fbw/xm
 gTyG2D0PkRjqRTmvDhv1wDNBuoxGWrbyjIaKfT9DcRapxllKgZ/3H962gjaYuQC9Ur/Z
 TIGP+1ZzedZH0xa0dHPreoz2r3u8R4ARzdsY3mt2bRDzCtDEn1zFDxIFHpAQSuoo/okN
 HsvCsL8dZD6wodytRSDECAUoh72GhZ0L8x1EN7V8p4TcRU9H74ntLf1Rf7pfFFm1H8g2
 d5yJ5FxTnEXboe6maMKN0QBNOLpcfjqHpRNgcnIt5eFGbAdfDF8fnhtrIZ9Wz9Fk55mP
 xrOg==
X-Gm-Message-State: AGi0PuZqXE/uEh5xCed6UVwjzbM/auMVzqJ77fcQreQ2ZtFvVtYcWtQ6
 3npZisFmS2IA29SOme6/XW4=
X-Google-Smtp-Source: APiQypK4k4ZVOOeLeqmkjjED5k/uXPYQlei03Asq4FRd/Gw+sVBDOwUYO6nOrjbZkSP6vWw+rOwfSg==
X-Received: by 2002:a17:90a:d808:: with SMTP id a8mr6883176pjv.6.1587064868660; 
 Thu, 16 Apr 2020 12:21:08 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p11sm15197764pff.173.2020.04.16.12.21.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 12:21:07 -0700 (PDT)
Subject: Re: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
 routines
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <eba7f3605d6dcad37f875b2584d519cd6cae9fd1.1587058078.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <758a8d30-1065-c98f-3c8d-590be35935ff@gmail.com>
Date: Thu, 16 Apr 2020 12:21:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <eba7f3605d6dcad37f875b2584d519cd6cae9fd1.1587058078.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_122109_329250_121526B5 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, pthombar@cadence.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Rafal Ozieblo <rafalo@cadence.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/16/2020 10:44 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Use the proper struct device pointer to check if the wakeup flag
> and wakeup source are positioned.
> Use the one passed by function call which is equivalent to
> &bp->dev->dev.parent.
> 
> It's preventing the trigger of a spurious interrupt in case the
> Wake-on-Lan feature is used.
> 
> Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Cc: Rafal Ozieblo <rafalo@cadence.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
