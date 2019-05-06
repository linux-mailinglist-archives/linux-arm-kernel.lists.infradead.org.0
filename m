Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893EC15375
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpciDKKRGX2oSJwPBnrb3Uh1r1uMUr9MtcK2p/yj3Go=; b=JbmYpi+ryQcrLE
	HmEA1nzcUIqJeTbiOVgFHvQZjkBPnJnn5iyhIozaRiPdUN0+hC82QvVikMm5jO4UKPEcTMeUq7WNP
	zaghdyH/EuMIkUVFwTaBrUjE6SY4JhPEBpYsn/1u0ucVAhYFBmwPDCdv4+FVVWYlqJ2VOVAZrRckJ
	OmKzw0Y271xrf90sbsQ4a9q1PHnavHFp8TMBvq0xEnYGXs1BffzciXvBVbFcvwR1jhuZW4XyWo0oQ
	dbbp8gEagHZ8S1YNJ2N2IW9pV/zTF1eMxfdvWDsCmd1mMaxx9bZswu1uNJiCv6rtNJ50JmbggF8mp
	e60dJbcaZR1r2GDOUsoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNi6c-0008FE-La; Mon, 06 May 2019 18:12:50 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNi6U-0008EJ-IZ; Mon, 06 May 2019 18:12:44 +0000
Received: from [192.168.1.166] ([37.4.249.123]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MHFwM-1hS3hN2Tz6-00DJIf; Mon, 06 May 2019 20:12:29 +0200
Subject: Re: [PATCH v2 0/3] staging: vchiq: use interruptible waits
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <b2679404-ba00-d18e-fe15-44c6e280dc11@i2se.com>
Date: Mon, 6 May 2019 20:12:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506144030.29056-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:OO0YujQIAL03yiODcrGeZwSAoqP+QyZGcS3Rb/0D4viZDd3HuAr
 A0n/6hygucW8vIYS2sdJnsPBdTgKZVIeJrBLQfCJXdQU82yox2zXEi82Aeh1xK73P87Lwkf
 fdt1AfVEuBdqTkkgEITpoL3bFeRm3MvFQBya5po2xJvt4rt2lLSzf0NQlXFpi32U8ln6dhY
 NDXoAES+YgvwLNCrGIXTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3UH7jCBTWv8=:f5pksuQByHCya4v0SpsqPd
 rvQGgK/Xf2fZ9FYd+D6KuDn3qJN+Zbt9Tw+SFtQBpaq6cFtjdcKxJXw9Fy5JuQlVgwtBCX31b
 z0Z0Hl0XTK6phUUZkj7VGHQdgtexXFW8TPIHyFr7rIgwjxMPKJ+LxKO27AYkkUtd/vCF9U+lr
 xCigT9DIOy9Mwe8xe7yhDu/bnEn4MO4TwIrG4iU9woBrZgZV9vL/xKNwgTLi74duS9Q16ew5X
 VoAUCtjyPTO3kdUWffGc/512KXhfUkZwHCzzfWPyZ5LOnAee/MxoExhsgUppX/iB6n7Vd3roy
 Dvu3n0HeGlFQlFPj3AoduvgguL/J9ONCEIbVTRHdRbZ+CXcjHducbyhmgH5qyQOAgtGOXTadg
 rBOdc610VxGRLPEDH1kMYiJR3par4JD8+78izqlvoNEY75HoppdHzZeY2j8SZfGc/HJaSgbLi
 3Kas8kPfJgRZBLDDw4+C0QFEIz9qYjqSaTGS64OHFZMxonrm2hixuuXkn6pcNRzm/vkaBkEMQ
 YZ1til0P90w1e9vmGgK51WXz6YsEUZRdHWFnqkWQF9lT33dqWgu8/zuLjV4CHuLQ73+5mCdz9
 eVsae038tLQ+5C8LzogmOk/I6yTvlwHG36GhYxl7pkJgo2mtZW7qugKnhPpQ688Oz1niaOd6V
 TRl7aEpOA56HSzu+8FKf4FH++RBHLUE7dT2yQo47X5PU6S6BuDiLDvVeYoKDa6f1Rv792Ws3q
 crWF3LZmzEg8pNdmeg6mBWvOFSW1uX/f4LpOGp7o5LudukrpVUORNlxnGeA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_111242_916677_8BD580A9 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: lists.fedoraproject.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: lists.fedoraproject.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 phil@raspberrypi.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 06.05.19 um 16:40 schrieb Nicolas Saenz Julienne:
> Hi,
> ...
>
> Regards,
> Nicolas
>
> [1] https://github.com/raspberrypi/linux/issues/2881
> [2] https://archlinuxarm.org/forum/viewtopic.php?f=65&t=13485
> [3] https://lists.fedoraproject.org/archives/list/arm@lists.fedoraproject.org/message/GBXGJ7DOV5CQQXFPOZCXTRD6W4BEPT4Q/
>
> --
>
> Changes since v1:
>   - Proplery format revert commits
>   - Add code comment to remind of this issue
>   - Add Fixes tags
>
> Nicolas Saenz Julienne (3):
>   staging: vchiq_2835_arm: revert "quit using custom
>     down_interruptible()"
>   staging: vchiq: revert "switch to wait_for_completion_killable"
>   staging: vchiq: make wait events interruptible
>
>  .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
>  .../interface/vchiq_arm/vchiq_arm.c           | 21 +++++++------
>  .../interface/vchiq_arm/vchiq_core.c          | 31 ++++++++++++-------
>  .../interface/vchiq_arm/vchiq_util.c          |  6 ++--
>  4 files changed, 35 insertions(+), 25 deletions(-)
>
against which tree should this series apply?

Since the merge window opened the current staging-linus wont be
available soon.

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
