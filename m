Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C8C18BF7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVTe8+cHIEGIU2F55g8XDmFIxOCLcjCgTIPgFMXC0Fc=; b=H5whZXZPGXCYgR
	7UC9PTchj+FsIZ+vPN0QhxlK+SiO4sgz4RNbQ8Jc8/onSZfFhlwptV7ELQQyj1f/s2gwg9T/zVX/d
	1+YSLCt69ijNoVRSaRtHIjTSOZ2tftfQa+G9gxI71eP7UxtXwAWVxFXbG9wwlA3PjomyQE7JU7bjw
	v60g5segyQ+AuzJpQgpP3Tt9CekDRDd2HOy6941vuf6XO6F6nb8eINtFW84UPlyVmnsAyMpO9MiOS
	Up+t4i83cavyToHOH4VnCVRDYAT71eBWXQN3J63GbxCoNvblu7zR2oHIoj1kRf3E7ArJm/sMfpH1/
	LVezr+EZFXgwLkzcmkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF03b-0006bl-Qd; Thu, 19 Mar 2020 18:38:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF03P-0006bE-J3
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:38:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1849A20787;
 Thu, 19 Mar 2020 18:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584643083;
 bh=EbDQJIl0hkZJqlYCAUK0V7oBidFc1rqWCcQnEG+tmG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YqrPWyawhOPX3wobShrUGlCj0Sr0s52Zez9zH5c2PmSayEOBmwJ4+mshlUP6DhnLw
 TA3y83J/Ycn+3TgNY3QKePsAXJKNICU6xAzTXNrtOgnKgP7rKTeic5n/MX/Y6U5hCE
 +L1gTUZ5C36Cd7MZd8CYoam4z6dEQL9p9kx/+AOw=
Date: Thu, 19 Mar 2020 18:37:58 +0000
From: Will Deacon <will@kernel.org>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCHv3 0/3] clean up KPTI / SDEI trampoline data alignment
Message-ID: <20200319183758.GB27141@willie-the-truck>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1938400.7m7sAWtiY1@basile.remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_113803_648463_B2473CF8 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 11:12:56AM +0200, R=E9mi Denis-Courmont wrote:
> 	Hi,
> =

> The KPTI and SDE trampolines each load a pointer from the same fixmap data
> page. This reduces the data alignment to the useful value, and tries to
> clarify the assembler code.
> =

> Changes since v2:
> - Retain alignment even when SDEI is disabled to keep ld happy.
> =

> ----------------------------------------------------------------
> R=E9mi Denis-Courmont (3):
>       arm64: clean up trampoline vector loads
>       arm64/sdei: gather trampolines' .rodata
>       arm64: reduce trampoline data alignment

For the series:

Acked-by: Will Deacon <will@kernel.org>

[in future please don't drop acks from patches that haven't changed, cheers]

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
