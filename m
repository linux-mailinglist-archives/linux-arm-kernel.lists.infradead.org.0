Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8882994C6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rxHx+soBdwk1amWxn8mpSqIWx+bLdk5LMf8y0pd4EQ=; b=d5CiWT/YIQVhLL
	+RFZHTnO4znN0lYtRzxGirGdroqIa1xgAcwDk0fiuM0xoq41VuDXsyR0j+AgT1pw+nBgybXi5y+oQ
	LNUcP/CWZcYLOQiFMWGL5rm807be5+F42U4YklppaISMrw+9U8tPrlpMX1UeWosXuM9/PJXIsCbTj
	9kfRd2S+w7l5J13nraq4EeC/Sqg33ERNY9Ekjx9eTBHEAioyM0H1EQHUczOLWXYlloN92cj/QWmcw
	NTkblRs3o8XGKvQEuCOM169BTDMjgif22cFGTss9Xw8QGU+g44daOjTTUaIVUuzWU72iKoTYB4CpC
	g2x2KuzJ//yxz4fhLnMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmAh-0001uh-MN; Mon, 19 Aug 2019 18:14:24 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmAS-0001uO-Vl
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:14:10 +0000
Received: from callcc.thunk.org (wsip-184-188-36-2.sd.sd.cox.net
 [184.188.36.2]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7JIDpoj023205
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 19 Aug 2019 14:13:53 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 86F16420843; Mon, 19 Aug 2019 14:13:49 -0400 (EDT)
Date: Mon, 19 Aug 2019 14:13:49 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
Message-ID: <20190819181349.GE10349@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Miles Chen <miles.chen@mediatek.com>,
 James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Laura Abbott <labbott@redhat.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Kees Cook <keescook@chromium.org>
References: <20190819071602.139014-1-hsinyi@chromium.org>
 <20190819071602.139014-3-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819071602.139014-3-hsinyi@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_111409_198244_D94CA0FD 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 03:16:04PM +0800, Hsin-Yi Wang wrote:
> Introducing a chosen node, rng-seed, which is an entropy that can be
> passed to kernel called very early to increase initial device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.

So it's really cool that you've sent out this patch set.  I've been
wanting this for all platforms / architectures for quite a while.
Question --- are you willing to guarantee that the booloader can be
trusted enough that you *know* the entropy being provided by the
bootloader to be secure?

If so, we could let fdt.c use a different interface, perhaps
add_hwgenerator_randomness(), which allows the bootloader to transfer
trusted entropy for the purposes of initializing the crng and entropy
accounting for /dev/random.

One of the questions is how do we make sure the boot loader is
actually secure, but given that we have to trust the boot loader for
various trusted boot use cases, it seems reasonable to do that.

What do you think?

					- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
