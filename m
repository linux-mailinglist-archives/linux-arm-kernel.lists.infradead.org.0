Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A7189EF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dz1veQ+Xe5h7rhbF1tYQpvP43zPmLEDz1YUCMQFc9qo=; b=uz0yhag80y8swS
	9XaN6ifeekHR84KNk4Mivyzg6eNhWlku0+sVsQ8g61omv3JG9QU+FYcqYT8jTzjR72rUth1gQPde+
	/QWeu43xSQo6yexOjDirdHZL4d9pfwXXeWZPHmVihMkJm4Dc/DhY12u2gyO4jU19mHNuYncOponPi
	LAAt+a98+PlxiQf+WiSdzzJa+FiQXldZud+TsGEezhO7A+r7WZw0hZwz8Ae4TwialLYGUIBbFuyKS
	r4NX1MFpRJOLL1phoUA3rYllV6ZFVlHiQntIe8tUaagc288TwgzY304TWaTxewuYqXCBEY1fQeOxt
	yLNYcXSxXSNWsEct6EMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9rn-0003U3-Ok; Mon, 12 Aug 2019 12:56:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9rY-0003TY-8f
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:55:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C940520679;
 Mon, 12 Aug 2019 12:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565614547;
 bh=hQaWEjTLnv8YJvKfaSDYDahsRXbzkZ2zeOxhzlPCDIs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iDDjjG+FuM/x5SMUceO/NUKGLEswSkBLWeKXh12kzilSn3xprRTIt22vdHGVOhN9A
 MglaQ0XaxhQBwTTgn66hg4NHTXlR9BVbHnkppsrOWE61btTdu9fLYLCpkTsGge7KDy
 gxPXi8V+8/YOI5AGQA9hUtxb6naZULsAFdolNXi4=
Date: Mon, 12 Aug 2019 13:55:43 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#895
 (master - 2a3984b)
Message-ID: <20190812125542.eiv5cfjpfj3oke2p@willie-the-truck>
References: <ClangBuiltLinux/continuous-integration+122566420+broken@travis-ci.com>
 <5d4d7164795c7_43f9afa8b58b0242711@29afa0b1-fa00-407e-a40e-a8edb471126a.mail>
 <CAKwvOd=2v0j5=-q9662xiv9ofrKfQm+04KUQAo1pEz+6MZXYMg@mail.gmail.com>
 <20190812125414.3zeysojdycfuowyy@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812125414.3zeysojdycfuowyy@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_055548_324369_E0CA37C4 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, pauld@redhat.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-next@vger.kernel.org, Mark Brown <mark.brown@linaro.org>,
 tglx@linutronix.de, dietmar.eggemann@arm.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 01:54:14PM +0100, Will Deacon wrote:
> Phil -- is there a fix queued for this somewhere?

Ha, tglx beat me by two minutes. This is now fixed in -tip.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
