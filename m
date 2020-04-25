Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517561B8311
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 03:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b34XgcEx/CrSc85N0pymTSREYIOkU1wkqhMSYNrBedU=; b=MPDbU7ZrxScqoThnhEIu06CzG
	fWasQJxNsC2e4B15Hs+FrvBBvSTiGCEimMk4ouVD6VAb0VpU2aHJJuSbK39c/F3fgYLPHVasV0v7y
	y6IfWOpQyRxkVmMTEkCj0+gZuypsr2YLhp+SpIW0nZOaTAPH7EOiFUKPc1lJn2HHH+Z41PZhvEV4P
	pFEr/kutdAQ64iJm1gYcrq0nJgz/j62BZsYccwdKkvHXIm3zNyBX9MSFdcUIzPOzb4eJM2jw8dII0
	Dn+slhDfynFJwudxPpXLNbly9lmNnEsaKkwEdyXOEW8MuabeyyfA9cJllhetf8aZ2gfoCKwPxhYcU
	a6iK4cakg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS9rl-0005CI-RO; Sat, 25 Apr 2020 01:44:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS9rc-0005BM-7R
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 01:44:17 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4F2120857;
 Sat, 25 Apr 2020 01:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587779055;
 bh=dEsZkqvnMLvemwC5JZBMdhog0NUYTGfMOIaUvEcwpUs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KwEwR6mKtBH2f4MCkuAkxeDIWSfFZXiDAo+b6YdZUF2oXjeaOWlmm72Unhp7sOLBy
 9uHgiJ42Ii6ligO1mgHmX8IKg+pnYY0WuIUvHOeoMg/RsjcKv7bd4BVo70Vdl/y4PQ
 e1G4JNeVtewZftE78NX9Psmp2gc1fAz0cUCZAwl4=
Date: Fri, 24 Apr 2020 21:44:14 -0400
From: Sasha Levin <sashal@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [stable:PATCH 0/4 v5.4] arm64: Workaround Neoverse-N1 #1542419
Message-ID: <20200425014414.GC13035@sasha-vm>
References: <20200424163805.4087-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424163805.4087-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_184416_285747_229A1AB2 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 05:38:01PM +0100, James Morse wrote:
>This series backports the Neoverse-N1 #1542419 erratum workaround
>to v5.4.35. The series was originally merged in v5.5.
>
>These patches handle user-space. The kernel change was:
>commit dd8a1f134884 ("arm64: ftrace: Ensure synchronisation in PLT setup
>for Neoverse-N1 #1542419"), which was taken as a fix for v5.4.

I've queued this and the 4.19 backport, thank you!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
