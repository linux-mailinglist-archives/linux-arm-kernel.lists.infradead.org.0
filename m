Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F6BD6C07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 01:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BET7ZHNJvz7n8GWTTTFCP9cLgOMy8A4N2EvRuz/cETk=; b=fsQ+fVwWZsiTwS27LGQ+U8dgx
	i9OJoW1xIO9urbcBZHJBNkiP38s9BrHquwpJeZmhGzqxy5StHfdRNupDuH7lH3WYTDVl+UymxDyVy
	kik/HWMxcO97nXxUTDWmHZWiv1mIPzjoXlt0s6TC21/kOUdUsCGShDpSAUd+JrBb7uCC9L6u5ysP7
	QOP7La6vEmhg4h9mhD+pHKNQu8ILNybgyvKn3+7caPJAU0Ljpv64eXCtEMV95yelsYaXYdqjJaXlw
	oLn2w/z/SmYNMJjowg41AOBqRkJRnALky4erN0ev+oBQJKGVECqHjzJ3CtlBPQdRfZBLgSpf/F8on
	ISrn27QGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK9lp-0008MM-80; Mon, 14 Oct 2019 23:28:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK9li-0008M5-38
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 23:28:51 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D455217F9;
 Mon, 14 Oct 2019 23:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571095729;
 bh=Vjb7D4082/6F6a09KhxVdWW3xVvMz7uIEG/auDMghKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SnwF7v3NWjK452e+7StLrVTGuDpQwjnaxqdEPG1I/iboBQc1BSogJkZi8wako+JlO
 LhDsC7MV2PFSyjE/BnoPBVL/G5HIW6kYtdZTrSKFKklIPYw2Rd+NxbZokGH22K6Eol
 uKoZ1h1oHgeFJUZNpplRXJvYoNzogjFuwZNk5uDg=
Date: Mon, 14 Oct 2019 19:28:48 -0400
From: Sasha Levin <sashal@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [stable-4.4][PATCH 0/2] arm64: cpufeature: Fix truncating a
 feature value
Message-ID: <20191014232848.GB31224@sasha-vm>
References: <20191014123254.22002-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014123254.22002-1-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_162850_166599_81381A78 
X-CRM114-Status: UNSURE (   6.19  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, gregkh@linuxfoundation.org,
 stable@vger.kernel.org, maz@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 01:32:52PM +0100, Suzuki K Poulose wrote:
>This series fixes the issue with arm64_ftr_value() where the signed
>fields are truncated to unsigned values corrupting the system wide
>safe values.

Queued both for 4.4, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
