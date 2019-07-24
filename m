Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2041973BAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCFrXrZ/ywlUw1Z7XL8JB1maUNA7g3qlrELdIZL7WXM=; b=iPE6+/S46L1U8Y
	BK0viCNduKaBxP2KiKhABJLljRAV43hzYPFSd0o3n21JaAnGmxARvlgb7kD6O3ytoav0RMITuwPm/
	hiF5jk4lsxry/dQ9162MOqh8xaPoCEZzXM5Qa1gVMmcgsPisxyO+osHYXanmUm3WITumbxVQXmzme
	3aGltStBr/Oo179c5IOp7OMtTSgXXZhHnv/eka1z2pCWCR35mQReHlMKAPHBEC7Fd5Re+Cb7aWHwG
	gE6w1Y9y9sGZ2Q5215LT+UY3LBXhTO9gpbs8UG/DxfwSQ3xOhhTMpp65yQwkyL25ad7S9dn/JvUj1
	/Tr+0CKMyAYsmTjWfK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNT0-0006Bp-FK; Wed, 24 Jul 2019 20:02:26 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNSl-0006An-Uc; Wed, 24 Jul 2019 20:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563998512;
 bh=T4e1UQqbbH+oLV6dGah83Ww22Wm0bVK786RxGVpsfXw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Dg1Hk0cm41ei3P6pSvfw3oxZDzRYlpXNWXaD5BBcvXAv4NSBR9N5axC6u14HzCZTi
 agfCrvDGvU4ykWndU/aBwXbobQJSkab+g/krIvbZjjOvYGbwmx1PCp0CpO9SdPmer3
 XlKIAAU9UdLaeiYbNtw3p63OWQlbD0eciHpHJix8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.139]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N9dsV-1iVEWb1kof-015biz; Wed, 24
 Jul 2019 22:01:52 +0200
Subject: Re: [PATCH 01/18] ARM: bcm283x: Reduce register ranges for UART, SPI
 and I2C
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-2-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <983aa783-03e0-e6a5-5771-810d4753036e@gmx.net>
Date: Wed, 24 Jul 2019 22:01:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563774880-8061-2-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:M55CLQbFJEJ0iH0ZaHgnggnyElHCISHtPbBQesSsTn+oCnunpQg
 ffT1724/dsdrFgXB3EHrpsCW5Ufqj25i+zgSoFhCfW7nJrihX4tvURjizcU4hZTqo6KsWWG
 M9NvWXlUgsgwBP66Y9bgde9aD+cxpR7LWPVvp81VSq4cnJ0H1blAYoZAnqHR1Jy1DgzVm0X
 z1qdAiWxxUC8WfJOtJH4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6eXC6oFQKRo=:bhwdn/zpwjzsfK5rQgPHfB
 u5rO3lBjRr4oLDU7FnPDFWz8SZM/l3BB7YeZAtR3dFfON52Rm087/Fbq2P7wEaLbzbpVAhzWj
 kuTwXRKhGCj9U0GJmKdsHAHkXkn1mkTkKEDGKF9UMlaQNxkMNJrM0UOTRyZ3qShliM35Zn9k3
 /gLUV+L9DM7d/ZO6l4JaCKT0q5toDef43CDeDZZlalC9YYmiOcqYnyq5dsToBiC+pgr/vwhkD
 3+RaydJV9WYmUXsmJi8Ag7iu1QjWk+MK/YuAJOSRvWQ0mezqBfZoMpqmOVUmcatrDU074LPQ5
 Ja/TFITpwtByIlmQWWlx/p2KeeruZknMBFlw5k2QhkL5NlMuBRD9BLCbM4isJ9mL6PyPgI8lC
 sngk1bvUvfXd96gxK1v3IwE9W5m98B36nX5LyXXxU4hw46h4mMeg1zz+0JXDmOj8eQmdIvYvY
 3Xaml8lP4kPs1D3+26HSWYoh8G6U/Pbopz4zY8zwYrZawFwBl0ixRnFQWrDapqJGaxACIwvbg
 Pxilahwx6538Aswt6C0f/oVQEJ/+QVGH2SZBvwzyuxUBz5cE5rXS/Cm2DgvCwoa2/iKsTwPIT
 HI3VsT+k3l40FLw2M5o9mYNDLvDt79aG39bATtjhceD1T6p+ab6JIQ2y0FfpxkxlqL7OFXmQB
 YpW93Fo4q0nExE0YXnST+SahWvtBvl6wLcr5xtDqInXR7jtqilfqrelRKbw5k/5cgZo66gGEc
 Gen/LJ/ZzHDOm1EAu7AxEHuoPorgZrWyn1azw3buwLyRSsf7fH7MsYt9ctBfNehLkK2Oecy9a
 MV8U6cjUtERyB5MnWoJ02br1rsZBD/A4ppu9aH1dj2T5O1MEwyaI0hKILZneRcmlgRFrjMheB
 qWnSs7az8Yi93K4etS1I0hH9dYWIokz6BkTIjPsnSUyw8Yk7jI4MKdqey559hPTRwxJZLlIdS
 Gno9aUyc+GmObIAdubccYwvnsiQYZmEEBfdoiLz+s6+uYQ06za00GO29f0vsQkH0lIw2UXeqt
 VicXKFwZlZAK2Wm7/85X/JpOz/peCQHxjf8KgiZK7Xp6dBkW5xdykkdlgrc3K5isNOOSx3rjv
 1v28Ty4PJS1c2Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_130212_319206_68D7EEA0 
X-CRM114-Status: GOOD (  11.02  )
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
Cc: linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 22.07.19 um 07:54 schrieb Stefan Wahren:
> The assigned register ranges for UART, SPI and I2C were too wasteful.
> In order to avoid overlapping with the new functions on BCM2711
> reduce the ranges.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Applied to bcm2835-dt-next including Eric's Ack

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
