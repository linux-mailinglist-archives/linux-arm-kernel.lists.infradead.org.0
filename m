Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D001FA5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 21:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Q9zokZYgkaeNrdolIfmwVuDALrAV7QJbY/VIWmUCQ0=; b=uavdZJqSapksoZ
	ODS6rKOI6ynJVu+ZDDhOp23596Pvz9/xrsHTs5fR+0zMkv9Ze0BIbLLc5laQZYftzWAfzvih7z7WH
	BFtjM50XoWCwzRil0BupdguajxNmSaC9nLEGim73HKx6425IeoKPXc3VL7mp5wrbM13Nq5VtUMqQJ
	DHVw6sU8jZtDTUOrpzm2A8Fxq31wufFOCI+2HcAN7uoS0kB5hSD75NiF0E8WfO0Zxl3fQuv5d2H3r
	g3w13YWK324B8ZcNomz9x6/8wRe6rAfSZf0r0G8BdFG3Ld+qJr5xQWIVhDQy+H3WTVscEizFfpw07
	cQ3Ucw0+l2SuX9SQpVUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzLt-0006Ev-Vi; Wed, 15 May 2019 19:14:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzLo-0006Eo-8c
 for linux-arm-kernel@bombadil.infradead.org; Wed, 15 May 2019 19:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=53jwncdE+8A+JQgg3NikodLCsu8d8vFjeH3Gfxt1LY8=; b=YFQFQcEsb+FRqKsrCTI9uXcro
 np9h/pKXrVVmG6ZlUntlNbKb2EJJ7meeQzIh/jfKq2UihaCGldYhUWTgq1IbuyVkaKwXY/KnTYyrD
 m9O1B2nEj2ECDH0V9yNCHl3ayRaiP9P8ATpCl8DhTq8GtLp1DVXVKfffVRggmbN8vqpEQ1JXjyj2f
 dDy4X8M9UncCpp3i1zYv/sGdBcCF95JqHwymIA6+u0A5bmZGhzdkala6bIZ3DS8PTNzcGEIuJz7s0
 GVg33cybatDucCpx+3Wdad+4+2OZvUx4kMAw1SARYCaHFSWXv0Be4kdA4pTrKBguiANP2ZpJ/0IPD
 wqANAYTbw==;
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzLm-0002pn-3x; Wed, 15 May 2019 19:14:02 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 916C0404A1; Wed, 15 May 2019 16:13:59 -0300 (-03)
Date: Wed, 15 May 2019 16:13:59 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 0/3] perf vendor events arm64: support for Brahma-B53, 
 Cortex-A57/A72
Message-ID: <20190515191359.GD23162@kernel.org>
References: <20190513202522.9050-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513202522.9050-1-f.fainelli@gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Ganapatrao Kulkarni <ganapatrao.kulkarni@cavium.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Sean V Kelley <seanvk.dev@oregontracks.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, May 13, 2019 at 01:25:19PM -0700, Florian Fainelli escreveu:
> Hi all,
> 
> Based on discussion about the last patch, it turned out that we can
> remove the [[:xdigit:]] wildcard entirely since get_cpuid_str() strips
> the revision bits anyway.

Thanks, applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
