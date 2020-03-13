Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18081184FD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXQI+5bxqCMROv6ryW8prl3BaByL6D5+OdUl4yoNHzw=; b=p8Klb6S+vYW8s7
	gvK17asCRS9m82tBt2Od65FitQqCq8ZGEHDCypdCa2Zc1v5UkXXH5mooHGyF1sVs8vRQnwBnUt7iJ
	SnavLugrDSUMPUg2jRYL+Mkoqc91UkhpYaqDhYa95O5jAJZvTag08ulLwgbxov7cvypuJMHcE2B1z
	bN7XXG0QrASkK/TS9HqSgU3g+MiUu2VPDA/b900jx59smuUlvMTHXZyp/DpCm5thVWRG7nguNbMCs
	bBL4HsVrlcwD3VjrybhTA1i8G/mTpVEDShGRyrmUDeazO4omDKnMA1AM/tqCe3dg1yZFrnRdBpyIs
	G2gNGycv9HjuQyMEVNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqUS-0002Vs-3q; Fri, 13 Mar 2020 20:01:04 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqQR-0005yn-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 19:57:07 +0000
Received: by mail-il1-x144.google.com with SMTP id c8so10322680ilm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 12:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e0nZcrWW+XWUA13+VyJ2F8NUVji6aYhnawU95UaXq7I=;
 b=RWKXimb/9wsHUnK7Swa0yTzLr3ojhDWBxT+i4Xq/OjRUG1d/lnf+po7cGm5zLDvWRA
 AsH3LpnnW4qVf3aw49f5Ird4gNTjSHLS6ckjdgYhRW9+eqCt0spoCfaZKPRkFJE9FbRN
 7Im760gSM4OyZXoh2931W8azaUMSnYMC0iNmCUtWLW37+hxYKxpE+p0EOmdS2OG6Fuz/
 zGdiWHQTVGO3sIIe2ZaW8CP45oG2Zr1warA7GYzsJA2VtroVYsNgagxHGptiwrrB3+fy
 3H05BkZHtTxUjY59jQisi8unV1IW439hn0jmnQ49aZ/thqZ8ov8Owco8WOir2ZsENk3h
 Q/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e0nZcrWW+XWUA13+VyJ2F8NUVji6aYhnawU95UaXq7I=;
 b=YU5m2dcNv8RvERs2So3/uyntL/b/Op5T2Wn2yyQuBg55Ql+7YcSfeNP9aVxifdrt6l
 xWtbDdSHBk2SFrQ44h+8R0qye6oY4BlI5hx70R3NusMW1w+nrzqyIL9S6liaOfDES2MX
 Y0eKNHVY5ODogV27HOUuhdu9G2D7B+hhj9+o27bieJQvRXlvnIR7+Jtwt2+lsKQtgXrI
 SKxTfeQ1qT+2E01htusDfaRuqFYbvALeO4LUQC0/+rD3gWoAH226P1qmXOGCEmqNkLrV
 NZXCP2P82H2Lj688/IyhI3KICtrQ3DSD56wxWCnV5UpEnXNTa7Dnd5A9qbvKV06rDV0y
 WWXA==
X-Gm-Message-State: ANhLgQ3SQh3jIfuX849HzJILhDezoo+7eifsAhspvb1cIl8Ldnd5cvCo
 LnAet2w3QFpEloZbDnJ+qWB6rxcED39Ndqvp5KstHoRo
X-Google-Smtp-Source: ADFU+vvWsuACVinNssETDSwh96yZazoS+/mO6s+BXyEncZRyfkh8iRO4nXCNyy07Ha6URY2D4tNo7Lq+OOjMabx2PZU=
X-Received: by 2002:a92:8352:: with SMTP id f79mr11006887ild.58.1584129412372; 
 Fri, 13 Mar 2020 12:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200227151416.14271-1-mike.leach@linaro.org>
In-Reply-To: <20200227151416.14271-1-mike.leach@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 13 Mar 2020 13:56:41 -0600
Message-ID: <CANLsYkzbOCaL6kYbD6bDrqA9CF=V5Qr6CzJMgYNsanhGZBrU2w@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] Describe CoreSight topology using sysfs links
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_125656_033488_8DE4E365 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 08:14, Mike Leach <mike.leach@linaro.org> wrote:
>
> The connections between CoreSight sources, links and sinks is not obvious
> without documentation or access to the device tree / ACPI definitions for
> the platform.
>
> This patchset provides sysfs links to enable the user to follow the trace
> patch from source to sink.
>
> Components in the trace path are updated to have a connections sysfs
> group, which collates all the links for that component.
>
> The CTI components which exist aside from the main trace patch, also
> have an added connections directory showing connections to other
> CoreSight devices.
>
> This patchset applies on top of the recent CTI v10 patchset [1].
>
> Adaptation of an original patchset [2] from Suzuki, reusing 2 patches
> unchanged with update to 3rd adapt to the new common code for trace
> path and CTI component links & add a default connections group.
>
> Tested on Juno r1, DB410c; kernel 5.6-rc3
>
> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-February/714140.html
> [2] https://lists.linaro.org/pipermail/coresight/2019-May/002803.html
>
> Changes since v4:
> 1) Rebased for v10 CTI set[1].
> 2) Code for adding in the CTI->[other CoreSight] links revised to ensure
> consistent create / release process. Warn on highly unlikely event that
> link cannot be made & remove any programmatic association between the
> components.
>
> Changes since v3:
> 1) Rebased onto 5.6-rc1 kernel with CTI set[1].
>
> Changes since v2:
> 1) Fixed issues with signature ordering noted by Suzuki.
> 2) Alterations to main CTI set[1] to overcome issue noted by Matthieu.
>
> Changes since v1:
> 1) Code from original v4 CTI set moved here so that all connections related
> code in this set.
> 2) Connections directory mandatory for all CoreSight components and
> generated as part of the registration process.
> Mike Leach (3):
>   coresight: Add generic sysfs link creation functions
>   coresight: cti: Add in sysfs links to other coresight devices
>   coresight: docs: Add information about the topology representations
>
> Suzuki K Poulose (3):
>   coresight: Pass coresight_device for coresight_release_platform_data
>   coresight: add return value for fixup connections
>   coresight: Expose device connections via sysfs
>
>  .../trace/coresight/coresight-ect.rst         |   5 +-
>  Documentation/trace/coresight/coresight.rst   |  85 ++++++++
>  drivers/hwtracing/coresight/Makefile          |   3 +-
>  drivers/hwtracing/coresight/coresight-cti.c   |  52 ++++-
>  .../hwtracing/coresight/coresight-platform.c  |   2 +-
>  drivers/hwtracing/coresight/coresight-priv.h  |  12 +-
>  drivers/hwtracing/coresight/coresight-sysfs.c | 204 ++++++++++++++++++
>  drivers/hwtracing/coresight/coresight.c       |  75 ++++---
>  include/linux/coresight.h                     |  22 ++
>  9 files changed, 428 insertions(+), 32 deletions(-)
>  create mode 100644 drivers/hwtracing/coresight/coresight-sysfs.c
>

I have applied this set.

Thanks,
Mathieu

> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
