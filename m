Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B148EBB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDDZdxdW8Cm/po4y29Qbx3T5bc/vYdD3i0ckpbhTpJQ=; b=YCR+9afrwc53d/
	xgDyGToNvYCiKeu5ICQ0FI0ODlHPgHYYEcxZMiRZv7EsmKTd8zF9nZKqQBG2qglGmsPZzv458LJlV
	bwfln71Aau9D93UJq0qOyZOW332koN2oFPpvxDL1DTQ8gHRP1UgqehZCvM+p+0AkUXDupzA+qt175
	QWW5MuPE0zztuapTj9yuxIsqa8x4zAJBYujSVa6qvAoguJkxjhrjqql4ApbF03YMY3Qawv/Tw2T6l
	IyqDbaEX7+cTDqlhryQvGIRQ+89crwByefvm43Av473noI1rGzatnGGZAV6CxPQAXye/yx/qPh/sA
	3bqQ1AvJDjt5xWsb5ftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyF36-0006B3-6p; Thu, 15 Aug 2019 12:40:13 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyF2i-0006AM-Fg
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:39:49 +0000
Received: by mail-qk1-f173.google.com with SMTP id d23so1730822qko.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:39:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+sz8iMwRtA16rKBM+y1xtqsr2FT3ggqC7wXEVqNU80Y=;
 b=nDz7qHh/9WG799TMUYzoeCYh1gcXYqNROlzNBf+jr4+O9Llz2z4yYZlL5CzuHLpXjl
 WG8Ehoju/zBs1euKTiG9C0+3tiXf2otr7GEwZ1hVLnQwTQRB/CNAMwkIS8E6XeO35KgH
 /hXsNIKcmlKPBXXLSkrbeW3093KvUpN7Uts3xWaL/N/GC6U6ntQfk/+diproa9XJZwKx
 a11idw5i5VwLN/WnH7yz382lKzlHoAs1QdcHQkcqXy2zXbAH19uPCADhvpeHSIOVSMhs
 BNzKldcRogBSd30yvnYAhH/2aGRKyqQHInUPxDtP++/O5Wodd5F4E0aMkCdF7FTMjSyr
 blxg==
X-Gm-Message-State: APjAAAW1l0M9zufFE2S+lKdwRsipG+AWcqqac5zjlv2HKfvIOqOcU02a
 VT71KlqhADkMCRhvWDJEMm6u48ZM+dIAdIQH0vM=
X-Google-Smtp-Source: APXvYqyLvIyU6AnKUG0hHT8aa7Za+z6fbHp4ioldVGfk9TXm4wyKocAOhU2KdR8M1elDp43RaX0KruXrHyHMX8Jtyjk=
X-Received: by 2002:a37:bd44:: with SMTP id n65mr1261997qkf.286.1565872786986; 
 Thu, 15 Aug 2019 05:39:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190815065659.GA13498@jax>
In-Reply-To: <20190815065659.GA13498@jax>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:39:30 +0200
Message-ID: <CAK8P3a09pJ+ZHHEDoc6=znB5Ycsy1nPMf2QS=dssktN3mv591w@mail.gmail.com>
Subject: Re: [GIT PULL] tee subsys for v5.4
To: Jens Wiklander <jens.wiklander@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_053948_524865_F9475292 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.173 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 8:57 AM Jens Wiklander
<jens.wiklander@linaro.org> wrote:
>
> Hello arm-soc maintainers,
>
> Please pull this OP-TEE driver patch. It adds a call to might_sleep()
> during RPC in the OP-TEE driver in order to be more friendly with
> CONFIG_PREEMPT_VOLUNTARY.
>

Pulled into arm/drivers, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
