Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EECA01F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhVaVT1amRWz76ezGQAF0xsqvGXWTCNZaAVDNFBCJ4c=; b=siwcIld1tsGsOz
	TSqUveU10NEMay1x90v7JHKC0K0uvP+wBPQStZqBb6YhYjUI243QqmMBm02va9ZNZpf+iQyomWhzy
	gBOzlBFDlowfjkMWSYZjYd+Hqx5UfqmgAwBUT+4/pmUMpWi+UfLvJxmn/mB8j/vdmdty3gTfCVfIT
	a/ec90vdc6sJsCYQ1MnGXTXvCP79rsgV6sqiPkW3mhGLJKDHsdeWrrbnu/HC6WkS0FXdc5MasUAUl
	u4bdsmueNQyjM124K3DtFiDGqksoVR6vPxCqsZS0kSPYUIvIGrI0koJMuqJwe5MU49ABaadp0lfwu
	U6D/4ye8IBXlFdu5AvOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xDg-0008W2-4R; Wed, 28 Aug 2019 12:38:36 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xDO-0008VH-Vf
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:38:20 +0000
Received: by mail-io1-xd36.google.com with SMTP id q12so4936224iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 05:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z9ub6dj8BakJd5JJrKLeLyNZnt+cLi7XQzPxfXn1B/Y=;
 b=ol+VAJf+uEe+pW+OLeIh97TD4/T+F5ti0j1SOXt8p3g3+9AxRgrzHA2mKJ5vaZU8VN
 Mtw2wgGYnnDXzVmxqToGtF2nfMvHrJsaRTKUm6NFeBvnBEL/AE1VgB2U4A+TnFgGlFJv
 N3OutN+gjpK3Rrv6OQryvih8Y47Q1kTDwWl9GUwd8SvcwKziaGAnwe7nyHPNsvpwQUma
 IX11hff05i2Q3HWy3nNHliuIoVJgJZC4rPy7abvo469srBQp9xh3rCEfMD2lAM1jknIq
 8/zI0DqvJJeFJiUb98QaHvF8wwP/1clSTYqlKYm6UCHQpY3oSvVrXFAXBEEbPpXvHWuI
 boiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z9ub6dj8BakJd5JJrKLeLyNZnt+cLi7XQzPxfXn1B/Y=;
 b=KUQ7ytu41X6o2roPBHPc10HcW7VntuwV8ju13ZySTJgiZYi+DGhvwmtDgwrMqDutKZ
 W/HcRSBA32UJ3KaRit9snOySoH0Ybo4TqvllpyhgezO2y1uWPxSA/LaYBNis0qqf2WNB
 HbZ5PBk+h72uMJMwcV6D+aqQnZs2uVMB7TFYVBP5d5A2aDrHZze2rmAjiRw4FAQb3yqO
 Qr3gp7U6+KQJ7u2cQLz25szBGAAw0V5QPDi8kOt/JV/FQOhwvdLSkUYxg8kIt1rJyNKq
 fjJ6pSfV781Rtl1OUXu9l4lgXUJ8V5BAE7R44aGrbPNy04ZwSSGsPhdrxEkhcx4nlxck
 YTVA==
X-Gm-Message-State: APjAAAWzxg+xP6Q1Poyr20PGXR+e0hi9dkOXfpDAoeaNvmKAacgwSNge
 aV5VR6C3duz8RAXjQby66UJ+7wq07n91IXnYzMbDEA==
X-Google-Smtp-Source: APXvYqxbmqQHdWluIFStqQGMBY9/BhbwVz+UeYCfBFj2T06LLlJsyfJiSeDsrC/N2EuGpd3vnE0wVob9VErTw280+4w=
X-Received: by 2002:a02:3446:: with SMTP id z6mr4201108jaz.105.1566995894846; 
 Wed, 28 Aug 2019 05:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190814104520.6001-1-darekm@google.com>
 <CGME20190814104630epcas3p44755443f37e78b2613f7dda35d71bb71@epcas3p4.samsung.com>
 <20190814104520.6001-10-darekm@google.com>
 <6bbfb6f8-15c2-9ad2-8857-898f4c6435a3@samsung.com>
In-Reply-To: <6bbfb6f8-15c2-9ad2-8857-898f4c6435a3@samsung.com>
From: Dariusz Marcinkiewicz <darekm@google.com>
Date: Wed, 28 Aug 2019 14:38:02 +0200
Message-ID: <CALFZZQHZrVSaKhTSH6suOc0epMQzcgxAHddoJGxvtdhSp1tW0Q@mail.gmail.com>
Subject: Re: [PATCH v7 9/9] drm: exynos: exynos_hdmi: use
 cec_notifier_conn_(un)register
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_053819_022621_CF5E96D8 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

On Wed, Aug 28, 2019 at 10:39 AM Sylwester Nawrocki
<s.nawrocki@samsung.com> wrote:
>
> nit: I think err_rpm_disable or err_pm_runtime_disable could be better
>      label names.
>
Submitted v7.1 which replaces err_runtime_disable with err_rpm_disable.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
