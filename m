Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E12DE02F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKjafSl5m5Ng3Th8cmvwBrRcfrHQsbDVI00yBSsVMfk=; b=Vt6Ts8P2cDZxoG
	7Hd4AiFXJJkivoBVb5nSr08HIsSgFK1QijrOuTnaiJGL9iLsOHWNy3p9f0qmspANgnN29smJC7QiK
	Sh6CH6sWTOB8KdbPangF5aVjw3Cd7Zms1QxIKTtLHk+uM3rHO6fmK6zd4aXHfglbZUEhB8GRo+qbC
	u/EqDOO9hG9/8976BA1ML78H/yktq4keoW9hhrYjCP7G4GE68L7/1cLDQWZQT+2V8tlYxMo/YDf8I
	oeeKhIgKBC3pJ50gb57Sad9Jrk4tqt1Ai0oTOsOxtGwC3V3Dj8FXejMjHkIZPsyQLFwSyShhCst8y
	96wddggVsi3dcFGd3qsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMsQq-00074B-SE; Tue, 22 Oct 2019 11:34:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsQg-00073T-Su
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 11:34:24 +0000
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 317174E832
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 11:34:21 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id k184so7317297wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 04:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hKISof+jZanOjFuAMb7NpTQQo5K+nkz0naeOg86T7Ow=;
 b=bm/ekRGbbpNkmt9TtBYkEV6m72LXobGNJ0ULHBnUA5v5+4dwmGAe7SEKELo4787zAb
 OLSMz1J/rsfdU30sY3q2b1+ueeOwcPyA0KoCDM+LgxmE+neb5P0BNnFFBp1fyPt077vt
 yFCjXXyN+sq7pEr3bnthOU2CF7OBK6j50Tv3FWkW++2XZZT1nFhxyLhH4Ogx38mswZOh
 W4E6GeN9SCmwlkcIKqqYdzV/peBUXWIogyhsHnaS7wqORWX40fBVkK72p+gEjiphUXzj
 CBaBoEUhMuEAdxKmqNkXHY3rglytXxDfG/PyFs114wDjHuefzC7G+XNIcRX5COEiaxYh
 y5pg==
X-Gm-Message-State: APjAAAU5Gf0yhx9iPZvP2tFNDxIyCFX1j/u7U7pC0zLa8Svy51UUYfut
 XpVdjjQmtoKzB+TwCSqY594jmWRTJzlpCCid+9oWh/kF3OOGwUe4LWMfzEpod6d80O7EUQzjM6N
 V7TaLJe5+mTt/uhJ22jClflR6om3PwOACEWU=
X-Received: by 2002:a5d:4341:: with SMTP id u1mr3122519wrr.306.1571744059707; 
 Tue, 22 Oct 2019 04:34:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy0sYBGB7epCnwESA0v66tQGqclr5cgWDSQmRWvyyuLm8Mc9lam9XOd18v3dCyWbw4+tpHmjA==
X-Received: by 2002:a5d:4341:: with SMTP id u1mr3122496wrr.306.1571744059423; 
 Tue, 22 Oct 2019 04:34:19 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c0e4:dcf4:b543:ce19?
 ([2001:b07:6468:f312:c0e4:dcf4:b543:ce19])
 by smtp.gmail.com with ESMTPSA id x8sm17229628wrr.43.2019.10.22.04.34.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 04:34:18 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm fixes for 5.4-rc5
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20191020101129.2612-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <e639182e-fbd9-c7a1-43b0-5889a0e61930@redhat.com>
Date: Tue, 22 Oct 2019 13:34:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191020101129.2612-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_043422_979350_7FB79BC5 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/10/19 12:11, Marc Zyngier wrote:
> Paolo, Radim,
> 
> Here's the latest (and hopefully last) set of KVM/arm fixes for
> 5.4. 4 patches exclusively covering our PMU emulation, which exhibited
> several different flavours of brokenness.
> 
> Please pull,
> 
> 	M.
> 
> The following changes since commit da0c9ea146cbe92b832f1b0f694840ea8eb33cce:
> 
>   Linux 5.4-rc2 (2019-10-06 14:27:30 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.4-2
> 
> for you to fetch changes up to 8c3252c06516eac22c4f8e2506122171abedcc09:
> 
>   KVM: arm64: pmu: Reset sample period on overflow handling (2019-10-20 10:47:07 +0100)
> 
> ----------------------------------------------------------------
> KVM/arm fixes for 5.4, take #2
> 
> Special PMU edition:
> 
> - Fix cycle counter truncation
> - Fix cycle counter overflow limit on pure 64bit system
> - Allow chained events to be actually functional
> - Correct sample period after overflow
> 
> ----------------------------------------------------------------
> Marc Zyngier (4):
>       KVM: arm64: pmu: Fix cycle counter truncation
>       arm64: KVM: Handle PMCR_EL0.LC as RES1 on pure AArch64 systems
>       KVM: arm64: pmu: Set the CHAINED attribute before creating the in-kernel event
>       KVM: arm64: pmu: Reset sample period on overflow handling
> 
>  arch/arm64/kvm/sys_regs.c |  4 ++++
>  virt/kvm/arm/pmu.c        | 48 ++++++++++++++++++++++++++++++++++-------------
>  2 files changed, 39 insertions(+), 13 deletions(-)
> 

Pulled, thanks.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
