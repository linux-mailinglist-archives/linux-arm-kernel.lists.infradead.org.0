Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA26D32E46
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42QRek648BRPXF7QC+43WyoTlLDyXBSIfXrSQ5DpG68=; b=R+Ka0NTq5nlCEq
	n0qZX1t5qEkJxIeNAA4TrVoQU4+KDXMfD5D8oQ6CRmIfD9i5+lQdkqtaLkSzSbb1SID14STcxYVBF
	fpimVQv/LvM6svj9HHQ24A1ro0bYUpFtlxWv+osk/MoAdRUetVF931ovQ0emD7FZ6crI94IVpVSh9
	G60Wjb58c3fXHp3loAa6ZZd3MyBJE1s9uqjL8inZ3C1+vFZXxweEWBeYS503oKr4VweAlR1wALbl3
	+z/+axJ56FGZaeruMG+K6JrT/rr8ckQCceBWIOSCR8acBQvsK0JFJkw3WB7RJYCzZU5NKlvhJ/USy
	C6u5DEtQsAuGZoT6gAqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkru-0001sk-Pw; Mon, 03 Jun 2019 11:11:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkrn-0001sP-Rt
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:11:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30462A78;
 Mon,  3 Jun 2019 04:11:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84BCD3F5AF;
 Mon,  3 Jun 2019 04:11:01 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:10:59 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 4/9] update_headers: Sync kvm UAPI headers
 with linux v5.1-rc1
Message-ID: <20190603111058.GJ28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-5-git-send-email-Dave.Martin@arm.com>
 <20190531180319.4ecb5157@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180319.4ecb5157@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041103_908002_A9C35EBA 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 06:03:19PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:09 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > Subject: [PATCH kvmtool v3 4/9] update_headers: Sync kvm UAPI headers with linux v5.1-rc1
> 
> This is actually v5.2-rc1, isn't it?

Doh.  Yes.  Amended.

> Apart from that:
> 
> > Pull in upstream UAPI headers, for subsequent arm64 SVE / ptrauth
> > support (among other things).
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Thanks
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
