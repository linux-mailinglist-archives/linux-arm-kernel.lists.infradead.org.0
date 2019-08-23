Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BF49AE3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJ8a+hHDvS1sOR8jWHQdypjcSiE0cR1P2CbLSDOGgNw=; b=jxt18nqx/kGsCf
	2V1Z0KRcQvdhbIA/gPnbQW8AdAxLuLDugjjl3LF/FVLFWKVRsMPLvixEJ926IA1AR9fnDP7Nf4Fd4
	L5yEhLb0Y8dNHM8FrQzHgtXQyGr3DmYaT8NRN4CMmViGmOa6ryEOhQe445ZMEzw8YyhE6a+QOP9RE
	DeXbGUMGJnbQbEsMEOr+2IrWmK4bZ/7I0qBxHZ5PXanuLcVuSsGUedbtXSdAkMIKOvMkS+AJJJiT9
	DqNiNVnIMSYNabokRqqeIaX/WZEpWoSY9cQA0OXeeVCZSHb964Y/AZzEK+poKWUkIds6P8FYNgviY
	ounemGjuxvsDapfiMIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17sl-00016g-Ic; Fri, 23 Aug 2019 11:37:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17se-00016P-Ug
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:37:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F066D20673;
 Fri, 23 Aug 2019 11:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566560240;
 bh=vTu4N+FWywT7DusqHwzG38gOKUROnQ/PN6+3q9xkgX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ev0hZVFbPDhQM8fUZYmyg+dSIGhpks6fapR6ZQAhS71StNX3QDt4qKN/IVK3VaQwP
 Lp/jcy99LXDRvunR5miwqPGxSNxH2XIlBRSPaD7YaJ3T+jyfNqJGqX6wMCD2X/8m+d
 6AbvLaC1cxZSjBgIeD47vslRuZF7MgXt6SguW8pM=
Date: Fri, 23 Aug 2019 12:37:16 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
Message-ID: <20190823113715.n3lc73vtc4ea2ln4@willie-the-truck>
References: <1566509603.5576.10.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566509603.5576.10.camel@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_043721_017230_AD9CCD93 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 05:33:23PM -0400, Qian Cai wrote:
> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> =

> Booting an arm64 ThunderX2 server with page_alloc.shuffle=3D1 [1] +
> CONFIG_PROVE_LOCKING=3Dy=A0results in hanging.

Hmm, but the config you link to above has:

# CONFIG_PROVE_LOCKING is not set

so I'm confused. Also, which tree is this?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
