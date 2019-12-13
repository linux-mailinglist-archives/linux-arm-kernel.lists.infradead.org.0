Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D128D11E9B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mj/R0D0EPZbrWkA4zDJUpo9heAuasv9sHbL8ZqymGwQ=; b=AsIkno4KBAgRtI
	u6dmW8TM3sQubfhupyRoPF74BjXnRCzzeCzLV3DABOV7pebhGNJAC0N1OMziPdjnn739hHqnsXs9+
	smUaVKCWZEW+hZER3mW+i/1uOoQPGtuHFPkkeEB6Zzh63OfYzSf23DqRL5ZqOUnb8CMH67ZUBv9Vt
	syMvlnVUOK96kCc04OzJgCWliOn7a2Qfm2LBD9MMvqA7LefLFQBS5l/7SvPUrlFOVDC6QDWOOTrh4
	JVe3bXiBbb1GSsospt3k7XhMXbmO7Ta8CQH97Uv1Hv9Xch5dwewc0ZvDlxtCj3bg5AEMl75fMyvY7
	uNjhS2eaQ5Lo/CN4ZZZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpJq-0005eW-0p; Fri, 13 Dec 2019 18:05:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpJe-0005dN-BU
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:05:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so452113wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 10:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+EYduUcDZi5305eYv3iFGbrJoeNChzA396oztTfjBXU=;
 b=Z6qcTDjwl590xiTBev2JIOwenrYEXB53zCVflq2uJiIg3qv1Y9pXnAAZ8WZv8/mbi5
 X0KUBgnta6sFq5Afijzj0YTeDIfXsvC9j24/4+0BSsiuDaf096c1ID9XuihGm2bC0lCH
 iutnIo99KWUoEkaz6vzXVOzJz9WWMkA63FWcn0CpaeIYDX5Yo88LOdRRXYFwSqSJ8S36
 lbHWSDHF3oYzpnHTFfYPkXypPOmtnnDo4cN9a6p48tvFYzTEmGQ7sELy1hAaQWoPN2XV
 2M24u/AfNr7632cMFNo12oBXbt/X0+MrSVvmcen+7LrM173sKJQtNlfIecsOG+UNybBQ
 Imaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+EYduUcDZi5305eYv3iFGbrJoeNChzA396oztTfjBXU=;
 b=Ie3E4tpJungX61H9n7UkQgKV3nPGzmxw46bDArgdquOZoCeJt2exuWseNWuWOOEI6f
 jSeOupW2Sc26wcZTCZAKoE/2jYwKlArd03YwvMAfeUH3nA+D4OfGgO/f+LVQeZW3jR/p
 RCGzMIW+fN8GgWMcwHl45ph5A1whzvqFvLc2CPA1pQfABvQE64xfsrEG+kkyLsy63o28
 +JSofIFh1aZxm28WUnMSPwI/0jhfe/t5lSF0ebDALNnrl/X4siReNrOnUkZPnx5mqe+b
 dzhdcI9A7xSCeNetEQXPDna1hiYPFks7drpy4L+Y8JNnHSWqPjx9nwnt+rwsJCZJAbYy
 Fzsg==
X-Gm-Message-State: APjAAAUE3Pw2TLisBT1QuQuxwqx3AwFlO4UWJWCmbQUt+hekdVftkK99
 tPGG2fXtuzhW01N40yn3QWgomBwJpcHz8/sxUAWNr6BnioM=
X-Google-Smtp-Source: APXvYqxP7jBF9PnXnDysL/SrUBCGW3Lv4EcU5tUKWTw5jUIPDgtI/jqhKpKkKz3Y5IvwtOULGC1TyfC1kP6l9kY7Leo=
X-Received: by 2002:a5d:4984:: with SMTP id r4mr13660823wrq.137.1576260322155; 
 Fri, 13 Dec 2019 10:05:22 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Fri, 13 Dec 2019 10:05:10 -0800
Message-ID: <CAMn1gO6f4UUdhBe1sfiAPBW=zr-C3ypUv-Pwgx=wvmJjp4xfyA@mail.gmail.com>
Subject: Re: [PATCH 00/22] arm64: Memory Tagging Extension user-space support
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_100526_398331_E5404941 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Kostya Kortchinsky <kostyak@google.com>, Kostya Serebryany <kcc@google.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:40 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
> Hi,
>
> This series proposes the initial user-space support for the ARMv8.5
> Memory Tagging Extension [1].

Thanks for sending out this series. I have been testing it on Android
with the FVP model and my in-development scudo changes that add memory
tagging support [1], and have not noticed any problems so far.

> - Clarify whether mmap(tagged_addr, PROT_MTE) pre-tags the memory with
>   the tag given in the tagged_addr hint. Strong justification is
>   required for this as it would force arm64 to disable the zero page.

We would like to use this feature in scudo to tag large (>128KB on
Android) allocations, which are currently allocated via mmap rather
than from an allocation pool. Otherwise we would need to pay the cost
(perf and RSS) of faulting all of their pages at allocation time
instead of on demand, if we want to tag them.

If we could disable the zero page for tagged mappings only and let the
pages be faulted as they are read, that would work for us.

Peter

[1] https://reviews.llvm.org/D70762

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
