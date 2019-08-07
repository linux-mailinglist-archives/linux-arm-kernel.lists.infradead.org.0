Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC8E84B09
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEBBe1F8mmO7uw/bCpsH1pYkW12BUnDNXStWM4wh+Eg=; b=CXo2aycwV/d2SV
	dVnBR5rNNi7nWPiisgQ5hHj1UfldD3/Om1OQABxR+BzzzVRDFaJS7IUrt6JVvkYNUfDEGwvX/NJor
	Str8Lyn9MLJyxxRbX3psCKn0vzhwuGdH194PuUp9UtXEZI32WyIBNaqHOc2IaTLmT7m5nC4IOnnsh
	Up1jpAe/swpgMEFiX82b8yFHbGEuHA20hb9SfYYDTAzcXOFH/K72BDwDqnNUcGD88FRDGQ2UHN82E
	4hUVtWkdaeWdfj+TmDKsHSwwTFzLU7Jasq/1av7iAsqPIxO5j87THW//68NaeXMAvvRTA09GSuevU
	Qppt99Cj2r1eGvRpKApg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKRc-0007L3-Nm; Wed, 07 Aug 2019 11:49:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKRP-0007Kk-4U
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:49:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 915D4AFE2;
 Wed,  7 Aug 2019 11:49:10 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: 5.2: arm-smmu e0600000.smmu: Unexpected global fault,
 this could be serious
References: <mvmlfw6354j.fsf@suse.de>
 <5036fcb8-131e-9ffe-4bfe-dc8cbae71bc4@arm.com>
X-Yow: I smell like a wet reducing clinic on Columbus Day!
Date: Wed, 07 Aug 2019 13:49:10 +0200
In-Reply-To: <5036fcb8-131e-9ffe-4bfe-dc8cbae71bc4@arm.com> (Robin Murphy's
 message of "Tue, 6 Aug 2019 13:17:12 +0100")
Message-ID: <mvma7cl2o21.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_044915_323154_C9973FE7 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Aug 06 2019, Robin Murphy <robin.murphy@arm.com> wrote:

> The way the legacy binding is handled turns out to interact badly with the
> disable_bypass option, so CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is
> presumably now tripping you up. The immediate workaround would be to turn
> that off and/or boot with "arm-smmu.disable_bypass=0" to ensure it's
> overridden.

I can confirm that booting with arm-smmu.disable_bypass=0 works.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
