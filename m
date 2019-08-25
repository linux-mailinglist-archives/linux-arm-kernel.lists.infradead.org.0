Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB599C268
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 09:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heuPXZFT6tmKlOzG6wYQytnlzxU/cZUC9DFf+MjrK58=; b=VXHQM9cXwXOvBR
	q8aymoc8QCmYfmpr4sCWMUPcxcjoI3ZWyd4W379jLPJkFdAagrlhYKKsRKmpplqk+jQb5h4mjnGxs
	Ss32z+ay3hxPFTMnXjrrSupVh/VdP6oJr0KzOayHi7lSArXbnoiX0ShSXPEmFnxyjj+SUDR1abmfr
	6/kRZy/BO/UUp6Gq0yySvy+pgVi7E5vyD0IyOpf/HSj7djiUUwbSXstDN/v01FxZJ03EMVRs+62v3
	eW6lB3govKStkJIDQ/7rVOXEc5LZ52FULNtsyoCP5z5ncuAqn/OHDdp5rCDGgEtaMNH91Enoj6Jzf
	4RBA3HeKUobLS5x008/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1mky-0002f2-Ok; Sun, 25 Aug 2019 07:16:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1mkm-0002el-KG
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 07:15:57 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 905F420850;
 Sun, 25 Aug 2019 07:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566717356;
 bh=8pqmVNKR1eEG8zWJwqVegtkwFiqBjuE2bxUuKd2gWAg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jNyNPj3RzhO3eG/nR5IoYVHpEutzU1wJB05NgxkW+aiGgqPdn9b3BWzLcHth8eFLg
 RZKKoY7phAAIdhkdoqPHTWvhBQVyUq53OC6vJ/R3KwQIoan26oy1Hg4Kcky/vdH92g
 LE5uKYf00DKgPgDqrn9fD3//Bv2iva41QBoli8LQ=
Date: Sun, 25 Aug 2019 09:15:44 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Configure IRQ line for
 GPIO expander
Message-ID: <20190825071543.GB5292@X250.getinternet.no>
References: <20190824002703.13902-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824002703.13902-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_001556_687877_22E9B13C 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 05:27:03PM -0700, Andrey Smirnov wrote:
> Configure IRQ line for SX1503 GPIO expander. We already have
> appropriate pinmux entry and all that is missing is "interrupt-parent"
> and "interrupts" properties. Add them.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Cory Tusar <cory.tusar@zii.aero>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
