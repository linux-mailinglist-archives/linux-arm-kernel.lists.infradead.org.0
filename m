Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14C02BA42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSL+vqaSss05gI+SEBOu9s9DRYWkOHClHBkdcFhQPq0=; b=L+n6LlHqp3WVoK
	sl8ChFBhCTL8qKpNGnf28hWHO+Dl22x/vuNlAr9VlqXUQBgBhtZOKDA1G7v8wG7YcAB3Is0DB1p7W
	2VoPW4ZEC58OdIg5WoYG6c5aCEvbJ5okogytiwSwXI2YYJzPWSZt50BNq0K/TPJTsXzKpOJgaMDuF
	7/8Zs3Mm+XtkEynxtH89E3tiU7/DIN9ZBu3hMEU09SXgN3wNqJ5GWv5hMaWQycd95hhdldepBUxlO
	zD1PWX1Kmqy7QT3YVUUpcArAoBB6oGltRquXZpFj11Qtg8SPl/DiCNhJz2GKPqFamDmCgPuQFHqsA
	+2XGBfYwcnSKmnL2cOOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKUh-0002ez-90; Mon, 27 May 2019 18:37:11 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKUY-0002e2-Iw; Mon, 27 May 2019 18:37:03 +0000
Received: by mail-oi1-x243.google.com with SMTP id u64so12488735oib.1;
 Mon, 27 May 2019 11:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K/PmDBxFzH8tIFTHeCN8YYedLt/VhrXyZwuXh8ChqC8=;
 b=BnF33Qfc6hc04kvTbL33hHFtPEQe/ra0NYmvx7YSNe8q0ZZWZNZR2A6OUFcgD7KhD8
 0ed+u0dHO4dAKHTwLK+vrAYoR5sL3/aHw6MBuHPscIGOYEFh0s7WnKWJag93QdJrQ/iu
 GTPG0beSa3F4DNfgoh+IaEOu6sCA7SiiiIpSLl+5BjNCiAJqxq/6hy1mye5IGynfj10W
 YeXWzNboNqyDcKvUwmA+bOFn+HKubU5RLDahKXwPlt5YGkuC+p+HrLgAkNbhyRCjWNtc
 S4YJ1Bbs0wIEhE3hejpPQKiq+7nXt18sLO9OZmtJ9/lrqh4LA4VnnADhLAgxe3U+J7x0
 ZxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K/PmDBxFzH8tIFTHeCN8YYedLt/VhrXyZwuXh8ChqC8=;
 b=CyXARHFRbPpUcIA2uV8gKMrJDB8Xd7dS42wTk94rGFcS7O8zH4UrpwJ32QVqjNaIwI
 uBpZsm1BzwdcsofUIG1BTRURL9xiofBc7zyZRCuvTfhDbonl2pd8G/LsDvv+2RM9j2R0
 M9qvF8lt1sQ6FM9gfGPAUZsxrqPYTnQ5xwH4/cBHLlBCssCT9lEbOf2m2i0FwBzMwJE/
 KjToot4aeTdMnJHf05bC+W/CZQmye06fBxZIUca+rNcmvl8uPAO5TfMtvGSrmR/ZN9kV
 8nS1DaZDvfN1xNE8RndfEHk5gfgXBFr8Eca/UA/lLEhwW0K5b5iYRApRT/qVVZtzuna8
 /b8w==
X-Gm-Message-State: APjAAAUg/c//dW+JRH/oMYIQ/lqmLVHXRB9e3MIhzexmyHz4PnQKjmWD
 BiJ1L6dB84c12VPJbCw40kkgSzQCGBtJ7V/8iwo=
X-Google-Smtp-Source: APXvYqy7PWeO9SByoGpDLEPMAWmWvYgNfuTseUq3cV5VsDUG4L7srEriatKm4lJuWJ76zmnViuz6ssDvlr761juw94I=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr213510oie.15.1558982221761;
 Mon, 27 May 2019 11:37:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-3-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:36:50 +0200
Message-ID: <CAFBinCBTK=6OW4kG=i0KZe-+AzGVXyou9g0frnh9yqLsdmB5+w@mail.gmail.com>
Subject: Re: [PATCH 02/10] arm64: dts: meson-gxm-khadas-vim2: fix Bluetooth
 support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_113702_621441_A93F362C 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, Christian Hewitt <christianshewitt@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:22 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> From: Christian Hewitt <christianshewitt@gmail.com>
>
> - Remove serial1 alias
> - Add support for uart_A rts/cts
> - Add bluetooth uart_A subnode qith shutdown gpio
I tried this on my own Khadas VIM2:
Bluetooth: hci0: command 0x1001 tx timeout
Bluetooth: hci0: BCM: Reading local version info failed (-110)

I'm not sure whether this is specific to my board or what causes this.


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
