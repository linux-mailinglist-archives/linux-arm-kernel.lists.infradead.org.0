Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E0D11D91E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 23:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cac4EN0J19XmIiL69awujv/3dVd15nIcgwoSKOC/SCQ=; b=PaLCnTsR4knel+
	zd04xU/goeM3wj+Y/HaHtpdgFIZAF3ZFEibvWMzQVNpOs74SLPAAQ7VFETg0EbuZ0nQQLUThvUoAg
	Flj809mRrS2EVQa2mGA9RA1fwkRxU35P4xcSRHDloZG3t1yc/J+8bSKYXiLdXzO0gj8yX9Rr0DVJH
	SVKUWJQkzKar7Vh1p9ZjNSp74sOp3sszpfPix5WZm5hUTs7GRmB/cqEUck0QVRdJLNJVRof+2YT2T
	+5yoGc1kzjlJRfMZu9GhqiqczfEhHt6YBtKvhYdsB1zFUfQuBWhpqqaZOCLkcaYp8BVZpnsDKDklQ
	tKBy4wsaRsnmq8cO41kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWhN-0002nA-TT; Thu, 12 Dec 2019 22:12:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWhA-0002l3-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 22:12:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D5C820663;
 Thu, 12 Dec 2019 22:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576188748;
 bh=BZXcBrg43znvkzXsw7BiYCv+5ooVO2ZlYSSTwSngLm8=;
 h=In-Reply-To:References:From:Cc:To:Subject:Date:From;
 b=yH3EYZNy14PKPmgOWzv8J0gwB1TPaTg2KSWoSO/WYFFNExsWxenak71cykWdzgQz/
 V0/w/G4TmZWZP0zcKjDLh5/mHqaNUNhpqaaKKrL/a6xFVafGHnqcRvjGLPvNBE4UpM
 WZrgyDmoKitoV/mPvgKlLYXHfTib5mMlP+cL+JUQ=
MIME-Version: 1.0
In-Reply-To: <20191209093558.50940-2-maxime@cerno.tech>
References: <20191209093558.50940-1-maxime@cerno.tech>
 <20191209093558.50940-2-maxime@cerno.tech>
From: Stephen Boyd <sboyd@kernel.org>
To: Frank Rowand <frowand.list@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: clocks: Convert Allwinner A80 USB clocks
 to a schema
User-Agent: alot/0.8.1
Date: Thu, 12 Dec 2019 14:12:27 -0800
Message-Id: <20191212221228.2D5C820663@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_141228_656454_552B97C9 
X-CRM114-Status: UNSURE (   8.37  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2019-12-09 01:35:57)
> The Allwinner A80 SoC has a USB clocks controller that is supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
