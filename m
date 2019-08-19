Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAF191E37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZOHAm2JbgpWbn16/Z2D4nH3q6BcVNZ9inh0RoV/r4M=; b=WiMX4XYupGwlHT
	QN2F8G+fGXclH0nCPPXX0u+2BTY9bWc8t0KUWoNyBbG2T+45h9NnLKkfv3mqQhpbF8RNAj5O793vh
	L79ZDDGoa2IWiuFfuqYoeW9p0oRwPbH0timIrNKs+T6YnZkb4jtKBJN/CUnwyYE8a5euZq1CE8J/M
	jxRMKEjDInx3eFPH5S6WrTsSF4dSo93jpntrpj3Ct5nCZCiGjCohPzJbv6Fn1yg20Ac/XvfO78om3
	ezaYTwhdY3VbsLUd68Bf01rrkK2C4OEFI7yOnqXfDooKJ7Asih8rXU5Z51uH/LlyB74LVdEDdtxqp
	jGvzgcHX/X9xcJesELqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcKg-0005hw-Q4; Mon, 19 Aug 2019 07:44:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcKL-0005hS-DS
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:43:42 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30DD0204EC;
 Mon, 19 Aug 2019 07:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566200621;
 bh=pyovwj0ULanQn79gsy+GBs1g4uJGk78tSpphAigMsE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IqbnLwxiPiSbiKGrG4stTDREeaJ6TT0GyLfMjtpeOl3KBpIrgalkOejkH4ORpdYL+
 JJDBf7MaDNgaM7/eBWwQF7mii7kb1zBHkHpBPVEyDYfx2hQiZfl6e/m/aQgOdLLIrn
 9fgTShtw5UU+LaKnrw9JRKh7GzvBoMahDlrfelgw=
Date: Mon, 19 Aug 2019 09:43:28 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/4] arm64: dts: ls1088a: Fix incorrect I2C clock divider
Message-ID: <20190819074327.GD5999@X250>
References: <20190806084223.23543-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806084223.23543-1-chuanhua.han@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_004341_477247_BDBDF84E 
X-CRM114-Status: UNSURE (   9.45  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 04:42:20PM +0800, Chuanhua Han wrote:
> Ls1088a platform, the i2c input clock is actually platform pll CLK / 8
> (this is the hardware connection), other clock divider can not get the
> correct i2c clock, resulting in the output of SCL pin clock is not
> accurate.
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
