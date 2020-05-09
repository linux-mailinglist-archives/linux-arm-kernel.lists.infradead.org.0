Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C081CBFA6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7X0tUFl5h9SfWoKb6LN6/A5x9CHERl1hcsx7uHHlhWU=; b=s7zASHlGiuGmWi8YITMlnNErZ
	xjHC55AtjM4o7V5UZINIX6pYKIFQJgoZoCQs8T2qAG80IpBN9grO2L/LZAcFYcJO9Ic9DSbtyPFuj
	vAQ1sYCfIZB05USDAj3AscYKmDDwERzJNs8hATCttwOLrbLxHFTUGKvSOPMYAcfbZWpmXISYryc9M
	7UCw1826z6g1+7ZMQ6Vg7fC+Ehq/dHejouIBnd7WBeQYKXjRPXIuQwmWTptu1GeMYPBZwLiaLjDOs
	YE22ZEUiyPvVncAmeTOhFCWWtXkpKTAvP8siTGztcvlFCvYkgSxIwUdSx1B/BsiSjtZhSelWBiWuQ
	EbMNPraww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLVw-0006Hg-8w; Sat, 09 May 2020 09:11:20 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLVp-0006GL-2m; Sat, 09 May 2020 09:11:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 5872F2003CA0;
 Sat,  9 May 2020 17:11:06 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odAZhTF_7maC; Sat,  9 May 2020 17:11:06 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 3627320020CB;
 Sat,  9 May 2020 17:11:06 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.189.244])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 72D14C019F4;
 Sat,  9 May 2020 17:11:05 +0800 (HKT)
Subject: Re: [PATCH v0 1/1] spi: spi-rockchip: add support for spi slave_mode
To: Emil Renner Berthing <emil.renner.berthing@gmail.com>
References: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
 <20200508083729.5560-2-chris.ruehl@gtsys.com.hk>
 <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <fdd18c31-f97c-e31f-8056-f4affbdb519b@gtsys.com.hk>
Date: Sat, 9 May 2020 17:11:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_021113_956341_1B97300C 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jack Lo <jack.lo@gtsys.com.hk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW1pbCwKCgo+PiArICAgICAgIGlmIChycy0+c2xhdmVtb2RlKQoKaGVyZSBpcyBhIG1pc3Rha2XC
oCBpdCBpcyA6wqAgcnMtPnNsYXZlX21vZGUKYW5kIHRoZSB1c2Ugb2YgcnMtPnNsYXZlX21vZGUg
aW4gdGhlIHJvY2tjaGlwX3NwaV9jb25maWcoKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
