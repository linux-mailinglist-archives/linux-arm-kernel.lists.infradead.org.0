Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE659A6AB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+0GJUSruG8qlKi04o2p3uO7V18y8fT22nsYm3/fpKA=; b=VTanykfpsVoizO
	Fy/KJPyOKCzdS18yofceqq3SsgtpT1iH1MpffXzB5uNI0+ukdM6clZ+LrzIRQxqB4RuPRz2ShzLmk
	V2ElF65HRXdlEJb8CTyZ3IrpviVbeS8i7MVw7XUK2YxNzOPqu0H8Aen4Ww9m9RQJRj0n8YiQjEo80
	HqJCPzXlrxi4Vx/yaQuR35fouBr9POQynt5ivKFOTt0zDYXwHkb63TptqsyUYWZtRapIQmeFA4lst
	YOemI/jpZATTZJyfc6sdDXop5xot4v2wFnMqMXEh+BWWOqzsxd4zjBMTWvATYP40wihXeRjVS2kgx
	LEc7H4TG97YgfyN6nhSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59PO-0001a0-3I; Tue, 03 Sep 2019 14:03:46 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59PC-0001Zj-1k
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:03:35 +0000
Received: by mail-qt1-f195.google.com with SMTP id n7so20044929qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:03:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RVjcyrTn4gmDwaWy/oDAvPimC2fsZRy5y2KkmSMwcNE=;
 b=KxYnrjzn0JuYrqSMy4FFpYsmroRcigSD6qCYrymD16/XOVGMCFofnn5uLf5T9KEHk+
 XMqQmtE3okWBgTkoGIDAlVKsOXN2IXGNXkWxMB/w50wgSNdFoADG/L2i79CT/GMnzGeB
 +vdYvLqzsqtd3+rY0MHsG0fxVEynO8jFKktdrqDjMV7mVbwj0/zjV6xm+KgOp/pRu5DZ
 4FHSx+2Se164oWo0rxyZOwz/KLhkm4Da+hQOV7s/KXiWFxndCXzEzu8cUzs36WcKZUAI
 C5j1GWBOI90lk4GVN24UvDjOThliqvyNMKMgurIT3mQMAdIGM8IV9TMjjGzuso9bx+7V
 3o3A==
X-Gm-Message-State: APjAAAX5ZTXqU97IQDzf8749B3RfqwxADx3ooOE868RRPmf2P2mm1A3n
 Y1EY2JAIikE7eSxA7qxyixolQlL/xMepKiDfVmM=
X-Google-Smtp-Source: APXvYqw9BG/l25Dkw35xsVDHMole0pNrF60Y3lZr+y8NOpkdhMtbpNunOg2VHNuf+yIq2qZ6wFtkW0wyNXxoz3HjzpE=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr20276918qtn.204.1567519412900; 
 Tue, 03 Sep 2019 07:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <CACPK8XfKHpNYXNE_VRaLeGUQa7-hkmUS0nsPfaeSLE4sckKFHg@mail.gmail.com>
In-Reply-To: <CACPK8XfKHpNYXNE_VRaLeGUQa7-hkmUS0nsPfaeSLE4sckKFHg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:03:15 +0200
Message-ID: <CAK8P3a1ESGrYOO4Xa3ikQ=E_vy9-sizTmcJkaqvFPYAaQ52DBQ@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: devicetree changes for 5.4
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070334_088783_23005983 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, SoC Team <soc@kernel.org>,
 arm <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 4:10 PM Joel Stanley <joel@jms.id.au> wrote:
> ----------------------------------------------------------------
> ASPEED device tree updates for 5.4
>
> New machines:
>
>  - Facebook Wedge100, Wedge40 and Minipack
>  - Lenovo Hr855xg2
>  - Wistron Mihawk
>
> There's a few other updates, notably some changes to to use the newly
> added SDHCI driver.

Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
