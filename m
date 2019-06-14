Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E9E45AD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLKh8K2P9y/FPh3mcjSpZ9KMmDF9igwWAhvHoVQHKxg=; b=iVVsGoar+xY6Yi
	ycjVbRVMo47ck869IT8G/nTkOf9TI8ADFCToBp4JJTcd2Arl6P1IFQx492VBg6xoy10o18tIzBQt7
	T6YNbTuECVwpao1rwSr/ovHZgzV4jojxfPe29t8Xip+MAdiuyP/bC5tkTDxueeKd0x+/8tiL/klVK
	wE97CJ+P1z9rmOmUhQfoW2nxdiUo98j5zY1+t6JUc8DsMMJ+wFuNelS3brZnoXFA3lrj7v+GgzU/G
	5UR4tMkpCpb7OGn4/8QTzX04vT2OhrefMWBelKoSoRjwZZTwzlotbhihljP1C0fuxXSSxFDgKB/+q
	0KUNf0BN4N1oP46igm0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjh1-0001bC-Cq; Fri, 14 Jun 2019 10:44:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjgl-0001ab-Ho; Fri, 14 Jun 2019 10:44:08 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbjgh-0004ac-50; Fri, 14 Jun 2019 12:44:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v2 3/6] clk: rockchip: add a COMPOSITE_DIV_OFFSET
 clock-type
Date: Fri, 14 Jun 2019 12:44:02 +0200
Message-ID: <130046083.dVx6RxQuTH@phil>
In-Reply-To: <1557991736-13580-4-git-send-email-zhangqing@rock-chips.com>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
 <1557991736-13580-4-git-send-email-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034407_774233_42B1B9D6 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 16. Mai 2019, 09:28:53 CEST schrieb Elaine Zhang:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> The div offset of some clocks are different from their mux offset
> and the COMPOSITE clock-type require that div and mux offset are
> the same, so add a new COMPOSITE_DIV_OFFSET clock-type to handle that.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

already applied that one from the v1 series.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
