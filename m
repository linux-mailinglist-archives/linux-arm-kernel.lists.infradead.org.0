Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C9C20A26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCdwhE6qjaboPkvqsmC2aMj47+wK8XXtEC0rBJA8yrE=; b=AAZ13wy1DMoOfv
	dWEnRK/Fq9oquJCNRefQ1+T5M2FCk7tS+dfQl8zPBHmPrFk8qW+VhlT8mGJN+vPe0jkeqb+7HAxC1
	/Xnpg6NGIea95Lq5s+xVBvm+SYqMv+QUddmQOhTptemi6sSuOsM04LulWF2hMudhmeuQsA0JX/AXl
	nJosiX8mxRYeps9wyyDZZQoqC4ciO5fT1or6mrtw8+VTq8NbwxhK/+vHffMUKSA3KnTsvANiPpjPe
	EjxijNUD8d8BzfWUcozFRl91Ms8Tcrod3BRPVkN7Z8twwV2VylM8ZOIe2dJr/GcGc8orPnrV1n7c9
	m0z7pXTOP7ah5T2bWFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHjk-0004kO-Dz; Thu, 16 May 2019 14:52:00 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHjc-0004k2-UQ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:51:54 +0000
Received: by mail-qt1-x844.google.com with SMTP id y22so4189430qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 07:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MS2skw+KrEHdESEF2xxKoDYDGwqEs5RP/vpZUAIc9w8=;
 b=NHU7KZ5WPgjex7taKMhAcaxSBI0pOFebtIsJGsWl7hh4wR4Jw0JQV+f+8CsLvEZUbF
 NIDFb/pi21lwTr0YsGzwZJQx6OfWVsu0RwJCS6m/LR7guuYqpXcsMJibNxqnnrzwz29B
 RxfDU88NXLj6+eFsvDvW+DZy5jnZAcJtqI1Lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MS2skw+KrEHdESEF2xxKoDYDGwqEs5RP/vpZUAIc9w8=;
 b=Bf2sTLuk61ndZKjsrc8JVNgTfx6KecNju035JTFZ8gq7+lNxsih55ND4RSqCM+Fh29
 fudpTic//FKPZsRpWQySZNxQdEiK9yuR6OuXn34m3drG+FgQ5ffSOiurbGlnJQ4uaSk5
 3VgRvhjxkV1bhyRKnt/KkzDXz5UcOJ/1BjFkOsMDVVF+GvBDSSbkDk5DqNT5IdC2sDWF
 btJVGg2GX/2Wl6SwzUwC4s+Hoxg6jbFINF8/hv4Eywk7GoyvwF0fQuByz/DDuTA1z2/j
 cOsVB7ugG74ZPtj0wg5buMmORM8Y3N6XcNEc17v8oyZsGbzJkcDr7c1VyaHjZfDiqvSN
 h+nw==
X-Gm-Message-State: APjAAAUVrQaLz5XrapPqfzHD/dmSB+0+4UjuLtBSJXpiPoTnWXocEPhL
 4O2Z4bhDRJNC++NvZpUj82/e4z2rDuxv5Wh2iP2KBA==
X-Google-Smtp-Source: APXvYqzVMPGWHrCFhHM2Qm59YhTIVEDyDKb8QkCN50flg0QSHVH1nVxNOjHLPHdaUYliQm5qek/b0gsTg+bhNCIjvIU=
X-Received: by 2002:ac8:1aa4:: with SMTP id x33mr41119563qtj.69.1558018311752; 
 Thu, 16 May 2019 07:51:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190516102817.188519-1-hsinyi@chromium.org>
 <20190516102817.188519-2-hsinyi@chromium.org>
 <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
In-Reply-To: <CAL_JsqLx1UdjCnZ69aQm0GU_uOdd7tTdD_oM=D7yhDANoQ0fEA@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 16 May 2019 22:51:25 +0800
Message-ID: <CAJMQK-jrJQri3gM=X6JRD6Rk+B5S4939HJTptrQMY64xEWr1qA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075153_000523_70BCE504 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
 Chintan Pandya <cpandya@codeaurora.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 10:37 PM Rob Herring <robh+dt@kernel.org> wrote:

>
> Why not just map the FDT R/W at the start and change it to RO just
> before calling unflatten_device_tree? Then all the FDT scanning
> functions or any future fixups we need can just assume R/W. That is
> essentially what Stephen suggested. However, there's no need for a
> weak function as it can all be done within the arch code.
>
We need to add a new seed for kexec

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
