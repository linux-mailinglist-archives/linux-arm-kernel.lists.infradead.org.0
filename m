Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4521DA06F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTSwSLNnrgDDLGDbvfNvzqnPddj3aBpvrizrz4ob+WA=; b=WeZwOByA+J9Q+o
	u7uqgT+/j+t72ext4Pr7+gYiHpzJrVYHNrYxHwt/+pBknO9rk6By/I58tU8OBEgdFPUEMNYTC7s2S
	O7Xi/uR9TJoY+qOErhdHzGw8KRfbNjb4dG7NQULFq4FIdzWQpolnX4t/iI9qEcZztir7+sGK7gmNM
	H7jNekqvbyO/ox2m9IdAC5O0tTxJD0Oo3SG5Grvy6y8QaxUkfhAVB5U04YVVzsfuCuYhz1KK3GMIe
	KqBsqXB5tCRuKlcHlnTLlx0KtediHkGa2KLhvYeRoHzT6IIjySXDTk1zPwy2c9Ysf4S/ubi5oJxoP
	DwSYd0jkI8l+MYYBoFlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7X5-00087f-5P; Tue, 19 May 2020 19:04:07 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Wv-00086C-BW; Tue, 19 May 2020 19:03:58 +0000
Received: by mail-ej1-x644.google.com with SMTP id x1so215742ejd.8;
 Tue, 19 May 2020 12:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dWnh3Y0cvz0YAKTVuUXngQ0iqK3p/t0KQcya+B0GLsU=;
 b=QlqHIML7NZVvRAtAKAB5fBsI55IWzMQrniWV/wTiDLMMk9AJ9vgU0WC1CYurLjs0KC
 TrUwCd2JR7cDEgy/YluwmkIzW5h6B1+4Gq6RSMamNupICdIwqNO3KiX1c7WtBMNzQkKf
 eM6zRBe026n40mzOokm+nCROEK+tadDCL2macf+tQQLXrl/avW95Zf45GYJbweJ5j/dS
 aE9ZST9ooRLddeMVq0niI8CXohdIbO9/zYgAMRXfKDnqTNWhOg9/4o8WOb2hNTdhcy7Y
 tmrynuv80VZupWlMXdKAuY624Ftb6LIqhhVXwTOhHotqlLXGheCGRHq0qTevvFwWXa3F
 Fvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dWnh3Y0cvz0YAKTVuUXngQ0iqK3p/t0KQcya+B0GLsU=;
 b=gfKNXRNpyuPgvBl5x6sRwLeXisOyE1td+2MjhY/HGqysFRh0W2XV8+Lk1HlihdVIZD
 Yb5SrUnN1SU1UVsEMuDK1jy/E4zQvNDYQlvJZ4RjXL+z3L1T+vbv8C6AR13rDNN8Fvkr
 0yQIQKs/h8OyUEuKEBE6VGfWLzGgzFco6Z29cY4Y7S6sODjGDnu2qk40SblNO8pNHQaL
 T4ZfUfP5f8WqxLx2pY4FeIa0DLXgs/212QOkljxEfmSCnBb143indMpaVxhpyhKibODO
 fp8OevjDDWDrDHqzHWceI89xLfensWxeuqfjo0FtpjMeg3EhnXBfipGfeKQL5SR4yhkD
 40aw==
X-Gm-Message-State: AOAM532AeDLXcitdHqYQ6AQSVnG1i3q+HmKuBV/QqA0XyhB9msdoFDQT
 0IY0tFaP+iNHxoQRQxYIvykiGq1nVV5anT70+rqPA0+zm/w=
X-Google-Smtp-Source: ABdhPJxTFHlYGTafiBsxGCP3CMKRrW2KSoj8pqEqj5gnGS3v6wPnpBVr+AOA5c/wSmg79TJC63PprGhG4e//Cg3dCtU=
X-Received: by 2002:a17:906:4e87:: with SMTP id
 v7mr605228eju.384.1589915035572; 
 Tue, 19 May 2020 12:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
 <1589912368-480-8-git-send-email-amittomer25@gmail.com>
 <20200519183345.GA434412@bogus>
In-Reply-To: <20200519183345.GA434412@bogus>
From: Amit Tomer <amittomer25@gmail.com>
Date: Wed, 20 May 2020 00:33:18 +0530
Message-ID: <CABHD4K9Y2cWNAMdHyUvbkbZrwzLzmug2bm-j+929xv3TgrxVWw@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: reset: s700: Add binding constants
 for mmc
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120357_390543_3F91C35B 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 cristian.ciocaltea@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, May 20, 2020 at 12:03 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 19, 2020 at 11:49:25PM +0530, Amit Singh Tomar wrote:
> > This commit adds device tree binding reset constants for mmc controller
> > present on Actions S700 Soc.
> >
> > Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> > ---
> > Changes since v1:
> >       * No change.
> > Changes since RFC:
> >         * added Rob's acked-by tag
>
> And dropped??

Sorry, I just forgot to add it.

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
