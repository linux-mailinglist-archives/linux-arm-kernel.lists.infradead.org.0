Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3231A5D69
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 23:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tAwExrgmxCJmI9qc5cuoXSpKb/j/D3vbtnhQvGrT9M=; b=QxbttJemtA63/W
	mzfzXRJfrZk+7exYQt2sr3thtTDqRAwqoyShqlulZiOWVkMHasQTME7wa/tmma3J/ysILDmn0aWEw
	BlumabH+kvG5dfnRF0NkkLhu8UN7/EPGRpWpsfqdweOxKKCgl2Li3MU2Gos9Yrbc4tP4shzTbQqeb
	HUF4P9fsOqyhKHlmWU0pvDcOMvr3LvaoRLw4785vXZQnxxAZHRy2IC/B71UX0oCcbRfJN8hWilO89
	pZda7GOZ1Ei4w/e9Q6ciOeUu25/t1z/myzk6Suf2HMvfGnnPBUO0H9wZobH/7vJIlazv2w+WZaCao
	zGYLltRiMn9y3+DfzVtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4th7-0005Kn-V8; Mon, 02 Sep 2019 21:17:02 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4tgr-0005J8-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 21:16:48 +0000
Received: by mail-qk1-f194.google.com with SMTP id m2so13648018qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 14:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pf6kRO7ifbTnomTd3/bWPA70UjAWSRKoHpL8unNkk8g=;
 b=h+ctiBW1py238KILd0KLERz+zwg87JIkAEiuUy40RDRkAGkFclqUZdoiAIAp0aAj/J
 DLdSmZ81KqjPYBWN2Z3Z2EPmawkcUxJb8K/HxbjhmmYKdyX9glfBKS06ASZ5nQInLKij
 V94CnB6o2umCC96eDJdM0WtPQXVk6TqGNwmgkU7R/3X5FubMW/oXUn8+uxMLhAUOImcr
 p/NP+iTK4HX0jPofg2oxFsXmfheLMDTo5st1mTi5PgDDbU+m6I/yDP5RBjMn51AIK5w5
 1gfwj8EENAvH08urpc+MKWpl3fIMKKAc1V2n67PyrRG85zekSz9Kud+GkcHtbJwGhjvI
 3eQw==
X-Gm-Message-State: APjAAAX3a0K7f5b19sK9/T0LtRXFpVKEpngJIM81sVWIwDqI+tBdMPzA
 OKWL9fCn0/eSpKRb3CPDRHKEGfH7eZ+UhN26l1o=
X-Google-Smtp-Source: APXvYqwy7H5va/4bAXkcUfSpA/SbDmlLNbYRpJqfX4B8ejokogm1ieXoll1x3qEkN/VOTl6DASAJoe2SycrHp5MqG+w=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr30124029qka.3.1567459004644; 
 Mon, 02 Sep 2019 14:16:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190805075812.1056069-1-arnd@arndb.de>
 <20190902203857.zusvlv3yv5arel6y@earth.universe>
In-Reply-To: <20190902203857.zusvlv3yv5arel6y@earth.universe>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 2 Sep 2019 23:16:27 +0200
Message-ID: <CAK8P3a3uNPepYweCN9+_cQNQyiSGdidwNGL0+xhti2vm8g9O_g@mail.gmail.com>
Subject: Re: [PATCH] power: reset: make reboot-mode user selectable
To: Sebastian Reichel <sre@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_141646_000955_FA3B0458 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nandor Han <nandor.han@vaisala.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 10:39 PM Sebastian Reichel <sre@kernel.org> wrote:
>
> This patch does not look good to me. Better patch would be to
> allow compiling CONFIG_REBOOT_MODE without CONFIG_OF. Obviously
> the configuration would not be useful for anything except compile
> testing, but that is also true for this patch.

Ok, I'd suggest we leave it with the bugfix you already applied then.
[caa2b55784, power: reset: nvmem-reboot-mode: add CONFIG_OF dependency]

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
