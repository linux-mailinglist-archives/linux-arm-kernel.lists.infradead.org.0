Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204CB1A7729
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35MQCsquQajus3MNvmUXuiDzuT6bp+iguF7XQK3AgXk=; b=iXKLn/zel6vziE
	quFkhex4Fe3jJYbgVTl3PWJBUvGi7iu+rkZHWxzGIzlzYHpD4Ykzv8KWb2Z/VeDN9UicrmkPdElKh
	X/vHc8EV4KpBWI6K9XliiuFWiAbw1Rp4981LholXkjh7brii5tIasmIO/AGYmk+8Bmb0I2iWfiGoe
	DdUAVtdPAvbB+O7HZBxoq6eR/YHByKQvvHvRCPruBWbvnib11fpas2ixsNv5o3RcyDmusQUH+qqvA
	fwpTD5VJlkWSD3Mepm8SggbnT3Aa0bbS/TWUxXF9Lqbh2PBJcxGjYP7/YjAcoi8FhQsAtKgXD3Z6H
	tvfrbZ2MLQdMx++HI2Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHfj-0005Je-Cn; Tue, 14 Apr 2020 09:15:59 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHfc-0005Ip-AF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:15:53 +0000
IronPort-SDR: 679o/+buF4DxKP1tCfrUE5DxE3qiJ0zMT06JhP3LeO9hB6KYr/58S2DNKihqldd7DhZYf+wcMI
 9Eau8JTFP3aA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 02:15:51 -0700
IronPort-SDR: XaAYwih13kluB8Qgni89e9NJqmeCKNVE2sToDlr5+9vgt6ce6+duySDm202IkG2rAZDr8JHY8B
 xm/SXmfn0eag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="241932506"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007.jf.intel.com with ESMTP; 14 Apr 2020 02:15:46 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jOHfY-000UKW-Di; Tue, 14 Apr 2020 12:15:48 +0300
Date: Tue, 14 Apr 2020 12:15:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ernesto Corona <ernesto.corona@intel.com>
Subject: Re: [PATCH v29 6/6] drivers: jtag: Add JTAG core driver Maintainers
Message-ID: <20200414091548.GH34613@smile.fi.intel.com>
References: <20200413222920.4722-1-ernesto.corona@intel.com>
 <20200413222920.4722-7-ernesto.corona@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413222920.4722-7-ernesto.corona@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_021552_393979_CEA8A474 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, linux-aspeed@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vadim Pasternak <vadimp@mellanox.com>, linux-kernel@vger.kernel.org,
 Amithash Prasad <amithash@fb.com>, Jiri Pirko <jiri@mellanox.com>,
 Rgrs <rgrs@protonmail.com>, linux-arm-kernel@lists.infradead.org,
 Steven Filary <steven.a.filary@intel.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Patrick Williams <patrickw3@fb.com>,
 "David S . Miller" <davem@davemloft.net>,
 Oleksandr Shamray <oleksandrs@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 03:29:20PM -0700, Ernesto Corona wrote:
> JTAG class driver provide infrastructure to support hardware/software
> JTAG platform drivers. It provide user layer API interface for flashing
> and debugging external devices which equipped with JTAG interface
> using standard transactions.

Don't forget to run
      scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS --order

> Signed-off-by: Oleksandr Shamray <oleksandrs@mellanox.com>
> Signed-off-by: Ernesto Corona <ernesto.corona@intel.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Cc: Jiri Pirko <jiri@mellanox.com>
> Cc: Vadim Pasternak <vadimp@mellanox.com>
> Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Cc: Steven Filary <steven.a.filary@intel.com>
> Cc: Amithash Prasad <amithash@fb.com>
> Cc: Patrick Williams <patrickw3@fb.com>
> Cc: Rgrs <rgrs@protonmail.com>
> ---
>  MAINTAINERS | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e64e5db31497..96d20fbb719c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9144,6 +9144,17 @@ L:	linux-serial@vger.kernel.org
>  S:	Orphan
>  F:	drivers/tty/serial/jsm/
>  
> +JTAG SUBSYSTEM
> +M:	Oleksandr Shamray <oleksandrs@mellanox.com>
> +M:	Vadim Pasternak <vadimp@mellanox.com>
> +M	Ernesto Corona <ernesto.corona@intel.com>
> +S:	Maintained
> +F:	include/linux/jtag.h
> +F:	include/uapi/linux/jtag.h
> +F:	drivers/jtag/
> +F:	Documentation/devicetree/bindings/jtag/
> +F:	Documentation/ABI/testing/jtag-dev
> +
>  K10TEMP HARDWARE MONITORING DRIVER
>  M:	Clemens Ladisch <clemens@ladisch.de>
>  L:	linux-hwmon@vger.kernel.org
> -- 
> 2.17.1
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
