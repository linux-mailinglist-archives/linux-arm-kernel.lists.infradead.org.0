Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964D01E7DF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnekbG9IyCYFasQnhjzbYDa6P5BeOqxiPZ0DIL/AxO8=; b=nvtzkGCyYsMkxA
	UOTLFUxsSrHEtszok81vlIfkX+71Tgm2szcFJTJZhLmgZLj508WukLhKhWa/CPj2PsNu4ZbtrQiSG
	TXmLwKQk4uGRsFgjiHnrsWd8rH2nikDMr4udwKTQeYoDJ2B5NMTirMrI5vTJloNNrVvLTUMbM1o4Y
	a853Ywc742383iLhhpFKnyR0mELiXSid6iepPMKbp26CrdzBmcaKU4hVmm8ZXKXhxaejDzL24iXTs
	MQLX7nu6Xw04hTmVN9osI+l78ZKaY7wdydIGn1zKMBr5C/ZmyvLpgk4bg4VZ+dXh9DjyXTSg4yd8W
	1ND5lpk5ExFkGccB8M5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeeic-0003Cx-4D; Fri, 29 May 2020 13:06:38 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeei0-0002zZ-SD
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:06:09 +0000
Received: by mail-ej1-x644.google.com with SMTP id z5so2022624ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 06:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EhFSDXU1We6MxQ3A30hDWSzixs2ZuY4gm72YbRtPSf0=;
 b=H3WKE33Yfrk2ofx0uBESQHJLLUkIeecskcmrdXLXas9E8mbcYywjhIDw9bv8Yuc3g9
 lCsuTTsdvojnpa1X6GemeCELH+tvho4BL2/5kO7mNp/o0hJOpNYSn1hJxcorocJO65wm
 +rH9AApLN161WUw5okckWwfAIhbAsIN1U8Cqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EhFSDXU1We6MxQ3A30hDWSzixs2ZuY4gm72YbRtPSf0=;
 b=uBcBgPYQHacsGt/ShcpSKQn+NBklqT3nEebe+ANdiIvveVS+bPgxnX+6y8I5YJ1Vys
 Qmuq+W/Vf/Aop1mBvOP6BJ4RDC2rfesZEXgZe/87svHgVMT7r2kO+wbbTCcnVvn6Ijr+
 bnRcf9DnAqDgzvbTOwLfSoYyXH94vJDkF+H4dex7MoTcBfekyHxJsq2OcwhoXSMZAlPK
 hd5EMEoxJi/8tGfs9I3vkBGFjs1Cd7Io4tIfmL+1h/P+mPd/4vpcD6bQsxmpst+mBlOK
 9FifoX6m7BfVD3ieXOHuZcog2HG02HI26kHzV0znZC3FdvxtbUpLNuLQABJC4Xg+YObz
 6UAw==
X-Gm-Message-State: AOAM531d9Pp9hPTn5OMVx+fOmzxnGJn9UUcxsKFqt8+dx366FMrRX5Ij
 0ijkBFekrEUPGhX7GMg+O4n6XTJsnPvmfw==
X-Google-Smtp-Source: ABdhPJxpmqevWuY8KUJSJ5JLLM0mbQhEipHjvYS717moH6hOT5n/RhCwjrD9qjpKc8zUegOt87J02w==
X-Received: by 2002:a17:906:4995:: with SMTP id
 p21mr7733720eju.19.1590757558815; 
 Fri, 29 May 2020 06:05:58 -0700 (PDT)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com.
 [209.85.218.47])
 by smtp.gmail.com with ESMTPSA id m21sm448548edj.74.2020.05.29.06.05.58
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 06:05:58 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id z5so2022545ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 06:05:58 -0700 (PDT)
X-Received: by 2002:a5d:6750:: with SMTP id l16mr8589349wrw.295.1590757206037; 
 Fri, 29 May 2020 06:00:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-5-Jerry-Ch.chen@mediatek.com>
 <20200521182825.GA249683@chromium.org>
 <1590156658.27807.84.camel@mtksdccf07>
 <CAAFQd5DodDfWsHkhQZP-M70k9_2sUwwb4zHtWfTx5EDyEKkwow@mail.gmail.com>
 <1590755163.23156.24.camel@mtksdccf07>
In-Reply-To: <1590755163.23156.24.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 May 2020 14:59:55 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BBfapVv_3cwGte=p=6G8QXZQP=-ciZ8NBZZeSBGrHmCA@mail.gmail.com>
Message-ID: <CAAFQd5BBfapVv_3cwGte=p=6G8QXZQP=-ciZ8NBZZeSBGrHmCA@mail.gmail.com>
Subject: Re: [RFC PATCH V4 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_060600_947194_DCD79D2F 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 2:26 PM Jerry-ch Chen
<Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> I Appreciate your review comments, here's the reply.
>
> On Mon, 2020-05-25 at 14:24 +0200, Tomasz Figa wrote:
> > r
> >
> > On Fri, May 22, 2020 at 4:11 PM Jerry-ch Chen
> > <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Thu, 2020-05-21 at 18:28 +0000, Tomasz Figa wrote:
> > > > Hi Jerry,
> > > >
> > > > On Wed, Dec 04, 2019 at 08:47:32PM +0800, Jerry-ch Chen wrote:
[snip]
> > Isn't still a need to clamp() width and height to min/max, though?
> Yes, I'll add them back.
>
> This function will be refined as :
>
> static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
>                                   u32 pixfmt)
> {
>         v4l2_fill_pixfmt_mp(dfmt, pixfmt, dfmt->width, dfmt->height);
>
>         dfmt->field = V4L2_FIELD_NONE;
>         dfmt->colorspace = V4L2_COLORSPACE_BT2020;
>         dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>         dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
>         dfmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
>
>         /* Keep user setting as possible */
>         dfmt->width = clamp(dfmt->width,
>                             MTK_FD_OUTPUT_MIN_WIDTH,
>                             MTK_FD_OUTPUT_MAX_WIDTH);
>         dfmt->height = clamp(dfmt->height,
>                              MTK_FD_OUTPUT_MIN_HEIGHT,
>                              MTK_FD_OUTPUT_MAX_HEIGHT);

Note that this would cause the other fields of dfmt to be inconsistent
with width and height. The correct way to do this would be to first
clamp and then call v4l2_fill_pixfmt_mp().

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
