Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A328AA6972
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySPPi0HilID6cUNrbfwsIBMhReaoa/QQe4B1+jPSulg=; b=DPIkdwFb2riWU9
	BxoBzWRGgSa6VRRBLzKHoLcgD1e2Q+RncDQh+MzhUd4rexxkhaAf3mUUz/eErAseNuzOUASjDeImE
	bJ/mW+XA3eFdDpwW8Gjj7rX2oXExdDtDYRBDBbAQFdes5rAVt3RPUuoAIoy3qS9OBXB0OkkpQFV8V
	2HfURiKTP+xVZLqzvw2g0QUCF02vnYMTE5jh7CpzflnyFOMyVn9nUj2CShkGlOAiIbFiDcVDK+l3V
	O24e4vhgwQLcJ7P6WnKTGYzyft5WNK8H/HajYDzRQiBcBbfGIV3hffSYFf0s4tK4S8sQgqda9hY2I
	BhlFl2HMnHPYreYOaOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58eD-0007OL-Ju; Tue, 03 Sep 2019 13:15:01 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58dw-0007N2-Hy; Tue, 03 Sep 2019 13:14:45 +0000
Received: by mail-qk1-f169.google.com with SMTP id i78so14382608qke.11;
 Tue, 03 Sep 2019 06:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vybxxlQWuJ/jiGHHBw6oBxGhkxzzryk8LPYF0tIqjjs=;
 b=RPjfJhL35HkuxPEq2/saILSpzH8xTp8AJwxPpsM+WA+lYvlSkn3Mqp/EWT4b8wuNRE
 KbQpQFzaZm5ivPHf5bmlwgSWFLmMBNQDQ1w2rVhekM9m93duCCDMoprt32hVjH2uRmij
 7nJPmKKxPcrrBVuzMS07B9uYAf1TUWrkrg/mrCpj2i+6vWqCXF/yjWYbUDCGzLzkBSKP
 MgUWZJlNqaTuhiLiqWNJCPf/7ZP+NvC4H8/91Rq6P3Z+Gn0vkLs8vQKGbD5Vbaw2wJ4a
 pJqli2sfpCuiVvP8Rd7AwZhudawEaWM+3esYK2wNtyBk8dJ4bcxeqdJ75lnJR+4Fb0V+
 N+aA==
X-Gm-Message-State: APjAAAVb8ZON8cLFSw3vzVu6JLpsB/NCSN88Dcp4cp2ZDUIL4HRn3kMB
 RZAdgviNa5dzAUTq5BDx7qHsHODHsvZRs6mXQyc=
X-Google-Smtp-Source: APXvYqx4tXna6Ix/f7NwN5KM2PECS0XZfHrcOq6jtLkNuD3hUL7g52tj7TUW130t4hrQ2phG8LMp33K4Zq3cAjP1n6Y=
X-Received: by 2002:a37:89c4:: with SMTP id l187mr6356337qkd.286.1567516483487; 
 Tue, 03 Sep 2019 06:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <7hzhk3bi96.fsf@baylibre.com>
In-Reply-To: <7hzhk3bi96.fsf@baylibre.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:14:27 +0200
Message-ID: <CAK8P3a0Zfz8+njVfj+G-O0zPyusmGNzHUypH6VAKDKCJbw7ENg@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: dts: Amlogic updates for v5.4
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_061444_597798_5691FA83 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:10 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> ARM: dts: Amlogic updates for v5.4
>
> Highlights
> - odroid-c1: use MAC address from efuse
> - add VDD_EE regulator to several boards
>
Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
