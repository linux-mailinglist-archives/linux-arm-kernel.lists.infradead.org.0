Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4846EC5B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:38:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3RU2MYjgZ+ap5QMFHnAS0U5QsXs+w2rlnfB4/pFlxA=; b=PnzdnnV/3PSbaX
	38WrzrD4PTSTukLw2rCtitw2sbiG+enChjGvGdJ/WU7MNrJQ/Jdu6DXGIXQjKz0elOnGseGhKmnFT
	6cSVjk6rcHWvN4NYUDjlzkrnv8Zn4SlO8fwvFjl40Ikz1IdZSrqrOnH0Gt3pfHid28gEaHSydTRkJ
	t8B6+Y9RIWIgvKEzHXjd3UFMW+1cYsWJv6u82dpJH86QKm9ud86wTY08P6NHO1WzFII/uc3c11of2
	0jN9QAiFkUTt/ieVKnJXvcVu9wPAE/ZKUjwpqzcdsBAXo+9g+VSjAP9lCyc/zVz9d4NZtncXfj3U4
	OHDQ+7XjSxwWXR8mkUrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ0C-0006dL-1k; Fri, 01 Nov 2019 15:38:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ05-0006cr-8Z
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:38:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 647A520650;
 Fri,  1 Nov 2019 15:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572622688;
 bh=CWKBSlzC3l8GOMKMsRuzJu7Q5DBYLofyM+2KjYJ1O7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AFDC/YsTMMKoPnOc+deoFBI57qzVpVwDmw4T3C03qAFkP1i1ZeJU2STUEmPZao9nJ
 Jwtv96kklhsiKZgF4Jp6DGy85o9hX4WGzqJwSSKMKs52dmiP9k2JMkSTIQNa7dvnJl
 tSYqrlhzmV9dU8XwE325Mi2plbco5yF46dG8cyms=
Date: Fri, 1 Nov 2019 15:38:04 +0000
From: Will Deacon <will@kernel.org>
To: Julien Grall <julien@xen.org>
Subject: Re: [PATCH] docs/arm64: cpu-feature-registers: Rewrite bitfields
 that don't follow [e, s]
Message-ID: <20191101153803.GC3287@willie-the-truck>
References: <20191101152022.8853-1-julien@xen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101152022.8853-1-julien@xen.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_083809_326526_BE4E5FAC 
X-CRM114-Status: GOOD (  15.16  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:20:22PM +0000, Julien Grall wrote:
> From: Julien Grall <julien.grall@arm.com>
> 
> Commit "docs/arm64: cpu-feature-registers: Documents missing visible
> fields" added bitfiels following the convention [s, e]. However, the

typo: bitfiels

> documentation is following [s, e] and so does the Arm ARM.

This should be [e, s], although I think you can spell it out as "end" and
"start" so people know what this is doing.

> 
> Rewrite the bitfields to match the format [e, s].
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
> 
> This is based on the branch for-next/elf-hwcap-docs from the tree
> arm64/linux.git.
> ---
>  Documentation/arm64/cpu-feature-registers.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index ffcf4e2c71ef..7c40e4581bae 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -193,9 +193,9 @@ infrastructure:
>       +------------------------------+---------+---------+
>       | Name                         |  bits   | visible |
>       +------------------------------+---------+---------+
> -     | SB                           | [36-39] |    y    |
> +     | SB                           | [39-36] |    y    |
>       +------------------------------+---------+---------+
> -     | FRINTTS                      | [32-35] |    y    |
> +     | FRINTTS                      | [35-32] |    y    |
>       +------------------------------+---------+---------+
>       | GPI                          | [31-28] |    y    |
>       +------------------------------+---------+---------+

diff looks fine.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
