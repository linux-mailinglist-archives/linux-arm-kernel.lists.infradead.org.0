Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C66D3A74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzHbNjZ4UmvCMBhkUg9nMDb4PnHMuOK9o43pju/8yPg=; b=maTbGSQZMOEhB+
	hS3ngp88kCDm3TCOTdysnDFNlSB3HYFN1YIIBgMK1wbtKgjSIOtnbHg5nkbNtG7OKMR6rDur1YbWp
	bdW42ohQY9mu9B/huQdLvcpn0c0Axf6H5ibED5caWBCbW6BrOgeXgriL8D6xF2BHr0hoMhJP6SzLF
	0WIXux9DwKmhKmqsA0drf3pBq89fRg3WQyEXQQyV9cD3NVopm63rF5ZCQ7Ai9B0Jyzo47Q6cd/AyA
	bLPjeaioxPO6BqGh4kFaeV/e2j4bUzjx2RtGOiXOQ8NZ9RqhNHH19V3jL3xF/W0FTD/K+R4kqhd4p
	+tNTrTilmu4v7vhe9ubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpnF-0002D8-K4; Fri, 11 Oct 2019 07:56:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpn6-0002CG-5e
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:56:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id t8so6307689lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 00:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UQGlBjxrbnywssmQJ87NwAoJZT+0lBTYiPkUBZuGVTw=;
 b=RgpbaF19+L4HjyZuj1xRpxDlVrIO1vDy19Dfiz5Rl7uDlpaNesNszWjtEE9sDYJAfy
 DWB4PA/scgT+4iGBuozxAmUtD+FvG5SdMxz4IdXLFuMA4xeYGfbdscQx29VS9bKFQrg1
 qbFLHgpt3WwYvkXuPScYudDFc306eo3kz+yGJW+BCD9T8ZJvXFCwnvaX5RdgcCsQqop+
 9rQYMxDyYY2iAN4KShC6XgL/KUfSez5HDUN8kqPDWGWm8zBDdTWRsvEhNP0q0xR/FL8O
 fD+pCT46Vgr14iF3sExQl/Bqn0LM0FNj9b26b1jsI/8mJ7S7/xJzRLVLdLxvJ6Vh2Cyz
 Ee9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UQGlBjxrbnywssmQJ87NwAoJZT+0lBTYiPkUBZuGVTw=;
 b=dSDcu68qehcqx43xxpNAwbsJNfAsWf++gMnunvSUV245IL/GH9q353TXxhXmtmYXn1
 PEa9kuO+9REBjfzgW7J1UfobAOt9OmJ+X5xZxJqnGgPG7qZgl6QS3ZhC2elc93CLitf8
 0OjHBW1su5le2ipJXGHEyYDXZZo8uYvHC03Ydt+c0sDc5VrXmKOhNwiqWbPBdkPEp2jd
 bogScvqZ6fnvHM/dPJsts5se3BsJBXgcQwSv/yTXL98mUMeAGsNN+ssR3tEcUreNt2HR
 GFGd5lPHXbpPNm9uqCpK2mnhkInQcwcI8FsbpGavItIzieoDZEzTJRwACsRJ9xJIFTXs
 8KAQ==
X-Gm-Message-State: APjAAAVn3H579acjsUyi1p7R2kpXom74+YKvI3t3CLe1i3Ds/L08jqsn
 I4eq25QIMNtLpp/Ia/0Zejj9BRXw9whapDdEg7QNsA==
X-Google-Smtp-Source: APXvYqydtD0YWYlut/gC+NgQe7cNI5MaxlEW5q+G5DXSbrVkjh1YI+pJD62gc97sVpJKCLOnUn61MURODiP2A09VwnY=
X-Received: by 2002:ac2:47f1:: with SMTP id b17mr7461543lfp.31.1570780605507; 
 Fri, 11 Oct 2019 00:56:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
 <20191010173152.GA575@arm.com>
 <CAKMK7uE2p_VbJB5PfS1DJ5AzOm60p22c+YOJ18FtD4_ec61LwQ@mail.gmail.com>
In-Reply-To: <CAKMK7uE2p_VbJB5PfS1DJ5AzOm60p22c+YOJ18FtD4_ec61LwQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 11 Oct 2019 08:56:26 +0100
Message-ID: <CAPj87rOMupGnq5B=eWjcu0-Bkj_HmfLDR3Aqk1VDCXg8TwYP0w@mail.gmail.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
To: Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_005648_359007_FC94A939 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nd <nd@arm.com>, Neil Armstrong <narmstrong@baylibre.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Ayan Halder <Ayan.Halder@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, 11 Oct 2019 at 08:46, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Thu, Oct 10, 2019 at 7:32 PM Ayan Halder <Ayan.Halder@arm.com> wrote:
> > On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
> > > Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?
> >
> > Apologies for the confusion, as per the link, the formats which are
> > suggested with AFBC_FORMAT_MOD_YTR are the BGR/ABGR formats (as
> > listed in the 'AFBC formats' table)
> >
> > Thus, any other permutation of the components might make it incompatible
> > with some other AFBC producers/consumers.
>
> Uh, that's not how this is supposed to be used. Drivers are meant to
> expose _everything_ they support (bonus if you roughly sort it in
> preference order). Userspace then computes the intersection of
> modifiers/formats supported by all devices it needs to share a buffer
> with. Allowing that was the entire point of modifiers, if we
> artificially limit to the common denominator we're back "only linear
> works everywhere".

Correct.

A lot of userspace will select for format first, then find a modifier
which can be used with that format. If userspace has specific
knowledge of AFBC and decides that it prefers to use AFBC so will seek
out an alpha format - and make sure everyone fills the channel solid -
then that's fine. But that's putting the cart before the horse.

Not exposing XRGB8888 on the primary plane will break a lot of
userspace, so in this case AFBC would just never really be used.

Cheers,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
