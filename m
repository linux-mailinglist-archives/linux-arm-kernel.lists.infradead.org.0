Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47414446EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Yc4nCMrs5eZ5IDbcTq8D+wuf7dUSaKr9mWncLg+sqs=; b=tMSYUi++6aVsC6
	L02RCLN8yPT4x92uJkThJ0VkUQAtSRqKLt6kgUWuedidchnCAAe2XRsVKIGmLoA4GjzvjRhAEHl+v
	t90eeiDGUTJ9LYNgTuUhbN1qt/rW/qghX5+W5/xh66WvWN1U5gW8adf0TLViXWL8VemVzVVEm0gz+
	MtROk+oULYWfarf76W/hQC1wt7ZUsJZQDU9qs+vZ58LTMmY040ZU1GbZi8/uUP6PUtEDufJwvphkN
	xox3MzdusnOpbRa639WaztL9aocRspQWzSZecJDdtzXDQtm0ZSroIanDCDdlCSl6THg2TbGPgmsmu
	fRGwxf76NMiC3eYRaSvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT14-000793-Q8; Thu, 13 Jun 2019 16:55:58 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT0g-0006yd-Al
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:55:38 +0000
Received: by mail-qt1-x844.google.com with SMTP id n11so21224611qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cpeR1oqDMBZUpG954pBrUTTYYcn3Zggg2IBtHJxA5v4=;
 b=Zqq8iBgdsPVPJLY4JGsFEQwdaxwUciGd2Fc5ZKjNs5jgV0Pu0qQ4GOxcUsMI/XM1bM
 s2K4nQnJRAjktThjAVg+9xli/pUYEzrr9r5pyf8JN0ERtXwIjdz9JZr26sAWQm3PnuhU
 fHlLpLHENwwr84jPnidvMqH07WJ+FXj/edyclsk/5Z83gjRf2p0qJMOXcXe04qO2TTQM
 Paa3Hd2vsAa2oHswH87np/Sxkwi4jRwyeb/pAc9ThMgpOgmMWMCq1TLtghGHL8wnA5dV
 NTz8Xt3LHq7CtAW2EciK3dRzh/h2aBYuLpp7IGRJOu3AWGBB2BvGtzuFKk2g6xydakGR
 rhdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cpeR1oqDMBZUpG954pBrUTTYYcn3Zggg2IBtHJxA5v4=;
 b=SWgvxiSbZ/3hHWtw6mdtAm1lvw3EnZwQb0eGVJJHvSzJgOYgDMnu4RWBAIXnkWwR8I
 EGPqorGA5Lmyy1j2nm0frdT5BxlKg9upqCW66ahVTTA7FyZ3XlU2t5TwseRFYLxift3R
 W7KKxFImUeJbpgUekjw5Apf4oM4H4aP8VSpxteXDSkP2XqEgBTmObbUHklqXLFqg3ds0
 9dcOd30mxb5W38y05aFaoknJfCbZ0wg1Rjf9oIyY++5nEjW2SGchesb90uioUCB0tH/9
 qQjBlsOG5BCalF89qd/Iz/u6k7Zd8AG06mzRDzyh8HxbcRL4Wpz5dQ2WJcy2juds7Yth
 atfQ==
X-Gm-Message-State: APjAAAUfm1/qVWgPFbFns9PZw4eMAaDuqlUNzUITzMWi1wPSTacCuPeu
 CVIxqgTBiUyCoFpnjiauERue9T4bCZ6sfP6aFn/ZDQ==
X-Google-Smtp-Source: APXvYqz86ouH7qW11YhIdQ+/pUkNlNb42R0tYC+q9OD3ZyZ2tlhUGh65ELc9Aj3l+yGRkQyoKy8wbukUoOx4aP/oyNA=
X-Received: by 2002:a0c:afeb:: with SMTP id t40mr4514204qvc.28.1560444932838; 
 Thu, 13 Jun 2019 09:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkfWY5eShXAr6QyFjqyaL-JjgQ+OKU0LtComURBVf_sDCqGeA@mail.gmail.com>
In-Reply-To: <CAJkfWY5eShXAr6QyFjqyaL-JjgQ+OKU0LtComURBVf_sDCqGeA@mail.gmail.com>
From: Nathan Huckleberry <nhuck@google.com>
Date: Thu, 13 Jun 2019 09:55:22 -0700
Message-ID: <CAJkfWY7=JKBub9W9q85cqQhZ1P3VT02CMOHaSyNsHebW4-xikQ@mail.gmail.com>
Subject: Re: Cleanup of -Wunused-const-variable in
 drivers/clk/mediatek/clk-mt8516.c
To: fparent@baylibre.com, Michael Turquette <mturquette@baylibre.com>,
 matthias.bgg@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095534_448598_549F7A45 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey all,

I'm looking into cleaning up ignored warnings in the kernel so we can
remove compiler flags to ignore warnings. There's a variable
(ddrphycfg_parents) in clk-mt8516.c causing an unused const warning.
Just wanted to reach out to ask if this variable is intended to be
used.

It doesn't look like it has been used since it was first introduced.
If it is no longer needed I'd like to remove it.

https://github.com/ClangBuiltLinux/linux/issues/523

Thanks,
Nathan Huckleberry

Re-sent in plaintext so mailing lists pick it up.


On Thu, Jun 13, 2019 at 9:47 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> Hey all,
>
> I'm looking into cleaning up ignored warnings in the kernel so we can remove compiler flags to ignore warnings. There's a variable (ddrphycfg_parents) in clk-mt8516.c causing an unused const warning. Just wanted to reach out to ask if this variable is intended to be used.
>
> It doesn't look like it has been used since it was first introduced. If it is no longer needed I'd like to remove it.
>
> https://github.com/ClangBuiltLinux/linux/issues/523
>
> Thanks,
> Nathan Huckleberry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
