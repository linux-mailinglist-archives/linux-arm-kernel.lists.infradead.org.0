Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC719F5CFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 03:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhDIz0grBl3g/EivVcuozMDtQ2Rdrm6+/eC/CGM1fFc=; b=F5sNufRvMpqJC4
	uf5LVfoyiJa+poIStRaWnA4bN5aPFb5flSs16tQ6yjbbIuKYEzozqapc2heJ4oIqwAcoBD3ynVLVC
	QhHni1qrKCEZR/f8NpNX2seE8vmLH0TkWCc9++HHDzkk0qsd6h+ykPd3vrEsbbL2fJ/oPGuAgfqJv
	1tnYANhnk9PlK8TMKXtc4Hg5t4Ln5+csfj5h/u/nePn6ND8xXkWX+T3e+6JTiJRFJIlF2opTjeU1A
	L1WVqYR/9KbaBjudd7Rg7rlbUqiSUv42bVIv0keCEpCIEOb7u8+ilprv4lTEoLIguxwDib/xvs4K3
	3hK0NuU12aR/9VoYQm9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTGTn-0001Ax-QO; Sat, 09 Nov 2019 02:27:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTGTg-0001AT-AW
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 02:27:53 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A48D214DA;
 Sat,  9 Nov 2019 02:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573266471;
 bh=mMesAn5bzqaMXFwOkfks3W22Wpyo5hJg1BB/Q5ylArM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TePygY9zSTjFoOkXjTbRPu9BHRSgLLowCiG9m2pbpfgF/Zm3Wo/wyaF/sjPQ8oI+1
 KyRmQogswC95Zg6uCRfIsmsYprUimGf12TR6MbRM+Ixmq99Pm3ohmEUnkFsqhbwNJ+
 X5kxZHatcgqTY60g27hZSEeS9hAwKN+1WPgoq6vo=
Date: Fri, 8 Nov 2019 18:27:49 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
Message-ID: <20191109022749.GB9739@sol.localdomain>
Mail-Followup-To: Tero Kristo <t-kristo@ti.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 David Miller <davem@davemloft.net>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-omap@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
 <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
 <20191108022759.GB1140@sol.localdomain>
 <d55c0182-5fb0-2ef9-f056-54b396fb0026@ti.com>
 <20191108091608.i5fxt2vu2nwrybgn@gondor.apana.org.au>
 <2ab94492-21e4-fbe0-41eb-e12b02511d7c@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ab94492-21e4-fbe0-41eb-e12b02511d7c@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_182752_391873_C7D70DCB 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 11:22:48AM +0200, Tero Kristo wrote:
> On 08/11/2019 11:16, Herbert Xu wrote:
> > On Fri, Nov 08, 2019 at 09:40:57AM +0200, Tero Kristo wrote:
> > > 
> > > The problem is not detecting a hung task, the problem is determining what
> > > caused the hang. Personally I don't care if the system dies if a crypto
> > > accelerator self test has failed, as long as I get reported about the exact
> > > nature of the failure. The failures are expected to happen only in
> > > development phase of a crypto driver.
> > > 
> > > With the timeout patch in place, I get reported what exact crypto test case
> > > failed and I can focus my debug efforts on that one.
> > 
> > If that's all you need then how about just making the wait killable?
> 
> Yeah, that would be an alternative.
> 

I don't see how making crypto_wait_req killable would be any better than adding
a timeout, since in both cases the crypto operation would still be proceeding in
the background while things are being freed.

Would it help if the crypto self-tests printed a pr_debug() message when
starting each test vector?  These wouldn't be shown by default, but it would be
possible to enable them using dynamic-debug or by adding '#define DEBUG' to the
top of the source file.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
