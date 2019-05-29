Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C252DD59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFa5gxeoOTjTjSc/Xd29kPGCGDWlMLHOV9H5HxjBGwc=; b=jVc/0zT8fXp4LK
	uv/JOt/g4WYfP0KbDnjN0YntwqfORgy06UHQqYeyKEAPaSSritCoGH/oBm83KPGWZVmc2YDEPAoOg
	6Clg5DM4TDilwu0lWoqJjTRu57QHkhNKR8O8qqhyZtdGqYEAQ3DQYf8JxtErSOF+XGz74qdLN5qqF
	nowFfphcZubyIJPFk9xyJYkyOXBjP2RrMn9Mt2X0ph70S3vl1jMxLH8FnzD8EbfBuUuDaTT3H/5A1
	ZJW9GdjWdnyUTG5q5EQxyT+h/LXBSDz8IR5Uh0NwsNBB4XBdyOwAt+pnz4np80prjlLYO42R1xu2v
	Cud8RERSNtw8C739OYtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxtb-00042l-1z; Wed, 29 May 2019 12:41:31 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxtU-00042P-EI
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:41:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF08780D;
 Wed, 29 May 2019 05:41:23 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88A2E3F59C;
 Wed, 29 May 2019 05:41:22 -0700 (PDT)
Date: Wed, 29 May 2019 13:41:20 +0100
From: Will Deacon <will.deacon@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 0/4] arm64/mm: Fixes and cleanups for do_page_fault()
Message-ID: <20190529124120.GF4485@fuggles.cambridge.arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_054124_486754_B8223E3C 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrey Konovalov <andreyknvl@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Wed, May 29, 2019 at 06:04:41PM +0530, Anshuman Khandual wrote:
> This series contains some fixes and cleanups for page fault handling in
> do_page_fault(). This has been boot tested on arm64 platform along with
> some stress test but just build tested on others.

These all seem to be cleanups, which is fine, but I just wanted to make
sure I'm not missing something that should be aiming for 5.2. Are there
actually fixes in this series?

(in future, it's best to post fixes separately so I don't miss them)

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
