Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F58BDEB6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuZ5GmPlnPrhse9mqW2ddjdMIAWjb98ZxcGIplFuFH0=; b=rkwVLQ9ULpTG3f
	gNvaPAmVAxf/O6th+Bz9SihGGnZHENzMetpOIf2Vk37Iv3+9PWAy/eTarI0sH+86LszEuFz9ai7vS
	J5U7O27VtqGrfy7uTJizC0a0BhVTJU7BZrFkXjaOY6onumsZXKHweZdLtzGydbZSO73VZXJpMMWEL
	xom6mL495xlZo9me/7lKDwXhhJppdrvJYQKs4DkGXG6suWhZhhoji70kb9LMt8DloATkLoWv+j/uZ
	YT8jh4sCkxoE93rGmKgS5XG8pdyknACKbkYV3gBkW7dsIJ58/0x1i5OxA9fhsgYPXD80Cg9/gI+Kv
	F/ae5OgrfbDGhWVQdaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWGo-0004Hg-II; Mon, 21 Oct 2019 11:54:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWGe-0004FU-7V
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:54:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id p4so13619443wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8znLK64oR6m+WMtoqtJ/qmfu/KEPwEA/nE3GfDxh8hQ=;
 b=ioREJ64lLbLaSBhaRRUg6Dx3bxm+Y/elWE703Zvcj+PURox+9XxDaeh3wSmrKfKft5
 A2NQpYbVnavmgLNg3ZW4Bqc1Tz0UP7k56JSxim2Nbh0ipFgPVBv9tK2CivyLv432Xs30
 2Y5OXvgqYXRri1vu/K2DSv/WDlLGiwctV+9+vbJHIi4+V/p1jShiSopFSrIi0roQO7tr
 +Tn/qV50GjMoIL3g9O3QaMhDO/1zu46DBqhvXVhPIAA/7K6GQ8UeFtVkE9T5RMJZMZl3
 1JsFizrNvMr+EjWodzbvp1MMuX6iS7FjNv6znfN758Vs1hLxC66lw8K6foUbkCe7hPQb
 Y4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8znLK64oR6m+WMtoqtJ/qmfu/KEPwEA/nE3GfDxh8hQ=;
 b=sa57pAGoAavTErjTnXTv2UvXJtYhsJAB67YjXwb0k7l9Z7Jiy7prNt1QG0n8cgEkTQ
 T/Prw0K3QQb4NUeZhQlMW73bJTORMYbIK+sLFIu5TiSfRO6pQdasR8OoHf18tZE7QxAB
 /XzRUQZycRic/AgjTi+nZlpcEE32fWfnz2xM98NWKK8ja6mz35l7yN3+V4pD1BDvn7Nh
 SAv4vm1WTzPocNKj5urmZAdvJfRrB8lAZ6XnSmImBf2UanC7phLZ1Jpm6LGeudBsn6kS
 cDWxfd1LicLDwFRY4iZRPsZsVVhR/JHvDREI+1zF6rHeDoH5mJisSHPHndGGAWUm0+0D
 ZGUQ==
X-Gm-Message-State: APjAAAX2lXajKQ1fpsdh1lmQKBBY8S0kqTfv9i3WvsE3rXqxiITA3Oe3
 peoHiIJopCOtvmo5uprM5LEUseEpsLA1TNgIlPTUjw==
X-Google-Smtp-Source: APXvYqwKGm96Q9kgL95vWZyCh0BWaRSya1Qi9MLuZo73EyyeGESlijn7Oq6Ry307gmP2VBRy4VIx2foq5meLn9aLd8U=
X-Received: by 2002:adf:f685:: with SMTP id v5mr16516665wrp.246.1571658870855; 
 Mon, 21 Oct 2019 04:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-5-ard.biesheuvel@linaro.org>
 <eba53bde-f7ae-cb77-a7c0-98d4e58d6d44@amd.com>
In-Reply-To: <eba53bde-f7ae-cb77-a7c0-98d4e58d6d44@amd.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 13:54:25 +0200
Message-ID: <CAKv+Gu9YzEPsJknDTSF4Hx6-qYTsX=Cms5sX_diOL95M3J0VPQ@mail.gmail.com>
Subject: Re: [PATCH 04/25] crypto: ccp - switch from ablkcipher to skcipher
To: "Hook, Gary" <Gary.Hook@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_045432_268981_412CCCF5 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 16:15, Hook, Gary <Gary.Hook@amd.com> wrote:
>
> On 10/14/19 7:18 AM, Ard Biesheuvel wrote:
> > Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> > dated 20 august 2015 introduced the new skcipher API which is supposed to
> > replace both blkcipher and ablkcipher. While all consumers of the API have
> > been converted long ago, some producers of the ablkcipher remain, forcing
> > us to keep the ablkcipher support routines alive, along with the matching
> > code to expose [a]blkciphers via the skcipher API.
> >
> > So switch this driver to the skcipher API, allowing us to finally drop the
> > blkcipher code in the near future.
> >
> > Cc: Tom Lendacky <thomas.lendacky@amd.com>
> > Cc: Gary Hook <gary.hook@amd.com>
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> Reviewed-by: Gary R Hook <gary.hook@amd.com>
> Tested-by: Gary R Hook <gary.hook@amd.com>
>

Thanks Gary

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
