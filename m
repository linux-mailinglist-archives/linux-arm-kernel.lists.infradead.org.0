Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441781040AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VUW83pnCSGzZA/Jgel/LejCrpjZGlzK/QdzHhBm1YE=; b=YhZtYcw7JB+fIN
	AUGpfB/9fNckAuBgxvt0EA0Yz5LQjvbYMH8BILKQWYLmuSj/edvfoCIsOT2jntubXOyLuWRngAPlj
	oFWet/J1wObCDz+YLbHMsFlbL6gsuqbq2VA7u1bphcW/WV8rry+Ffs81hDzTYjanP9wOnyBEGDPVk
	kx4fQ3UASPcjgDsiYiD2GWvh5tgCqywc2Wa2qyXcyiUwmam8xCjOOYoIbpYq3BOcUcEZUN8WGfUu/
	7veHcBzBbDWbkw4fY3lcLarO+32SAFcPhCx5WvuGrcWAERsi67iQpwLNgq/F2rhMyUBSoDEkS0Urr
	/eiPu6CmOYthxw5wxN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSjt-0002VY-Vz; Wed, 20 Nov 2019 16:21:58 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSjk-0002Us-MX; Wed, 20 Nov 2019 16:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574266897;
 bh=xu4ircm6Mkplv/efNNMwLAlVPDoRiD2XqhLUOoHy2/A=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MngS67pwPM63jyQtp4EXMbU12otqe7fvi924Kf0nZAoy+CvgGUNlS1Ggb82QN6PmD
 oKEoHJ2y9av+yPClYwKaF+tJTSUUPkzCj/xyzmUtn7sh0vfIfLBPxaABUzqtaH+LlU
 UfCnUTc9BbR4pjHGEzHEEpAElR7QjtDb6/9yUYso=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M8hZD-1iSo1w0NiD-004nuI; Wed, 20
 Nov 2019 17:21:37 +0100
Subject: Re: [PATCH v3 4/4] ARM: dts: bcm2711: Enable HWRNG support
To: Stephen Brennan <stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
 <20191120031622.88949-5-stephen@brennan.io>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <e4ad673b-873b-9bef-1f09-3bdeda892780@gmx.net>
Date: Wed, 20 Nov 2019 17:21:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120031622.88949-5-stephen@brennan.io>
Content-Language: en-US
X-Provags-ID: V03:K1:VzjpvITXKrHb4Xmn1iglZyLcPqx/MkTFcBBCSz7GFHyv2VbGGFg
 JO87hRDAEPzECYOWEtjxqyp0XX6hovTWp9pF6RODgKLjej6yQ3y2MrEqwTTxqLqFpi8L6Wa
 j9Rhd+IT2ZgfYYRGXr3eSUZ5Ovh6YTkI0Orh5hAE8ypHqDBuT8e6OJpNfMs1aI2OOA/nvTj
 7MeLzBQFAjSmYqgXaL2XA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hSVLPUrApkI=:cN5zB46U6clgcMSpU3dFrQ
 Xj/szHK7Kf6lkFgKxdlyXpMfbRogwFXsRwTyMhprZmF2XBvJ/PfTko6/wA1UZRPTN2KKvX4qJ
 rdlxP7WXHFgW0fHVLRYacQDFSFRse3P1wjPHmKseXzI0slW6F0b5/fMslyOzm6kE6Gvy+36F/
 2395wk3w/18ftw3/UVkXT1nOvYMtGjnLJUlx0+Go8HC+Vg13dqUkOFKNO9+zUPxXQOu2qYYTq
 enSENd/plVgrj/V6ZfI2ZUrI719zL2evSQ7FEOPDS2eHyEOGLgrZfWXpvnuQ5r9AAKntjhihK
 gq/Ht4KtClB8tGWHmTb8kRXzHUiQPZuwqVHKpb6qptAq9j7HYYgpvXyQoPvF2jRXPwNlEa5qk
 bEPPM6BlAqcRP5fBx9TJZz5TGgaygfgHdXgSWV5IKbR4+SkivVtdlhGS8TLgh7/Kyg0u/oZxw
 mQCdOCr0aZ0vUB2mJoacFJLJ2XjFNSBriuOqhi/UgxoCuYAiiP7I3Cklul5/wtqZQiwB2yBfs
 KdmHYYL++b55a6zU6oDeW7dN7V0ygckf78g5UfXu9F4OUbvMoYNr0C6BXHr4WTPYP0N1SQ4Aw
 RpF+WjM9d1LUfZRQ0OhDovrVYjqM7WBNk2gB1fCjMcLV+N3Kj4zI9VM+KcVteyUKJb6jNQY/E
 ozUb/nG17mFf97nxk42KZQfYYN7YmOepHB06RLGPkRVePXAARmwLqQ8rdKimAwj7GnzZtVGbn
 YWdpAQ7f5ks1C4dE2ftaV/tKkS0gUPO+xFWPomP6DzZ88mt68P4LCCAkIy++g7INx7kurefP9
 +gZ01g6QCGXgumbBJ2pyUBJieBNkqqJMuxniHcpn3Y5BGNMSyF04Y3GJNOlfBq3yHqsohMM4w
 KctOzMuOfSp5VPDdje1ayhIQIZhTcpJs/8z4G3WFe9pi3d0UORlJx+AYW5mKCkhqPo1V8u+5/
 n+xq3DkqSzC1iUDspJOEDyXczFyUCVHLzhAbLd+God/mIupt/oZax6Qeln1yTL/cNq1wq9q3u
 6LCznRCAygp6IhLLbAyXL7jimCRpbkk2Ay7DRD1UUKj/xa+FU+IN4KqEsPt0X9fYS64NvsPqB
 U0g4oxcaz8Fxqd1FPE5kvqnjxlSGVfcUoMzFijc1/oFuTje8FLXGC4Hmo48r8NIRwYdM1G7lR
 FA5sjsqhnwChE4DpzbBxGzo0lPagUMbdhCoPg+Zp7RTj7iKVMIBPg7CbQE470v3tsmo7yOlmF
 ox83VLw4DLZN4gwZp0lW6wyMtNq8DE/NmODRme0+rIso0iD305nS2aCn8vVc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_082149_035923_22DDD638 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 20.11.19 um 04:16 schrieb Stephen Brennan:
> This enables hardware random number generator support for the BCM2711
> on the Raspberry Pi 4 board.
>
> Signed-off-by: Stephen Brennan <stephen@brennan.io>

Acked-by: Stefan Wahren <wahrenst@gmx.net>

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
