Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA581068D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUrToOpWArTFSDQ+T0Yq/HKig2idT+21G20nNOoThfA=; b=neEg2nL9vvtXol
	mLuxLzqXbOpEkN4nSoNBy6usUvNmZOA/rRMjPsvU5AXUxMl1zGSpdl+XjTjnvdma2JCh9yAWpynqC
	jlldzGYOLwo3UCquFTWiNPp0U9M1+9JCh2v6clp9H4dwI8VyVuTpLMCxh9AmvJGYoUnOOR4MW0DT9
	3MjrzOuFRnW3j+dHnJ5beEe17Wc75CdcGDHnhJAmzB3GVX0AxHUzbzjNmCyvaNcJYX/jUEXb2IoPn
	CcGchSvgHugkvy7vTTMCdog06rxi6d1vaIHGxwJY0y2dULsnxNNjeoW8N2FiYaT7Hvj1hoE0s1hdJ
	b9floBaYkU5vFcz5ix4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5Ek-0002AO-VK; Fri, 22 Nov 2019 09:28:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5Ea-00029h-4E
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 09:28:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5628FB2DF;
 Fri, 22 Nov 2019 09:28:08 +0000 (UTC)
Date: Fri, 22 Nov 2019 10:27:54 +0100
From: Torsten Duwe <duwe@suse.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: KASAN_INLINE && patchable-function-entry
Message-ID: <20191122102754.5a007f66@blackhole>
In-Reply-To: <20191121183630.GA3668@lakrids.cambridge.arm.com>
References: <20191121183630.GA3668@lakrids.cambridge.arm.com>
Organization: Suse Linux GmbH
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_012812_314249_8FA98F7B 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark!

On Thu, 21 Nov 2019 18:36:32 +0000
Mark Rutland <mark.rutland@arm.com> wrote:
[...]
> Was it intended that -fpatachable-function-entry behaved differently
> from -pg in this regard?

No way! I tried to model it as closely as possible along the established
instrumentation mechanism(s).

> Is this likely to be problematic for other users?

I don't think "likely" is the right word here. "rare" would be even
worse. One corner case is more than enough.

> Are there other implicitly-generated functions we need to look out for
> here, for which this would be a problem?
> 
> It looks like this also applies to __attribute__((naked)) on ARM,

IMHO gcc should instrument neither implicitly-generated nor naked
functions in this way. Anybody with reasonable objections please speak
up now.

I'd call it a gcc bug; but it may take a few days...

	Torsten

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
