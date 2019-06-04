Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7AD346DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvKlPyXYVIe0Db4qB7xcvc+GlQwNvrQojKZlZn9xLkU=; b=XZ8oAPXDPw8YOW
	CGuvVGS4MbNFYAwzSKgdXwdjqrZIOA09mQLENZemP9YBnp9AFc+eEn2EWy5NYgY8X4uBxQ2rTzJDV
	SGn2392HDpbr+n5Bjv6lX+RJQ4Uesezbm8fb5lPt3n2zMn3TVVMxPJTIJAHnlIl+jfUKtaEv3ITAC
	EraMggV1jJK4p/D1Hk6tDzq1dCR8icFB4EOKJpkJPTTojrkzOsrfF+e+7CRCFFmXSuBuoIYlsAqUW
	Ld24OrdSsGN/8u9/3UbbM5PhIhJMNZN8GaDes51W5j/6WDEF9V9RWwr32MvDKJIuU/VdAcJFBSJST
	0yMZcWEi1lC/eYNgMA3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8c2-0008F7-NB; Tue, 04 Jun 2019 12:32:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8bf-0007yo-N1
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:32:14 +0000
Received: from localhost (unknown [117.99.94.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A36F623E30;
 Tue,  4 Jun 2019 12:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559651519;
 bh=smPFn3xTaQlOwxDv+rvChZ8BjQgGMLXVICl/qcx1NEE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NHiRxdNqwSAHp7BKsZRtvVGcVXKjpAxTA7yvwUKCV1RP6ptEuIV0iu6u/tVzVCMRp
 ATzEbgEDA5Ri2oXQ3ioYeCZ/NUsy1U2bIF2uGCaOr5xpl6QNNjOxc+/loysi8LWV5b
 6ZIB40FX6+n+YWYTe0sZDvX62FPAGHaUh8m3gAYA=
Date: Tue, 4 Jun 2019 17:58:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 5/7] dmaengine: sun6i: Add support for H6 DMA
Message-ID: <20190604122851.GD15118@vkoul-mobl>
References: <20190527201459.20130-1-peron.clem@gmail.com>
 <20190527201459.20130-6-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527201459.20130-6-peron.clem@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_053200_277823_D87F0C26 
X-CRM114-Status: UNSURE (   8.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-05-19, 22:14, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 DMA has more than 32 supported DRQs, which means that configuration
> register is slightly rearranged. It also needs additional clock to be
> enabled.
> =

> Add support for it.

Applied, thanks

-- =

~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
