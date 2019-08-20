Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B729D958B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UbEUtjmFJeboNV8GEMwoFy3sQML4OdONUSZ15OWHahw=; b=uSo4DBE2vXMwDlnrvqunZteGwA
	qunMoCZEqj2iJXJijhrFTrS6q9KTluS/5iQAFKtPPKgthOjCJoe+uhG6vZ8qLoHM4AiWYnyFI/LA9
	CJZAgD2s24ssViN3jgKHzmKNG9kOc53WZ5oydbD49bMm4T49AHjDHQCd/88sj0e32xHd2PZ0Jl1/e
	YwCoAFZDW+84FEpHFoYaObUv4KbnmhwggpUGm/sNtcgd3wNKOkzqN68Mc65Vrwyctd7Ji2t4w6vBF
	Ulpl+NGXYuH95tDdtIlGdC11fIe8naW0/iifMKvJS6zNzSjSHS9babQA4gMhiMLQ5XqeBxfHInJZ/
	QJ5EotUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzynX-00030J-O8; Tue, 20 Aug 2019 07:43:19 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzynJ-0002zZ-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:43:06 +0000
Received: by mail-qk1-x741.google.com with SMTP id m2so3720818qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 00:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=S9BfCaCcjnrZTg8pwvBFIJa/79WcyMDlRnwOhM+do5w=;
 b=bx55f33SgGBAmLwuFK8/xzIDq47ECx9YckjIqY1DAkVBwvNu4bo2tA0VRL+XR9Hg2s
 XkFLTt0BbVXfpGyd/dJ6vSMlSD3ITzUQlni7OdwbFg6j/xaCHJzrIELtvzV84n4wXQe1
 si3UMNgrApcQgtMIyP02jwkEFbDxLTFzJ9csU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=S9BfCaCcjnrZTg8pwvBFIJa/79WcyMDlRnwOhM+do5w=;
 b=bhyhRX6E/fcm5VfVcZWf7zzbMWWySGjFmj5djvHC8joT/OoF2Kzw+tbduBDDA25Mo3
 Ry7YV+3LLQZ8GdbgsvVgFyXQ3htN/bUfcNis28+f++7X4M8NwO9bJvDpXVFSZ+TbN4kr
 1M+l5LG0b2zS2QSmXFJKqZhQzohBl+p+aCAXDtMtzOwyw+uZpX/mRRDOHmTZyUM2ob74
 L/fyJtit2+PR7/HP4BqaHirs3eqJkJ13m4tNV/UBpkOtwv6YPWWIiKpcTvsOdCPs/Ude
 dHcDd1hX/s5ZV/3Lom6aW7MgNvIZhK2DIms/pK6Wm5CS663E7XBZJw+pxK9Uec618TDV
 ZczA==
X-Gm-Message-State: APjAAAVsV+yFPzuPFFMbCC192jAbbQ8NAomUGvcnip0BHtaySgg6cgPV
 yInld3Tc478E8P36PssjpvR4v9W2vLhdTI+C2vi+9A==
X-Google-Smtp-Source: APXvYqwA24yU/jmyxqzTB0F3DSWeTMOC1E3SNpe/Aj0iH0qAXzegQBrGnogbCNV8DHKmZc5s6stZEV41nc+8I6lPnvg=
X-Received: by 2002:a05:620a:16c3:: with SMTP id
 a3mr23640505qkn.315.1566286984047; 
 Tue, 20 Aug 2019 00:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org>
 <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu>
In-Reply-To: <20190819181349.GE10349@mit.edu>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 20 Aug 2019 15:42:37 +0800
Message-ID: <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Hsin-Yi Wang <hsinyi@chromium.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, 
 devicetree@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>, 
 Frank Rowand <frowand.list@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will.deacon@arm.com>, Andrew Morton <akpm@linux-foundation.org>, 
 Mike Rapoport <rppt@linux.ibm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Miles Chen <miles.chen@mediatek.com>, James Morse <james.morse@arm.com>, 
 Andrew Murray <andrew.murray@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
 Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>, 
 Robin Murphy <robin.murphy@arm.com>, Laura Abbott <labbott@redhat.com>, 
 Stephen Boyd <swboyd@chromium.org>, Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_004305_743692_4E70EEDC 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ted,

Thanks for raising this question.

For UEFI based system, they have a config table that carries rng seed
and can be passed to device randomness. However, they also use
add_device_randomness (not sure if it's the same reason that they
can't guarantee _all_ bootloader can be trusted)
This patch is to let DT based system also have similar features, which
can make initial random number stronger. (We only care initial
situation here, since more entropy would be added to kernel as time
goes on )

Conservatively, we can use add_device_randomness() as well, which
would pass buffer to crng_slow_load() instead of crng_fast_load().
But I think we should trust bootloader here. Whoever wants to use this
feature should make sure their bootloader can pass valid (random
enough) seeds. If they are not sure, they can just don't add the
property to DT.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
