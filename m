Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C2AF0ED9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 07:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpbtT4UERvKW5fRYzymJl+R3w61ddzBY0TYWBfZH4k0=; b=NnivKiEqyPdebw
	GGeIqS6dWVTGrc8E9ekDggWJD6HYA4xMqLCyPtxiVM+xkIFb7OR6CP0GY91Z0EgrcZX63ypgJgddR
	NMUDxkQL4V1hZta4K2Rs4EYW7nIwi9aXwM+bvcVsj1HDf+E9pjrxbcuBf7iY32UMgwnXji7RhSDCj
	NgQP93nkg+H707zHXbfvHb1TK6RpbAEYbAFoOSl+oik8wMgJ/jTjObWG6Ep0RYJrOQddOSnPIypd6
	nzP4QfwDopo35JwWXVEz7/ZYEy+bl8zUuoYDVVNephget4N4J4pcPjJmBdmC2dj4FtgA+U7Mrn1Tr
	v4BH5pnbckZq11xkdWAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSEk9-0000Di-5m; Wed, 06 Nov 2019 06:24:37 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSEk3-0000Cb-62
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 06:24:32 +0000
Received: by mail-ua1-x943.google.com with SMTP id l38so6973076uad.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 22:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=benyossef-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=swSoo5LLOSCM5bOAtsnpGaTfz+1I0oOUgretE9GnF2U=;
 b=WF6MzreXKdUcr4X4hpIfWE4By2VUvgZha5ey5ooELyQVdZiJVV4595g6nRcyOO+/0w
 OdkRfogIBsLlTCkmk8Sk0d/GR7DBTmI4KI7s5p4mjeZG2ouwxHqc0Lg3tUqqdvUaOu58
 mbHRP1Y0D6jr7Nn+iO/3WNEFw+9p5P+O2sr6IMD7dj62lSVhjDmIAYdNWQamQJIevBZp
 BqQuDbzZNtPGoiCAywtG/ITYW122jFxlnzpNOygga82jQ4mytY8Mwvbfyt9iqQ15RWjp
 9yFlNx6DxiCpWisF8Smfv/8kW02UW576i8Y9xNho3Lvx0Mnkx0v9D5JKzawHlq9UnuD4
 uMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=swSoo5LLOSCM5bOAtsnpGaTfz+1I0oOUgretE9GnF2U=;
 b=rhnxTSM6BSa/C+lo7FwVh+nZ8JweJosXlN1rWRn5l3hHHu2pvmYKyViZDYXKq/Xv6B
 H/KAmoO/cm4JlVLC52QboATMIbwOVv4GLHOBQKPNj/oRAPFGcGuSKo063i2qYuwiXHy1
 9kjE18x7KR7eRPBM6gTpkv1rGXE/jLA4KJCMiHQ0tIhX59kQ5Rxs5V3puiTbEIMPCdEX
 tsVEmd62ZyjeQu5Ax5EN6xcs6s4Be3m6Z9+GEWw4ggEh7q5UnPvqMEsqdbiuYy7ZQfl7
 5XLXdHXNfp1Hr6tPQKTN0/9e0wWegWy39P/QLG2BEo3Euzfut+p3X5SkY19yic/4AkH9
 b5nQ==
X-Gm-Message-State: APjAAAXSP34LnyMT+rcv032hgB4UZ/INnD/R3uLOyb65HXggtJfi5i/7
 3ZCksThQbh8CwtkMfhGho2nUm1jb+ppTmSgz1K0FCw==
X-Google-Smtp-Source: APXvYqwDPaLbnSIa+DbWGw3u7v3uIMLYjMx0RDJc68+rWIdVuAWudd9bWgFWcrR90nPrXkqD+nMXcr8SbejRZh52zlo=
X-Received: by 2002:ab0:2b0a:: with SMTP id e10mr479374uar.4.1573021468593;
 Tue, 05 Nov 2019 22:24:28 -0800 (PST)
MIME-Version: 1.0
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-30-ardb@kernel.org>
In-Reply-To: <20191105132826.1838-30-ardb@kernel.org>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Wed, 6 Nov 2019 08:24:17 +0200
Message-ID: <CAOtvUMfUqbucw4zjjyHd-qYmAMYU2aYPdy-HW2V=SM_69_xFHw@mail.gmail.com>
Subject: Re: [PATCH v3 29/29] crypto: ccree - update a stale reference to
 ablkcipher
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_222431_365070_82DBCAB6 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 3:29 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> The ccree driver does not use the ablkcipher interface but contains
> a rudimentary reference to it in the naming of an unrelated macro.
> Let's rename it to avoid confusion.
>
> Cc: Gilad Ben-Yossef <gilad@benyossef.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>

Thanks,
Gilad

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
