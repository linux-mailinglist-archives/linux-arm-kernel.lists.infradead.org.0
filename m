Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EBE59C12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CK4CU/0uiVP7+S1lzvlmM3lpcZWmGF02TLr2374SAwk=; b=ANrEZHztdW76zd
	/7Qlp2O92VUWDvS+XK2DIdwZg+aAe7EY9ckyfziIS0+ToaKVahDS6WQkpnd4bzZQmrGwIy4WC0wl2
	HPNdRqMsOD8WwesmCsnpaDNMIp6eynmYLX/FIHRW8P178gC1usEzzywUtlOnHxJ6DTJ+0oIjygmIe
	WJoeyoD0LplHy6tuW3WMjtcxWuSNxx60C/DzjuXbY86zaVoLL5zOu83DB30EgT0TaRRhp23G5lQvT
	gQuSFRQv6s6VyxKJwYmd0OLGn2qAMq0BpFcbJAoAikOUHIS01eYY6Vi6Q8ep/qytbdcyWszfvvhWY
	ZgehOo7z9itQgU1iHvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqOT-0006G8-Nf; Fri, 28 Jun 2019 12:54:21 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqOG-0006FN-CN
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 12:54:10 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628125405euoutp017585b9f9397f3152d7945eb8a635792c~sXe2ay7hQ3247532475euoutp01E;
 Fri, 28 Jun 2019 12:54:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190628125405euoutp017585b9f9397f3152d7945eb8a635792c~sXe2ay7hQ3247532475euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561726445;
 bh=qzxIRvVGx/3VyHnGbR9j5H6ALGHkn1ZSDXlE5FAdkwI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ADzWQAhWUQ+KOYVTlCHl+rTDW1I7O0wa+1i03JfoOum+541/Fg80mGMRbZaq9WzRS
 Vx636CdlmOCjtahPKbaaJa+7C9d4mvxObv2wRPluDMrmNC0mfmQwXj6RmcaIdgDzLw
 zgy8jD9s28ngU4LtDmxfsbSWD542++qrS/c1xkYQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190628125405eucas1p19d9de132c7c507269bd5260f8650ca2c~sXe12_QGn2787027870eucas1p10;
 Fri, 28 Jun 2019 12:54:05 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 9A.C4.04298.CED061D5; Fri, 28
 Jun 2019 13:54:04 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190628125404eucas1p2da9a38ced35daa959456b0d0f244d7a2~sXe08o7rC0406704067eucas1p2z;
 Fri, 28 Jun 2019 12:54:04 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190628125404eusmtrp20e45f3155f71e3978c0ccf59fde6c45a~sXe0tyTrQ0425604256eusmtrp29;
 Fri, 28 Jun 2019 12:54:04 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-af-5d160dec4e13
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4C.93.04140.BED061D5; Fri, 28
 Jun 2019 13:54:03 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628125402eusmtip2b672e4f40a25f69d3c8db9a125b40c5c~sXezJFTjm0418304183eusmtip2w;
 Fri, 28 Jun 2019 12:54:02 +0000 (GMT)
Subject: Re: [PATCH 28/39] docs: admin-guide: add a series of orphaned
 documents
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <be37b10b-81e1-8258-e149-a27942e98173@samsung.com>
Date: Fri, 28 Jun 2019 14:54:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7ee0e33575633f689203f582259c2cbdce477176.1561724493.git.mchehab+samsung@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxTZxTHfXpfaSi7FqTPfNliDSZKgBnMcjadm2Zud5lLFreYRe1YHXdo
 pEhaYVO/kOEoghQpirFUBCG8yWgppLwoCUEttmZIARXqtNOi2dwqXbGZyITR3pDx7XfO+T05
 //PhYQl5CbOcPZB1WNBmqTOVtJS0O6ZvJf0li1e9VWV/B+rctxmwuBwE6J/VMzAXuIzgldHB
 wKX7pTRMWWdpmOjTI6iZfkmB+dZxErzBewh6n1VSMBqapCG/1kJD8dOVUNGmgLZSFnweLwPV
 p/QM2Hx3KOj1JIL3wbQEagrqSCh46EFwwxCgYKTHTIO+0IzgkWtIAo5LozSY/z1NwB8NNQj6
 z/QimAyekECX6yIBw33VEsi/No6g2m5AUNAWQpDnbKSg3XaGgNN9ZSS8sPoo8Bp7JR8k8v/8
 ZCD5kTtugp95aUR868kmiq9qOcZ3NI1L+ID9IeK7TfcZPvD317y9L4GvMLpo3n6vi+DbG9fz
 I7/k8LbmEzQ/WBkgP39jt3RzupB5IFfQpmz5RrrfU/VZtnP1D62GSioPuXERimIxtxE//tFC
 FCEpK+caEfZ52hixeI5wZaGVDFtybgrhntGPFl40THWSotSA8Lg/RIuFH+GW8jEqbMVyO/G0
 oZ4Icxz3NnYOXo9IBFcSjc8ZRpnwgObexWX6ZhRmGbcF5110RZjkEnCJbyziLOO+wl6HlRKd
 pdh5biISKYpT45ba8xGH4BTYM3FBIvKbuNNvJsSowSg8d1kl8oe4znKTFDkWPx3oYEReiee6
 w2+l89yK8KvC3wmx6ES4oXyWFq1N+OqAez4FO79hHbb0pIjtrXgmUEyG25iLwWP+pWKGGGy0
 nyXEtgwXFshFey221lvphbVF3U3EKaQ0LbrMtOga06JrTP/vrUZkM1IIOTpNhqDbkCV8n6xT
 a3Q5WRnJ3x7S2ND8J7k5OxDsQqHhff2IY5EyWvYiOl4lp9S5uiOafoRZQhkne30wTiWXpauP
 HBW0h9K0OZmCrh+tYEmlQnZsyW975FyG+rBwUBCyBe3CVMJGLc9DpXefFH9yctZ29L3Vrgdz
 M6FtqyoUf6peg9xVyVL/ryh2q7tiaFfoxoTgtHxRtm/Xxu3fpW7ae/tC6qfBj6loz5d3Q8uW
 aDYnBScnj6ddX+sM/Tyz4qxJI82VxhgPduxIeX/78/g99uHQtr2pLbsfX0m6Eps9tOaJv7Ym
 rTxx3aP0hPx2Janbr96wntDq1P8BW8Xj/CAEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02SX0xTZxiH851/Lcxux4ryjZipNWQZxkIL2BfXkSW7ORebW3QXZhPdCZwA
 G21dT8vmnKMTR2sdVRjqLB226hAQRVAraJpg43CtwoYg0RppXHFT2aCD4KwDGbRZwt2T/J7n
 4k1eKSl3M2nSUr1JMOr5MgWTTF1/fm147ahsWUHW9a+1cKL/lgTagj0kWMcaJTAbvYxgprZH
 Aqfu7Wdg8uxzBka6rQg8sWc0uH7ZQ0F44i4C31g9DYNT4wxUHm9jYN/j5XCoPRXa90shEgpL
 wH3AKoGOyBANvtAaCA/HCPBUnaCg6n4Iwc+OKA0Dl1wMWG0uBL8FfyWg59QgA67pOhIenfQg
 8B/0IRif2EtAZ/AYCTe73QRUXr2DwO11IKhqn0JgCTTRcK7jIAl13TUUPD0boSFc6yPeXMP9
 842D4gaG+knu32e1iDvzbTPNNbTu5M433yG4qPc+4rqc9yRc9O+tnLc7nTtUG2Q4791OkjvX
 lMEN9Jq5jpa9DNdXH6Xee+UDpdZoMJuElSUG0fSG4kMVqJWqPFCqc/KUqmxNwXp1riIzX1sk
 lJWWC8bM/I+UJaGGd7YHVn1+xlFPW1A/tqMkKWZz8MnJi5QdJUvl7I8I93qihB1J54bl+Fpb
 ecJZgqeH7EzCGUV4ZjKM5ocl7EYcczSS85zCrsOBvp/iEsnWLMKePyuJRPEQ4T+qL8cLhl2P
 a6wtcZax+dhyLBhnik3H1ZHbknleym7GN8abqISzGAeOjMQ5ieVx6/Ef4g7JvoqnG26SCU7F
 oZGjRIJX4It/ucgDSO5ckDsXJM4FiXNB4kZUC0oRzKKuWCeqlSKvE836YmWhQdeB5r7T2xM7
 34nsY5v8iJUixSKZO3lZgZzmy8UdOj/CUlKRInu5L6VALivid3whGA3bjOYyQfSj3Lnjasi0
 pYWGuV/Xm7apclUayFNpsjXZ60CRKrOxV7bI2WLeJHwiCNsF4/8dIU1Ks6A940erA7df+LLC
 3/J4w7u3KqD0Qeh0ZMsR34Wn+fzVreizqV1Xvl+RseElC/NkKLgylGXjWh/oJxa/1be6d5UJ
 5Xw14LHNxpJGX9NGbxxGzbt279zXZftdNqh6Upel70r7+HWNOtD0qfvS7HeFD9/Xvpja7glm
 zpwu3N34dnpR1qPhCgUllvCqDNIo8v8Bq/m1rrMDAAA=
X-CMS-MailID: 20190628125404eucas1p2da9a38ced35daa959456b0d0f244d7a2
X-Msg-Generator: CA
X-RootMTR: 20190628123124epcas2p3edc3c3a64edf324948a9ec1f9e41b974
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190628123124epcas2p3edc3c3a64edf324948a9ec1f9e41b974
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
 <CGME20190628123124epcas2p3edc3c3a64edf324948a9ec1f9e41b974@epcas2p3.samsung.com>
 <7ee0e33575633f689203f582259c2cbdce477176.1561724493.git.mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_055408_556754_9E53C307 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rich Felker <dalias@libc.org>, Mike Snitzer <snitzer@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 dm-devel@redhat.com, linux-efi@vger.kernel.org,
 Willy Tarreau <willy@haproxy.com>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Alasdair Kergon <agk@redhat.com>,
 linux-rtc@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-sh@vger.kernel.org,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Mauro Carvalho Chehab <mchehab@infradead.org>,
 linux-block@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Matt Mackall <mpm@selenic.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Martin Mares <mj@ucw.cz>, linux-crypto@vger.kernel.org,
 linux-video@atrey.karlin.mff.cuni.cz, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/28/19 2:30 PM, Mauro Carvalho Chehab wrote:
> There are lots of documents that belong to the admin-guide but
> are on random places (most under Documentation root dir).
> 
> Move them to the admin guide.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

> ---
>  Documentation/ABI/stable/sysfs-devices-node     |  2 +-
>  Documentation/ABI/testing/procfs-diskstats      |  2 +-
>  Documentation/ABI/testing/sysfs-block           |  2 +-
>  .../ABI/testing/sysfs-devices-system-cpu        |  4 ++--
>  .../{btmrvl.txt => admin-guide/btmrvl.rst}      |  0
>  .../clearing-warn-once.rst}                     |  0
>  .../{cpu-load.txt => admin-guide/cpu-load.rst}  |  0
>  .../cputopology.rst}                            |  0
>  .../admin-guide/device-mapper/statistics.rst    |  4 ++--
>  .../{efi-stub.txt => admin-guide/efi-stub.rst}  |  0
>  .../{highuid.txt => admin-guide/highuid.rst}    |  0
>  Documentation/admin-guide/hw-vuln/l1tf.rst      |  2 +-
>  .../hw_random.rst}                              |  0
>  Documentation/admin-guide/index.rst             | 17 +++++++++++++++++
>  .../{iostats.txt => admin-guide/iostats.rst}    |  0
>  Documentation/admin-guide/kernel-parameters.txt |  2 +-
>  .../kernel-per-CPU-kthreads.rst}                |  0
>  .../lcd-panel-cgram.rst                         |  2 --
>  Documentation/{ldm.txt => admin-guide/ldm.rst}  |  0
>  .../lockup-watchdogs.rst}                       |  0
>  .../mm/cma_debugfs.rst}                         |  2 --
>  Documentation/admin-guide/mm/index.rst          |  1 +
>  .../{numastat.txt => admin-guide/numastat.rst}  |  0
>  Documentation/{pnp.txt => admin-guide/pnp.rst}  |  0
>  Documentation/{rtc.txt => admin-guide/rtc.rst}  |  0
>  .../{svga.txt => admin-guide/svga.rst}          |  0
>  Documentation/admin-guide/sysctl/kernel.rst     |  2 +-
>  .../video-output.rst}                           |  0
>  Documentation/fb/vesafb.rst                     |  2 +-
>  Documentation/x86/topology.rst                  |  2 +-
>  MAINTAINERS                                     | 12 ++++++------
>  arch/arm/Kconfig                                |  2 +-
>  arch/parisc/Kconfig                             |  2 +-
>  arch/sh/Kconfig                                 |  2 +-
>  arch/sparc/Kconfig                              |  2 +-
>  arch/x86/Kconfig                                |  4 ++--
>  block/partitions/Kconfig                        |  2 +-
>  drivers/char/Kconfig                            |  4 ++--
>  drivers/char/hw_random/core.c                   |  2 +-
>  include/linux/hw_random.h                       |  2 +-
>  40 files changed, 47 insertions(+), 33 deletions(-)
>  rename Documentation/{btmrvl.txt => admin-guide/btmrvl.rst} (100%)
>  rename Documentation/{clearing-warn-once.txt => admin-guide/clearing-warn-once.rst} (100%)
>  rename Documentation/{cpu-load.txt => admin-guide/cpu-load.rst} (100%)
>  rename Documentation/{cputopology.txt => admin-guide/cputopology.rst} (100%)
>  rename Documentation/{efi-stub.txt => admin-guide/efi-stub.rst} (100%)
>  rename Documentation/{highuid.txt => admin-guide/highuid.rst} (100%)
>  rename Documentation/{hw_random.txt => admin-guide/hw_random.rst} (100%)
>  rename Documentation/{iostats.txt => admin-guide/iostats.rst} (100%)
>  rename Documentation/{kernel-per-CPU-kthreads.txt => admin-guide/kernel-per-CPU-kthreads.rst} (100%)
>  rename Documentation/{auxdisplay => admin-guide}/lcd-panel-cgram.rst (99%)
>  rename Documentation/{ldm.txt => admin-guide/ldm.rst} (100%)
>  rename Documentation/{lockup-watchdogs.txt => admin-guide/lockup-watchdogs.rst} (100%)
>  rename Documentation/{cma/debugfs.rst => admin-guide/mm/cma_debugfs.rst} (98%)
>  rename Documentation/{numastat.txt => admin-guide/numastat.rst} (100%)
>  rename Documentation/{pnp.txt => admin-guide/pnp.rst} (100%)
>  rename Documentation/{rtc.txt => admin-guide/rtc.rst} (100%)
>  rename Documentation/{svga.txt => admin-guide/svga.rst} (100%)
>  rename Documentation/{video-output.txt => admin-guide/video-output.rst} (100%)
Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
