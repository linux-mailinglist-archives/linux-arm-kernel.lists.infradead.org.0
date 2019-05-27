Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90892B9CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWhky9UI9JdO22T37sGcagezNAJGjVxcjMvewLpXySI=; b=DTliiJ0ATPnspM
	Fso4qhJ15myqE3WGnvth7XHI7y2fKnj4VqTifNaw7kvMld0f7lk0AM676zOwYcqXolUpBn9N7F+kf
	FeIRKVTpIjfc3si7lg8eVOG7HkOfE7Emam4OXMh3u38PwE9Rjjfsam8IzqCKD3h3oleuz0X0kgMJp
	eQvZbiRaJo+q0EFdTVLqsv78JvGkpDKKlkIr9VeidkYOEjwCYa5nvJ4Fb+QS0GM4/NYquqRFaEnA+
	dZGdzUKb/r/0bgh+uNaiqH+guCWbVyS3nK+jyKjtchCX6Wpd7f0RvLgyNxixtlKEEChE797g/GajE
	v/5XUyWBCY2YCwVQ2qNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK1V-0003sG-6h; Mon, 27 May 2019 18:07:01 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK1I-0003ll-CD; Mon, 27 May 2019 18:06:50 +0000
Received: by mail-ot1-x343.google.com with SMTP id u11so15483948otq.7;
 Mon, 27 May 2019 11:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=snK6jJsPt2cSi+KLqPDOwYhYAz49h47RS/7FICnk118=;
 b=VIMO5j89eAKkZ3BZaR3UNVrOBTq8G7EzDz2d7UVeCRB3QmXVlk6gO5QBY6a+zqiSwq
 XeT5TmkLs6P1XgBDRpyJBEVhem40JqYvx6iuHyspme1Kqc1kSXc2P32gr5PS+Da4sLRs
 2kCm7xAkLqqaxYpogKocEDBaRqkgFZCwEcnTupyT6lVj+5Hno8Pp1DyqTzaem3jl5VP8
 3tduNdligrKsnpDlQTofcESHOElwHQuM46FMAclszjZLa5I3MbX7c43WVg253VYEXXfr
 oonqzC/yZDOC2f2eX24JhPWEv/1HGnIhgG0SJSiMHLhjOgnMZTJkHZgIC4BoiAxlxFgj
 ZMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=snK6jJsPt2cSi+KLqPDOwYhYAz49h47RS/7FICnk118=;
 b=Vs6+YzjlVUSAytevRVxNcse6EeiooNpdu/O/Zu9BIRX2DkGk1UFocI3TvRmU5js3zZ
 NJtw9shRyuDU9v8Ketdq1clNP0NJK2EjE9C2qlxC8OY+NiJ2/ENf3iFssGS4xnlVU0qL
 p6GfcML/84Wax+APNKNCll70ywJuQwWwCips11XaTmNvZVJFlTmu6JWre2avrG9PIWKt
 8ep2HJyO7aYnrbOajVZYsosAgNOZ19MIpaYlEnCYej76UWYK9dwtGqDxlBz6FnZag1Fs
 0CRioMAwIUoaBhm//8/pT9hgqun3PQ/NSjlg9gjmnT34+PeV1lAnq9AlQk6xKef+U9N9
 rYPQ==
X-Gm-Message-State: APjAAAUowrJBYOFLVOLJOLUKROwHZJz4UmKv7+NwULEfVyrTmVMplNyW
 ntB5LM8kkV9tligxV6tMK9d6dBlr0nYQByyUIA+pV9JseEM=
X-Google-Smtp-Source: APXvYqzNvbybIxun0sU5draEQ7ge3c2t/2uDs569BXI/oeZpZdVW/zg90e+PwWX1spRmfHdTfLHxqYz6QYBGe1UcujU=
X-Received: by 2002:a9d:32a6:: with SMTP id u35mr61296326otb.81.1558980407622; 
 Mon, 27 May 2019 11:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-5-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:06:36 +0200
Message-ID: <CAFBinCABE=C3LP+8kxvBiuaiXVmKM6j1Tkxhi7tdXZcRy=qJNA@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] ARM: dts: meson8-minix-neo-x8: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110648_442942_CA79A977 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
