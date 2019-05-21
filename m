Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AEF24F19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfWqPehK0AAua4tlD4EYiUMq8Oor7NibIIbNNmWFxq8=; b=fO1cHR4redfSBn
	KqBfLI9hd5qtwokKejvZvhuLdG/ImyzVbaDbf4k6rbN5g3I6sDNNhUyDQi8JhD1wfhJtzwSDNI0GC
	S/Z0/lkBpMCRt0bkANFcUTSbvDJeyJ4Mg/xSrUxVPlTphuvRdaKBfV8hsGM7+ryV3vvNwlTh/+tdj
	Xe2YC50voxtKZJRMitj080Vt7iLYc9EApJ2K4V+ZDBvu6HFK8ETb84DAb8ERIjwZL/fXSWVX3fEG2
	/IccEPNnudh4l2cVPkoUwqtO+sZl04QcsuZ/XBjEOYojYyiLK4JIpKIour7zXheof9/eZ4WzCm2YD
	MAdZp9EEXaT07eQrluHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT46m-0002f6-7W; Tue, 21 May 2019 12:43:08 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT46e-0002eG-Qn
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:43:02 +0000
Received: by mail-qk1-x741.google.com with SMTP id z6so10897375qkl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 05:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=feT6//+XEuoB81grk9RMilnSIDBKvcNXipMC0Uit4Oc=;
 b=Pcr8JEhVUyLjBBa/8pdVhfH69n3H4/8MH7ZG9kwaFyHZ8ViEkFJ0qxCiaJTPGC0VVN
 uURwoq4N16YJQUGvv2pNUXHhp8ffX+Y32clwrnI1tWqg/jOouzsMNRJbAUs1uEaKl8c6
 RBiE91gYcMFDuX0tT/BBUYEj+/agq+d/z5F28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=feT6//+XEuoB81grk9RMilnSIDBKvcNXipMC0Uit4Oc=;
 b=rhpemK1d2mVNgZIHXNG2mtSYpc7d+FQ5Z1FkCqe/EltCJjtxM/cNNQIurIrMc9GPzj
 KTBj2MrPRXrMA1yKfUhTswt2VD7PIfoHq4IUB5E9aaUq8BPln0uZJH4G+08IG/DjdKVl
 WtZWVYyqbXqwHqFu9WiU6Fqn42qsuEO5AzsBEcXpBu0c+saFC8aQhpkwQDZUa7vn1xj8
 qlDtbA5HII+axAdWXG+ZyyY9bTqHSyA6V3s3+mOZbPw9RpsZn3t3stOAIT/uRKC8DQeJ
 ERUMo4bHTF5NDrYUJKh1f/r8ll/oIRZVkLE+zuL/9KoSF/BDSpRooTB+ig9dloHNIsMT
 X7Lw==
X-Gm-Message-State: APjAAAULQbqvD6I/aQSztLOo6loXBc3li4uBAjcC3/ha7QA4Za5/7BIS
 gJQO/MZ11VWD/QbHNpg9w8dem4zTBjE6W8xqjcsqdg==
X-Google-Smtp-Source: APXvYqwFv8X/gQwwT4Tct/RtQIGHWplsikpEopZ62eeUHiNR4qehuc2Y2K+8mZ4EneoeA4ZirWIpTQBrL10MFqTo/k8=
X-Received: by 2002:a05:620a:1493:: with SMTP id
 w19mr63010827qkj.214.1558442579573; 
 Tue, 21 May 2019 05:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190519160446.320-1-hsinyi@chromium.org>
 <20190519160446.320-2-hsinyi@chromium.org>
 <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com>
 <CAJMQK-iZRHO6HBkycPt0yz_vndmmmqFL0duHOcQ8EFSdhhFZcQ@mail.gmail.com>
In-Reply-To: <CAJMQK-iZRHO6HBkycPt0yz_vndmmmqFL0duHOcQ8EFSdhhFZcQ@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 21 May 2019 20:42:48 +0800
Message-ID: <CANMq1KA1YF6B=nFizS8nT4KREASaJuaztdBnh_t0V8i0Fb-e6A@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] fdt: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_054300_890140_E0DF1E5B 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 12:10 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Mon, May 20, 2019 at 7:54 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > Alphabetical order.
> Original headers are not sorted, should I sort them here?
> >
>
> >
> > I'm a little bit concerned about this, as we really want the rng-seed
> > value to be wiped, and not kept in memory (even if it's hard to
> > access).
> >
> > IIUC, fdt_delprop splices the device tree, so it'll override
> > "rng-seed" property with whatever device tree entries follow it.
> > However, if rng-seed is the last property (or if the entries that
> > follow are smaller than rng-seed), the seed will stay in memory (or
> > part of it).
> >
> > fdt_nop_property in v2 would erase it for sure. I don't know if there
> > is a way to make sure that rng-seed is removed for good while still
> > deleting the property (maybe modify fdt_splice_ to do a memset(.., 0)
> > of the moved chunk?).
> >
> So maybe we can use fdt_nop_property() back?

Yes I prefer fdt_nop_property, if we don't want to modify delprop or
splice. But it'd be good if others can chime in.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
