Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6E11759CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:55:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVqibTYlNcGZ4538fneNXC1my8mXY4LO6lnm4y8zrKw=; b=nimEdsaw8pJpQv
	gxHtxUd7I9p8n9z7mI6iNgJksSTiF6sjQkdYMYwuKkpFXXkrS7Afgw6ilAKxKan5i++fxWZRRpHJ1
	ztL8MppLEFvrWKtok0B8XlJsNhrU/7uE48FG/mKhx9gM2qB6HLuZx+dEQTbpw4iiViLc1NWfqT6nY
	WROm6/xnWnKN0Q6aXIzWa0XBfFdq4vut4DvmhVO2IU3AJMeYOHr5pOmsgn3SWEtTbEwDQE7Kx2PSy
	VuNOXD+qvdKYvdG8DUMS05GF+TilDA88cApsAPsnS/eRKMJQ6oIR1bQoNPcGN7Ikxtrp+ITAHKt+e
	DTimL308w8HB0BC9N04Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jf0-0003KL-Ot; Mon, 02 Mar 2020 11:54:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jes-0003K0-FW
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 11:54:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32CB92086A;
 Mon,  2 Mar 2020 11:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583150090;
 bh=g1ZYQNRudb7dOHHtDC/0u7w+QrmM8esVYtHWRpxBXmI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JHIpMEqSIMeQ1uGz9HkhnZBTFmkCkXwSpJMCU0w32GcqOK8PhZd5ZMU5Wk0tbAEfh
 IlVulhuXZbXPDcBp3Z6yFjPjhO9pGfenykNa8lR7gft34vUDlUTuNZmDDjW8VE9qkO
 hgNcPYD5qNAd7djLgLdKE0EGubjhBEHoaGynPn9k=
Date: Mon, 2 Mar 2020 11:54:46 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 5/5] arm64: perf: Support new DT compatibles
Message-ID: <20200302115445.GB9233@willie-the-truck>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <6e5087621bd8112a35733054689d7c785b4bdde5.1582312530.git.robin.murphy@arm.com>
 <20200228121712.GF36089@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228121712.GF36089@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_035450_544166_934DF7B9 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 12:17:13PM +0000, Mark Rutland wrote:
> On Fri, Feb 21, 2020 at 07:35:32PM +0000, Robin Murphy wrote:
> > Add support for matching the new PMUs. For now, this just wires them up
> > as generic PMUv3 such that people writing DTs for new SoCs can do the
> > right thing, and at least have architectural and raw events be usable.
> > We can come back and fill in event maps for sysfs and/or perf tools at
> > a later date.
> > 
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> Thanks for putting this together!
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Will, are you happy to queue this and the previous patch?

Yup, I'll pick these two up shortly.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
