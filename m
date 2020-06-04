Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932DE1EE1D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVbfLjic0QZYs0IUHl4w+56RaXXsCHSlmzKJJD5TS+8=; b=kdSO4JlmfOd2BN
	d4h4zEYVPw+j5JErcNaTx5eTYVGhEXrPb5X2D2dcVoeP0O39xb70nLss8z2UUe+7uhrNL/Br8a4vW
	EeGFzAM99aN8oObpk/BhnpsxFYEvl081pzdumF460Fx5GZvEEKCT75zk6dedSrESi8hTznbKxRA8K
	C383LnqheP41crbZq3s0jf6PYc9ZxNWT2iBN70vgxv8i6xef3K49Ji9tjCKg6U2r51CWYcHaVcVXG
	Ih4wxqxDa/II75hwpgLHdENUnK8GpygUnJ+5chkGK0xoJeauTwz2p2+wtBM6nj9f7qyym/RNAtepx
	4nHX6cQttH7RKf8TwPLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmWF-0004kB-9k; Thu, 04 Jun 2020 09:50:39 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmW2-0004je-MS
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:50:27 +0000
Received: by mail-qk1-x744.google.com with SMTP id g28so5373996qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 02:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Kg6vPoyo+bqnNzeJ15v0h+k7UDJ+CL28zwznimZSCUE=;
 b=iTjBd5guz5HISGo2ssTQ3kdQtGEPcHruUrD+LnAE3oz6ejT5z7/X/1k6Lyhf8TKx5b
 ochOdOSIBb3h3Y16Pi6ii3tWoOJc7cfmg89ims3xh6+Jh8IhCFODcDigvdJUGn8PoFjT
 EkTUAsSp67YsNdsVwVT1r5Vu+evKW2mO3OAUqZvAKH38vSPvlDik/Uz5OVTy8vUxXLlw
 M32Z0qFp1SSOkv3GtQlbFiN4KDNE4Nike0Je9+qrq8Pcg7mXbqKBqHyIM6FNfuqeEz2s
 6n7X6JWYsNnBUTnlr9W/I3IY3mmtryZOuLjZUJqh6MakrvWInHU4vUrvtFma0HR0YPjH
 DA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Kg6vPoyo+bqnNzeJ15v0h+k7UDJ+CL28zwznimZSCUE=;
 b=D/FrPEOoLP8EMtufoB9ye9UryA5RQ0dyt32qZn1NPMkRLuq6EFvYR/5FCUiFXKrP36
 KF5j/CR7I3ngV+PbU1cuzOrz4YSMncat1cYX2qRFz/lS9ynKFJ+tsF/1TmH0JpaEaSJc
 QlTiEbhdefq1PmDNDRzUXO9PjiHL22WH6eaONpIZABAUAgFGS5k3cB2hX+jv0s6j+HHw
 5CuYflR9bbsjaM2Ty8F1nRuQXs0H2JQ92zQiPyV3Y4welW6miuXDwo44LGumGR9BrZ3C
 5fJy+zVO40HRgyzWCakNw9Xuw1jcTHU8mvKWsG/9DAV0STdrOIakmQInEw4erSGT3KPX
 YGTA==
X-Gm-Message-State: AOAM530xteufiFtXtF5kR0KARvB3ZvP/s24cNEeHWE2QGB/tiDRrs1Xa
 U4w5SVN8xXH9+hnM17CzccuLhQ==
X-Google-Smtp-Source: ABdhPJxfD/CO+vni4AqlLMUrdeQZhzI4lfqDbPL9gDbqoVSPBGPQonJSf2x+4N4xRGOEhDNSqWev4g==
X-Received: by 2002:a05:620a:1218:: with SMTP id
 u24mr3544315qkj.422.1591264224746; 
 Thu, 04 Jun 2020 02:50:24 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id k20sm4369904qtu.16.2020.06.04.02.50.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 02:50:23 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v4 08/14] powerpc: add support for folded p4d page tables
Date: Thu, 4 Jun 2020 05:50:23 -0400
Message-Id: <F85B8F19-D717-411A-AFA8-466A02159F27@lca.pw>
References: <20200603120522.7646d56a23088416a7d3fc1a@linux-foundation.org>
In-Reply-To: <20200603120522.7646d56a23088416a7d3fc1a@linux-foundation.org>
To: Andrew Morton <akpm@linux-foundation.org>
X-Mailer: iPhone Mail (17F80)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_025026_752945_171BC887 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: lca.pw]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <James.Morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jun 3, 2020, at 3:05 PM, Andrew Morton <akpm@linux-foundation.org> wrote:
> 
> A bunch of new material just landed in linux-next/powerpc.
> 
> The timing is awkward!  I trust this will be going into mainline during
> this merge window?  If not, please drop it and repull after -rc1.

I have noticed the same pattern over and over again, i.e., many powerpc new material has only shown up in linux-next for only a few days before sending for a pull request to Linus.

There are absolutely no safe net for this kind of practice. The main problem is that Linus seems totally fine with it.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
