Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11117196775
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 17:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+WUPTVWJf43MeMjEy1b+f+sAayPxTyz/9MB3BYEjJQ=; b=qb4apR/4VAwY60
	pKNdfc6f4zi4/mHbvN/lqW9kQ/pYFvRN52G+yTpmX0zlAqiw98ct2YswGtBA8p+jvzZrqlAZZE0Cd
	MoD5AYQYCzUloYmJcWiKlPejBefkezsHs+b6Oo0o9jiDgi+OienRYFCLlJvdygGcxF/O7qhRMcx1c
	Ggpc5vjqH9GwjmdhRipl9e1XKfMPWTvCMffaGobOMnAsEuBguAL2pVAmLbYEMFSQp/tkB1MzQdxTA
	UguAlAfwAkMRs7O1Zpy3dMQN5Bv0seEmQoQZ3kSq1omJvb+zXcwtIw8Kzd3NSFsk2vy+W2g/KT6sV
	66Xe7z1oXls1XkMpMZRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIEYS-0004JP-BN; Sat, 28 Mar 2020 16:43:28 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIEYJ-0004IW-06
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 16:43:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Dbsy/kBm6+qvsST4SSxjt43oO5Fkj5lOWIv2fyfVrk=; b=dfGmZhNxCTICMh8W8G7h4MSCAb
 a82aZd1awengfua7BMTNT3mRTiEqxhng8wHS5QF1b4iGJs4HcS97NgND3E1uNRXzEz+Hb8rqfMd1S
 4r3u/HqntRn99rFJHZGJz0xiujS92/Jp+H9UvWZ6A2Nnko8r52MAUCxmXAzgwKrWHUjQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jIEYG-0004Mu-5k; Sat, 28 Mar 2020 17:43:16 +0100
Date: Sat, 28 Mar 2020 17:43:16 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: SError handling vs. SIGSEGV
Message-ID: <20200328164316.GZ3819@lunn.ch>
References: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3da89354-78f7-5f48-9eec-75c74270fa3e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_094319_046979_CC4A9C05 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Doug Berger <opendmb@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Catalin Marinas <catalin.marinas@arm.com>, james.morse@arm.com,
 Ray Jui <rjui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 Will Deacon <will@kernel.org>, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> As it stands today, I see no way to have a self hosted test case that
> exercises that our GISB bus arbiter blocking works correctly because the
> whole kernel is taken down when the test is successful :/

Hi Florian

Isn't that just the new definition of test success :-)

Yes, your testing will be slower, you have to wait for the watchdog to
reboot your machine after each successful test.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
