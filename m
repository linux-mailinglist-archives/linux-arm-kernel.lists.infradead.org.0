Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C5871B9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4zhSQqb7G1+U49cYe1ZW++P7MNYuCbwL1BHV1Nz9RgE=; b=gIymwbh0F7/h9zVYfuqlGxW3Pe
	9givk/jLJZWfpaFyEy0AzC8U+jV84VGvDuQLi6XFsTyiFbLIbMV2dLE/IkRfdNJvD90Gefeab6KvP
	pnUEY2mAVwYCYMywSm8IuJ7FSQMlv+uVxJnSu0JqaRCtNlTqNr682pYU4j+aapstPuapmR2LmEzeL
	fLrw56eextulynAVzgixUAPdtars++uLdfDOxrCmgwZQGJY0LXf/YJ/ipRzYu4RJL5tqjgwIzt/Nw
	BNq82ZECehti8AX8XXMqvYa61c6RMhICtJPZdu58DlBi/Rw9099LCFFuJZTC89wO4yYiGt9vPMMil
	TfezVgPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwkz-0003X2-1X; Tue, 23 Jul 2019 15:31:13 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwkm-0003Vb-2Z
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1563895854;
 s=strato-dkim-0002; d=hartkopp.net;
 h=Date:Message-ID:Cc:To:Subject:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=qQNr0oFlACEsV4zsbYv/dWXHzKziEa3txE79NQ1nr3k=;
 b=o6LP96zR4tjGoEryGg3DtTb7wTlJEdtO/Mv725ZjD9DgOkZOJsR1W7eE47U0KvuZSk
 jcarBMa2GkezJN6wY6+jTTzpG/ohdgEcqSjfQWUSLeGJd2dBVrzy4sCmNXMsN4cRAWuN
 Xi/QtBn3lNj3s78Iu2LSMHmP7d/V8u5VNFPBuTt2u94ExvrZIRm4E+WBTfH8wleNDRlN
 rbdEytvXY4eMbcrndu5knrWuRY7L7d0e94blNgM/BqmqjHUWVmfasKBCg0PTFA9hjt7t
 8BSqH8erfJxqvj90d3AqWfP6cDpEdXiD7X4qQgd4uyXpvNWhcyyTSEI0pTYTjMCWFVxL
 1VWA==
X-RZG-AUTH: ":P2MHfkW8eP4Mre39l357AZT/I7AY/7nT2yrDxb8mjG14FZxedJy6qgO1o3PMaViOoLMJV8h6liA="
X-RZG-CLASS-ID: mo00
Received: from [192.168.1.200] by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id k05d3bv6NFUrekR
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 23 Jul 2019 17:30:53 +0200 (CEST)
From: Oliver Hartkopp <socketcan@hartkopp.net>
Subject: TS-219 RTC issue with Debian Buster
To: linux-arm-kernel@lists.infradead.org
Message-ID: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
Date: Tue, 23 Jul 2019 17:30:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_083100_713968_C759204C 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, tbm@cyrius.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

I upgraded my TS-219 to Debian Buster with Kernel 4.19.0-5-marvell.

They use dtbs/4.19.0-5-marvell/./kirkwood-ts219-6282.dtb

Unfortunately the RTC doesn't seem to work.

root@xxxxx:~# hwclock -v --test
hwclock from util-linux 2.33.1
System Time: 1563296223.425648
Trying to open: /dev/rtc0
Using the rtc interface to the clock.
Last drift adjustment done at 1563291472 seconds after 1969
Last calibration done at 1563291472 seconds after 1969
Hardware clock is on UTC time
Assuming hardware clock is kept in UTC time.
Waiting for clock tick...
hwclock: select() to /dev/rtc0 to wait for clock tick timed out
...synchronization failed
Test mode: nothing was changed.

With strace the clock tick problem looks like this:

write(1, "Waiting for clock tick...\n", 26Waiting for clock tick...
) = 26
ioctl(4, RTC_UIE_ON)                    = 0
_newselect(5, [4], NULL, NULL, {tv_sec=10, tv_usec=0}) = 0 (Timeout)
write(2, "hwclock: ", 9hwclock: )                = 9
write(2, "select() to /dev/rtc0 to wait fo"..., 54select() to /dev/rtc0 
to wait for clock tick timed out) = 54
write(2, "\n", 1)                       = 1
ioctl(4, PHN_NOT_OH or RTC_UIE_OFF)     = 0


It looks the same with

# hwclock --hctosys
hwclock: select() to /dev/rtc0 to wait for clock tick timed out

I wonder whether the problem comes from a missing interrupt assignment

rtc: rtc@10300 {
              compatible = "marvell,kirkwood-rtc", "marvell,orion-rtc";
              reg = <0x10300 0x20>;
              interrupts = <53>;            <- HERE!?!
              clocks = <&gate_clk 7>;
                };

... I found in linux/arch/arm/boot/dts/kirkwood-6282.dtsi ?!?

In /proc/interrupts there's no rtc assigned to an interrupt 53.

Accessing the rtc values (time/date) via /sys/class/rtc/rtc0 entries 
works well and setting the date/time via "hwclock --systohc" does its 
job too. So I2C and the rtc_s35390a driver seem to work so far.

Any ideas why hwclock fails to work properly?

Best regards,
Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
