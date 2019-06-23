Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCA04FDED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 22:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCqDRKCYX9SVusrtdEj3pEzHrRQQI7ei8xb+zDrD2G4=; b=NKghhpxtuBOtIv
	w7LtrbQBTb93/aULBQafIBmARHJG7P2tAe0+8/mJevtb8Jm4XwluEd3DLIg7g2dm1iKtSQnNuWEvs
	I+Axk4cyj2Mgy74B5ALzVYTZqPwHBr1AFT5yqb4cj5o+6pKwTkd4+EgPw+lJlQCEweWZAut7WGYB/
	V0CPeDxXKyCqg+asRV7+smP+pTRWa+KZjb4LwzdDbWQMykxmSffcMl6B8ZGLy93YDMDd40Fz0F4X9
	7Mj7xqjLZyG+qwOmKxm9Ur4FaHJq59MaOlXSeLZLH0HGGWuVYP9snk/F5siFg6dJ9F6yEZtR87L46
	7Wwpk3S94fY7TvNxIlOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf90P-0000lE-Ds; Sun, 23 Jun 2019 20:22:29 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf90B-0000kQ-Hf
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 20:22:17 +0000
Received: from belgarion ([86.210.207.101]) by mwinf5d85 with ME
 id ULN7200042BnxPa03LN7RP; Sun, 23 Jun 2019 22:22:10 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Sun, 23 Jun 2019 22:22:10 +0200
X-ME-IP: 86.210.207.101
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] pxa for v5.2
References: <87o9321uk3.fsf@belgarion.home>
 <20190619161312.gurj3tqkg6rohapf@localhost>
X-URL: http://belgarath.falguerolles.org/
Date: Sun, 23 Jun 2019 22:22:06 +0200
In-Reply-To: <20190619161312.gurj3tqkg6rohapf@localhost> (Olof Johansson's
 message of "Wed, 19 Jun 2019 09:13:12 -0700")
Message-ID: <87imsw128h.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_132215_870593_875D4111 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Olof Johansson <olof@lixom.net> writes:

> Hi Robert,
> We usually separate changes to mach-* and DTS into separate branches unless
> they have some dependencies (and even then, we usually try to base one on the
> other for visibility's sake).
Ah ok, that's what I usually do, but I thought I was "outdated" and that
nowadays you didn't mind anymore ...

> Would you mind respin these into two pull requests?
Of course not, I'll do it straight away.

Cheers.

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
