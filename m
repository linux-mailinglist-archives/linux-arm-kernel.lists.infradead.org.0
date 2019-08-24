Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E879BF4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ0AuRSNvJ6QqynVxeGT4Xz9/GvqGM6MW/0yzMTq9As=; b=mCnh4ol/X1vGyz
	L5K+eNWRS8OnoVruf5TyGKJcpvl1CSqIOHut9oid6QEmFTMyuMUo2j13czOc8V4kDDN9AHLA5mowz
	WdJ+jXOoyhXGRMvSJa/d0nCviWf/RS74E2UctuCvF3sKhMbwqneh5VtXH/JF+uVWtZjvSpUfuNg+7
	AGcFmVJuXrshyZlZJmsQbHsGX3KC35iqBBJhN0td8lSNAZ7/7swLCumXKoJznCxxSa+D38dgLiyJc
	mV6T6Pej2tJQVhkYHQw/5brP/G0hoM9T/GUGioiOc+H7iS5vsJb9w5UWiZM12m1yvSMkh5Oy3A0uL
	ahHqRAp8IdB9WOSLAkPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1atM-0001Ag-Mu; Sat, 24 Aug 2019 18:36:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1at7-0001AO-GF
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 18:35:46 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C132D21897;
 Sat, 24 Aug 2019 18:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566671745;
 bh=9N765O+RItokcg7MqxGOP60qDa/cmTnbhzDUQvZdyAk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lbLj+8HuBm8AbXmjPWUGiu+oEdjQnOjsUb4QRNE5o8uSLCZzNu0ZJooy4SX0u5eof
 jnuwDP3+fXiiFjIEE1aH6LfvxWK4NlloC6216i2cQOGXPYozY27QlPYuLMvPAEvHqu
 GxLrsAN5/h8331yRE5XrPzDHjLq98QLmgpMBNQyc=
Date: Sat, 24 Aug 2019 20:35:33 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: fsl: dspi: Add fsl,ls1088a-dspi
 compatible string
Message-ID: <20190824183532.GB14936@X250>
References: <20190801083105.30102-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801083105.30102-1-chuanhua.han@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_113545_566351_2A50BE55 
X-CRM114-Status: UNSURE (   6.80  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 04:31:03PM +0800, Chuanhua Han wrote:
> new compatible string: "fsl,ls1088a-dspi".
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
