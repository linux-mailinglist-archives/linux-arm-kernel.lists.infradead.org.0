Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D351CE225
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNDzQUikPHlruo85Uxi5IFipqIhGUzy9TgnmM/i2P98=; b=lN/VYHnxhBwJJu
	ULPYFWug3GpNfnYjAd1QcnHJ95zIfP74odMFcISb7NkVhyp5e2OzUq87vbMNBvhaOFnSQHPZ2AHVW
	P5nUAXTMc343vvNNuXsxAMG3j3DErmzsiRWp5fH2h8qe/LcGN96NxQHaMf6TxGZvXvukaobg+nEsV
	YOOWDydl6YxdehMuvvQ3AyobYhj4OHP0bMlPROVtWaQr3m7lY7MpaAXZrQFEfHIzQhjMwlEdk9lzx
	wlW2fb1BGaUIul6KyEsCygIWBrQ+nKuGovWYWquy/rnqrRHLDFT/sCmO1/QJZz94lok9tC57rQzzK
	wa4LKuYxGx9hoG4H4Ztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYCkB-0007vy-GA; Mon, 11 May 2020 18:01:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYCk2-0007vK-S2; Mon, 11 May 2020 18:01:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04BI1JcN074891;
 Mon, 11 May 2020 13:01:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589220079;
 bh=4hUaTl/w7V55aG/pzRHCWNRooX3Cd6J39x6QfIzCmS8=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=GGEICkGv2Gv87Dluudb293qzSwzPaLlh6xLIGeNSFwS5M7/uN8DkoHUW34FAVrJlU
 wJ89Lgft6U/1kQoqCexYtNg4RzOjO8uEx/yV67lsxUOh05Pt/4PUpFdOoITGzjAi1J
 Q69o29d9FVvUZ7FSYiloNfGSUZgggZKo3+DW5Opg=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04BI1JMc123744
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 13:01:19 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 May 2020 13:01:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 May 2020 13:01:19 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04BI1IO4038165;
 Mon, 11 May 2020 13:01:19 -0500
Date: Mon, 11 May 2020 23:31:17 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v4 12/16] mtd: spi-nor: perform a Soft Reset on shutdown
Message-ID: <20200511180115.zpbfecwdeuhy5qzr@ti.com>
References: <20200424184410.8578-1-p.yadav@ti.com>
 <20200424184410.8578-13-p.yadav@ti.com>
 <6809202.hICg0JTlGu@192.168.0.120>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6809202.hICg0JTlGu@192.168.0.120>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_110126_965205_8C1B01F2 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.belloni@bootlin.com, vigneshr@ti.com, richard@nod.at,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 broonie@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/05/20 11:22AM, Tudor.Ambarus@microchip.com wrote:
> Hi, Pratyush,
> 
> On Friday, April 24, 2020 9:44:06 PM EEST Pratyush Yadav wrote:
> > A Software Reset sequence will return the flash to Power-on-Reset (POR)
> > state. It consists of two commands: Soft Reset Enable and Soft Reset.
> > 
> > Perform a Soft Reset on shutdown on flashes that support it so that the
> > flash can be reset to its initial state and any configurations made by
> > spi-nor (given that they're only done in volatile registers) will be
> > reset. This will hand back the flash in pristine state for any further
> > operations on it.
> 
> Please don't introduce SPI_NOR_SOFT_RESET yet. We should instead determine the 
> software reset sequence by inspecting BFPT[16], bits 13:8.
 
 Ok. Will do.

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
