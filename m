Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281981C5EBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkG/xbG9WuRInf7SgVWTJYA6mcOrtB/1mPO0w1ZW5gA=; b=lqXwFz9keWQ6C7
	uP4+1I5nHqh61oNUcZ8M+Dm+BHxZWNkuikc7BrF50wQz/A2fiH/6N8vO52D1hKGihTMLTu93ADnQB
	NmVmULjkCb5X3OpMhgrcQoudGO+bjqMQowzazOybeLwllCN2TzPOiU+pAj0IAVvrdbtNw3SGhPAgo
	e+4rQgCPR93yHqepJpUntQBjKkPUAUE+ucpEBXUQ7h9NzrFtc+sopqIgI9e6d4x8JUbJba+HSMRW7
	WzJVP+LSbTdhM7p1jCNRsIuhZhFP9Z9SZFbGbdIYoj6qWkxtnDHVBjzZRmv/U49zmUGhKeraGLduX
	BdtzvaL6bVsH3RrgZcVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1Ie-0005GW-AR; Tue, 05 May 2020 17:24:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1IU-0005Fn-Sy
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:24:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so3713743wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 10:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NP9OIn8aZdjTBigvGWGYSxvnTPBy4fLFwfAKc1uTAGA=;
 b=EkW9V00OjSI1/ZNXcCO2ShjrxSwU48K+ycq1QjcEjdt3BdAlSmprqkST87DvkZHvW6
 ZST12Yx3Rb0hndsh0l00CBau1Cf/oUxPDSegLM2wOvjW1oZ3mmLe0HrIFVwsaRMHLtrL
 y3EQDmTJY3lxI8pEKjhAA6jzzy6MwcCmS+GPtwseWuLaLEnXfYr7xFTByvjD01hW8yUn
 S12b0kRAP1CFSiKlwbTKv522AqxGPAVXHH8FQa97RDrW6lN1ipc+585tSMIzHup4aeoq
 bLHoC1L2d8tR/2XjckmTJfAB2Ip64/EXbwM+aGRIlTpnRSysscymNoa3RnH8fsebos5U
 2lXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NP9OIn8aZdjTBigvGWGYSxvnTPBy4fLFwfAKc1uTAGA=;
 b=VVD8uDIfaU3Sgixm9TPueW4XdlVxmnpQdkjrV8R78bLF2cPMK2Mt3nabGaC2DCyuPf
 kt1EGayZhRdBIZlvnZxbkZeBoIFqu4qKl4Z8CCMXW/z2XKOR37BjAuUhQf4ewxv4xpSS
 O1jEOxMIyHknnlnscbkuzy0PjrubC1cEsaJJ2TdZA+aag/3576Esr3aM8QmxlDWBBErS
 /mVAgXqtiKJ0QqZE30HVmiPVWSWG+rFhTesYXaMfXa/yZyTgF+E8dJBoixBeReyIDFRq
 V+TBmXYmH0w4oIKpRCGdrQX3TBb+4GKSidc2fHlNSkRAeaERYXwkHJimici4c6hb5BRu
 UJbA==
X-Gm-Message-State: AGi0Pua2rVl19H3fza7J0Cap5WtgxsFsksuE/1eKPRpNbnlNI2smCglq
 kjWwrpJeeNioe3yVZ5pQnVlbd3NceBqwWQ==
X-Google-Smtp-Source: APiQypL5oOSXK6EB6pTmE0GvhZKkN9bomyS/0POUiPH8tnXR5GIsMN5uQyBtW82Y8w+DwA9j1QGpNQ==
X-Received: by 2002:adf:fcc8:: with SMTP id f8mr4780563wrs.230.1588699436552; 
 Tue, 05 May 2020 10:23:56 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id t67sm5496003wmg.40.2020.05.05.10.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 10:23:55 -0700 (PDT)
Date: Tue, 5 May 2020 18:23:51 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 03/26] KVM: arm64: Factor out stage 2 page table data
 from struct kvm
Message-ID: <20200505172351.GD237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-4-maz@kernel.org>
 <20200505152648.GA237572@google.com> <86pnbitka5.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86pnbitka5.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_102358_961892_CF9E7A27 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > +	/* VTCR_EL2 value for this VM */
> > > +	u64    vtcr;
> > 
> > VTCR seems quite strongly tied to the MMU config. Is it not controlled
> > independently for the nested MMUs and so remains in this struct?
> 
> This particular instance of VTCR_EL2 is the host's version. Which
> means it describes the virtual HW for the EL1 guest. It constraints,
> among other things, the number of IPA bits for the guest, for example,
> and is configured by the VMM.
> 
> Once you start nesting, each vcpu has its own VTCR_EL2 which is still
> constrained by the main one (no nested guest can have a T0SZ bigger
> than the value imposed by userspace for this guest as a whole).
> 
> Does it make sense?

It does up to my ignorance of the spec in this regard.

Simliar to James's question, should `vtcr` live inside the mmu struct
with the top level `kvm::mmu` field containing the host's version and
the nested mmus containing the nested version of vtcr to be applied to
the vCPU? I didn't noticed there being a vtcr for the nested version in
the ~90-patch series so maybe that just isn't something that needs
thinking about?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
