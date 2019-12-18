Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A02D125155
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRyX5L/vXgMOxeb+B+1rlAVhZS6RSn6nZRupKg/168M=; b=u5AsHY+9EXXyME
	xeDlCYKTz4M/E+ljkQLVKnC+ZWttZ507iGXq7M0zoAGzg50b1emM2U9FOemsoodJBxaKo2jY1/TfW
	wV0MI5cWRn2MFrf1h4RQvon/F/99m2hjN1pM6gUDS8KrfjZckBQIqGzwvFRoXG0y4ogosXKp+fz9o
	EBIxs7h4cWbYUCdo1oGopg0n37nhMamsDWn8WTl6yKUl5cMMjC2UYY3uZR6TUFsp9X71mJ/C0XadL
	7CaD715puBObIX6Yyl0IhfDa1I9BvfcZw0aASpQSDLh/2xxNvPGII6WAQX6i9euUJuIO8ky+ZrV07
	ZuglPvbd4JLbio2RVL0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihegU-00073x-HC; Wed, 18 Dec 2019 19:08:34 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihegI-00073a-6A
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:08:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576696102; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=qQSpG31J9fgt1SjmqMtElSf39s1qpOaYfUBbH0rizn8=;
 b=N7ppfeCA8KJ5j0Mam0eG/OSkvr7RyD6mAYY7ThgjalY55zptvOGXwbL7bM8x3Urgp+B8Ay/y
 R+tNP2jdepZ8SfbYD1jiAexau91fKAe65oFMURWR8TPkqqA/V3CwIJJbVhuAubf30+X73OH0
 c+04CpXEFZggage41Z+8WllQHCQ=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfa7923.7f172246b4c8-smtp-out-n02;
 Wed, 18 Dec 2019 19:08:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6E8E1C433CB; Wed, 18 Dec 2019 19:08:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C3B31C43383;
 Wed, 18 Dec 2019 19:08:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C3B31C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/9] brcmfmac: reset two D11 cores if chip has two D11
 cores
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191211235253.2539-2-smoch@web.de>
References: <20191211235253.2539-2-smoch@web.de>
To: Soeren Moch <smoch@web.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191218190818.6E8E1C433CB@smtp.codeaurora.org>
Date: Wed, 18 Dec 2019 19:08:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_110822_289748_AF3167D8 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Soeren Moch <smoch@web.de> wrote:

> From: Wright Feng <wright.feng@cypress.com>
> 
> There are two D11 cores in RSDB chips like 4359. We have to reset two
> D11 cores simutaneously before firmware download, or the firmware may
> not be initialized correctly and cause "fw initialized failed" error.
> 
> Signed-off-by: Wright Feng <wright.feng@cypress.com>
> Signed-off-by: Soeren Moch <smoch@web.de>
> Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>

7 patches applied to wireless-drivers-next.git, thanks.

1b8d2e0a9e42 brcmfmac: reset two D11 cores if chip has two D11 cores
172f6854551d brcmfmac: set F2 blocksize and watermark for 4359
6647274ed995 brcmfmac: fix rambase for 4359/9
c12c8913d79c brcmfmac: make errors when setting roaming parameters non-fatal
d4aef159394d brcmfmac: add support for BCM4359 SDIO chipset
837482e69a3f brcmfmac: add RSDB condition when setting interface combinations
2635853ce4ab brcmfmac: not set mbss in vif if firmware does not support MBSS

-- 
https://patchwork.kernel.org/patch/11286565/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
