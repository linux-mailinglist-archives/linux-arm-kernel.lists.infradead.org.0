Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081921D2111
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZD+Mn/87YgBcgp19wwEZZoD5MoZwh3V12tsrOXaOEY=; b=Buj+77Gx2sxKlM
	dHNLpzSDc5bg6a9qlWmKO/upaetngiYs49Z24gCRv6jBl76e6fC9BKW7LRDFuLomlE65k+nd+hsvA
	IMHbw3g3OjDUBop/IbkTraubCdSXlLQfnYIwLkVo/mKYccnaXzMq+WzOlBeFn661it+tFgd3m3jJV
	G7JXyZRLObx0Ch8ew2RhWTLnveq4oserK10Q0B85NSuw4chz3Byr91fADzkzUGCgonZrBjV2Nf4s6
	9d/aFZgGLYMLmUZxuzzUg2TV7hDV8ClLLUpgbcKECQQEV555Y4aMepR/87Tn3MH3le9SYkHOhaZqb
	Up5OJJ1/WELFBtrqng9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYywd-0001D4-6J; Wed, 13 May 2020 21:29:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYywU-0001Bv-Ib
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:29:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBA29205ED;
 Wed, 13 May 2020 21:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589405370;
 bh=82keoslIP27mEcCwIYl6UmWhou7iCdqwqR319WJP/24=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J2pFC/rvtEq2MhEL7dK4dX8n/tVIAE+9YOl4lPE+v3YOqeTkTGzvdiPEY3sdO4+s4
 vn1aOGHij4CaEpfJWipmxe7Jr1chdQlwkRyixK+Q8VSbCrfwDeGbDYzFloSnhJ0ScE
 DmYN9QAjWI85lkM7RZRbO+2CEL0D/Wc64Uc3WuH4=
Date: Wed, 13 May 2020 22:29:25 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Move virt/kvm/arm to arch/arm64
Message-ID: <20200513212925.GD28594@willie-the-truck>
References: <20200513104034.74741-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513104034.74741-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_142930_635769_48FFCB24 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:40:34AM +0100, Marc Zyngier wrote:
> Now that the 32bit KVM/arm host is a distant memory, let's move the
> whole of the KVM/arm64 code into the arm64 tree.
> 
> As they said in the song: Welcome Home (Sanitarium).
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
