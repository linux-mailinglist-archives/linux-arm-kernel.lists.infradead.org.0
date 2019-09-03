Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49D0A7128
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 18:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmjYfdLEOTZw/g2egrm2O4oNd1xEZYK06Ykfo7uXiKU=; b=qCXRY1vHIWVO3Z
	ElRnfXM6JaVO768BP1FON1ubbc58jqnwt7E6wZ43CmdTqtpAnkZLrym1Ar3eax4ox/ZfzXU7gU/dB
	bwuzNxagCADpmZMuyIfUI3/5huVrqm2wwv/P8xk1j/g08hAHpWrkcpyImpWHR6ENxUU6va1ndLZZj
	plda76nIbQiZgNLKcoivV+rb9xkkfFz8+i4ByOQjA/CGWBzTGa3aN9ZF1CCnoOQH7wWWcfAEYwd+K
	s6k5IreqARmgeGGKSrKEwumXMncrPNcBAsk7LT8FaEpKycJti79+cekLxeYJljzLbshBmOetU+3Zt
	dFSL/gsktrVe+iiE/kvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C6t-0004Wq-Qg; Tue, 03 Sep 2019 16:56:51 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C6i-0004WC-9j
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 16:56:41 +0000
Received: by mail-qt1-f179.google.com with SMTP id y26so20807766qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 09:56:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3oshntErkHeKp8tbAquimAWTQReJn22lJ3cFLDJqtWY=;
 b=mPg3h4EIt7Q/yMF8Xm0IhNupZuD0kcet5uVp+ogvzhginKKLM/pC+XTdy7e/G0/b0G
 l7MP4hfadURJvH/ln90Uy/V33YGcLfoSvlyV8TxbQ4aHBJQz45iDd0IYGHs1d/L4EaFk
 CcRU2yQwnLGBxHqds4c3AyH4xVzCwZL0uRrxR6E5fPt36IYo/9v585JzUGB4pVSzAy7o
 un1CHoW6rBa9vasH6ia9E+THNWxatbqRER1uoDse5RcWPUhEIuClYPw/Dm1JP1AuxQFd
 KwHT5MRx+Fcla0WqJuw4skT6P15EUoJ/ttfk99h6vX3XpmkbVOMxKOog88fkm1+Jnvxn
 TUEQ==
X-Gm-Message-State: APjAAAWQfi71X9UjNTFLZ0OaxUuFgabkAAdfTQ0GmAHlUWHPhQhrIglr
 zMjoD8C1u9GGamI/ryDFTe69QQ7yLpNV3Haytj0=
X-Google-Smtp-Source: APXvYqwx5d0Cu6kKeifI9PKU1PftoxY+elHeD0DmQocjg9SCRWvfTWNWc54v05842JV5cYcKPO2r4KCHmznlGRmLPsY=
X-Received: by 2002:aed:2842:: with SMTP id r60mr25264618qtd.142.1567529798330; 
 Tue, 03 Sep 2019 09:56:38 -0700 (PDT)
MIME-Version: 1.0
References: <b164eaa8-4553-9c0f-0729-2ecc96fbae7a@st.com>
In-Reply-To: <b164eaa8-4553-9c0f-0729-2ecc96fbae7a@st.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 18:56:21 +0200
Message-ID: <CAK8P3a2kwAGL9dn3igKtsOxeE5VLRTVkxExaMzRkWKOt6qm5XQ@mail.gmail.com>
Subject: Re: [GIT PULL] STM32 defconfig changes for v5.4 #1
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095640_341060_1C62F0DD 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Kevin Hilman <khilman@baylibre.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Olof Johansson <olof@lixom.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 4:49 PM Alexandre Torgue <alexandre.torgue@st.com> wrote:
> ----------------------------------------------------------------
> STM32 defconfig updates for v5.4, round 1
>
> Highlights:
> ----------
>
> -Enable FMC2 NAND (used for STM32MP socs)
> -Enable STM32 booster regulator as module
> -Enable STM32 QSPI as module

Fore reference, I had pulled these before my vacation,
but not sent out an email notification.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
