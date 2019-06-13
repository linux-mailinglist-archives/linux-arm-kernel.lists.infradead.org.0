Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F22A43639
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhWVK6AIdQk5Xq992+b9wUZytLCHeDvQlFTupITqHZk=; b=Y03/535swP8oDT
	0pxQGuRpU1DSfYXkE8LJPyozqzmA9cB+38y7uhn4NXDbcX2tQDspLtA0RDZDI7y5N4cT2OzRHFfHJ
	lglHA86sXh3eTxchgeBC1McdecUoKn6oHcuH/MLUlihwYWjdfVKTP9tqvSt3TwhMSRssyTqtrzi3Q
	vFpv2I1DYt6mpF1LL4yHn4ZdL0zfv/mrZwxguyYuGpWSIQYsMcoewogWWOinnCKnxu3W7U0IhKP9G
	WjcH7pT+S/70E0z/ellfK+OCmUdHJ9rh7BceC+xyvW6av5WWwNG6SINFob9DZZUu2jzC2QI0/J5wd
	Bs1Prfh4TLaTpyHQiWGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPQA-0002vj-CB; Thu, 13 Jun 2019 13:05:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPPv-0002tW-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:05:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so16645492ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=COMq1DZp1tUFDOVJCz+Oc5oRle5W+TVy2bbvRpSIdF4=;
 b=qc01olia4cmwrnoPTe2ZFrmw8g/xeegnMkBjI6b5n3TIdaetazObaCuOVxxJGxztfx
 UWxdZDvZDFYmTfiHnlGPUNiNlz24GdHLSttZMTJdYvj6tFmu3BtHAev5gqLNhXvSPYnM
 NsXWoj0lkbckrxBeZEJgG5KoxPDrFhBmupApL0hfeJS3hCMIKbbkjYDoZCw2sNnAkwZQ
 6cKSZeJReF8wUT0bqEHGB7mByLnj/TeKWcvCjWas4NwnEgzQpNFuh3wA5GgvZBs88li2
 oNEgWYm244rN1o23TzoBUZ+n2kFqLpUW00bU/764tbCeMtdqKf/ChMz/FSj1569Oj9Ra
 UQvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=COMq1DZp1tUFDOVJCz+Oc5oRle5W+TVy2bbvRpSIdF4=;
 b=bdmaSAAyy+uboo8UpkrG/9o+iU+4LiFSx+kPxGeBIXmhpfNrjnSNrSneokUQDRA4qK
 kxlWcEm4Z9nbT3nMmfsif93Zs6qgSwdshMesUjtoyZRUy+qkRAZhGxYAhOJw0k/WY+F9
 4Cufm34JsbuzSobhZ5dCPUSi1pEVTzk57H/aaPfAYSyazQpmGefVdVi+YzYui59UEjVZ
 YGKczqdWpNm1paL+4i69kiIx5DrM4S8LixZMzWqAktFOLEo9DehqD8VzkD8zVxJVTT95
 vCbeY/o4ZiRaBWNzprFF20rnuQXT5AkQscXuLrP+FfU3iGi6JmMu11U7pewjWuEVqMp5
 QEvA==
X-Gm-Message-State: APjAAAWy5PpafBnf4GuPx2JjgWwQ8JUBmnJHLQuGrwIllUXuMsm32TQM
 FF2Un0T+yZaizbOMUFK7AJQTCpcDRDN6MBMPdUUJSg==
X-Google-Smtp-Source: APXvYqx+Wyo9dQ01vmbb1QVMUlNB4LxKek/Z4JsplxvhFxRKIXJWRUTg5jAa3SaPJ4zJ8mK/k/T7Pj1+pIKN6neeKaQ=
X-Received: by 2002:a5d:80d6:: with SMTP id h22mr6100497ior.231.1560431115386; 
 Thu, 13 Jun 2019 06:05:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
In-Reply-To: <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 13 Jun 2019 15:05:04 +0200
Message-ID: <CACT4Y+ZGEmGE2LFmRfPGgtUGwBqyL+s_CSp5DCpWGanTJCRcXw@mail.gmail.com>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_060523_850881_CE852228 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 Walter Wu <walter-zh.wu@mediatek.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Pekka Enberg <penberg@kernel.org>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Christoph Lameter <cl@linux.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 2:27 PM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
> On 6/13/19 11:13 AM, Walter Wu wrote:
> > This patch adds memory corruption identification at bug report for
> > software tag-based mode, the report show whether it is "use-after-free"
> > or "out-of-bound" error instead of "invalid-access" error.This will make
> > it easier for programmers to see the memory corruption problem.
> >
> > Now we extend the quarantine to support both generic and tag-based kasan.
> > For tag-based kasan, the quarantine stores only freed object information
> > to check if an object is freed recently. When tag-based kasan reports an
> > error, we can check if the tagged addr is in the quarantine and make a
> > good guess if the object is more like "use-after-free" or "out-of-bound".
> >
>
>
> We already have all the information and don't need the quarantine to make such guess.
> Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
> otherwise it's use-after-free.
>
> In pseudo-code it's something like this:
>
> u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
>
> if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
>         // out-of-bounds
> else
>         // use-after-free

But we don't have redzones in tag mode (intentionally), so unless I am
missing something we don't have the necessary info. Both cases look
the same -- we hit a different tag.
There may only be a small trailer for kmalloc-allocated objects that
is painted with a different tag. I don't remember if we actually use a
different tag for the trailer. Since tag mode granularity is 16 bytes,
for smaller objects the trailer is impossible at all.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
