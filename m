Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F26BAA7BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKofm1o5OFTLTgt1VjbIQJiRqtNt+HcAcRaFTNI7tgQ=; b=fDCTSWU7m3IYXX
	dSkju13Pyk0pGTGG6Woaxk3cC4yAUx5XDbZ3D97A5IMwNSM9TBTou3kwMjEOpbLw6bVaoxUgeGH+U
	/U9YK46qL6cLE3cC75l1oDNPByrTNEqp9wfyebK+dIQSNsf5+dyh44LRKlppXCyIL1djTfro9C/ax
	IS+NvY1IG9jmJYJCkJOFNJVOjuMXQ03BXLNtyRyJqdPpvU261Z3Y/7MkkDBb0Wic1beZnf3PlqnPm
	9HIq2i8YzAilTlGFCiXOL4hrG74Z0l5DRJ6Vo4cDsOn6b9oEx68JL/ZNzUVqtSn2Xg7WYgIUUob1e
	L0GfKDZCKfQu1PssnZyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5u5y-00081a-Cd; Thu, 05 Sep 2019 15:54:50 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5u5o-000817-Ja; Thu, 05 Sep 2019 15:54:41 +0000
Received: by mail-qk1-f169.google.com with SMTP id m2so2565412qkd.10;
 Thu, 05 Sep 2019 08:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8u9EXTMrjZ2qKsoTSmQlsQU+UdJSkrB/f8uH5V3oN7w=;
 b=KpQXoQyJntfXxw5nZJVc1m6hjtQn5v4J6iNyrYgu65tAFefXWPmgiEP3mLPDYjhEDy
 CRJObrpdHjgqTIGq+c6K+dEe1Iq9kpKsu+ivw/qemojn0lcgXviVoZEDGgy1XF/s2yJY
 1k2uDChRCKylUQ+ODYd6KOgbIfWu8t4EWRqffa42UZDmk7nsiVCRoaiMiCxqhLdY29Hr
 AzFpqmFNZFRqhZvacD0vHGpdYjKjqcMvTVtfBUZU5dT05pYP9cBj0VJ+O5gf+xs2THMK
 nic/y9cErAO7P9msFpLluyS2NCAcA8lsFcYXfqrQABIYDcADVNWR3dgV5lyM7B5FHjXq
 MLkA==
X-Gm-Message-State: APjAAAUcfNde0KSf7b0BeHj8ubddeDrmJy8TZ1XLKvOfGGSUlTVckKH2
 71Pk3K1b2/8DT8C8NQaUqPTsD3lUnAw2rRdaR1g=
X-Google-Smtp-Source: APXvYqzHaenAKqEKH+c19eggo/dRXSvRjvMlrYg3zTnJtYP+Eyn98O6r++V8qnAIm/XmT2ENQEgZGjOh8lFMkWVTFag=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr3523664qka.3.1567698879330;
 Thu, 05 Sep 2019 08:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <1718334.9BoTfW0Ujv@phil> <43564855.cWDBQSyQMS@phil>
In-Reply-To: <43564855.cWDBQSyQMS@phil>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 17:54:23 +0200
Message-ID: <CAK8P3a3mXDAq0HiwAe53iM7CqDF6BW3Y7iwzNCMPrLuz0eFBog@mail.gmail.com>
Subject: Re: [GIT PULL 2/2] Rockchip DT64 changes for 5.4 - round2
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_085440_640162_1160D096 
X-CRM114-Status: UNSURE (   5.29  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 2:18 PM Heiko Stuebner <heiko@sntech.de> wrote:
> RK3328 mmc clockrate limit and addition of vpu node as well
> as a regulator fix for the rk3328-rock64.

Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
