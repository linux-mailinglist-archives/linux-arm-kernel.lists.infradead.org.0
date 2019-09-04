Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421F6A860A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtSuoa2Firi28hbWpk6HUuo481ALjt7ks/JxVJG8lzE=; b=c6RFWqK7SyeKsg
	2k8aC+RIX5nYn3iM3HfXN9rW/lmufV2nzX3R8ZgDbJdQduP50h72mLIUrdeJlRFakdevoOr/GmnJW
	d5NIIcB5o369i+oVX5iD0P4jJWp6y8CDCnVaXOw5teB6m9wpYZGbj4Dn42s9TTaRqRhWy13/uiejU
	D01UL8igtMtbWKEjs/24G0JdOBtn9FTW0fQv/HpBzPlIooT8Xqfk3H71LCbrQNm+VYFzkYwXeZtO6
	yJEPVJ25Fju0glktaiRu/dNnb/PiTOfLT/+aav688XpwUPATBJBk2c1Wq/AaN2510v/eM/Ye2GCj5
	HdDeyVaRBclmye9/2s4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XBt-0007Bg-LE; Wed, 04 Sep 2019 15:27:25 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XBf-0007Az-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:27:13 +0000
Received: by mail-qk1-f195.google.com with SMTP id 201so10404903qkd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:27:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QjzLrloPSj0dq2PlM8GLX2EAvMaEi66BXUAo/AtPzMs=;
 b=G9HxWrsGOl8EnvAdS940lcNju3kEFvP9nKyDbFZaz7LfPF/sybJGE2JP9y6CPq1a8V
 H6yvdPVM3Jo8gyMwqcIVjmjGinHGN1sCsANdUYl/mQERhwbHyyG9jjBwQZWhKEfAzUab
 DWZOyCb12E3ah0MWNAofuL6tOjqoClMeDm8BG+sLCIXxq2xKeHWW8d0qrk3InY9uUwxd
 gbBgM5NwxYFQywc1uUGfkC85hDp/ANgL4gYSQvestjpkSAxCNvmoRvnugMyDuO/ZcILl
 TiEtXkhJxH4Nf8rb0pdpL2CBSCECkeBSlx7ojTblApewxZlXHYyZXIcDRcSPheH1KJd4
 msfA==
X-Gm-Message-State: APjAAAXCChrzpCzRbk83wodjf2IxeZcXgeB5KuqLktaJgGZqZE4SNVcZ
 D4oMn6GzlBjinjrmdngBDv5GvaSgCsA7JGZ7mDk=
X-Google-Smtp-Source: APXvYqy07NlVOWiPJc5VipU5GItcVxjI3NfPurtTfcV1/BbuNAzDvNqFIzyT1G8w73R1bNCrsmSc+6PwKLYbSE5QM+8=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr39385271qka.3.1567610831069; 
 Wed, 04 Sep 2019 08:27:11 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1567016893-318461@atomide.com>
 <pull-1567016893-318461@atomide.com-2>
In-Reply-To: <pull-1567016893-318461@atomide.com-2>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:26:55 +0200
Message-ID: <CAK8P3a27NB+8cz=dF5nSL_bACV5HDuUZLoZFUEvjjs7M6Oqm5g@mail.gmail.com>
Subject: Re: [GIT PULL 2/4] more ti-sysc driver changes for v5.4
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_082711_969437_815EED8D 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 8:35 PM Tony Lindgren <tony@atomide.com> wrote:
> more ti-sysc driver changes for omap variants for v5.4
>
> Few changes mostly to deal with sgx SoC glue quirk for omap36xx that
> is needed for the related sgx SoC glue dts branch. The other changes
> are to simplify sysc_check_one_child() sysc_check_children() to be void
> functions, and detect d2d module when debugging is enabled.

Pulled into arm/late, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
