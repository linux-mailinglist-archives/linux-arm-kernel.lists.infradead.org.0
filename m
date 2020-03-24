Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8C0190B37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKLXpxnK05vIxVH1yqeqR5fqVwbQm9FLsiOi2Kvt2vE=; b=WMAG1+/2pDxUph
	uSOdphX2cdofJ21NjOn6TvOc1cAUSyPAOzP53LA0fUY7fhBcwVFWfduCdhofiocNCJDchJjwATmeX
	LS5y5bs6tGNcTq0cU4hdTm4OivqrD1vKPhv0YMT7d/0cjbj761cqRZy2G6ZHjHqUYw0NRw82rEttp
	5KAvGLBaVOAoPZrKvEDpI9Kms1sQ4GUg14F0xUHnZCUF/l6blKWpsJGJmSGMww+eR8w/2ECdzIo4g
	g4lVNw6lpf1NtGpluVCjEDccsGTZNhPhuvcyFZprtf2gQbNbsOT+a6hvGzmLNSxM97R6u6Crs/6ZG
	zvjFmLGM11Mc9mdCPPRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgwA-0004QJ-EN; Tue, 24 Mar 2020 10:37:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgvz-0004PY-8w
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:37:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 657977FA;
 Tue, 24 Mar 2020 03:37:22 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FCC73F792;
 Tue, 24 Mar 2020 03:37:21 -0700 (PDT)
Date: Tue, 24 Mar 2020 10:37:14 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200324103714.GF4892@mbp>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200323121437.GC2597@C02TD0UTHF1T.local>
 <20200323190408.GE4892@mbp> <2067644.cOvikPKVsA@basile.remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2067644.cOvikPKVsA@basile.remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_033723_353109_CE42EB4D 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 10:42:30PM +0200, R=E9mi Denis-Courmont wrote:
> Le maanantaina 23. maaliskuuta 2020, 21.04.09 EET Catalin Marinas a =E9cr=
it :
> > Should we just use adrp on __entry_tramp_data_start? Anyway, the diff
> > below doesn't solve the issue I'm seeing (only reverting patch 3).
> =

> AFAIU, the preexisting code uses the manual PAGE_SIZE offset because the =
offset =

> in the main vmlinux does not match the architected offset inside the fixm=
ap. If =

> so, then using the symbol directly will not work at all.

You are right, it broke the defconfig as well.

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
