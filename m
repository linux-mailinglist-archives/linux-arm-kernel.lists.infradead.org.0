Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C88F9A860D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEbVlgTB/9PZ2l/NWuif6bFJ+DjFg+f+ttT1bTU4xlo=; b=ot3jTbcfTrbM6B
	oahOp79WLKhYSlXYaNMNNdM/4afaGWVeErBi1Dcptz0xo/cDJP4bkvctgAA+t4JDL+ief8i+HtXzn
	UjWOJ4SynNfyzdOzhu+kqhNXfYO7ySyXBnfdk+Hm9f1KBG7TF42MLRiA683KiOcIoWJNB6i63/Eah
	CXqOq2yBT/8QfzcOCWUEmmlCma7ivSO4Zirhttaqh3lIwk1wBMyocpHo+Le8Llz11ycHDpq1esFta
	6BVmu5j6ohaXCrT0HY+y/vBce92MIgXcJxUkQGG2ZdI8jw7SOL803VfehjzeERQSCLvitpDhMVANg
	LHTwgJq6NELLIDWhiXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XCa-0007fL-2S; Wed, 04 Sep 2019 15:28:08 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XCM-0007eJ-M3
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:27:55 +0000
Received: by mail-qt1-f193.google.com with SMTP id b2so21343645qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:27:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p7b1N8V85LqqEm2j0DjuNlUk7tSxTDqCBvfRkD4FVBk=;
 b=Pinjb1zOMeRcoYr7yYMzenU6RL2A50ovkUq6KRa01cnoj9PlwUqNw1Ym7OGib7kNAc
 ic6NrGof54WUzndO60izNdsMDdpN+qDOGN8NHG0WmfZPiBD8CxdoASuDvt0Wen4rB0/X
 XOCL8is5fSC60ATlVmZkFo4mdF9CUqaxTn7tKed1vsDdFw1pvWTjCwLmQkBDvlmRszGk
 Qjq3AYMKrDCxsVtxPW10Ri/NMXikuooyVa2UnWiU29aFt5lufCaj59oURtPH2cTE9hr5
 ubGTj56oRsw5XcFFWZHVNBJgRTb2MF5eR3OVCf1UtaqDVH1QEsUDL03Eciyi/pFYOpDW
 pquA==
X-Gm-Message-State: APjAAAVamj/iWrW/la3uLSu5EVMb878Oqk/4C0AwwVQFQop5kfZBIVPq
 pq9+XHEgyo42OXgIKBqLkmpDkOZ/5gOgWzkmVwU=
X-Google-Smtp-Source: APXvYqwkiPu26IlSxkELMZVjYeJUYP0BO8lUlliTVxXz6my62r+JkrcYBpRgkTlLiQ8k7N29cbbOIPUKvaa9ZMXax8Y=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr15937751qts.304.1567610873621; 
 Wed, 04 Sep 2019 08:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1567016893-318461@atomide.com>
 <pull-1567016893-318461@atomide.com-4>
In-Reply-To: <pull-1567016893-318461@atomide.com-4>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:27:37 +0200
Message-ID: <CAK8P3a1s2go50eYiWQw5DCUEajy2QozKKfs4_Uo6xWUKL3eyrA@mail.gmail.com>
Subject: Re: [GIT PULL 4/4] sgx soc glue changes for omaps for v5.4
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_082754_724031_853C0A68 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 8:35 PM Tony Lindgren <tony@atomide.com> wrote:
> SoC glue layer changes for SGX on omap variants for v5.4
>
> For a while we've had omap4 sgx glue layer defined in dts and probed
> with ti-sysc driver. This allows idling the sgx module for PM, and
> removes the need for custom platform glue layer code for any further
> driver changes.
>
> We first drop the unused legacy platform data for omap4 sgx. Then for
> omap5, we need add the missing clkctrl clock data so we can configure
> sgx. And we configure sgx for omap34xx, omap36xx and am3517.
>
> For am335x, we still have a dependency for rstctrl reset driver changes,
> so that will be added later on.
>
> Note that this branch is based on earlier ti-sysc branch for omap36xx
> glue layer quirk handling.

Pulled into arm/late, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
