Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E87E3496A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daTr7BzKUUbmGzQ4g7cu5a9w8X3z/h7uJ3bvjCAXjyQ=; b=RcTwxdzYgVNfr/
	ExiOX4D32+UeJi0h1GsSCCErZx5DW50gWg72gcMXsrAs8PweIiakSxM7Ic89W6Ni/qFDFl8iXntjF
	oytBxxmTGP10Yo9zzahhFwMq0TUGT6lhjMoh+VfAARQpXaAhmRaIGHgllSQktqb2QudJg0uYDax4Y
	5Nmd4/Cl6rtTHAVZUy8dbpbJU3cTV5OWOyX2M7TvrgGo8yyWehy7nHO+zjmPOJo2p4zdTHIVYtepo
	a658zQ+00ClniYA+7A+KbdXaS7/q+TB++53EgU2I7khjUfcN5mG5UMa7BuSgO14s8p3yDKiUHKSuU
	aOBCLpE+BNptNkSjZP0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9qY-00072w-1A; Tue, 04 Jun 2019 13:51:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9qS-00072c-25
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:51:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 576C9341;
 Tue,  4 Jun 2019 06:51:19 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 474AA3F690; Tue,  4 Jun 2019 06:51:18 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:51:15 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Liu Song <fishland@aliyun.com>
Subject: Re: [PATCH] arm64: kernel: use aff3 instead of aff2 in comment
Message-ID: <20190604135115.GF6610@arrakis.emea.arm.com>
References: <20190601020808.3091-1-fishland@aliyun.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601020808.3091-1-fishland@aliyun.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_065120_101022_78BDF35D 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, liu.song11@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 10:08:08AM +0800, Liu Song wrote:
> From: Liu Song <liu.song11@zte.com.cn>
> 
> Should use aff3 instead of aff2 in comment.
> 
> Signed-off-by: Liu Song <liu.song11@zte.com.cn>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
