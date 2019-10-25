Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13D7E4AB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oTz+gMhfmBucTIaqznaltkLZBTjrNJy6UmZHRaqToE=; b=NHpnlPfcskTrcz
	1Yawc98iMWAbHAU6UoTpv1+7kbXPpmN8W4aDtkYMs4ozgmTBkGY/JrufvIgjs7WE/1/Z1qBcAHbS1
	gSjO5S8ru6s6PCNiidc8d+2JEED0waLsY6WTKSyV60Fzeify72rWigtEe4LTBZWPBQdwfyu8ptHd3
	tiQctrh9b714DK3m3tWSAEMDRkPYVnAX/c1lJ6zCFWitflZ0yeBxsTnm7dXiipaXPXGIDcqZhKxvk
	7pSB7b2Ht6MeGKy/DAoIqmCf5OrHaxVXDR9Q/KpnwYXCKTBFqdEnSasFH+Qu23mC7ktUAODt3IdIq
	Y1He8utPjkbJkMLeichQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyMB-000731-AK; Fri, 25 Oct 2019 12:06:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyM0-00072R-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:06:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id v3so4134616wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Xr5XWoqAazcnd2ln1wAqKC37APWCgyGrEBPgmaFYI4=;
 b=DpnXK3joK9np7VbiFoZ4rFDfLKtgrjx8MVYPh/yBCHdxNjN4swg7/OFkSuSExo8NjC
 zCsZ578BHbJqPCEq2H/j2WTLGo2iMlJC8iStac+bczGC5NM0wHWgsvqKoNCnDO53u01w
 kIMyLkCwE3um5OtziwI0bFC3HqzM82OmuLLcG/p4XWfqR72CmnZYWt8WzlgIyiV9uCUA
 VFG5FHVcUl2j5CPdlFdQi7iLvRJxRSEn4MffMVtTBfba2NnHNqYg3CF4M78jrUtaEjS4
 34hmaAiIV3wwXqu1rbi7U2jE7VyuVYivuYTFKbBVyYnQXDl4jWpUy9FOP26xla0WMzJ8
 GL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Xr5XWoqAazcnd2ln1wAqKC37APWCgyGrEBPgmaFYI4=;
 b=FqFHAQFKCmni5JXoiuyVwGpf/26DLphWpUFGEZG+iONJgsAj5DF7M61O1tLrNvr+bo
 NN7PEXL+4+sd8p63S0tuZD7cemsLH4uxUlT9qinvA7RqvpElJ88tsAx/eZm1sFZDqUQs
 qNIURU7FLTZe+ezdEHO7lLGRpls+0LB2cyRHEk0br5VCZwLPNa4xDVloxZnnB0EfktVg
 GrP3u6F7ytUCqsC3fdFMMSur4zZ1sdWqUXZq595q43DnyIDeLMilXHd+fEJIOzjFM5MI
 A1L1lcrHyvLOy3rypD3lbmvCiZZpUUA5GYLXqUZQw8I204VfOWidfNtDLBvaSWJyJU6X
 dN9Q==
X-Gm-Message-State: APjAAAVp4Cp7rPpRviW2O1Hdl59wkSKX0J9J3BGTVLoRJ4onJAcoGSpp
 q70LCAcZ/AdRLlTqul2XPDIO7HRVms9pufgd3+Zlbg==
X-Google-Smtp-Source: APXvYqwgSRdxXwvAi68XsWwqLPq3FxBaQlD3dejCnHYgHetERZNOKwnPey1fARBBMl6WJEZjTJACYw9YTvvK0PD+yhA=
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr3326202wml.10.1572005162272; 
 Fri, 25 Oct 2019 05:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191017122549.4634-1-t-kristo@ti.com>
 <CAKv+Gu_HNOTSvWRTzLMeECaM8qCi5w806ht_e68e5vgcU9aQvQ@mail.gmail.com>
 <8f97d690-a88a-55cb-eb67-206e01873d94@ti.com>
 <bf22f7dd-5446-d736-611b-6465df45b74d@ti.com>
In-Reply-To: <bf22f7dd-5446-d736-611b-6465df45b74d@ti.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 25 Oct 2019 14:05:50 +0200
Message-ID: <CAKv+Gu_ABcosRm30nrtCY429Xki8_b9GAzQ=hQ=Kiuo2o6Y2ng@mail.gmail.com>
Subject: Re: [PATCH 00/10] crypto: omap fixes towards 5.5
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_050605_020011_5196EA39 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-omap@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019 at 13:56, Tero Kristo <t-kristo@ti.com> wrote:
>
> On 25/10/2019 14:55, Tero Kristo wrote:
> > On 25/10/2019 14:33, Ard Biesheuvel wrote:
> >> On Thu, 17 Oct 2019 at 14:26, Tero Kristo <t-kristo@ti.com> wrote:
> >>>
> >>> Hi,
> >>>
> >>> This series fixes a number of bugs with omap crypto implementation.
> >>> These have become evident with the changes to the cryptomanager, where
> >>> it adds some new test cases and modifies some existing, namely the split
> >>> update tests. Also, while fixing the cryptomanager induced bugs, some
> >>> other surfaced with tcrypt/IPSec tests, so fixed them aswell.
> >>>
> >>> Patch #9 is against crypto core modifying the crypto_wait_req
> >>> common API to have a timeout for it also, currently it waits forever
> >>> and it is kind of difficult to see what test fails with crypto manager.
> >>> This is not really needed for anything, but it is kind of nice to have
> >>> (makes debugging easier.)
> >>>
> >>> This series has been tested on top of 5.4-rc2, with following setups,
> >>> on AM57xx-beagle-x15 board:
> >>>
> >>> - crypto manager self tests
> >>> - tcrypt performance test
> >>> - ipsec test with strongswan
> >>>
> >>> This series depends on the skcipher API switch patch from Ard Biesheuvel
> >>> [1].
> >>>
> >>
> >> Hi Tero,
> >>
> >> On my BeagleBone White, I am hitting the following issues after
> >> applying these patches:
> >>
> >> [    7.493903] alg: skcipher: ecb-aes-omap encryption unexpectedly
> >> succeeded on test vector "random: len=531 klen=32";
> >> expected_error=-22, cfg="random: inplace may_sleep use_finup
> >> src_divs=[44.72%@+4028, <flush>14.70%@alignmask+3, 19.45%@+4070,
> >> 21.13%@+2728]"
> >> [    7.651103] alg: skcipher: cbc-aes-omap encryption unexpectedly
> >> succeeded on test vector "random: len=1118 klen=32";
> >> expected_error=-22, cfg="random: may_sleep use_final
> >> src_divs=[<reimport>41.87%@+31, <flush>58.13%@+2510]"
> >>
> >> These are simply a result of the ECB and CBC implementations not
> >> returning -EINVAL when the input is not a multiple of the block size.
> >>
> >> [    7.845527] alg: skcipher: blocksize for ctr-aes-omap (16) doesn't
> >> match generic impl (1)
> >>
> >> This means cra_blocksize is not set to 1 as it should. If your driver
> >> uses the skcipher walk API, it should set the walksize to
> >> AES_BLOCK_SIZE to ensure that the input is handled correctly. If you
> >> don't, then you can disregard that part.
> >>
> >> [    8.306491] alg: aead: gcm-aes-omap setauthsize unexpectedly
> >> succeeded on test vector "random: alen=3 plen=31 authsize=6 klen=9";
> >> expected_error=-22
> >>
> >> Another missing sanity check. GCM only permits certain authsizes.
> >>
> >> [    9.074703] omap_crypto_copy_sgs: Couldn't allocate pages for
> >> unaligned cases.
> >>
> >> This is not a bug, but I'm not sure if the below is related or not.
> >>
> >> I'll preserve the binaries, in case you need me to objdump anything.
> >
> > What are these tests you are executing? For me, the testmgr self test
> > suite is passing just fine. Any extra tests you have enabled somehow?
> >

I enabled CONFIG_CRYPTO_MANAGER_EXTRA_TESTS, which enables a bunch of
fuzz tests of the offloaded algorithms against the generic
implementations.

> > I am also running full test on different board though (am57xx), I
> > haven't been explicitly running anything on am335x.
>
> Oh, and btw, did you try without my series? I think the selftests are
> failing rather miserably without them...
>

No, I just tried a branch with mine and your patches applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
