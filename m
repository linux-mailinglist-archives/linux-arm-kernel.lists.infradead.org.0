Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC01D1988E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 02:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ch2usLmz0jOQXg2z6S9k0UJ2IgPJhbaouFa21Ubq3m0=; b=Gs2N1dfVVBG+S7
	T3MCrPWTtTz1wiTLK5sMizJZgesdVObbznsVL+GjzgMkokxG6MlyC4K7t/ZNKKRgBbNVHjxGbKoll
	D5djUx00R+zAwDB0CZNOGDHHbE7Ul2Et21v44ZduprjQTh9a+CdcHms6efC994IMfrugoCH3YRda3
	v8QjMPQ+fxt9NmyTVsRZ1Rxl3yT1N5CVpgFD8NcrSEmPjdThydXMB+AZZeVi5msl0Atmc8OLJQa1J
	oIXAK3l+xWiKZzQXzr91dkcPm9Q9QItKuUf2eVkeKjfEnE6ndhdXr6Vo4wqSrDJsHRvnX1Kbu5QSe
	VYCfHe3UZ7DT7/TAsHhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ4l2-0002y3-UT; Tue, 31 Mar 2020 00:27:56 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ4ku-0002xe-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 00:27:50 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02V0Rcil008616
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Tue, 31 Mar 2020 00:27:39 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02V0RcpH025667;
 Tue, 31 Mar 2020 00:27:38 GMT
Date: Tue, 31 Mar 2020 00:27:38 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead
 of _bytes
Message-ID: <20200331002738.GE9199@SDF.ORG>
References: <202003281643.02SGhOi3016886@sdf.org>
 <20200330105745.GA1309@C02TD0UTHF1T.local>
 <20200330193237.GC9199@SDF.ORG>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330193237.GC9199@SDF.ORG>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_172749_067293_77BA97C3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 lkml@sdf.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 07:32:37PM +0000, George Spelvin wrote:
> On Mon, Mar 30, 2020 at 11:57:45AM +0100, Mark Rutland wrote:
>> As I am unaware, how does the cost of get_random_bytes() compare to the
>> cost of get_random_u64()?
> 
> It's approximately 8 times the cost.

Just a expand on on a point I may have left unclear: One 
get_random_bytes(), for a length up to 32 bytes, is approximately
8x the one get_random_u64().  (Then it jumps to 16x for up
to 96 bytes.)

Since were're using *two* get_random_u64() calls to replace one
get_random_bytes(), it's a 4x cost difference between the two
alternative ways of generating a 128-bit key.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
