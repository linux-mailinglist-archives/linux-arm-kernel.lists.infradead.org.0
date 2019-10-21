Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AB2DF3D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 19:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygqDMfPpwmLNFxxN08KmT4gK9kTKWeUvOPLUN6ipTRw=; b=MmXKKPwHk/43O1
	j2fQFg8IhoR2EqBrXxCeZlDX+uZelNvM6pyLuXKZlRuNV2X9tVV0tJrHrYminOttwi1kccEfBLg1C
	7y2hvIDh2qgwg6yAhmZZgWSLe//pd+YoSjl0YkPgNHxB86JrgiChU0bL/OmNT/V/W6vzEvwIckQAO
	ZvPcuFVpVWNlpgQiHKMGmMFX2XJ00A0a85RhOBrxv6WBReCEQKLe+36OFDwXGvBy397OMtyCdYPp0
	QnaaEegXQa768JVJWJ26G6Joq6AcEG4k8jiW+ZZsIhVH/qnwJdWp9I/218xGtAB/4o9TH1vWCc2r7
	7xvUvbRvZ9e8EYHG/nBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbA9-0006EA-8K; Mon, 21 Oct 2019 17:08:09 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbA0-0006BN-1P
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 17:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571677667;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=g5fftcy+sbjcXJkucAV/OZbKo+UWi5WQTkrvCV2Jtos=;
 b=HDdfKrc2D3wKDSBIE4CGax7QJ5gt5f+RcHgrZ+Rv0NwwLuj6LDVTVBEy0bGQrZTbjQ
 /UJ0UQ6oeRVOEusk7fGpW9SImZArtZISgzUVnZUNrxct7mf4vN/skZc+cWorJS48TRts
 jQXACVhNxJTKJYacUp1QFG2zRYLKW3zdstCqfxMqeIYUBySRRrAkS5DnB3SVnjwoPnGy
 KUcRhANpwD0Pcvp9rNCzyTb5vJSxSNUn1/SLlktTk597ObjdkhJhI++gGGLq7OqQvaoJ
 xnbh0Wha8dxyTB/lqtTOu7vE6RuYZaDYqUfkXfaSMkTfSURWucERolfXSitLOKH87BN6
 tdAw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDVCbXA4Ewxc="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9LH7VLxq
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Mon, 21 Oct 2019 19:07:31 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v2 07/11] omap: remove old hsmmc.[ch] and in Makefile
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191021143008.GS5610@atomide.com>
Date: Mon, 21 Oct 2019 19:07:31 +0200
Message-Id: <3FDBE28F-B2C5-4EDE-905C-687F601462B6@goldelico.com>
References: <cover.1571510481.git.hns@goldelico.com>
 <9bd4c0bb0df26523d7f5265cdb06d86d63dafba8.1571510481.git.hns@goldelico.com>
 <20191021143008.GS5610@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_100800_670631_13D801D7 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:11 listed in]
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 21.10.2019 um 16:30 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * H. Nikolaus Schaller <hns@goldelico.com> [191019 18:43]:
>> --- a/arch/arm/mach-omap2/Makefile
>> +++ b/arch/arm/mach-omap2/Makefile
>> @@ -216,7 +216,6 @@ obj-$(CONFIG_MACH_NOKIA_N8X0)		+= board-n8x0.o
>> 
>> # Platform specific device init code
>> 
>> -omap-hsmmc-$(CONFIG_MMC_OMAP_HS)	:= hsmmc.o
>> obj-y					+= $(omap-hsmmc-m) $(omap-hsmmc-y)
> 
> The related obj-y line can go now too, right?

Yes, I think so. It is a construction that I have never seen before :)
Therefore I did not recognize that it is related.

> And looks like common.h also has struct omap2_hsmmc_info
> so maybe check by grepping for hsmmc_info to see it's gone.

Yes, it is just a forward-declaration of the struct name with
no user anywhere.

Scheduled for v3.

BTW: should this series go through your tree since it is an
omap machine?

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
