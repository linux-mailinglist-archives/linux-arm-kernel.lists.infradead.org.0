Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D3F13B10B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1M5spH/9mhVOCmqaGJq3PisIoRIEI109dJRCsshF4Hs=; b=Y6VrB9/XNIuUxx
	hssKeUaPqACYJZLEM6HUR3Q6+sJWUVb2WbMjyOuiES2oGotkKZSA2Hn5KaMHytyUnj+/2YhxoQWNt
	OOQO+WZWCpqiwPFUT/Tgbgdn66NHWKLIZtfr7NU4d6Ivc2tTu37ByyXUggoFmddONrk15xDBOsZcp
	ZeWCwCz9KJ1ffpCP4+3+WUS5SXml8PzTwm9sVvjRMr+LLWbK/zIKPjM8EFci8x/ajh9/UL+Zf1u2K
	JTIkoR2ubUC26go5orB2K6SYPcB95kJS2eXRsssj5JgfCUoeRqAVRgM/3BJc0rqoRKsScHn6yhVaY
	oXcxvW6bFJ8P046tGNTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQ6A-0000sJ-Se; Tue, 14 Jan 2020 17:35:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQ5x-0000rO-NQ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:35:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F28CD1396;
 Tue, 14 Jan 2020 09:35:11 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 22D9F3F68E; Tue, 14 Jan 2020 09:35:09 -0800 (PST)
Date: Tue, 14 Jan 2020 17:35:07 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 09/12] arm64: traps: Shuffle code to eliminate forward
 declarations
Message-ID: <20200114173506.GL30444@arrakis.emea.arm.com>
References: <20191211154206.46260-1-broonie@kernel.org>
 <20191211154206.46260-10-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211154206.46260-10-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_093513_806760_A5F13E08 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 03:42:03PM +0000, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Hoist the IT state handling code earlier in traps.c, to avoid
> accumulating forward declarations.
> 
> No functional change.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
