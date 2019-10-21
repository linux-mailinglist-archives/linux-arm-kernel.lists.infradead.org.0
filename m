Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998B5DF4FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SXm+UbQua4fxE65F9WLjysH1H0LYxB8zKzm7NdUMXc=; b=qyEBEPgXCyWg0v
	x4MqyDyt6Kh06OCXoUy43HXAShu/Afa9k8rkl1tvlZFsr0P4pkL2ogmYZvVVaMVJfubV/i4MWvc8w
	rV6ek2WVVbGDcT/rRaG9A8RdUJqfSY09NuzGdNqLHUIRw7h4Cidx7faP7CVvvYSRPMGZ5i1w7wKoW
	GQhw/cpUoRCSWm9MHKcpoobB/HC12+lCYeXCnB9ypcg2jLeqlgxRXskL+5HTKwqauj+jWjToQnD4m
	8iHJMvnR0+8nntyqJLQIF+c4+SYAYnJ8JRkN2meOcs/3NL2HsAz2NdANO1q40z/1bkzIo6XNR6BvN
	RB6Lzy5ZY48ej5stiAeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMcKH-0004Uw-9Y; Mon, 21 Oct 2019 18:22:41 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMcK6-0004UR-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571682145;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ESbJhDnm5bjuVodC9kh4h0sdAOT1wrM2a4p9lLw+WMU=;
 b=N9uypXapoQMNSbj2TRjzYNKEHwdjt7eXIS8XEHY0HAjFWD6nTg8eUWfuNE4/6aOThE
 nDrDJV6Gsbw6b8dnmsiWjmJV5KhbxVxLvV1ipYEQIbQTPfgwXTFF/bgXZXeCHgjz2U1g
 A/GNJMi32CtidFhhgQIA7naGDWid5dM2AKindiT0IUpBxP9s2IRJueHvGfOjfr561IDN
 reqYCyt+97ISprZlJnyP3rBSZJ32tmd8x68QHeZWvrpqGMCD5lc3tAqq0sde/zdaGRcB
 juKD+3ECTS0osPhxPdH1byWO7kED7vJfck1Cm4ZmWY+gmvuf9yg9PCeVzhu2+SzYHBlK
 HQNg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDVCbXA4Ewxc="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9LIMGM7B
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Mon, 21 Oct 2019 20:22:16 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH 3/9] DTS: ARM: pandora-common: define wl1251 as child node
 of mmc3
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191021171321.GZ5610@atomide.com>
Date: Mon, 21 Oct 2019 20:22:15 +0200
Message-Id: <0C476142-BC54-4950-8B7A-A422ABC2AEB9@goldelico.com>
References: <cover.1571430329.git.hns@goldelico.com>
 <58c57f194e35b2a055a58081a0ea0d3ffcd07b6d.1571430329.git.hns@goldelico.com>
 <20191021171321.GZ5610@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_112231_313392_42B51E73 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, letux-kernel@openphoenux.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Kalle Valo <kvalo@codeaurora.org>, Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 21.10.2019 um 19:13 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * H. Nikolaus Schaller <hns@goldelico.com> [191018 20:28]:
>> Since v4.7 the dma initialization requires that there is a
>> device tree property for "rx" and "tx" channels which is
>> not provided by the pdata-quirks initialization.
>> 
>> By conversion of the mmc3 setup to device tree this will
>> finally allows to remove the OpenPandora wlan specific omap3
>> data-quirks.
>> 
>> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
> 
> Here you have the subject line the wrong way around,
> please update it to start with "ARM: dts: ...".

Ok.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
