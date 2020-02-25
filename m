Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01816ECFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vuwASJTkUBWI8gZwA1PpARgDO1mfuhNO5vlRcRxckrY=; b=FcwR8yNHjVlDG413j36MCut4i
	d8Fd6oLqe+KWoMsvcLxEbGF7oo9UFrOGBoHctZ0QFJbqxJRuDaASN44/24B59nSYX54HdURCTsxDF
	qrMHXwIT1GkvMjUWu1OHE4KIwJdE55sPNqU07q+dVVoFFiVoGpQ8QLpWdM/xJ6IFVFvxAdV5jazH8
	TwZYYSsfitenCVMv/DbMGJncp4YxZoNM/8DjT4sEBFE14gt4qE2k9jW2EIMMsIn676i6OduaRCjE/
	Z1306d5k2HzsUy/c6W8ovcVce0JoMkiU5OvnfkHtcDT9/LfL+2Zj64UgHRa1y8EqyI6GXrqH19YSq
	ZgFsTckmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eJH-0007eo-2D; Tue, 25 Feb 2020 17:47:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eJ6-0007eV-AS
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:47:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C99DE2082F;
 Tue, 25 Feb 2020 17:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582652863;
 bh=wFY4nT18NUEOCsSIZLQiMZySKEN206P0ynlprSJzLxY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XGjuobsICXs5R2i5tUMYLovNc/Ft+QlcsFPm3BhPtHHA07UtwhlJZ4psr9jdB6ZlK
 dxV+HAsA6VxQ6bHfhOf+ob0eezHrtKmM6Ab7w3SznefE3wyaE3HlzGEULKg9EvsNp4
 Pk5YEhohst+sM8/62XOYQpKTAcO2+Jhc+yM2jhy8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6eJ4-007t0y-2B; Tue, 25 Feb 2020 17:47:42 +0000
MIME-Version: 1.0
Date: Tue, 25 Feb 2020 17:47:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
In-Reply-To: <CAJ+vNU01wSoECcr7Anfb_bMGt_2VPCFysMk5U44_qOe9+AiqQQ@mail.gmail.com>
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
 <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
 <8f2efa884c7cb642a9b9fa66c7949607@kernel.org>
 <CAJ+vNU0d5_LsnzFq0_5=6-i5G5y5AjvWZhO5x_TVBLjor--TtQ@mail.gmail.com>
 <82811bd7d5269431f99462b8daa0f4b2@kernel.org>
 <CAJ+vNU01wSoECcr7Anfb_bMGt_2VPCFysMk5U44_qOe9+AiqQQ@mail.gmail.com>
Message-ID: <beb115d2f6d8f17160bea4217aa4bdf8@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: tharvey@gateworks.com, rrichter@marvell.com,
 linux-arm-kernel@lists.infradead.org, will@kernel.org, catalin.marinas@arm.com,
 sgoutham@marvell.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_094744_381363_22911791 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-25 17:29, Tim Harvey wrote:

> Yes, disabling KPTI with 'kpti=0' does work around the issue.

Then this is definitely Marvell's job to tell us what is going wrong 
here.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
