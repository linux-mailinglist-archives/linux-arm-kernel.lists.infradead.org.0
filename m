Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D597712A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5UgHtim/XR8AztLZKJjgv96DFkvUrTs/+KXv1+zJZsA=; b=Y8S
	n5IXjNos/mN2SxOwJWyat8s59ewEkQOXSEp//eJLEJMbQLum3vnfAHwhDTP8wH5C3sPzJQtVEF5TK
	cFSway+KjROapNjHeDEVM5V01LYC3eW7hZvDG8LYFdN59ttNz1gPGyjUByskkusOjvAaAbU12wb5Z
	7/pdd6mSl2k/q4r28zLcEj+6tkHVAkTiyxwQwCtzI64hJhZx3uz0KrU5AkEn9iUIB0bfDI2OFTGRV
	/P0NgL2bs98BlIQmNkU5jsCNE38xfFhWlCn5Z3ELavD+Ina4Va/1Twf5pe6TlSidzHC/PKDC66ck0
	rHa8QBlBoFgkAgwC+RFjm7Fc/yG+kIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr4sj-0005lh-DZ; Fri, 26 Jul 2019 18:23:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr4sa-0005kY-4P
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:23:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so38545014wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 11:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GQuDpBmkjnxayekWigvyZunlIAi2qc1Enc5yFxgmoPc=;
 b=a7C28+Ok3bPbCfOEHMWu+fKm50hAEQWFJvMcAgw1VCIsELdLfkhJdWTy+BfrjNW+Bk
 Z5tHHSXGSEBK9W3yqNey6p2etKvSEXz42hGivuSle5nbGQedFbTh32kwdwfzom45Pbcv
 4e5qvFljA4iqqbhdxZgNPzu9wMTpxwRwSrT6TuUYu4UmQ8T/3clQJDFZt8jTcO5CSQvq
 6rsHcmKBjutX0XX9LQecAWZwczjASOhHNX/hq67eYtSFlqD0QIRkdgg4fh0JmIPAfYrQ
 f5qEr10VUcKTUgJGBCJk5ntNBkxTeYywS4Jw0B9Pg73d5HNApl2uBeotyV2DTSdYgbL6
 JrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GQuDpBmkjnxayekWigvyZunlIAi2qc1Enc5yFxgmoPc=;
 b=haRcKcJMI5mU3ykTgpo+OQsDiOL27oTBTRgzksAckBfUQCdjZjKYJC4fNkvnxOpkFW
 3cgLLuVpnFzFbhQ0f1XKVHaouEBVedgU67U0gO85cD22ypBQKnr6LDMAHdZ5hB8PvLjY
 E1DTTTKVUyF7vRqrH7BRbTGqnFTkbU11ZS87NwBqxbogBFfEK8dMBaEBx6mPoAwolkcR
 MeLSwa35xWlEV+pdqVJ4Pm0diRJjxBb7zcs3VH9orth60JN9UF0hrveXwaeeUU8DhFfz
 Ioi/nsz0MUvtINcqaRs/TKPItd0PTtvVAmR0X9L2Ox5HbvV1rVKqFOeDbrsb/vmyXnh6
 b0NA==
X-Gm-Message-State: APjAAAUxwRi8aDDaHH1bMXKlGNNV03g6r9BDh2ZUp/+55VhiEB3r98+S
 a8uavxjDLO6FHAGMIY9p+ofH3M6MgfzfbW0Pix4=
X-Google-Smtp-Source: APXvYqwgWTa964KKQ02ChzqJH0P+jGNgtjGggAAURVzwwIYPja904COgVB/hjKv4r8wLYOe34bEgKPOeXREfoewGd40=
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr81914381wmk.99.1564165420572; 
 Fri, 26 Jul 2019 11:23:40 -0700 (PDT)
MIME-Version: 1.0
From: Paul Thomas <pthomas8589@gmail.com>
Date: Fri, 26 Jul 2019 14:23:28 -0400
Message-ID: <CAD56B7cF3QXQbMmZVehtBEm2Bhfda4GpsHFZyDJE8D82xkgyEA@mail.gmail.com>
Subject: mmc: sdhci-of-arasan small issue with clock with 5.2 kernel
To: Michal Simek <michal.simek@xilinx.com>,
 Adrian Hunter <adrian.hunter@intel.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_112344_205811_7A45D3FF 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (pthomas8589[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pthomas8589[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I'm using the arm64 Zynq Ultrascale+ parts, and I'm running into what
I think is a small issue in sdhci-of-arasan with the handling of the
'clk_xin' which becomes pltfm_host->clk.

If I just use the mainline zynqmp-clk.dtsi file then 'clk_xin' get's
blindly defined as a "fixed-clock" at 200 Mhz and everything seems to
work fine.

However, in this design the clock is actually 50 Mhz [1]. For other
reasons [2] I switched the device-tree clock definitions to actually
use the zynqmp firmware interface for getting the clocks [3] when I do
this the clock is then correctly detected as 50 MHz:
# cat /sys/kernel/debug/clk/clk_summary
...
sdio0_ref       1        1        1    50000000          0     0  50000
...

And this is the frequency that is given to the controller (I put
printk's in to verify that 200 and 50 were the respective values for
mhz):
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/mmc/host/sdhci-of-arasan.c?h=v5.2.3#n594

At this point the functionality becomes partially broken. Detecting
the chip and some reads seem to work, but then when I go to fdisk
write there are errors such as:
[   56.481985] 002: print_req_error: I/O error, dev mmcblk0, sector 0 flags 1
[   56.481999] 002: Buffer I/O error on dev mmcblk0, logical block 0,
lost async page write

It seems to me that giving the real 'clk_xin' frequency to the
controller should not break anything? For now I'm fine with just using
the incorrect 200 MHz fixed-clock, but I thought someone might be
interested in this.

This controller is connected to an eMMC part.

I did try reducing spi-max-frequency from 10M down to 1M, but that
does not seem to make a difference.

thanks,
Paul

[1] As defined in Vivado in the MPSoC block in Output Clocks -> Low
Power Domain Clocks -> Peripherals/IO Clocks -> SDIO0
[2] To enable the macb driver to properly set the frequency of the GEM
clock so that 100 Mb/s works
[3] The device-tree like this:
https://github.com/Xilinx/linux-xlnx/blob/master/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
and adding "xlnx,zynqmp-clk" clock-controller

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
