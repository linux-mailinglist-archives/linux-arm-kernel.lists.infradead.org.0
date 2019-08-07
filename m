Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F75E84F38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw4FCNEbCTBHOt6HMo6Cm9FQIiNEzN2f5FqGlH7CSt0=; b=Oqx9/GIvX+r67D
	9hJ3GNtzfuVzHegtNTeiF/G/bFzDVxUFhEplzbal+QfyEj3orwHRO7XH1dt87CzhXhpPIr1DCyADn
	pbrWWzlGkjFyT0E14IkwTJaGm/L2HEaZMP0e1SaLDTYr5lxIICG3RbDfkuFol96LLdedckl/VNXsQ
	niuXQuJShmj2nLx4FyaDVPG3pAOhStLJMUEj07IlbRfEB7aTiIQEOf7hJ7e3yPPaa5DMtJg4+4JPF
	CuYSR5pIWkGvSItmhyeWNvMNHgVvikn/KgVK32/JDfMvLwU36jf2iowY8ZJB7ZOECn3nH1P7+dIH1
	IvAX1SsrfXYWMPI3Djrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNM5-0007qn-DC; Wed, 07 Aug 2019 14:55:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNLt-0007qT-D5
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:55:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9520C21E6C;
 Wed,  7 Aug 2019 14:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565189745;
 bh=xyaLFh2zkLtF1e0Uksff4/TFF9Ew7OE13EmE04xY8Y0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dh4894nt0wpVbRL6ERZNe/gXr06fEfT/sHF8PxxqEn3eApN8JsohDaAF9SQ8zc7Gc
 C5W17Z+BrDUimFIwC94+CC1QIyyQu4ZlyO1optlZWdmmcYzwd5dGx2l7JVVt4pFeSN
 Xg6zxnCGtFZzz75sHsOAWyFtiOKfO2Eh7MUBLfwU=
Date: Wed, 7 Aug 2019 15:55:40 +0100
From: Will Deacon <will@kernel.org>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH V4 11/11] docs: arm64: Add layout and 52-bit info to
 memory document
Message-ID: <20190807145540.uglvqrgkotkzfzuy@willie-the-truck>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-12-steve.capper@arm.com>
 <20190806152734.GH30716@arrakis.emea.arm.com>
 <20190807132935.GB17012@capper-ampere.manchester.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807132935.GB17012@capper-ampere.manchester.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_075545_474823_D4CC50F7 
X-CRM114-Status: UNSURE (   7.26  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, "maz@kernel.org" <maz@kernel.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 01:29:38PM +0000, Steve Capper wrote:
> Many thanks for going through this series Catalin. Would you like me to post
> a V5 of the series?

/me does best Catalin impression...

"Yes, please."

Uncanny, eh?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
