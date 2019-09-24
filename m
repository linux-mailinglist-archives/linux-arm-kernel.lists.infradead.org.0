Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CA5BC14B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 07:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dppOySck0mAxz6lLK8dZHz6aBzo79icjTljK3RCAhbg=; b=ZLY7SoP83D3M1o
	G9iFoxelcqFSGc0xjppZ4mJomkJlaXbDoLvLDshOsACOmD/V5KROx3MA0dEXDspzeHN5cLXSmQCZd
	kjlrw1v6CjrVN+tLRZbeYEn0X2/Zu5qombTlgQenuP4R6tjXkPLyGqoGb3DI2HpZ5PCcCqC213tQP
	d8CHc2KoIDhJlM+DByeBek94SFOR7neF5RRpwj8eSqA8ps17uH+68BjQI4HXrgiAdlVGt39EFJcWG
	jinzMFXwhWOV/YfRgqmd/QN3A1F+WN+TGRCFUarw3ai09NNhzaSkuiGBv31piUEDEecHr9Bo2PBuK
	5jNrPdQcpOHP0ClrstQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCdBP-0000d2-2p; Tue, 24 Sep 2019 05:16:15 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCdBF-0000cj-NN
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 05:16:07 +0000
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x8O5Fgbr030414
 for <linux-arm-kernel@lists.infradead.org>; Tue, 24 Sep 2019 14:15:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x8O5Fgbr030414
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569302142;
 bh=yJVcfbXm8bwbIhA7O2G8+Wo9uDFS5iImUS2XKJYvsqs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sa1k39v194T+NX81PwOLznPxjRYoAUqMA8gwEqdjeUwW4SmRpo6dJeS6mioXmvyRx
 H3gUG2AYrv89Ry/N470IZUaX89IRTBl+8o1FB44s9Yoj7CvvIrXdkHkBtchF898lR+
 KoaDSvcojnW73IDdbK+Qh0zCbHHYnCcJm7eT+zjGN8n9MEx6LG1k4XwJ4VB/UvTx/g
 ZDCf0h6dGUHyAPTzk7DtS2QMc7TA0jlCQq93tPAGBX5ghfJ2aPKa55ml7VogUKlMXL
 DZfREWvTKd2yVesqR4zEP9bNIfxqWLZG7uSthQuvDWZ5Pb8LUZe7l0N1PrSANUo1z/
 LTOBP3zoj2ZGw==
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id 107so145312uau.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 22:15:42 -0700 (PDT)
X-Gm-Message-State: APjAAAX3fOOM6rOLReHUEaGsp7d8irrRz6UIqJjV/6lIBMax295xcQ4a
 D7hjWzLwtlY/V31cAgGSA+6ur+AH4FxohrcFBZ0=
X-Google-Smtp-Source: APXvYqycZkFXxUtuCiaFK7tO7624d22noNkPp4N52/TNUs4ni+jnjoZOcuWC+nNyCZvsMU302A3GBHoUcX2XSmdw/Ms=
X-Received: by 2002:a9f:21f6:: with SMTP id 109mr469799uac.109.1569302141394; 
 Mon, 23 Sep 2019 22:15:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
In-Reply-To: <20190906154706.2449696-1-arnd@arndb.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 24 Sep 2019 14:15:05 +0900
X-Gmail-Original-Message-ID: <CAK7LNASSL3=A2F0SZJNkxxHLxWJmNJgJxJfk3LWmaDYvDZTi3A@mail.gmail.com>
Message-ID: <CAK7LNASSL3=A2F0SZJNkxxHLxWJmNJgJxJfk3LWmaDYvDZTi3A@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_221605_978645_F945DB7B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.91 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 12:47 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Without the frame pointer enabled, return_address() is an inline
> function and does not need to be exported, as shown by this warning:
>
> WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
>
> Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>


Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
