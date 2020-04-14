Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F061A83FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSNldiKXWiIHsSo/hB1yMjTfb4e6S3Dl1loceb7wmns=; b=ZSmz+tqB4DJ1l/
	PX/HM0gqzGXuReuYnIwqg5yH2o2OpYNGYlfB3v0lkh4RZjTUvyYt8+cPbKWKX2oNW4wiToOXW8cFg
	aPf9fU7YVrCCEJWCLej3WZoBHGRgnxM2K10PXXu1fQDK8CGF8Mxm/zrzlCyRl+h0T2XuwYFjFcMih
	WCcz2US3vE7KNhTrNll8l1P2H1THtjAEb+aUY7XVHJrPtsWNrv0/Lqw56nJGmiyUUmNDNgZcEyIR3
	RSWhOO3p4RznErHlV3gnOidP9MvOTdSZgNMW1/g2NZ0QevmVtcSU8kJZ0qDQdK/8+0aE2bKTy+1PM
	tejB80fZIPwiivrQqfwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONyE-0004RO-TE; Tue, 14 Apr 2020 15:59:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONy3-0004Pj-MI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:59:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6163F31B;
 Tue, 14 Apr 2020 08:59:18 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFD073F6C4;
 Tue, 14 Apr 2020 08:59:17 -0700 (PDT)
Subject: Re: stop messing with set_fs in arm_sdei
To: Christoph Hellwig <hch@lst.de>
References: <20200414142302.448447-1-hch@lst.de>
From: James Morse <james.morse@arm.com>
Message-ID: <cc0b5d01-bd19-3437-a76e-2d1daa86f9a4@arm.com>
Date: Tue, 14 Apr 2020 16:59:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200414142302.448447-1-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_085919_772395_CC24AE79 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On 14/04/2020 15:23, Christoph Hellwig wrote:
> can you take a look at this series?  I've been trying to figure out
> what the set_fs in arm_sdei is good for, and could not find any
> good reason.  But I don't have any hardware implementing this interface,
> so the changes are entirely untested.

Its a firmware thing, think of it as a firmware assisted software NMI.

The arch code save/restores set_fs() because the entry code does that when taking an
exception from EL1. SDEI does the same because it doesn't come via the same entry code. It
does it in C because that C is always run before the handler, something that isn't true
for the regular assembly version.

The regular entry code does this because any exception may have interrupted code that had
addr_limit set to something else:
https://bugs.chromium.org/p/project-zero/issues/detail?id=822

and the patch that fixed it: commit e19a6ee2460b "arm64: kernel: Save and restore UAO and
addr_limit on exception entry"


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
