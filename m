Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B504E7BA76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kML2nT35daIDnaDtgn2+A6+iFmrCXT47n1VqOTmD4yU=; b=nfn
	9L1rUwnLt4MynbQ/SQ05GaRy7Z4+0d8vr2BfTurJj+jlJtgghmEuCgbUrslizmuxmg2vWmh9QneUw
	0/MJ4ny67QpF1ohV54x3P8yo+g5ZzJiThTQZX30uvlQqKR/eYldeB1ercPx2o7juG5V3+GiYUHopr
	P5ELsAutVp4/cm5fOUcYTYlwwEhVMY1GiAH7IF7sps7WWet0Aqqf9NDD/xD+G/RjYe6OKOWGWDTtI
	JHoWw+GYcrn3UPOSG7AwCC9zzOhaptPzezFar1stLx276blVOb0ch4SeubeYIh/h2aYJMyIdFCpaw
	DxJaqxnTXjJDCSB9UUuL6jvGoadqa7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsipf-0004v0-4u; Wed, 31 Jul 2019 07:15:31 +0000
Received: from [2001:470:0:1f2::b869:4820] (helo=olimex.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsipO-0004tx-9K
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:15:15 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 31 Jul 2019 00:15:08 -0700
From: Stefan Mavrodiev <stefan@olimex.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 0/1] nvmem: sunxi_sid: fix A64 SID controller support
Date: Wed, 31 Jul 2019 10:14:46 +0300
Message-Id: <20190731071447.9019-1-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001514_326705_762FA969 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo; id=olimex.com;
 ip=2001%3A470%3A0%3A1f2%3A%3Ab869%3A4820; r=bombadil.infradead.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=stefan%40olimex.com; ip=2001%3A470%3A0%3A1f2%3A%3Ab869%3A4820;
 r=bombadil.infradead.org]
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
Cc: linux-sunxi@googlegroups.com, Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64 SID controller has some issues when readind data, To exampine the
problem I've done the following steps.


When reading the whole nvmem memory in one chunk the returned bytes
are valid:

dd if=/sys/bus/nvmem/devices/sunxi-sid0/nvmem 2>/dev/null | hexdump -C
00000000  ba 00 c0 92 20 46 10 84  00 45 34 50 0e 04 26 48  |.... F...E4P..&H|
00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000030  00 00 00 00 87 07 8d 07  8e 07 00 00 00 00 00 00  |................|
00000040  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000100


When bs is set to 4 bytes the data is no longer valid:

dd if=/sys/bus/nvmem/devices/sunxi-sid0/nvmem bs=4 2>/dev/null | hexdump -C
00000000  ba 00 c0 92 20 46 10 84  00 45 34 50 0e 04 26 48  |.... F...E4P..&H|
00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000030  00 00 00 00 87 00 00 00  8e 00 00 00 00 00 00 00  |................|
00000040  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000100


You can see that only the data at 0x34 and 0x38 is corrupted. It appears
that A64 needs minimun 8 bytes block size;

dd if=/sys/bus/nvmem/devices/sunxi-sid0/nvmem bs=8 2>/dev/null | hexdump -C
00000000  ba 00 c0 92 20 46 10 84  00 45 34 50 0e 04 26 48  |.... F...E4P..&H|
00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000030  00 00 00 00 87 07 8d 07  8e 07 00 00 00 00 00 00  |................|
00000040  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000100


In the driver stride is set to 4 and word_size to 1. When you're using
nvmem as thermal calibration data in the dts you write something like this:

sid: eeprom@1c14000 {
	compatible = "allwinner,sun50i-a64-sid";
	.....

	thermal_calibration: calib@34 {
		reg = <0x34 0x08>;
	};
};

This will return incorrect data.
One way to fix this is to set stride/word_size to 8, but this will be
inconvenient for the dts.
Other is to enable reading data via register access. After the fix:

dd if=/sys/bus/nvmem/devices/sunxi-sid0/nvmem bs=4 2>/dev/null | hexdump -C
00000000  ba 00 c0 92 20 46 10 84  00 45 34 50 0e 04 26 48  |.... F...E4P..&H|
00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000030  00 00 00 00 87 07 8d 07  8e 07 00 00 00 00 00 00  |................|
00000040  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000100


Stefan Mavrodiev (1):
  nvmem: sunxi_sid: fix A64 SID controller support

 drivers/nvmem/sunxi_sid.c | 1 +
 1 file changed, 1 insertion(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
