Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B921773F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 11:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rI3U/IgUQR6lDAdInbRrK2zlOD9FvRpyCrBvMZ1q/Y0=; b=rg85jb5oFcjqSB
	VZXr2J6cVEsHKsT7OSg3xnMRXZWizC84vl1BKNPU1el7pqMWYLZuOiyQr6myvyjm3ILcYibXV93uU
	wWA36bT9ui7dgKG5BjzF+COgReDKUtHIddDdGcN1iIKXNKQGLp6nVaS/cfopad1jovyeo8xhswXtm
	YM01K8yNOkRpTi5izz3kAexpdA9rAmY6bkTKqSKAP53cJYJXqCElzxgSCDeVVZ9uuqw5LT54/hziV
	hbmx9Di+gNw2m160fUm3ZVZlaRaxgvE2HFj6OywpCvvEP0UVTts1fmro9Z8eTSFWY/nYtTUiG9vSV
	vWmNTp7cecue9rBsIrNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94hd-0005v9-6C; Tue, 03 Mar 2020 10:23:05 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94hE-0005kZ-UM; Tue, 03 Mar 2020 10:22:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 02:22:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="351793990"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 03 Mar 2020 02:22:23 -0800
Received: by lahna (sSMTP sendmail emulation); Tue, 03 Mar 2020 12:22:22 +0200
Date: Tue, 3 Mar 2020 12:22:22 +0200
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 12/23] mtd: spi-nor: Move Intel bits out of core.c
Message-ID: <20200303102222.GL2540@lahna.fi.intel.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
 <20200302180730.1886678-13-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302180730.1886678-13-tudor.ambarus@microchip.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_022240_992739_C3403DEB 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 vigneshr@ti.com, linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, opensource@jilayne.com, richard@nod.at,
 allison@lohutok.net, michal.simek@xilinx.com, Ludovic.Desroches@microchip.com,
 joel@jms.id.au, nishkadg.linux@gmail.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, ludovic.barre@st.com,
 linux-arm-kernel@lists.infradead.org, bbrezillon@kernel.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 linux-mediatek@lists.infradead.org, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 06:07:51PM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Boris Brezillon <bbrezillon@kernel.org>
> 
> Create a SPI NOR manufacturer driver for Intel chips, and move the
> Intel definitions outside of core.c.
> 
> Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
