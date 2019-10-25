Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2336E41A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYM2bnyklHm82Ym+hRcmRSgdMynpbLOWfWI+YI+Qn1k=; b=kSkRiVbKMjJkoT
	GqKBPvbRYrwpbP4y1kKV8jR4R2/rrSbOmLmWh53UKj3TLbUdBm+eFAWQqKNDY5euqKxE7CCxa1TZx
	EBrjl47xtjTO4kRt1dWam5l7eHqzDtpTnpfiR6Z4GnfP6wnLc2ZxJPHo3rdDv/UxKDhJfmjCr1Z45
	FyqSn4rgDwNnkYUBYMYr9tYmVq+nvmu9MYn5FdDcsHEw4xtklURKzSMkxvlAi9RGBZKhWX4B6TluR
	mIlafyNMbSGakIcVrxTjEGLAaw+ZT8cXMfYHk2HhOYqxOQ8HlF80WvI9YLBw7ftt++TKHUx2iUpuj
	nUEA6sxIJHcQyQ4ypr9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpWa-0005BG-8w; Fri, 25 Oct 2019 02:40:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpWQ-0005AG-03
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:40:15 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 588EA2166E;
 Fri, 25 Oct 2019 02:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571971213;
 bh=VuIkAO3ugvVIrk34pCVzm5VFvJRsMK+QkxTA75X9r+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ly9foHepoYGj/bMScIwLR5+FQLcHMIn88pQaij8yEXfm4+MVhQKaK9tMUjKufAEQB
 qKGc5v3xKBChLV1GxJcePyu+4YnqN0OsQMQ3MRxBUSvYUNqmO/MsDjr9SH5GOXrllj
 Q9/YERVB/J0pjX6qcEBkoOdn1XCcju4fnXo1cJEM=
Date: Fri, 25 Oct 2019 10:39:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 06/10] ARM: dts: imx: Rename "iram" node to "sram"
Message-ID: <20191025023951.GB30015@dragon>
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191002164316.14905-6-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002164316.14905-6-krzk@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_194014_064751_9A7E8009 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Tony Lindgren <tony@atomide.com>, Thierry Reding <thierry.reding@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:43:12PM +0200, Krzysztof Kozlowski wrote:
> The device node name should reflect generic class of a device so rename
> the "iram" node to "sram".  This will be also in sync with upcoming DT
> schema.  No functional change.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
