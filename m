Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94A1398B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0flqIsvOs0vijdNshDoW/D+FFXHjipkdS/ccnRcCnfI=; b=uI4vi3z4HU/7Ho
	Oo4+IFFLnzamsyLbMOIO6j9yVPcyv+BYqJTp9UU6XRexFizM2sdcSsBi3yoXkLMlSAbXtVJkYwnxR
	YX+zswPzR5v4gmbGLMNjQWjP+r/n5dg6u1KhP4lWuCK9PXlaKxt+DsnTXQFqWfNtBaYcvEh8aNwBa
	O0eoDPHzPFn02rcUvjyDgHIWV0zAaIGfj8fLavPT2E2+i4CTpKs9K8h954DAEiHKpLdaBR+L37QvI
	Iodslym0Bn01pFB6LJIqdVShi5aefGUJpOwWHXxchJ9ILGeWqPoSzbxAKeXcjN9J4YirtoGJIuv8y
	MsqFtTeC7rjEbcT2gvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNNq-0002NR-Jw; Fri, 07 Jun 2019 22:30:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNNh-0002MP-WE
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:30:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so1105310pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=XuNCqjePqDvn4lAEhRpdjQcT7X3J/79/6r+E49pUakU=;
 b=gw/ducDlQdQHPd+e6gp+F3SvSKhifcRtoemwoSufIWDlzHTVLxsWk5tHcjkWqm2SO1
 tN/RRohWoYf0MJ3QN9qsILayDbUxjOjAV3YMrwQjsRKgjeyiUQEoFOhFSArcIH3cBPZt
 yIPZU1wsKCH4uCOmfTDiErxn0oQEMRvwp7ksoCo17k+Hz8AXuXxvPyQZ92Tg3HnyoauH
 4z1tb1/YoR4PFKHxWiR/UM6lu4eW0+8z7Tomy+M1EaWfXSWlHBTMBnk6o7IwkWKvR5JF
 3F5Q2NB7eMmMh0R+Qm1ZebZ69zXf48qNpY+W8L+J5kNJRX9hfI5K9Qyb91brjKj2EAw8
 fegg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=XuNCqjePqDvn4lAEhRpdjQcT7X3J/79/6r+E49pUakU=;
 b=qARF5TNh3B3tcLz55YkfZo/V/rEld9ZaUdfX+5r3vVNwUJvZYJd6dyidIWapcbFwH+
 xfZR8wXom4g7x3D7ylJEk27dzFsm6UsBLUJ4SkOaeZralcVOE8SKvWHgsx7P/K8xfIO2
 nbUM+9mGqzma3/pFwnBFEeOMuAZnKLm0QfkMqKvJLT68Zeq8D8JYtGANWLaDL6ABi7kv
 mLTyF+6vkLxcuRxoo6PAt7tDYeCIFQb90nyXRZyMrCSjsFMACHxWiym/NkfraLKYDVwm
 PMC6mppaz+4J0QP+juvcnqFm9KB7yuwHPqTPm4GunODMSIa2nA2hojiC4Z3EGuaWYByV
 upwQ==
X-Gm-Message-State: APjAAAWOhQSc4oQ6gV3TBe0Y2XSEM/4wyZLpmoC+McIGAf5rJqE4YPBY
 qnfs7AB7RPAUpo6RcLQ2mC4GPQ==
X-Google-Smtp-Source: APXvYqwhZ/RJub3yjH06HYykOBY+dB3JKtBPnK4S+3FVx2KVlZSVwKWa7uqea2cume7geYK5drxJBw==
X-Received: by 2002:a62:7656:: with SMTP id r83mr37066043pfc.56.1559946640632; 
 Fri, 07 Jun 2019 15:30:40 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id 24sm3008135pgn.32.2019.06.07.15.30.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 15:30:36 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: meson-g12a-x96-max: bump bluetooth bus
 speed to 2Mbaud/s
In-Reply-To: <20190607143618.32213-5-narmstrong@baylibre.com>
References: <20190607143618.32213-1-narmstrong@baylibre.com>
 <20190607143618.32213-5-narmstrong@baylibre.com>
Date: Fri, 07 Jun 2019 15:30:36 -0700
Message-ID: <7htvd1av03.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153042_085312_C9046D58 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Setting to 2Mbaud/s is the nominal bus speed for common usages.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
