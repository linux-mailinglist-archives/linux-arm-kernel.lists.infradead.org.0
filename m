Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E2A3B9EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6wAlNTugV87GO5P/y1oFg6/nx5Ic3cXO1hkVSFqKr0=; b=SpnfMBDu+lKmys
	NCo/CAKjZzA/2L/mkhN5xJ2V7EkwYII9YkoEd9c7Hf4Iyes9zSp7eLmYp4y0hQiS8qODqPJ5EP86J
	DPEqL/hLRtNA0EkAP5/1/yczLsrrNuU4w5SPQfszgZ/CXrsuqlDOiP0D9sfgua6CZdCd3jb4s8yXr
	uWmb7tSngtTwZBzj4zf/Tg/6JG1k62fjfG8aMx1uwIaf7Pu3iplJMVrjPDZcV5jT/l+NjWIAa9sJr
	V1hNfJhyDEkpJdx/AKDzmL6QrplrwaeH6ytDHgygBQm4MCDbXUAYHEMRgSHA3H8CLCmgVVZGMvdBw
	1pUBbavss0ePjCzVM7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNTJ-0005NB-Du; Mon, 10 Jun 2019 16:48:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNSr-0005Bd-IJ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:48:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B062F21721;
 Mon, 10 Jun 2019 16:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560185289;
 bh=3q0wdBIBloAaKbF30NNBcupNXjug5nIS2FnWZbNAe2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xewsbSbPxHoWDdWHAHP9sZybWLjLS7IliCL/Tc6Tya2fNau5BlSCNVvB6IKoCpTq3
 nE3MNfKlGZxuUduGprJf6rfo062bFn4e5pHJjgqdOPwN4qbdnRNCn0qsBcnFphAAka
 Jj1oP+oNoGSk4SxkQw6qOq0HqoIckotX3VhDXWvc=
Date: Mon, 10 Jun 2019 18:48:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Erwan Le Ray <erwan.leray@st.com>
Subject: Re: [PATCH 04/10] serial: stm32: add pm_runtime support
Message-ID: <20190610164807.GA25660@kroah.com>
References: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
 <1559638519-6128-5-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559638519-6128-5-git-send-email-erwan.leray@st.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_094809_660890_A3DB4764 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Bich Hemon <bich.hemon@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:55:13AM +0200, Erwan Le Ray wrote:
> Use pm_runtime for clock management.
> 
> Signed-off-by: Bich Hemon <bich.hemon@st.com>
> Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

Does not apply to my tree :(



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
