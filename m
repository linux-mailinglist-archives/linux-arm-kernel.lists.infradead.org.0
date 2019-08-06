Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532ED830A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TNxO5+0IdVwQDFHPv7biJW5sL/ZzzBRgcqbqKrErppY=; b=H5gvhhIzC20ztU
	TpvLVMpSUAktkKYmldtShs7QVsdZj84FNxnpfeL0SVcyEmCVbDibYek8iul3+vl4rl7L65WZUyIK6
	3zdPqtRqYk1812553zHOIkrkaABHsTnEfXcQzTPYgKfAnXb/eYmb4pYDzPUuOn9XRq1xpEZKwWOnP
	etHTJzXZDoG9YHo8IrCmhrei6lg+r/RIAOBxOdG28+uHKe6gkwr4xv1pm1yo2KJ5MEQ94scc+Zotj
	TVOY6PboLz+mqy+btk+ObMoDWiT2rJN0uLMd6xiaHJ8L8XI/guV25nBaBaLggK1fEnM0L16eTvGrg
	Ew2i/U0lviEQsfLlFkSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxdi-0004op-K6; Tue, 06 Aug 2019 11:28:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxdW-0004nS-3I
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:28:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B5878AE2C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  6 Aug 2019 11:28:12 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: 5.2: arm-smmu e0600000.smmu: Unexpected global fault,
 this could be serious
X-Yow: Two LITTLE black dots and one BIG black dot...nice 'n' FLUFFY!!
Date: Tue, 06 Aug 2019 13:28:12 +0200
Message-ID: <mvmlfw6354j.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_042814_289768_CB15FB7E 
X-CRM114-Status: UNSURE (   6.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When trying to boot 5.2 on a seattle platform, I'm getting these errors:

[ 5056.934028] arm-smmu e0600000.smmu: Unexpected global fault, this could be serious
[ 5056.953895] arm-smmu e0600000.smmu: Unexpected global fault, this could be serious
[ 5056.961452] arm_smmu_global_fault: 2959 callbacks suppressed
[ 5056.961456] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5056.977276] arm-smmu e0600000.smmu: Unexpected global fault, this could be serious
[ 5056.984838] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.007296] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.017475] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.039919] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.050098] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.072592] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.082766] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.105167] arm-smmu e0600000.smmu:  GFSR 0x00000001, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5057.115342] arm-smmu e0600000.smmu:  GFSR 0x80000000, GFSYNR0 0x00000000, GFSYNR1 0x00000001, GFSYNR2 0x00000000
[ 5061.847674] arm_smmu_global_fault: 2964 callbacks suppressed

The errors start as soon as the network interface is being brought up,
and causes networking to fail to work.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
