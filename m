Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F41EB5F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aFmwpc/OOd+TpLfDB6ECjsYCNA5qgvjcXtAprG3SjU=; b=jXXigFMNPgh/LW
	XDU6MBSLAUbmj5OoJAveEnYS2+8a0H1kGPFyOMC5yeZKLX9ZNxlLlEdUcsCL4wC1VCmdOif+009kz
	dvArzla/smzfQBPO1/3Lyc0Mrm+Snr/BG76ymQkv7QtgNxdJ97B+AuVRIy8efbnH3ZFQDR3cmwA8b
	O1wRi1viJxe61oYCdsYJGbPABia5ks+3sDU85uHKYbEzwD0xs7/O49Nq9HbKgVU9HGJUwD2tHRX8q
	eCIzrDxILpyc+E1i4N85feI6fKVE2buNH1ieAkgEKXhp9Na7S2T/zPh8vkswsUpr8BMbfNoRpd7zW
	e1096C4yY56ohy9ewbuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQE4G-0008Vu-Sq; Thu, 31 Oct 2019 17:17:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQE3y-0008Un-3Z
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:16:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 21002B88F;
 Thu, 31 Oct 2019 17:16:43 +0000 (UTC)
Date: Thu, 31 Oct 2019 18:16:41 +0100
From: Torsten Duwe <duwe@suse.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
Message-ID: <20191031171641.GB11684@suse.de>
References: <20191029165832.33606-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_101651_569526_C826071C 
X-CRM114-Status: UNSURE (   6.40  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@hansenpartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After yesterday's testing, now

Reviewed-by: Torsten Duwe <duwe@suse.de>

for the series. 

Executive summary: where I used x28 as scratch register in ftrace_regs_caller
which I had to save for that reason, you switched to x10, which is so obvious
that I failed to see it. Then the PLT initialisation on module load, and
finally the ftrace_init_nop() hook that got you started initially. The rest
I'd call more or less cosmetic deviations from my v8. IOW: fine with me.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
