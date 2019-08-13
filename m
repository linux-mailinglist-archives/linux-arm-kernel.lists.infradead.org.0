Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDB78C199
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 21:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tn7A0iMoWELOrNNenmHmFO0K5s+ruo46o+CQO75nAE=; b=fze5j11jMQXfWh
	PLiF5QTraUJs7Nfv+jX0jTOwoxAcSwaJ8lO0sH9+JcntvdeoHT65RrYHbvTgCnbX+9Dw0KWkveVSp
	AISV8PdHaSP2Sth2Er2dYvv1ThxKyYaoncWk5keoDxonH1zHUqkO6JGl/BRAR6LUzQWf7vmIo30CW
	BArMLtdI2XKW9BOSA2FWbT2Kfdr6VcOkioB9gK52105joKqSzymo9MIbmyDd9j9/eC27mkia2ZEE0
	hVDQJyGmBO0bzUjwto2Oj4mpG0uhnyefGZ+YN490RQB1aJ2AUB1pdn6ZrqpG+SVYhQh6IlwaxcA2j
	Y3YT3lo+CkFeH0b9NZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcan-0006GA-9e; Tue, 13 Aug 2019 19:36:25 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcae-0006FJ-FM
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 19:36:17 +0000
Received: by mail-qt1-f196.google.com with SMTP id z4so107650280qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 12:36:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=64QRb4GGMzoJ0fGBiaTwYwKZ4A1mAxuXZNxWhTksFhI=;
 b=Sf+/UpvVbljg3p6pIJry/8lbxnO9p9wy/J4E2eEsVwaYVuckxb4X3BWLwi/9Q7diJF
 +oTrz7R0V/oNzLSkayb8yW+KNwpVX7XDN8ljCiwLAozeT1bfaEwrtj4Fa2iDN9ofes8R
 enUmKnThM1A1nWHmBlLVOzY7TR2/EEqFk/lww5cP5cFS3e5wYnxMLGOoKT3ApjFc5ElR
 +2msJegEbG4+m3adSRzEjzhkkad5lsJ821CwbuEHiyN0yLYmtkWYGhAoN9bSc7PwCT/s
 45lvDt5JpmkUomMLeHQqnWcHBhLbfAHpS5Ce86zil3/LzZH9UP5jy3J8uxEx8G8HbXhb
 TynA==
X-Gm-Message-State: APjAAAU2YpjhGBhzfInczUCCB5oBKT7hTY1+XamkETJHjWzDxI5tnycz
 /tbGF5PhPiIY//UVvCIz8yo+Wl9vsNA4uOOu/SbevuG0
X-Google-Smtp-Source: APXvYqxa2zhhLdy0RHZMdPoTiqVm6rEw5tVd7J8pF2Y0ifC2VEqmZZJFY7dK8ABlEKxMDhVftjOVqAAihB8+hQiFpGo=
X-Received: by 2002:a0c:d414:: with SMTP id t20mr76120qvh.45.1565724974318;
 Tue, 13 Aug 2019 12:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190814002836.4b6aa14b@canb.auug.org.au>
In-Reply-To: <20190814002836.4b6aa14b@canb.auug.org.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Aug 2019 21:35:58 +0200
Message-ID: <CAK8P3a2q1mShg-EQhiAFUOAET8UEMHfLJV-+HoLTaSQY+M7yBQ@mail.gmail.com>
Subject: Re: linux-next: Fixes tags need some work in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_123616_515774_86EC1D09 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 4:28 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:

>
> Please do not split Fixes tags over more than one line.  Also, please
> keep them with the rest of the other tags.

Thanks for the report. How bad is this? Should I undo the merge and
wait for an updated pull request?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
