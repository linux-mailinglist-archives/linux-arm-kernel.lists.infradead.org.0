Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304211B1C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpx1yDvKolEofQPNSau9y4dMTIoRWjpHYtz7EiR6Q9M=; b=QxczwZJOAkgqc6
	Uy1oD2YeFdoUrxDh2erqx05w4M1RMrGy9MYr1E2gFDXjzYf61geE8ppw4oHn0s77QM1bac4ssO7G3
	zztdtCSZqZfTOIv1jHL/BUbMHcgbmmEhhcCU99lz0diRf2r3Z3r0YfBiDrG10orTEUNE+1NHAZmR5
	a95af7IR75qhD1l0Z3et859eoyUR0M7IlLbD0YoAKHTYbcX2a5IOO9BqnhShVnIHUGPLzxbdCxh4u
	XFu7GkiH4tLZnW2VmZswWXmSYq+4by520F5hCJMKKCAdVyF4wdZfBayPN7Ar9hIkpsqwwbJHvH0kS
	miw36cT0/WgXarQl5Atw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6Ab-0005N8-BS; Mon, 13 May 2019 08:18:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6AU-0005MS-2p
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:18:43 +0000
Received: by mail-lf1-x143.google.com with SMTP id d8so8314441lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 01:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IzxwE8OQ4c7+4wEW/7vEZjPCoKsrHHZVrP6UrqcgUq8=;
 b=lPF1vTnBMNpymRG5DbEK0NzzXAE+TMQiKGra5kWmoyz3HpQm9RgsvReFi0MuP86mIj
 35LTG7Jyt0nLrVE6XdU3VSNbZQWhWhamTAjEap78MbhILeb/xamCmS1Wl8le+QtSY7gL
 qLyh0mTouyPO60I5AKsHeSkPOibLDX2krDMQdUPXiJj99R3UBa/yOxKj/T2+TeoGHTfN
 3oAzBWCCE/rR+XLYbBfax9yDTPvJxG3HMBHCPRjVfCfq0rBud0DnegVN+z6WFuk+P/uu
 rH/Gf+0nKLn2ibgIvA/eeL9wKmettrcgy1vXFlAzhnYc5SMZNiXZDGm78/3cPx0tT0I4
 82IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IzxwE8OQ4c7+4wEW/7vEZjPCoKsrHHZVrP6UrqcgUq8=;
 b=WzHx8hb3JjWoaFJDcREPEYA7Eo8D036ZUvBIzqeGFZEkEypPf9FgjYgcJKtk36CtxM
 rfOWRZIOgjgpfmTytetwu/C5QfSwYbBw2Z0AYX0P3/RjSXq3XJKRvmMK9h9hGB/0P+Jm
 7IFXnaUuHzt1sdXZNyzwOj4ZZnyWewYj0IxULVhC/1iY/of+1+lfgizF6o5hEg2QaM0/
 oKvZLQEMe6vFRNrnuow9hP4ulm4r5s9VBVQ3oUrxU1q2FjqfuPLGKfgxEmQmGW+AC2dz
 Lqp4MiX+o18hfeHecpJMGJKLQcf7Zsp1cxTU/Gfpr9u1g1QvWrNDZYq9yNlNz6g8zEcC
 9lYw==
X-Gm-Message-State: APjAAAVa7VuDNm351t4vvC8pVj/QN7fL+OSSXlQqiAtwvpsBnLOZIPno
 pF81iWlVBlno0WHknWYrS+XMOLzTEgsZEfiKODuuJA==
X-Google-Smtp-Source: APXvYqyx/wAotvOY/06DClsed491rPyWm4VfXj0EqhU44I2W5fFspfxbUvJjecxNVuFkMZjsZJlpFg37jwMlH2NySYM=
X-Received: by 2002:a19:ed12:: with SMTP id y18mr12598314lfy.130.1557735520224; 
 Mon, 13 May 2019 01:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190513073429.12023-1-lee.jones@linaro.org>
 <20190513073429.12023-2-lee.jones@linaro.org>
In-Reply-To: <20190513073429.12023-2-lee.jones@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2019 10:18:28 +0200
Message-ID: <CACRpkdasb1ARQeFzDujZgBgBG0Ti0vnSp3gGKdYMT-RbDAFkjA@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: stmfx: Fix 'warn: bitwise AND condition is
 false here'
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_011842_125281_20F8D961 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 9:34 AM Lee Jones <lee.jones@linaro.org> wrote:

> drivers/pinctrl/pinctrl-stmfx.c:441 stmfx_pinctrl_irq_set_type() warn: bitwise AND condition is false here
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
