Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608A916ED3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5LZiXk/H3/Ho+dNspEr1SDLjOOJqCqsVokS40yReSw=; b=TsagPghQ8qKPi9
	2Sz489rEwELxemjS1yjafg9p7QfK1iDycZKvlY2pFvwqV36oXlEPGfo5VuuWdrIcgxODhcfXC2xBX
	S7ZFV0jkK5TXs6OJuCy+bUzK1BbHOrC8Nx7rM6f0tmRMqd38OB0n1EIKt29BvYJaCiexlyXK0Pbuk
	Rqr+/Q8rwzoaIVunlKKfmO7DXbfO/EOEcoqzHU8mTi2B8H7XCGFYD8QMVZv37JNAtVOnaXW5zs5nz
	NBk+D/KMOylWycXk7v2HIjoI6irviJ+cSbl0yr6umrkbQHL5hEymwpMSKzC5Z7kxpjPRnfxBjfL6p
	/Zi2pxV17SxgJRCTLSgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eRU-0002n1-Tn; Tue, 25 Feb 2020 17:56:24 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j6eRN-0002mp-F9; Tue, 25 Feb 2020 17:56:17 +0000
Date: Tue, 25 Feb 2020 09:56:17 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Eric Sandeen <sandeen@redhat.com>
Subject: Re: [PATCH] xfs: mark ARM OABI as incompatible in Kconfig
Message-ID: <20200225175617.GB4129@infradead.org>
References: <ee78c5dd-5ee4-994c-47e2-209e38a9e986@redhat.com>
 <20200225005553.GD6740@magnolia>
 <79faa339-d6b8-d8eb-0857-7d755a780805@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79faa339-d6b8-d8eb-0857-7d755a780805@redhat.com>
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
Cc: linux-xfs <linux-xfs@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 "Darrick J. Wong" <darrick.wong@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 04:58:20PM -0800, Eric Sandeen wrote:
> Yeah probably.
> 
> But now looking at
> 
> aa2dd0ad4d6d xfs: remove __arch_pack
> 
> hch indicates that some non-arm architectures have similar problems,
> so is there any point to excluding this one config on this one arch?

Yes, I think we just need to be more careful with our newly added
structure layouts and whenever we do a major reorganization of an
existing one.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
