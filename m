Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA51C219E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvTbfEyUe9Yn4OFLDz/hvujhRJ3v5xCaldqPlaLVehc=; b=NCBN37R2j9r32D
	6k0XEW5+KtzqQqeltxEQKnazFMBihdGSkgCSO2ppKyJ6xvuCP+YFj6itPG5YPO2iu7tv/MH+l1ykj
	423JOhzwx5W7xiWWTxVNuoGXR2Yxg3jIbR1F4zoHiJYKRw6H+1kDLKRNfEd8Vq9dJHXOHgxKG7ma8
	jdrrDpqTH9EA5Ih2SNng3OOX11rZD5kBMBxuH0LjTf3ENKGY9Bg+yQGdjyKUSiuuGkGpp5jaGsxSG
	unFbftEuqmDE5QHGLOinIj86ppJpv2fS/DdBY4BqPZFNJuzhRnNQvGMKUIKF2q+Z8TJqlyTkxXe94
	Y72o1EsDjhdToG28xs+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvWx-00008u-3G; Mon, 30 Sep 2019 13:15:59 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvWj-00008Y-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:15:46 +0000
Received: by mail-oi1-x244.google.com with SMTP id k9so11034041oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jVVEvUCK/emC3iUCb0l7K7+9YIBMzhWZQM52MAW23W0=;
 b=Nq8irpzkOOU/Qk+FAEiw7mFJD3ED6x3p7RuFi3tcphxcKOTzPLv1rLkbm2e+p0opFz
 0UEW0u32jfZzOUrbWh7ydkm94WJv0uuQzjFwAZrAYAfHa4BcvIXQbG8wzssg1Wn+V9un
 5/Ls5khPQVF728b7aVK8k8i4+cX7AXRrKLpgq7i7uYatXGLbyH2K5LuLFeFrEb7JU0Jf
 ru05sDSWcbXopIAvYSzdORMVbxEvtThAiCDRA7uPHKSD6ACGCANYwf4lwbwx802aIrHI
 2Z2UWOgHCOIeV/nBlEQ3NQhTTdKCLVo8wWA3Digito5OsA120xeodDO9NfrEAlc7SnI+
 yv3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jVVEvUCK/emC3iUCb0l7K7+9YIBMzhWZQM52MAW23W0=;
 b=CgCJ1hDc32yNboJJqOKjXFHj1c0l26V9nrgpyOXSpQTwOgz//3/hF7cWniWm3SBsR/
 3qhAmzD1GzjhtXbgTc/8tOSxnhrG+RMvm7pgK5MuE4xEPdi3HDqBf3yHwithhMhdXOuG
 xzysOaHpMJbjxk5faJtyaUG/4uS6mCBgx3mZ9oqxspitHUIwNzD4ELO4aCwxBpu1zrJt
 G6ZKdy3UE03kZIr5WfE//XKqD9iv6oEVAleDbENEBMAV715o3+F4gYyvwsCQT2qJMKmm
 0aJRPek93TMtAtcQFNTnvLwI0kdULWcTEAsZxpXoP8+ifAE7F/4tbcXpb8s2era4EjWc
 snkg==
X-Gm-Message-State: APjAAAUlTL+pTLBoNFzDslH3R1QlCfAIjhqDhhYZ1XznLl9broXa14Ev
 gUyHWRU/Pcpzyo/vi/PR5urk3flyrw3438pe7V1RYifbnYw=
X-Google-Smtp-Source: APXvYqwR/uvkoTEDQ6kjF9B5yRo9oWxbFNBjwD4EdIfTijDBaNwNgNDAKLYvIDj2ndcXMo57HW8oLx6+SCdOlzvOr+o=
X-Received: by 2002:aca:53d4:: with SMTP id
 h203mr17266374oib.146.1569849344040; 
 Mon, 30 Sep 2019 06:15:44 -0700 (PDT)
MIME-Version: 1.0
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 30 Sep 2019 14:15:33 +0100
Message-ID: <CAFEAcA_ztr0_Bu9d__dSr9oH75s2DSd5=6NZvVMrxuDTxf31mw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/12] Add SDEI support for arm64
To: Heyi Guo <guoheyi@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_061545_324242_475B8D81 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 QEMU Developers <qemu-devel@nongnu.org>, Dave Martin <Dave.Martin@arm.com>,
 qemu-arm <qemu-arm@nongnu.org>, James Morse <james.morse@arm.com>,
 wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 at 16:23, Heyi Guo <guoheyi@huawei.com> wrote:
>
> As promised, this is the first RFC patch set for arm64 SDEI support.

Hi; for the benefit of possible reviewers who aren't familiar
with every corner of the arm ecosystem, could you provide a
summary of:
 * what is SDEI ?
 * what do KVM and QEMU want/need to do with it ?
 * what is this patchset trying to solve ?

That would provide some useful context for trying to
review the patchset.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
