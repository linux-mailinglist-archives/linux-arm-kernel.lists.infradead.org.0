Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7E92A93C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 12:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pGtI+S/OZDlTsJqf09mH1Z6fr1LshPcpdRGUUl7DbPY=; b=GSihn1ebNKkMtt
	r7P5mkz8su9UpQwYw2kGPXOJCZiRqVgZmHQTClU6eZjXx7af3eXr8T8qwJBS2l7ojTLHj6ttk2Dxx
	neq2YgROzj+Z4NiTI6VXjjmf32uf9347j0Z0SdguFyQFgp9nFPV1596JV4t0OWCIdF5HruS5fsaAF
	cvfChEOnq37mMVXLSFNoMHM+ckPQyJCK/+uIm6u/RslPmOCAkgG8nllFtqKljG7gIBcpJMlhrDeHe
	M30RFBMdD5gfW4V7MlI1Ld6ABrN8278m0JpCrubEuiwAXDrxopcw0v54gzJg75xCxtRvDopNh414L
	yBAAcZg66cR8u21+lDcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUq87-0000bc-Rk; Sun, 26 May 2019 10:11:51 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUq80-0000bJ-L0
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 10:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1558865489;
 bh=RsZzmmSplgdO28RoGwyrViaNFl/kTmVpO3gWicYofcQ=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=eZteg3NakwWwjquYjLdxx92cKYsyjV7TRjaZsZFAs/4aRWwxILuiunOaQaHL4DXs2
 AtpQ9LO+4Z83T1ePgQmNvpS2LTIgwhFYbKhD6QXXmxr1fsbWsRRUXk9nbVREcIVlMF
 JDHUTQv60oCznt6GfmBoWidcNSIZQzUZ3jFZWk7g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.160]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MIMUZ-1hTT5C20TP-0047nm; Sun, 26
 May 2019 12:11:29 +0200
To: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
From: Stefan Wahren <wahrenst@gmx.net>
Subject: usb: dwc2: RODATA_FULL_DEFAULT_ENABLED causes kernel oops
Message-ID: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
Date: Sun, 26 May 2019 12:11:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:1dhw3hl/QquHu4b0qlpUUv5UepZ1XfJqfyDw1LRXaSoxGWxpLFt
 c6IzWcCrmkQNkaOsBZaov9zx2QvyKyO9jpCnfUPabUJZWNC4ZhmAoLyZhZkD327VwXvGZA3
 YfLDzg1Rxv+2VqoGkNhMXEItWkTjHb+rQWly0+hZegqZO7PYyhOWRmzR0y0QybQEQq56E7X
 qvfs9yYSC65sCOtu92x3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yTAV9FBPStY=:+GhH0LwmaG47T8JvhAc0Y3
 azIx7ioiRhcYzrkSP9I/wY1l/qQ1Nu4BBav857JgQUaWe36fksVAcgBHjqHOWr6sAGr99B+hL
 rAK3K7XuxHBeVmps9C5aK6d6OX8/RQAAoj3iijdgHL3Jsn+YbR1EKQ/0OPihBAIvgTm+1gBTm
 Xclj8gUAjqfxnqG0pQqeWKyhOzWwm41EmGubDcg3CJcAKuRdTwkAr4N/ySSiw8rxqmBzPpwMr
 A79m5x4t6pc0uFbYtvaq3Ocq/AhqqwKgLZWPLW5BUPK4Wox7LDGJJJZuNlQQ7mZiHEVsZDawF
 tnpnxSFOQPw5OEDYoQfEg1gTlvPtZ5wZdRbAvHRdeFwSFJhgSVxEOep19h7D/4sxfaQ6lJWrU
 k6XI9HbB6TSXJBKCKsJD4LlS4YxiX0j6BKE4I9dVQNOXXwHZTWN3+/OvLoAnUubRL1ruR1eqA
 atufEAjsZBrm+PwcwHLEF+GtbJvfp3NWifzuCKop7/Sly3XbvOC1qeWgAZ9Z5fbLnb4vpqHF8
 5cVe6sFLt9m8Uecajip33TE4dLBehZLSd1F1OJsS4NXJMWQm7ntZrf17p49hhqliQf8ZAcopC
 BJn2jnBBYLQ5k43qJqR9rNW3TFV6guU8LU5l1kpTkOL0S9PcgZgywTNsf7OK4JMygCL16jwrP
 TaJbys5B6XdegzcN/9LeZLI7Gwjl2z5M8j5NF2LESCBxkWvPZv+M2qmCCQZQJojZ5SIn22D1M
 ozRFhreTthkC7BeEcRcbqQAiwPsNmZb4V/WGOiTOYn6pSK1eY+yv+IOJ7tqNZYhu7zKKxDKWT
 o7bR6ZElY3QAW4vmjZci13gytUpKfy03+H5SliTN8LVt2TFPwlqShLEQDRWEHOnTLE/SSIzE7
 vwSc1Hjk2aXBAUL6G8+Q13FrapMMj+KaLy+iZLgdgt0Zywgp/WMXinlEeQf5Cuss3p6OdofPZ
 z1qdC5tbqww2jvvQGaduOb0n7fV9nVUfhF8fcINkd0gyQob9SN56R
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_031145_029040_753C11C0 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

i want to remind about an issue which was originally reported by Wayne
Piekarski [1]. I'm able to reproduce this oops with Mainline Linux 5.0.2
on a Raspberry Pi 3B+ (arm64/defconfig) and according to Jan Kratochvil
[2] this applies to 5.1.0 and 5.2.0.

The crash is reproducible since commit c55191e96ca ("arm64: mm: apply
r/o permissions of VM areas to its linear alias as well"), but the root
cause of the crash was introduced much earlier with commit 56406e017a88
("usb: dwc2: Fix DMA alignment to start at allocated boundary").

I tested successfully the following workarounds with the RPi 3B+:

1) Disable RODATA_FULL_DEFAULT_ENABLED

2) revert commit 56406e017a88 ("usb: dwc2: Fix DMA alignment to start at
allocated boundary")

It would be nice if someone can come up with a proper solution.

Regards
Stefan

[1] - https://marc.info/?l=linux-usb&m=155440243702650&w=2
[2] - https://bugzilla.kernel.org/show_bug.cgi?id=203149


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
