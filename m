Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD898B34C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=561jEqkYQoe/0E+C6EWdrln/C6LkH0ba6QxR5VHKRTA=; b=tkNK7QLPZoTVkd
	ZcxTRSbt874d1u7UzT8+0xuqigyndu54IlXo091JC7qnjoW6HUCOpxGCUPM4yJ9Z9dpY5olthOeRp
	BRXdFNFR2jY9/FN20ar9GefQh/4B81JOAm61IiP50vbmY9JHECFNOUJCCPfHwKayJzglb5Xs70D1d
	H/GD9owbcqCi/6lakR7t3YzYREQ5HqYC+euF2nuwd/lmWaYn6fh8JO9g0cDqUwD2Doux9GfuGTucw
	ZjoiD+HcSWdBlsyJtPkfZx9cxytsDJARFy9IzP0aiynZpnVrGK6n9mzphDijb0Maaw6EZ7nLqb01T
	NPUDWjYhr0woRmVQ+uSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSjL-0008AU-Np; Tue, 13 Aug 2019 09:04:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSgv-0006a3-Hn
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 09:02:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2143C20840;
 Tue, 13 Aug 2019 09:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565686925;
 bh=lIZNtL4gojHH4sWQIqOF9yVEEqhU5Vt9LRIRR6QoW30=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BVOzItnDYzw85kp2QrS+hvwSTcjym4DShBh8/HxiG9vSmIA2QCl4JkxiF8DU+WJ9C
 LdTc3VjyV5FgYQoLNEOJ2CYCX+PK387d5j+FX1YyfRmCE8MWU/OSIo8O/q4RzXngsS
 4xRq9r4M/VuD9hPc9kgdUtjhAaoRg6ueM4NT/dgY=
Date: Tue, 13 Aug 2019 10:02:01 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: "arm64/for-next/core" causes boot panic
Message-ID: <20190813090200.h2rz4xphgnb5j5bc@willie-the-truck>
References: <1565646695.8572.6.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565646695.8572.6.camel@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_020205_632009_F12108DD 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Qian,

Thanks for the report.

On Mon, Aug 12, 2019 at 05:51:35PM -0400, Qian Cai wrote:
> Booting today's linux-next on an arm64 server triggers a panic with
> CONFIG_KASAN_SW_TAGS=3Dy pointing to this line,

Is this the only change on top of defconfig? If not, please can you share
your full .config?

> kfree()->virt_to_head_page()->compound_head()
> =

> unsigned long head =3D READ_ONCE(page->compound_head);
> =

> The bisect so far indicates one of those could be bad,

I guess that means the issue is reproducible on the arm64 for-next/core
branch. Once I have your .config, I'll give it a go.

> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0] Unable to handle kernel paging req=
uest at virtual address
> 0030ffe001e01588
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0] Mem abort info:
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0]=A0=A0=A0ESR =3D 0x96000004
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0]=A0=A0=A0EC =3D 0x25: DABT (current=
 EL), IL =3D 32 bits
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0]=A0=A0=A0SET =3D 0, FnV =3D 0
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0]=A0=A0=A0EA =3D 0, S1PTW =3D 0
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0] Data abort info:
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0]=A0=A0=A0ISV =3D 0, ISS =3D 0x00000=
004
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0]=A0=A0=A0CM =3D 0, WnR =3D 0
> [=A0=A0=A0=A00.000000][=A0=A0=A0=A0T0] [0030ffe001e01588] address between=
 user and kernel
> address ranges

Hmm, nice address...

I suppose we're looking at the interaction of 52-bit VA, untagged pointers
and KASAN using sw tags. Lovely.

Thanks, and please keep us updated on the bisection.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
