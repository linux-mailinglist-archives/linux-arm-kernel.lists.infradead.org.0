Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2E7BBAD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcHzChhMnEYAZsNSu0Ct15RVtWco+5A5TPrA2C6xuEU=; b=oWfP4zgNu2iwsn
	JfqZoVTJtxujxmyW1CVV6G+P6AtDin3EAg7M1sFveuozSUBU6OrUbbrMYE8KxrBtJUTvC0g8L8OQr
	3+fhl6f0ZGBYFW9+QzkY5VvfwRrPIaeaao+M/jkIVaZ5YHszp4PVWlt7ZUT68AiKyzjHjp2JMbP+m
	WEx0tIqFwy0d/E4cIH8/RFV4yso8JjzpAWhjNDzrg3oBirJ5fREMWn49GUJSH3y9rp81LObI1pDGd
	TLcWLqbiMWRaGI1KQTBp3Dto8Zn3Qi0kykobNfBJfi1i9nopCRScd2XVVlE6KH8xnEaioDx38NEaN
	sqJIZcGUkOtakwWdqagQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSaC-0000tC-4K; Mon, 23 Sep 2019 17:57:08 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSa1-0000ss-KW
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:56:58 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 95BE6809F;
 Mon, 23 Sep 2019 17:57:28 +0000 (UTC)
Date: Mon, 23 Sep 2019 10:56:53 -0700
From: Tony Lindgren <tony@atomide.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v2 linux-next 1/4] arm: configs: omap2plus_defconfig:
 Change CONFIG_REMOTEPROC from m to y
Message-ID: <20190923175653.GZ5610@atomide.com>
References: <20190920075946.13282-1-j-keerthy@ti.com>
 <20190920075946.13282-2-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920075946.13282-2-j-keerthy@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_105657_708715_3AB879C7 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, arnd@arndb.de, catalin.marinas@arm.com,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 t-kristo@ti.com, olof@lixom.net, will@kernel.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Keerthy <j-keerthy@ti.com> [190920 08:00]:
> Commit 6334150e9a36 ("remoteproc: don't allow modular build")
> changes CONFIG_REMOTEPROC to a boolean from a tristate config
> option which inhibits all defconfigs marking CONFIG_REMOTEPROC as
> a module in compiling the remoteproc and dependent config options.
> 
> So fix the omap2plus_defconfig to have CONFIG_REMOTEPROC built in.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
