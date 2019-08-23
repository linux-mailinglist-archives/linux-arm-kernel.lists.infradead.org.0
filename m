Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C929A922
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdC5RaV0VBY/360kYMiTe4+vSGAwAphDHBMfX+XX5OU=; b=N4KmmbhzQvobmd
	TVuUeXUXWtFFudWj/KiHeGNvXQ07TIL3ekPACYIrsxcbzpBlJzkaq5ouyy5J4u2jMbOXNxoO+GINP
	uSGD28FFUociHjsPRdcqEvYFk/fpoQrIARjAIGJxAuaORldjiT64wfI7BrPutlGtioFOwx30sL4mH
	SxGYM2QA+WOzYD42QhDYehWNQE2Lt+Ht+udu8CumnycvKGgzkWFMIvM2nZbBOISBT3vHa7uEHNMlK
	nY9jXaEdjbZNrHkjV7NHoWOQmRYvUdo5EUmA1PldwG4tQkOI5MhoLZApJKDaOdbWqZKF+EzJhZFC9
	dr8EEOyfQyvQneTVg31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14LO-00044n-9p; Fri, 23 Aug 2019 07:50:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14LB-00044O-DR
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:50:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 924B322CE3;
 Fri, 23 Aug 2019 07:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566546631;
 bh=QGB1QBbRBrvFJ0/ORqHfkbvDtYwROh22ycSAYGYaOko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oQWM/EOSnXMuyItw5blNA1dLPvsG9tdgOjJwfMILly3AcaU7CRSxARkh8ZDSpDlqt
 dHAT8oq0KUFejzdqkF502yLNsk25p7Tp/O48oKVoQNwPOq5s1xI9pqTKG7kczP9vat
 7EunzJrmSyE8pluvsRyanF/+guAD9slGOQ8zl0dE=
Date: Fri, 23 Aug 2019 08:50:27 +0100
From: Will Deacon <will@kernel.org>
To: Zhen Lei <thunder.leizhen@huawei.com>
Subject: Re: [PATCH v3 0/2] improve the concurrency of
 arm_smmu_atc_inv_domain()
Message-ID: <20190823075026.pwlx33e4crh3m6tn@willie-the-truck>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823024551.24448-1-thunder.leizhen@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005033_481948_EE04B1D3 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, John Garry <john.garry@huawei.com>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 10:45:49AM +0800, Zhen Lei wrote:
> v2 --> v3:
> As Will Deacon's suggestion, I changed the lock type of
> arm_smmu_domain.devices_lock from spinlock_t to rwlock_t, and I saw that the
> performance is all right. And further use nr_ats_masters to quickly check have
> no obvious effect, so I drop it.

:/

I already sent two versions of a series fixing this without any locking at
all on the ->unmap() path, and you were on cc. I've also queued that stuff
up.

Did you not receive my patches?

v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038306.html
v2: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038374.html

Queued: https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/smmu-v3

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
