Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A524690
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 06:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5JC1nDA4vWcKUPfee/c2ZiJ9pHJyAtzujrhJVW65Fo=; b=OFBZzlQbv6BkrK
	6ujofxTG+QTruzZi8PmMgbJEo6LVZVmkLJ1TNraQf2+UcLhuGM4CdatDR4GU9DYXgRM4Vr8YSpCE/
	HwrJSiW6NUpiLVw/ULjtK9HMf29hYP3HaRgoLVBu4ONhfJDRDPBou8kSZ3YkYPVs9cha+uyRCjj/T
	9wZ0mLYJ7mRCbaTPMLIx8GDf007Cp5FOoyTmXp4eINT2fcBUGwOJsHjegj4F0zJ5GXnh4pA29pa5j
	IeAkcH0Jk89l8WYQEnqpQ2aC8XaubWBsyyWWUwwKeDomI5IXfsGU/8afxoPYtGGZoNH7lXtikDljS
	4OhBwijrdrqeL4RqDwAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSw6R-0007yM-0O; Tue, 21 May 2019 04:10:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSw6J-0007aE-Bg
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 04:10:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id c15so10255769qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 21:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3c0mICKtbz9dmZs4lKO7VlxYBdZCjLhKgi8dII9aBDM=;
 b=fga00DVFQ2rLWeSRJzJKwLNxC0I6eXztpercaXApCXecXBaXVYRj/ffbIXLN7qkcUm
 z0QED+pOSGl4rtpJhkCuOdCL4ERfaM98h+1igjL6yi39+MS6XW6CJoQDoTYD+5NXaJq5
 y4Nv018qVocLknq+UU5q4SAxHg2HvqQ43q/OM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3c0mICKtbz9dmZs4lKO7VlxYBdZCjLhKgi8dII9aBDM=;
 b=XWTRee+e5UjPVQgMq6/fFxHYQlrc2aPkZzbZElmi76T01zOoP7+61wZt+PD6Qm/P5H
 YqjCIYzVv/SXN9SifqT7aJA0mANSKH6YWjudNbCpcT6J0ddzifU3Mpg1Goz5RVM4M1OK
 /yhADYtYtHMZZs1x3F0cX4K4R980qxiB9O84vSmnPeYORhgIN7GzssnkPTJz/MMHT1N5
 20MI/Y7fFqiEjz+pnLHNDy5PJH3S2C8G4Ibnxbg696g8E+G8x6ig4lyA/hJRbu+EQbIU
 aDxgNnFT6PAw8a+J5z+BuL0eW72bZ9DsVSth43Gf4YlcSMnval4/VOgbGoyBBZItbeCQ
 Whog==
X-Gm-Message-State: APjAAAX6Nxzhwh7Pi4S/PI8pzvmpeFsRUg1PfKQSVMJnXkKvo6UKVg5w
 FY2mIho5Iq1pYpDLLvtB95JHvLZCy8+6KW9Qv6XIxg==
X-Google-Smtp-Source: APXvYqza/UClcXjYIWYoBB8uNlk4hI6crkUxv0oq3+toM0hl9yBc/8eEZE9CMyiwgn5NUtkwXeONUDDNEx/tvWkBtqE=
X-Received: by 2002:a37:6044:: with SMTP id u65mr3960843qkb.146.1558411805476; 
 Mon, 20 May 2019 21:10:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190519160446.320-1-hsinyi@chromium.org>
 <20190519160446.320-2-hsinyi@chromium.org>
 <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com>
In-Reply-To: <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 21 May 2019 12:09:39 +0800
Message-ID: <CAJMQK-iZRHO6HBkycPt0yz_vndmmmqFL0duHOcQ8EFSdhhFZcQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] fdt: add support for rng-seed
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_211007_429688_AE226C40 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 7:54 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> Alphabetical order.
Original headers are not sorted, should I sort them here?
>

>
> I'm a little bit concerned about this, as we really want the rng-seed
> value to be wiped, and not kept in memory (even if it's hard to
> access).
>
> IIUC, fdt_delprop splices the device tree, so it'll override
> "rng-seed" property with whatever device tree entries follow it.
> However, if rng-seed is the last property (or if the entries that
> follow are smaller than rng-seed), the seed will stay in memory (or
> part of it).
>
> fdt_nop_property in v2 would erase it for sure. I don't know if there
> is a way to make sure that rng-seed is removed for good while still
> deleting the property (maybe modify fdt_splice_ to do a memset(.., 0)
> of the moved chunk?).
>
So maybe we can use fdt_nop_property() back?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
