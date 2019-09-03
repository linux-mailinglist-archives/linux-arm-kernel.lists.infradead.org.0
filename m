Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8375EA6894
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eU3f4CxRyn62f8oN3VfHlGAX+4ON70k7AUhXobMhCBQ=; b=UYoig1BAIHPNs7
	6qTE+13V4tWdjuPk/VFfpnKd/J5cdhjpWS3SCnJ6RbL09vEy4VYg02WI8XCUV9kuUt9oqdVx+ff6h
	d7LPcJDOdISHQBzcI0iLeCP0oDOk1E8R3k6AWvg1j9yNcrWqrunBH+i7qjiVvJVvN5a0yL16BLAbM
	znAiZj8SlkRtPEYBL6J31eIAzTkyRIYx6itNMg1jh0daKfJtcOB9gkBY3VS03K8oczzDMuz+D0pCK
	gSMISY8sa7h6g08qV8A828lWjf5w8835ktuSprrVT2HegOSrD9q6JAfH3i+DWWfwln5lMg5oeOoBD
	GBcGbrIGarhCYnMH8LPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57uW-0000Nd-Rh; Tue, 03 Sep 2019 12:27:49 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57uJ-0000Lu-61
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:27:36 +0000
Received: by mail-qk1-f194.google.com with SMTP id x5so1563470qkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 05:27:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GhRwLyjUlW+c2hC8fBDr52ubKPgjR7IWnK8ss/n1sqc=;
 b=k7Y5cB9GgUQjLlv09Ko8DZMseEqY25rXk1aJJQa0M1gAEYkGrBMqXm2+PWmz0oJDk4
 CBCojO3BzfPcU/REmshVWw9J/ePH068Tx4+6Ra6z1SjlxGgTNVbz3Ei5DNqBfy61+GJq
 srQH5cICxcnepnFtr1b9Sl7df8PHX+e/HKaupR+u0ktiX3CGJei3tTkyR1rlUmgShDEy
 pXfjRdCehJlcpbptUCC3zDQzMZi0+IehWJB3LOCVlD4/8WFsZea+rCdmo0QDlQXtsH9k
 t4kpU58S/5Pl41uF8/lbs7CKdLcNGm0GDdDdn0uDceDRVVDlWv9ZW9DbG+hUOULlMnmA
 1MSw==
X-Gm-Message-State: APjAAAU/I62gneuCRP+kiPCfOD+pUFoi1UsRpekGgQ6lJ97T9N0xqESS
 SVuhzoqyNDzBDX5K5naCF1QDoAQTDco2VuJYvSY=
X-Google-Smtp-Source: APXvYqzwVU2KcZM6MzMS/hjDxWHhc2k8jQTbk38dxVSSZJ8yySnydBQRREAwEmKpByufxBClRZAA0HL2G5RvXLyBaXM=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr34016279qki.352.1567513653740; 
 Tue, 03 Sep 2019 05:27:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190825203222.GA22800@piout.net>
In-Reply-To: <20190825203222.GA22800@piout.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 14:27:17 +0200
Message-ID: <CAK8P3a0jKyOXD=5SokdMCOjOqN2Zmja3gC2eebgvk_fmxQ6dLA@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: at91: SoC for 5.4
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_052735_226248_D81DB443 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 10:32 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> AT91 SoC for 5.4
>
>  - MAINTAINERS updates
>  - a generated headers parallel build fix
>
> ----------------------------------------------------------------
> Masahiro Yamada (1):
>       ARM: at91: move platform-specific asm-offset.h to arch/arm/mach-at91
>
> Nicolas Ferre (3):
>       MAINTAINERS: at91: Collect all pinctrl/gpio drivers in same entry
>       MAINTAINERS: at91: remove the TC entry
>       mailmap: map old company name to new one @microchip.com

Pulled into arm/soc, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
