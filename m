Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEABD54E62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJWIvMjoujwsTRFlWxW42jvzKDxK9leP+IpjKsILZHw=; b=TxLOeao0FIr/jW
	qGJg3WxBoygGIM1Ifv4YbguPeuKvrsrag0fgjiNlR0JkwH6ihnnO9cSnWLYVJT2ch3Mne23c6mn73
	S4Udl2idMqbzkmw6QYbgYb6I16q67/GKZapMQmeJjpIx9Y7Gwvo84UTEv62/A+nRW/R5PeCQDguy+
	iP1GKLae5KOH52mmJ6ECvcee5hAVmBj30u47GIibChUls+tyaUxzdXXERk41kOQQhoRFwjkykESLv
	7nHE9TVivXGTHdHUxhIWdgMUmvihSLF2TpVma4Opgdax4bqgI0BLBM97ulBsP+Lmvzp0dXZB9lXPb
	K9+bmtTJSkVL06YpOQsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkG7-0002ar-CR; Tue, 25 Jun 2019 12:09:11 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBX-0008OQ-00
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:29 +0000
Received: by mail-lf1-x142.google.com with SMTP id q26so12465891lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dF0IbJavBkDmedpj3yJyJEczStf0zljEZ8y8GfrnLNo=;
 b=hZRADPizKg59OjucPBI3M0TUhnj8/1G1RIWD4zZbMQjcz8KM4CL4S+r66k1z7jRWqY
 I+Qsw9vnUgoKZVK8z74l0ZwEZ5FmjLRHeGGsz2YpjdwS6dSEYMH82ElW4689vbo/7B61
 sanDevh+OlBX3C5KyD8iujyOd0GaUoLg7N5JQMUQnTZeeavqf5yX2ij6+bFa3rBhevya
 rNWGq4ASu/C5OhvTm03GcPSKRhVjdzDfIo4aY4rYi+JYYofnvMvEUp7VUaszHQJhU2A9
 O5VUYsLKjJKuzh4LzmqbVJpqGwIzi0iwVRrHIy4tX84EfC2KAcgbeCoMlE7BLOEHRuNZ
 q/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dF0IbJavBkDmedpj3yJyJEczStf0zljEZ8y8GfrnLNo=;
 b=lzKeHfLELJWJEoFsFVu+3m29YBPe8yQOBcA7EHD+g4KxE43Wepq0BaAXxU1ye0X9LE
 1QijCPnZF5opPIzV1hP92BozHdEbWknJIXubjYAWz3UpMeIB2jcQpBVXocBZ81AwjsCQ
 XVUNJ6NX8mW7BP0xgJGu66U4c+xOtXOFW070xWZc5w8ak8/5PXhfT2Zfk+CdjC7V9LL7
 JG9xygd/0kbjjPHHrD42F9uiynXDq8YnO3VVWeExCOl8cuul/a/Vk93pNYXpHm9Fmx2k
 mF9ZtoV/M1UQMb9+EV0CRLBfXhZjEpKTMNhzivHnG+r6xBVA3Hg1dkPHU2nXHNCoy/Kt
 ceSg==
X-Gm-Message-State: APjAAAUjRbiZhqlNhNuw4CqRcdj4EtV8v+ZTiQeRcFPRrxcJS7l3iycC
 lgXv9uQhNxHGiZHO/Z2e87DYSw==
X-Google-Smtp-Source: APXvYqwE0jVw8SSrbGCE55bdvMBAD//3OUaYwM0AqC52kAzrBq0+YhNc2p7IsfW9HIfpQvIyWtX8Fw==
X-Received: by 2002:a05:6512:24a:: with SMTP id
 b10mr77179858lfo.37.1561464265290; 
 Tue, 25 Jun 2019 05:04:25 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h4sm2245272ljj.31.2019.06.25.05.04.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:24 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:21:48 -0700
From: Olof Johansson <olof@lixom.net>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: Re: [GIT PULL] Hisilicon fixes for v5.2
Message-ID: <20190625112148.ckj7sgdgvyeel7vy@localhost>
References: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050427_099750_E419347C 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, arnd@arndb.de, linux-pci@vger.kernel.org,
 John Garry <john.garry@huawei.com>, rjw@rjwysocki.net, linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, arm@kernel.org,
 huangdaode <huangdaode@hisilicon.com>, "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, bhelgaas@google.com,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:23:21AM +0100, Wei Xu wrote:
> Hi ARM-SoC team,
> 
> Please consider to pull the following changes.
> Thanks!
> 
> Best Regards,
> Wei
> 
> ---
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2
> 
> for you to fetch changes up to 07c811af1c00d7b4212eac86900b023b6405a954:
> 
>   lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration (2019-06-25 09:40:42 +0100)
> 
> ----------------------------------------------------------------
> Hisilicon fixes for v5.2-rc
> 
> - fixed RCU usage in logical PIO
> - Added a function to unregister a logical PIO range in logical PIO
>   to support the fixes in the hisi-lpc driver
> - fixed and optimized hisi-lpc driver to avoid potential use-after-free
>   and driver unbind crash

Merged to fixes, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
