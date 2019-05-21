Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2861C24CB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Date:Message-ID:To:Subject:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/lYQ9rbLAw3+SQ19asBPvnm5sLwKbvlsKDNpR3cg0Dg=; b=kbd
	ckLAfaDFNGl0qqVQHBVO9OFVULWj8ZEHsUABhM0aRnfrsKbqj87yqcBa0t+kq17YdwgrIIzQd8fRa
	WdzhkAUNw6EXzCWVOrctrKRV+eSH3qVjH6Ni5+dbmQxJffJMy8VdXTLa4nQJtY2uKRUkGRZotHUNZ
	k1TGlSGhTPWIeS1CH/cbjO5Vm3r3tG0D4K4pxW4/nSv+dZU2bXYUPZ7JMxQ7+XnjRzaJVexOnmKQb
	+rCT7UKXcWinE/yTJXPV2ppMP6AJKbOQyVDAqinc27wG6Re2JkBQ2OApVwNU2Gnc44hJF8S8r9/mz
	xDxktO4hAWLOEVprgolQcBNze3qX7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT211-0006Dv-Fy; Tue, 21 May 2019 10:29:03 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT20r-0006CW-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:28:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id l26so12612790lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language;
 bh=mpYXtdsUWNbeccAIywEl4UaSAhjl4gBKJ90NkZlAKFw=;
 b=mxi3uyzHog1AqUJCb2xTatuk6bjh6QFENd50GvwbRhU+suirammKro2Gxn8c19UWJm
 3X4fnIOEcU5WMYJiFomcyn2UkT0zLVtppjypSesmUpidS2gl5uJZ2laclG10u/kv8nES
 7kjBa3bhP3lp4wpnbbXNHA1fWJIB4oxaQlToNKr4YinlXOTB3Hz3uGOyZtGZAOx6NCsC
 NXVTq+YGh3c3Gxq7jmBdIpfxHcRiS3rp5zIjktB49DiEdR78N3KO/tE/f7UQhyNLiX6K
 TDeqdc8W0BoLAHoVXJK7j8UX9EfssqgO3et7BQA1JibXQTziBgJHcDEr87ikJMdP0oUI
 w1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language;
 bh=mpYXtdsUWNbeccAIywEl4UaSAhjl4gBKJ90NkZlAKFw=;
 b=D1fWf1+YjjgKYc+Y0D8vCZiLLSBfNH7AVfXbCPRoSJnqtFGuBIthldCGEHFHXi8/bw
 T1q3oGgdSgRfP0FX1QjvGkqMQm2LM1HGZR7rtiXO7J3/+7VDZonS5ECkqzfQt1KhMhHL
 2H74qQ5qZ65PpA74PpoJ3UiQPR4/177pE2dcavMlETRoqGscNI1Yy0hTHHYRHv0J/TAu
 NQ1rKdQLQFIDSBNsSfgjgNv3qVHxxLDmZxhF1aARD6J0wz4N1kYPmaBCXwa+4ATX3GQ0
 D2zo++vu5tfuA+FELEdLYmZTv4X+8MA6dKolB1nf7jyJEIkZeYVAVKSEbVom0NVDniGw
 o54A==
X-Gm-Message-State: APjAAAU4WIcik3zf6oTFoMae/XRRw+svEjinxSn0M6c9RrEpLoDJAY0U
 wq3NaqHTIU7VPx4WHgHeHJI=
X-Google-Smtp-Source: APXvYqyxPJbnSyCXfS1uLADdjWVLErha9YuAb8d/3tZPiV9maoDIZv0yZlIGHwPo4n2XSTm3jg51aw==
X-Received: by 2002:ac2:51de:: with SMTP id u30mr32843332lfm.42.1558434531477; 
 Tue, 21 May 2019 03:28:51 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id v2sm4283760ljg.6.2019.05.21.03.28.49
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 03:28:50 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: ARM router NAT performance affected by random/unrelated commits
To: Network Development <netdev@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Message-ID: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
Date: Tue, 21 May 2019 12:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------1044F4275EEC14C287F51DC5"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032853_862563_9C127308 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-block@vger.kernel.org, John Crispin <john@phrozen.org>,
 Jonas Gorski <jonas.gorski@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 Felix Fietkau <nbd@nbd.name>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------1044F4275EEC14C287F51DC5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I work on home routers based on Broadcom's Northstar SoCs. Those devices
have ARM Cortex-A9 and most of them are dual-core.

As for home routers, my main concern is network performance. That CPU
isn't powerful enough to handle gigabit traffic so all kind of
optimizations do matter. I noticed some unexpected changes in NAT
performance when switching between kernels.

My hardware is BCM47094 SoC (dual core ARM) with integrated network
controller and external BCM53012 switch.

Relevant setup:
* SoC network controller is wired to the hardware switch
* Switch passes 802.1q frames with VID 1 to four LAN ports
* Switch passes 802.1q frames with VID 2 to WAN port
* Linux does NAT for LAN (eth0.1) to WAN (eth0.2)
* Linux uses pfifo and "echo 2 > rps_cpus"
* Ryzen 5 PRO 2500U (x86_64) laptop connected to a LAN port
* Intel i7-2670QM laptop connected to a WAN port

*****

I found a very nice example of commit that does /nothing/ yet it affects
NAT performance: 9316a9ed6895 ("blk-mq: provide helper for setting up an
SQ queue and tag set")
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9316a9ed6895c4ad2f0cde171d486f80c55d8283
All it does is exporting an unused symbol (function).

Let me share some numbers (I use iperf for testing):

git reset --hard v4.19
git am OpenWrt-mtd-chages.patch
[  3]  0.0-30.0 sec  2.60 GBytes   745 Mbits/sec
[  3]  0.0-30.0 sec  2.60 GBytes   745 Mbits/sec
[  3]  0.0-30.0 sec  2.60 GBytes   744 Mbits/sec
[  3]  0.0-30.0 sec  2.59 GBytes   742 Mbits/sec
[  3]  0.0-30.0 sec  2.59 GBytes   740 Mbits/sec
[  3]  0.0-30.0 sec  2.59 GBytes   740 Mbits/sec
[  3]  0.0-30.0 sec  2.58 GBytes   738 Mbits/sec
[  3]  0.0-30.0 sec  2.58 GBytes   738 Mbits/sec
[  3]  0.0-30.0 sec  2.58 GBytes   738 Mbits/sec
[  3]  0.0-30.0 sec  2.57 GBytes   735 Mbits/sec
Average: 741 Mb/s

git reset --hard v4.19
git am OpenWrt-mtd-chages.patch
git cherry-pick -x 9316a9ed6895
[  3]  0.0-30.0 sec  2.73 GBytes   780 Mbits/sec
[  3]  0.0-30.0 sec  2.72 GBytes   777 Mbits/sec
[  3]  0.0-30.0 sec  2.71 GBytes   775 Mbits/sec
[  3]  0.0-30.0 sec  2.70 GBytes   773 Mbits/sec
[  3]  0.0-30.0 sec  2.70 GBytes   771 Mbits/sec
[  3]  0.0-30.0 sec  2.69 GBytes   771 Mbits/sec
[  3]  0.0-30.0 sec  2.69 GBytes   771 Mbits/sec
[  3]  0.0-30.0 sec  2.69 GBytes   770 Mbits/sec
[  3]  0.0-30.0 sec  2.69 GBytes   769 Mbits/sec
[  3]  0.0-30.0 sec  2.68 GBytes   768 Mbits/sec
Average: 773 Mb/s

As you can see cherry-picking (on top of Linux 4.19) a single commit
that does /nothing/ can improve NAT performance by 4,5%.

*****

I was hoping to learn something from profiling kernel with the "perf"
tool. Eanbling CONFIG_PERF_EVENTS resulted in smaller NAT performance
gain: 741 Mb/s → 750 Mb/s. I tried it anyway.

Without cherry-picking I got:
+    9,04%  swapper          [kernel.kallsyms]  [k] v7_dma_inv_range
+    5,54%  swapper          [kernel.kallsyms]  [k] __irqentry_text_end
+    5,12%  swapper          [kernel.kallsyms]  [k] l2c210_inv_range
+    4,30%  ksoftirqd/1      [kernel.kallsyms]  [k] v7_dma_clean_range
+    4,02%  swapper          [kernel.kallsyms]  [k] bcma_host_soc_read32
+    3,13%  swapper          [kernel.kallsyms]  [k] arch_cpu_idle
+    2,88%  ksoftirqd/1      [kernel.kallsyms]  [k] __netif_receive_skb_core
+    2,51%  ksoftirqd/1      [kernel.kallsyms]  [k] l2c210_clean_range
+    1,88%  ksoftirqd/1      [kernel.kallsyms]  [k] fib_table_lookup
(741 Mb/s while *not* running perf)

With cherry-picked 9316a9ed6895 I got:
+    9,16%  swapper          [kernel.kallsyms]  [k] v7_dma_inv_range
+    5,64%  swapper          [kernel.kallsyms]  [k] __irqentry_text_end
+    5,05%  swapper          [kernel.kallsyms]  [k] l2c210_inv_range
+    4,25%  ksoftirqd/1      [kernel.kallsyms]  [k] v7_dma_clean_range
+    4,10%  swapper          [kernel.kallsyms]  [k] bcma_host_soc_read32
+    3,35%  ksoftirqd/1      [kernel.kallsyms]  [k] __netif_receive_skb_core
+    3,17%  swapper          [kernel.kallsyms]  [k] arch_cpu_idle
+    2,49%  ksoftirqd/1      [kernel.kallsyms]  [k] l2c210_clean_range
+    2,03%  ksoftirqd/1      [kernel.kallsyms]  [k] fib_table_lookup
(750 Mb/s while *not* running perf)

Changes seem quite minimal and I'm not sure if they tell what is causing
that NAT performance change at all.

*****

I also tried running cachestat but didn't get anything interesting:
Counting cache functions... Output every 1 seconds.
TIME         HITS   MISSES  DIRTIES    RATIO   BUFFERS_MB   CACHE_MB
10:06:59     1020        5        0    99.5%            0          2
10:07:00     1029        0        0   100.0%            0          2
10:07:01     1013        0        0   100.0%            0          2
10:07:02     1029        0        0   100.0%            0          2
10:07:03     1029        0        0   100.0%            0          2
10:07:04      997        0        0   100.0%            0          2
10:07:05     1013        0        0   100.0%            0          2
(I started iperf at 10:07:00).

*****

There were more situations with such unexpected performance changes.
Another example: cherry-picking 5b0890a97204 ("flow_dissector: Parse
batman-adv unicast headers")
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5b0890a97204627d75a333fc30f29f737e2bfad6
to some Linux 4.14.x release was lowering NAT performance by 55 Mb/s.

The tricky part is there aren't any ETH_P_BATMAN packets in my traffic.
Extra tests revealed that any __skb_flow_dissect() modification was
lowering my NAT performance (e.g. commenting out ETH_P_TIPC or
ETH_P_FCOE switch cases).

*****

I would like every kernel to provide a maximum NAT performance, no
matter what random commits it contains.

Suffering from such a random changes makes it also really hard to notice
a real performance regression.

Do you have any idea what is causing those performance changes? Can I
provide any extra info to help debugging this?

--------------1044F4275EEC14C287F51DC5
Content-Type: text/plain; charset=UTF-8;
 name="openwrt-mtd-patches.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="openwrt-mtd-patches.txt"

MDQ3LXY0LjIxLW10ZC1rZWVwLW9yaWdpbmFsLWZsYWdzLWZvci1ldmVyeS1zdHJ1Y3QtbXRk
X2luZm8ucGF0Y2gKMDQ4LXY0LjIxLW10ZC1pbXByb3ZlLWNhbGN1bGF0aW5nLXBhcnRpdGlv
bi1ib3VuZGFyaWVzLXdoZW4tY2gucGF0Y2gKMDgwLXY1LjEtMDAwMS1iY21hLWtlZXAtYS1k
aXJlY3QtcG9pbnRlci10by10aGUtc3RydWN0LWRldmljZS5wYXRjaAowODAtdjUuMS0wMDAy
LWJjbWEtdXNlLWRldl8tcHJpbnRpbmctZnVuY3Rpb25zLnBhdGNoCjA5NS1BbGxvdy1jbGFz
cy1lLWFkZHJlc3MtYXNzaWdubWVudC12aWEtaWZjb25maWctaW9jdGwucGF0Y2gKCjE0MC1q
ZmZzMi11c2UtLnJlbmFtZTItYW5kLWFkZC1SRU5BTUVfV0hJVEVPVVQtc3VwcG9ydC5wYXRj
aAoxNDEtamZmczItYWRkLVJFTkFNRV9FWENIQU5HRS1zdXBwb3J0LnBhdGNoCjQwMC1tdGQt
YWRkLXJvb3Rmcy1zcGxpdC1zdXBwb3J0LnBhdGNoCjQwMS1tdGQtYWRkLXN1cHBvcnQtZm9y
LWRpZmZlcmVudC1wYXJ0aXRpb24tcGFyc2VyLXR5cGVzLnBhdGNoCjQwMi1tdGQtdXNlLXR5
cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoCjQw
My1tdGQtaG9vay1tdGRzcGxpdC10by1LYnVpbGQucGF0Y2gKNDA0LW10ZC1hZGQtbW9yZS1o
ZWxwZXItZnVuY3Rpb25zLnBhdGNoCjQzMS1tdGQtYmNtNDd4eHBhcnQtY2hlY2stZm9yLWJh
ZC1ibG9ja3Mtd2hlbi1jYWxjdWxhdGluLnBhdGNoCjQzMi1tdGQtYmNtNDd4eHBhcnQtZGV0
ZWN0LVRfTWV0ZXItcGFydGl0aW9uLnBhdGNoCjQ4MC1tdGQtc2V0LXJvb3Rmcy10by1iZS1y
b290LWRldi5wYXRjaAo0OTAtdWJpLWF1dG8tYXR0YWNoLW10ZC1kZXZpY2UtbmFtZWQtdWJp
LW9yLWRhdGEtb24tYm9vdC5wYXRjaAo0OTEtdWJpLWF1dG8tY3JlYXRlLXViaWJsb2NrLWRl
dmljZS1mb3Itcm9vdGZzLnBhdGNoCjQ5Mi10cnktYXV0by1tb3VudGluZy11YmkwLXJvb3Rm
cy1pbi1pbml0LWRvX21vdW50cy5jLnBhdGNoCjQ5My11Ymktc2V0LVJPT1RfREVWLXRvLXVi
aWJsb2NrLXJvb3Rmcy1pZi11bnNldC5wYXRjaAo1MzAtamZmczJfbWFrZV9sem1hX2F2YWls
YWJsZS5wYXRjaAo1MzItamZmczJfZW9mZGV0ZWN0LnBhdGNoCjUwMC12NC4yMC11Ymlmcy1G
aXgtZGVmYXVsdC1jb21wcmVzc2lvbi1zZWxlY3Rpb24taW4tdWJpZnMucGF0Y2gKNTUzLXVi
aWZzLUFkZC1vcHRpb24tdG8tY3JlYXRlLVVCSS1GUy12ZXJzaW9uLTQtb24tZW1wdHkucGF0
Y2gKCjcwMC1zd2NvbmZpZ19zd2l0Y2hfZHJpdmVycy5wYXRjaAo3MDItcGh5X2FkZF9hbmVn
X2RvbmVfZnVuY3Rpb24ucGF0Y2gKNzIxLXBoeV9wYWNrZXRzLnBhdGNoCjc3My1iZ21hYy1h
ZGQtc3JhYi1zd2l0Y2gucGF0Y2gKOTEwLWtvYmplY3RfdWV2ZW50LnBhdGNoCjkxMS1rb2Jq
ZWN0X2FkZF9icm9hZGNhc3RfdWV2ZW50LnBhdGNoCg==
--------------1044F4275EEC14C287F51DC5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------1044F4275EEC14C287F51DC5--

