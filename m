Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28050CAE25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yfew0LoI3zBGzH5sQpz+IeXyik3+uDWm4BgK85kO0gg=; b=tP18Ezlceqd5sO
	tBw9VuLaewNP7K+Bgx8ankbxOLQPnYRQ+VEplnUscp7RnncAQsIb/rkaeRrSdV2qS1bsIAGKh2iTg
	o6xCl7+9RLNBHHsio8Mkr8Qa+9KhJGbdQ2ORE0n3wWYUv2PQbnT/0FhBVKOizOBTDvHhlofPrawlT
	7+1RBV1bClBsARBnVv7kbaZETyaHUlCMKz5ETNwY0Ulk9F6EjhQU7v205kH+aqAH+d/Z4ut7O6U7h
	7BMoMtKcH4fVA5UePzNct17rZCRmf2dkpVkQcnti17Icrey4h4ihqqhDpZFxxSeaWFyVvyyyxMy4D
	UWstqNu95bEqkC9i80DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5pb-0000zg-8W; Thu, 03 Oct 2019 18:28:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5pO-0000z1-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:27:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id j18so3002206wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fi4XGjAW8IL22UQ2E3MLgTRkUEhWQPz4pB1hOvF/+fA=;
 b=Hi1MkI/qpCxDbo6JZhKQmKaxIfwr4T4/k99ZbBFtrHb3q4zw4ByDCYUdD64t29C+gj
 jVQ2d7m6uw7VArrSuymO7GOFOw0xAjsY1rOrejvNUM/CWj5UQkatSjG1q/5u8wGFu44X
 adzpD3zXTL4dmCzurjzLoCdmCYYyAlYC9Nnh28F6IWKNhnFhLA/FeCYphMw3rixYFew0
 Zd+7JUBPLll2xu2/2sVF2JxGdc3dQdcK5N+5sIFIFY29oE9lBrj8yuNFrneVgttifo9J
 rD/bOUSj1RMwnG0WRsbbYtMqFD8WoJ5ODZLwcMNPWz9rAl1uw5hW7ef8uqkisLu7P5pb
 O9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fi4XGjAW8IL22UQ2E3MLgTRkUEhWQPz4pB1hOvF/+fA=;
 b=WExwSdcMYX0i2i+qAtclwDlqT/EH25ag9/Y7RUftZfhWQJzdBZy34vP20reLQDVl5j
 474fJmRKj45Lu+0wCfzVP8BJDmvQ9E/NWdht6dDdhiY+Sat9hApUa0zwdRUIAeGJ0hxB
 /XUNE2QBNgdd9ww8WwR46OiBDvmqEW3nljk4bO79oGn/RsP02IWhmKbtkASfc4Ts/VaW
 7sBO0iQZFw49X2tZF4Drp84b47l8I43XjQ9CfoFNlRR2ZXAcbak1EBgah5biKrwqVEaF
 Z8w+3xhGUH/xAslM02sk3u9AP2au/nBeQy+WazcAP999wMLpGvT8WdhNQ9HESN0ttRR8
 jJYQ==
X-Gm-Message-State: APjAAAVKPKcNmX1RQkK19FlZWd22Ra4+OF1PdngixTVQtaHq+5doL/W1
 msHGBLLk4K86V4V/plBacyZ8x5IpW9/gmLbVKz/LBw==
X-Google-Smtp-Source: APXvYqxbFaYgQESHFT0ejIDrfC9cSb6nt3hGDE7e+F1jf57qtk9/E/O4Le3nxo8YcgqHg6K6YkTwO5gXuwhpzDsp1ZQ=
X-Received: by 2002:adf:fe8b:: with SMTP id l11mr4115663wrr.23.1570127268783; 
 Thu, 03 Oct 2019 11:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190301192017.39770-1-dianders@chromium.org>
In-Reply-To: <20190301192017.39770-1-dianders@chromium.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 3 Oct 2019 11:27:37 -0700
Message-ID: <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Douglas Anderson <dianders@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, 
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_112750_765306_D87B595C 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 iommu@lists.linux-foundation.org, evgreen@chromium.org, tfiga@chromium.org,
 Rob Clark <robdclark@gmail.com>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 1, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> If you're bisecting why your peripherals stopped working, it's
> probably this CL.  Specifically if you see this in your dmesg:
>   Unexpected global fault, this could be serious
> ...then it's almost certainly this CL.
>
> Running your IOMMU-enabled peripherals with the IOMMU in bypass mode
> is insecure and effectively disables the protection they provide.
> There are few reasons to allow unmatched stream bypass, and even fewer
> good ones.
>
> This patch starts the transition over to make it much harder to run
> your system insecurely.  Expected steps:
>
> 1. By default disable bypass (so anyone insecure will notice) but make
>    it easy for someone to re-enable bypass with just a KConfig change.
>    That's this patch.
>
> 2. After people have had a little time to come to grips with the fact
>    that they need to set their IOMMUs properly and have had time to
>    dig into how to do this, the KConfig will be eliminated and bypass
>    will simply be disabled.  Folks who are truly upset and still
>    haven't fixed their system can either figure out how to add
>    'arm-smmu.disable_bypass=n' to their command line or revert the
>    patch in their own private kernel.  Of course these folks will be
>    less secure.
>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Hi Doug / Robin,

I ran into this breaking things on OcteonTx boards based on CN80XX
CPU. The IOMMU configuration is a bit beyond me and I'm hoping you can
offer some advice. The IOMMU here is cavium,smmu-v2 as defined in
https://github.com/Gateworks/dts-newport/blob/master/cn81xx-linux.dtsi

Booting with 'arm-smmu.disable_bypass=n' does indeed work around the
breakage as the commit suggests.

Any suggestions for a proper fix?

Best Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
