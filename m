Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3C41F47F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7JZ3ETaOm1fPO1rR74uDvArK5BRXPAzRxyPPH2InsY=; b=T6NlbQsrSdtsdO
	8vXuXG+haIMCoVsBpMlPOCMADUcjx5Qx3Zi8i8qht1GvAsyEosqrez0jpmT+c+GMam9EPOn6/UUL3
	NnNQHVGyNRKKjO9Pfs32FoTtBP8OdSFr5tq80AeoUwn4KrZdlXT62k6oBLRa8NYqQx3/InowYRbDD
	fFkDtrbHFIz4/i1sUQTQt6ep+ZG+NRE1yNayxyxB5t2kqupeyCmuTCxutbpHF0FXfwIKkslvSV7Yz
	D6m3PxtyxgwxHBDk38tHIfFX78QWPpUVvI4utcC2mo2izXgMnPiadB6R0hk6MiaGZ5lHXRrjGPdno
	4MJjGB+30xB9wVYnxxGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikhC-00087E-JX; Tue, 09 Jun 2020 20:18:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikh5-00086c-OB
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:18:00 +0000
Received: by mail-lj1-x243.google.com with SMTP id i27so15788520ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mggLRhO6jV+80x85AIwbQKfAsdh+EvbfaEBrzUoF754=;
 b=A0He62nniIxI+L1AbHk3rE/VXClOAjqfDgCzp1WHM1n/EZXSsg9v78RosIK0D61xsS
 ZYKlq1DqgEfEXDdlhkm59HdRiBFK6LdyoaGLJvX9CdbMTkENFvrZ7hC74dcsHPxaSRDH
 /KSfFGClu/jrFSfutcREkx7xys3KkhNId+5LCdiAdqBUyrW71bytWH0r5JN+dmfs0ux6
 pyo/GMthib2jqyTuXnMikf9NdHJcoq+B1icAgmZ6/bei6J/10Zlmn+CWRCoHfYWoFmKg
 fHLSt7oRnFJxPymARXiRwnAWOzKoM2Id2uJ9/8mCEZ7a32GxF6lHDAnB5w/zrpdam/b8
 T+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mggLRhO6jV+80x85AIwbQKfAsdh+EvbfaEBrzUoF754=;
 b=CG02rzFHdEP9N6EdCFqOKf+4UPmMyQB+O8r49uOfw1Jz1gnLJWkBWF0YHjILMYDlEg
 EmBi5fd3EKQkP4Ge52OA/4B2n5E0gwJRv5efx1HIWTSRxAfKjSTpReyMwx9vgX5Xb5j3
 LPVkD1mI3+e3M1Wx7Mo35w2lv6yUA8RQbudnb7KyKH9I5PO8J738C7N9IPySU/gsG42X
 Y2ijX3vslwlYlWw5ZfuuISeSnYKpTv6CPZx26NaN7qcpRE78QUh8M9HyBLM6/XujEy0o
 BkTPkgNsC13LjAEIZLZL1TwHFpARFNWNLL6mRyq/P7E3MTAioeOVRQs00lELcjrQLBj7
 nYpQ==
X-Gm-Message-State: AOAM530qAFyZq1zbV8E6n3gmhfNWCrXpQdMRfnRvpPIDnJ3uCwBFukV4
 Fq2VV/wb+PFyIs8Oc3kt8JQKOCfiJ1gS7RsLJpMosw==
X-Google-Smtp-Source: ABdhPJx2JZxpBTnplr7BzxaE0lgmN1ukFVtWGan+ErNICCKV3KzvNkJgmWsN0z+/QfxCYPIeA2p/0hov9iJAP1U2vnw=
X-Received: by 2002:a2e:974a:: with SMTP id f10mr1695ljj.283.1591733877567;
 Tue, 09 Jun 2020 13:17:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200609200446.153209-1-linus.walleij@linaro.org>
 <20200609200446.153209-4-linus.walleij@linaro.org>
 <CADaigPX_9mBqr3hKA0-aC-TOY3hEnXnQremMiPopw8DUcGCzgQ@mail.gmail.com>
In-Reply-To: <CADaigPX_9mBqr3hKA0-aC-TOY3hEnXnQremMiPopw8DUcGCzgQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Jun 2020 22:17:46 +0200
Message-ID: <CACRpkdbY=ALou98n6uW8C5Wwup1-qyaNZhqTSwC8B5FydjbgQA@mail.gmail.com>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
To: Eric Anholt <eric@anholt.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_131759_785255_16983515 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 10:11 PM Eric Anholt <eric@anholt.net> wrote:

> FWIW, series is Reviewed-by: Eric Anholt <eric@anholt.net>

Thanks Eric, do I remember correct that you were using this
driver for something like a clock display? Are you still using it
for that?

Nowadays the biggest user is arguably the ARM FVP emulator
which is running a full Android stack using this driver.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
