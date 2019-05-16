Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B093320D5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoEmkS8CLwcSYSSqJdy0iXH8HCFqmYFch4k3edXphtI=; b=alYbHJwtpO0RYD
	vd04g5V0mszO+9euJFkbdRPKUMrfNQ+Fhia0TAIsZ6r0UpPwl4BY5Okfkrh9l69XaYWc+60O1968u
	lBH659jO8D2GRyD/SxI0Vc09KvsrJA9HAKWT2YdNb09Dv21WWZBVEys0fW0xG2/Co+ydX2ncLuxCn
	xRvj7MFVZmTiUhdqFv/Uob4M6dy4NJ1hvfH/W/hGqz+JKWX6jA6QMgnIN2jJtsqPV1Y8RzVZxUgyU
	w0v2kO/NZ/QUiR7diOQjhzm8UCZkj6fubBWMORkLSIO0AH6GVTmfarI6No63LLWADJ6J97VlR/jm1
	SPGjLr5AEAPOAyIrpd4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJZJ-0002uc-2e; Thu, 16 May 2019 16:49:21 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJZC-0002ts-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:49:15 +0000
Received: by mail-qt1-x842.google.com with SMTP id d13so4710192qth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V54eRnKwdjS+PEKbXuK6UCgdmon3FdybUlySjzqEJGo=;
 b=Y7WJlt4bLjAJ4WhWIbMzJ/8PhricDREUZCU7Q1/HTZvvFSjXhMw6Fj3NYJLMxnF5H3
 xFmNwRnXYTntWpRu3Lpdbvwa5tqci5Xe358XawRq25kd+KE+5NovF5rGFK6+pyVUKFjE
 t5pWcHvFVNZlhWAdiIbzyX+khalrXvVMxRhdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V54eRnKwdjS+PEKbXuK6UCgdmon3FdybUlySjzqEJGo=;
 b=UnclLNu8mC6RvPbCtpcR4RYGq5VUJZOzjNwQg8AAiPLlMYzp2K8vKql5fv/GGMFe+u
 Tnk3X33uUGqRh6T+zlGp+AhpZiEnl2n5/iTas8AhZ2FEeW4HJfWjHfkESYCblfvMFMw1
 s73DneR62jN7eN1/uGa3J/KZxF3+V45cCjIjsIjYI8oXG8yoY9lG+U208yfCwcOluzQt
 723Y13FP+Qhb2kXK0c+l3oy1jcElgwjQ3315kraWJtmBfIfD4HpVAF8O/pzPRMcCm7Ko
 t1ZENG/f6NG3eVF70/gZjgeJdqg1P3MBtLM2Qy8PYfIoTJH45HLwe/Q8g3tAvI+aHyr2
 aY4A==
X-Gm-Message-State: APjAAAVCac0oKUalqMgROxqBQNcPlAHnB5QD48L2FvpPX4xiNnX57oyi
 hA+yGujtp1h6NCQpgW8JnRnt2PmBZpucDK22/oRhIQ==
X-Google-Smtp-Source: APXvYqy+/6RfTqO4HVKK22HJ4SUb9lK/prYvmIxZ0Cl7qxFHUR3oqhJi1qikDD7OHXt/c+stN5QSeCyFVHsMZ9dZnA4=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr40983967qvv.200.1558025353386; 
 Thu, 16 May 2019 09:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
 <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com>
 <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+dVg9E_EzpoC4Bz1ytUckDGXUcEJyU5pV2HS6rZuKmHA@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 17 May 2019 00:48:47 +0800
Message-ID: <CAJMQK-hzjSBf2-QFMn52Sa8fwvm5-gaddzBOudfEc1neR2rwnA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094914_660359_1AAFD8A2 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:32 PM Rob Herring <robh+dt@kernel.org> wrote:

> Doesn't kexec operate on a copy because it already does modifications.
>
Hi Rob,

This patch is to assist "[PATCH v3 3/3] fdt: add support for rng-seed"
(https://lkml.org/lkml/2019/5/16/257). I thought that by default
second kernel would use original fdt, so I write new seed back to
original fdt. Might be wrong.

** "[PATCH v3 3/3] fdt: add support for rng-seed" is supposed to
handle for adding new seed in kexec case, discussed in v2
(https://lkml.org/lkml/2019/5/13/425)

By default (not considering user defines their own fdt), if second
kernel uses copied fdt, when is it copied and can we modify that?

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
