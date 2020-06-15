Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9220F1F8EEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqtZovueF9Isj8tjqhgK7ECmgkXZOQTevMeothMLHM8=; b=domXdZ2EVhJvLq
	o/KV+iguM/OD6V9GmxQElSSKjSyWLe6MBpJMYcbNZU0l/rZOmbsQs1dHR5k2P76Dkf0+Lqod9gmbe
	qdrvcD2k1YEXT6RML+CZwXlmUCAAvkykD8HHi0GOytHOfWgyc2LoxbLaRHnqcn3mQpaoMgjJoxXDY
	mRPlWL6kHxR5kQyS7cJZ/fX6oJmvZ8HOYXu5asjYIYcpoadzMUvW8LRpOSrV6s40ndlarIM9B94Iy
	LbZq+5BesX1lzIGNRudzhxX19KEsRodqEt5cZrfnxohbuz6MzwfFdtA3ycaDyaWFImbpDn1lvNjqY
	MhYjCO8tOQ73iTI/aMAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkj59-0001mA-P5; Mon, 15 Jun 2020 06:58:59 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkj51-0001la-3O
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 06:58:52 +0000
Received: by mail-wr1-f67.google.com with SMTP id e1so15863988wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 23:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=15pzvZ3HgzVpOIe1NSunNL4NazqLAoN4J8Q/f2NVLd8=;
 b=QozXOaaMSC1bqfUGQwD/5I63mqsEKQ98Y2jkg9jqC9wdbUqXjokcQ3R9V7BgmDT3so
 KBwHYwHC0el+No1e33IAPR5/yVZ3X6P9nSTzbC03mRgrnhCCE5TGUekxbT+CQs2y/bD3
 Ot46NbcVZfPvay/FuTxFIk2DeEv6f1/tgVVNI/G8a3/Sdo+PO2J8nfHmBuhRxfvQu5yO
 32D1R8fGfCTYFpyZUZE6tsa+flpbCsFNthHnoqoFPJKrLXVzw4gY3ZIMNBlLgF6QtWKA
 m1b5y1TxqhSK2rKOaLvXbDdrEvd3fU00gL56JvbT79yxz1yIGORnHgwo7yDBQpkN38bb
 9vvQ==
X-Gm-Message-State: AOAM5300y1JLRE9KBgxFC4yBNLNnidfS9+bOeKm2vRVuIyUWZnXsBMKW
 3PJvHF6a8xJQ8BDEan/ZjW0=
X-Google-Smtp-Source: ABdhPJxC3uTidSFQuPJd5N+ZIugAF5DjMqJZwBdBMRxo/CsJfJGnW54QJwO/PEzPpqMarcPL1KnxUw==
X-Received: by 2002:a5d:5585:: with SMTP id i5mr26775604wrv.112.1592204329345; 
 Sun, 14 Jun 2020 23:58:49 -0700 (PDT)
Received: from kozik-lap ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id d63sm22195666wmc.22.2020.06.14.23.58.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jun 2020 23:58:48 -0700 (PDT)
Date: Mon, 15 Jun 2020 08:58:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: wu000273@umn.edu
Subject: Re: [PATCH] char: hw_random: Fix a reference count leak.
Message-ID: <20200615065846.GA5791@kozik-lap>
References: <20200613214128.32665-1-wu000273@umn.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613214128.32665-1-wu000273@umn.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_235851_140777_D561E261 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>, kjlu@umn.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 04:41:28PM -0500, wu000273@umn.edu wrote:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> Calling pm_runtime_get_sync increments the counter even in case of
> failure, causing incorrect ref count if pm_runtime_put_sync is not
> called in error handling paths. Thus replace the jump target
> "err_pm_get" by "err_clock".
> 
> Fixes: 6cd225cc5d8a ("hwrng: exynos - add Samsung Exynos True RNG driver")
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>

1. Cc: <stable@vger.kernel.org>
2. Subject prefix:
	hwrng: exynos - 
3. Subject title: Fix PM runtime reference count leak
   (no need for end stop)

With these changes:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
