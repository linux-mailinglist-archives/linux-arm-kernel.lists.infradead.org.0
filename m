Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B979EC0C6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 22:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mkWnjOY1omOBiHnb0bJLPftGCERpLCaUBCa2u7N0fg=; b=few/GwBAea+Qkl
	3cbFdKizwXCUjd43hguSkUtXDqbBuJkf/WCrYiSp+BFRBr0txDp4nqUBDq4EtPp8mDDUMGLezQ+2M
	iLWvboRl09BZprinP0SQAbR7SWX+hQms5WvfUPPCFnCPg4XjxyHi4Y88Ixopu1WdX/XbzsgpCYvH/
	g9X5XoS71m/5Jr9BAvol+sj9ax3IebU+QNPLFhzWXVZqlyT0+pCpDV7RqxcvJXHe3T+AF4tQxto8R
	iU7WB1zzdu4KqEhCdF/+DT2JFS+xWLUatM5OVa4nMUx8pPFrDknI3O2s7aGduHP3mAjfBMRQeGnXb
	ePdv+VvQ2Ig0cfQntZ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDwZz-0003Ub-Mh; Fri, 27 Sep 2019 20:11:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDwZp-0003Sp-5S; Fri, 27 Sep 2019 20:10:54 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFFD121906;
 Fri, 27 Sep 2019 20:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569615048;
 bh=b7udfW27kUSAKzBz/klbWlqHmts0w2AZWPzY+ISPsnU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CHnc0vRGRCkhh6nfZRCObkOauHnm908L8O4k82Ewh33NujxymLEmDc2uRZj1FOI+O
 br/tBVj0/IipUySKwpM0V2oHoaP+UU9KGRbNaeEFxDhY+wRlQSxdmYXYxrA6vSqpt+
 FtBQtbLt5MFvnEY6w7vnWSi0OAGQ+5DJaO3QnBtk=
Received: by mail-qk1-f170.google.com with SMTP id f16so2993756qkl.9;
 Fri, 27 Sep 2019 13:10:48 -0700 (PDT)
X-Gm-Message-State: APjAAAWntGVJUrmdQHvIq+ogsPphqr5XBPELJgUzoIw+u7Xo6JnZh7W3
 5a01P97jSYdya/PCASqkY+bMDxt/i+6V4AQ8JQ==
X-Google-Smtp-Source: APXvYqxKy/HEii2/OoHYOAb41fJRQion1dSlPGS5FdM1aP8Lr6iCqSO+cRGGzikOzCqBYhvNXRHDJuLbTpEBmBQ5OGI=
X-Received: by 2002:a05:620a:7da:: with SMTP id
 26mr6292676qkb.119.1569615047714; 
 Fri, 27 Sep 2019 13:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
 <1569411888-98116-2-git-send-email-jian.hu@amlogic.com>
In-Reply-To: <1569411888-98116-2-git-send-email-jian.hu@amlogic.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 27 Sep 2019 15:10:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL8r-8J_bSaQax3cJkOUL8D7P+6_PcCqaC1k8=zS18moQ@mail.gmail.com>
Message-ID: <CAL_JsqL8r-8J_bSaQax3cJkOUL8D7P+6_PcCqaC1k8=zS18moQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: meson: add A1 clock controller
 bindings
To: Jian Hu <jian.hu@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_131053_231104_A5D4A474 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 6:45 AM Jian Hu <jian.hu@amlogic.com> wrote:
>
> Add the documentation to support Amlogic A1 clock driver,
> and add A1 clock controller bindings.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  .../devicetree/bindings/clock/amlogic,a1-clkc.yaml |  65 +++++++++++++
>  include/dt-bindings/clock/a1-clkc.h                | 102 +++++++++++++++++++++
>  2 files changed, 167 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-clkc.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
> new file mode 100644
> index 0000000..f012eb2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
> @@ -0,0 +1,65 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */

(GPL-2.0-only OR BSD-2-Clause) please.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
