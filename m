Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2891AB4F98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVnDuNZZzMqTHNQCa5LmxwYBKh+mu17Bzk7o6Ty0LUQ=; b=FKkZpIwTPlGmo5
	5TCOvG5lM4Zyt9H3psUbiUInBUv0baUZVGKbvieuc4dJLuo4nq9F04kR+ZPdf/kKylYVP5VtuZOKc
	cbzfGKLbMTXHCiRO8/ndZgmnNGU152Fht3jkX/z2D97CEjxSx0qmCug9hRsqL0vWPvr/nqnGu5q3E
	KWY46lK57FRHk6M1dRqoj7VixK6NnsFLNVZivcDQ+f0cPvxesxBKL19onOJWZxgrB4KP3Aazl31Ow
	Sagjh56fdD/JKRu/oTKWdSutl+0EivOuRPRBV8rukNi2Q1wsszQyuJJXrFZhcW1steH2QLmsZGD6D
	QByyS4fGBWxxwl0TaZrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADmf-0008Tt-Ds; Tue, 17 Sep 2019 13:44:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADld-0007oI-Tg
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:43:44 +0000
Received: by mail-lf1-x130.google.com with SMTP id w67so2940236lff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 06:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jaR67NcODPqTTItBcNnTcwyC7On88LzFc42SdZKoDiU=;
 b=RjHUlGcXynYUSVNZeSKoCWycjgHv+rcUY1DlquvB9SJ4x7WWa9zsHN/46RIhTycyHD
 tw/PDto5Q7j0zluQRHTxvvtl5WIfQ7LS34L+C3RXspayzieZUGVSccAIcZXl9a/ZhqOL
 AqiOUU1vxy4rIgiwqbr1SeW1CnRc46sVDkQgJg85EAOrWK3C1yd8NGIPPQp0MeVVQI87
 1kC5Un1vtJyXhOO1LVvZYYyT4MxFWQSKbp226/U4WepXT7hV8bpNbGpeG3p+HDIDrUQC
 NatCgNbL+S180EAwBcwC5mSjuUKo0ahc/fMobvcKIxqz4nSNydMKtnu9io80EeWhTxc0
 27vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jaR67NcODPqTTItBcNnTcwyC7On88LzFc42SdZKoDiU=;
 b=LpHTdS5B61QI3rKHtb2Wo/N4sCcqttKB0FlI10gy8BFEjilSY5RbpEeQ8hrvj8/RfN
 wmuzQoEe0EjkQtM+5x5l8H9AW/SvFfmGt049fBZTDBNtupeXy2ToLLqxHzHdDVHRbwms
 42ZRM2KLXI2peV8GcF+wA3podBBsvyxywTM1cRTULRu6bUxaflRBfLH4PleX1wzVHbPx
 gm4eeK1aVo2VgL3WfysrraoCXOAj//wcIByweaS8fiY44JxLrx79w5twxCyJF59HNSXz
 MSYJdrAFLQdT0TY2zZVGmLEQrOOq5u1K0J0Iug3HcLVT0P8vw5Mqi3GWVo4gjbcDxqXy
 q78A==
X-Gm-Message-State: APjAAAXp79fqJz8eZBo5lTsG9A0HsnRbTZfhLPkbyxoK97+q72QAlwaj
 6mCQ8xe2ma1xJ5pHKXJjrsTirtGDezKuXGlY9CE=
X-Google-Smtp-Source: APXvYqyX0yuxcPRS3QnpKfcwgYilUe3ddgxBIGAjmMV1HE7vpPKedQFLqoaUxblLKGGdoSo00h2QzObroYpBUtJNtUY=
X-Received: by 2002:ac2:5091:: with SMTP id f17mr2182698lfm.107.1568727820058; 
 Tue, 17 Sep 2019 06:43:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190916171509.GG25745@shell.armlinux.org.uk>
 <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
In-Reply-To: <20190917133317.GQ25745@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Sep 2019 10:43:35 -0300
Message-ID: <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_064342_485713_B6078C62 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: dann frazier <dann.frazier@canonical.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:33 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> That attempts to set bit 12 of the host control register 2 (0x3e).
> The LX2160A documentation states that bit 28 of 0x3c (they're 32-bit
> wide registers there) is "reserved".
>
> So, you're asking for a documented reserved bit to be set...

Correct, v4 is not supported here indeed.

From the LX2160 doc:
"Conforms to the SD Host Controller Standard Specification version 3.0"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
