Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748E051E25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 00:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKdLYxF6CYLSuOvfYrrizLEIHeV+Byn7lIEP3nk/3tA=; b=KtSIUMPn2h6/oS
	N/q2zA3hQmtWiNin2GUPGZAzWDt6oncWxFoZmpFIYDdNJPXfLUcYQejai7X2d41LvnnrJr8Co7PNo
	UQuY9S8CEfbTrS+g3W2pO9swHrJjsc6ajwlOLkfb7mzFAhhOQk9Wh9sHp+DNaG0+6HLjtR40u6RNN
	nfPU13ep2kBBiSMlo6Ck0hiTaSM5JRT3vSsP8I2PhbfV3Yj8zifrBEBPC7N1OKHWv/RIgZ1wfVrd/
	yzLWO7GqBew6/QzIoTHxWiBHpCA6XDxJFVH5CG4L/oy67LQ1QGyjNYtTg8myNexOw1+HAmkw1qQ1v
	unWacU6h0b3v27bqj4Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfXL8-00023G-Sf; Mon, 24 Jun 2019 22:21:30 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfXKw-00022g-KB
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 22:21:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id s7so481654iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 15:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C1hxUVhPxMAJ8iC1Jpoywv+GpiOlXAEZ3JQKKj0idbA=;
 b=cNRvk4jikf3M94qtfs0doJvC56m6xUDf8lVQVIQlsKY3ojvMPoTaz2vmfm5Xog3xtb
 8/2WGqdKWy+uu/7o2fNnZh7Avi25axp9SYpY6QO7WP/u4PtJ2Fbir9QXJJzz8A5JE4tv
 8Fr+GgfuBewCi1Lw6lbVsBxcZVA9krmg5KyY4vORS77bDUpUa7k96gVk2VDT0jeWJ+sk
 utABP5mcN9hMnaL4LzWvmxY4kCyjVlMdjQXQ4n2Zo5sOni8u1mQVOLN2iIJeN6BBXb4b
 j8Reqdh+Z6FsJM+ePoQJE5IqK7U9BS44g70B3RGfTnli1jwkQqUTgt+rdCu/Rt46IJG4
 i5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C1hxUVhPxMAJ8iC1Jpoywv+GpiOlXAEZ3JQKKj0idbA=;
 b=RIY1vumCmOGC1BPmli6yy76umgTV8Pjm+58GkXvn1wwn2unxC71BBf67bTplScMSeW
 heyZuRwru5BWbhrKIBzxexuBfE+N/Yt6yUamD/19vQse5OQhlm7QRlGCgZJGD0v9EzPO
 PoZ167EcT1/FXkPkaZBO2P/imZdcsA2Aw06eerN3B7QxwWRxcdRLRg2Z1ylA+GqJPSLQ
 T0MOo+iBjU8sCzjVYeAYUhy496bzqzZ5JrQTsQKQ7dJ0jaX/aw1UTeEAkkdUYvN6LOqL
 CfmuWDAkPUCkCl7SjZzS44A89GENaOee6mu2IjivG7WwPziZX5hM5so59ctAItK1+tUf
 i1wA==
X-Gm-Message-State: APjAAAU3Sif7o906RJ8l+J86GH0UbKkvbeKLZGoyooPg9OQlbb/2065I
 6qINUDoRhu/XrZP/9QgIXTbow9jP2B0kD/taLZ8=
X-Google-Smtp-Source: APXvYqyFWsOl+fg45q4H1f0m++1DSGjcTD7K0R/xRLC2C+yf1/Hj6drnDfWHx1wFtrD6k+/4rGRwk4rOL83I4swr8f0=
X-Received: by 2002:a5d:8c81:: with SMTP id g1mr4054068ion.239.1561414877512; 
 Mon, 24 Jun 2019 15:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190604170146.12205-1-s-anna@ti.com>
 <47b8f278-85ff-18be-d5a0-fde9de6e17f2@ti.com>
In-Reply-To: <47b8f278-85ff-18be-d5a0-fde9de6e17f2@ti.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 24 Jun 2019 17:21:06 -0500
Message-ID: <CABb+yY0xOd_oJLg_BffKXuRtnpHeR-jg1EtKE4KVovy2u3MBuA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add Mailbox support for TI K3 SoCs
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_152118_694503_9301DBE8 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 3:39 PM Suman Anna <s-anna@ti.com> wrote:
>
> Hi Jassi,
>
> On 6/4/19 12:01 PM, Suman Anna wrote:
> > Hi Jassi,
> >
> > The following series adds the support for the Mailbox IP present
> > within the Main NavSS module on the newer TI K3 AM65x and J721E SoCs.
> >
> > The Mailbox IP is similar to the previous generation IP on OMAP SoCs
> > with a few differences:
> >  - Multiple IP instances from previous DRA7/AM57 family each form a
> >    cluster and are part of the same IP. The driver support will continue
> >    to be based on a cluster.
> >  - The IP is present within a Main NaVSS, and interrupts have to go
> >    through an Interrupt Router within Main NavSS before they reach the
> >    respective processor sub-system's interrupt controllers.
> >  - The register layout is mostly same, with difference in two registers
> >
> > Support is added by enhancing the existing OMAP Mailbox driver to
> > support the K3 IP using a new compatible. The driver also has to be
> > adjusted to deal with the 32-bit mailbox payloads vs the 64-bit
> > pointers used by the Mailbox API on these Arm v8 platforms.
> >
> > DT nodes will be posted separately once the binding is acked.
>
> Can you please pick this series up for 5.3 merge window if you do not
> have any comments.
>
I will. Usually I leave the code to cook in the open for as long as
possible, more so when no acks are coming.
Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
