Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B434138399
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 21:55:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYSxoDXXiRGSd8Jmd2U/uSaLfuK9o86PfEvSDQNZCtA=; b=XM+gbkKNKfI2St
	OmAtkIYvZR2rDsd53rlzPtWVIqfgzCh6xoRTLR/q+sS+VBclPbluySIlWR991XdEaTFEOt535kcn5
	IBEj8ZdbqWWhSHJ8VPapSrikcl8woH1p6rcS8/i1d9MM3FrYQcW0EimFUdr5+Ui0CsBgGNob7c/Nj
	rFnNgawSSBQYfGg4cNkQzaHSAHOT4otxl0CDrHPRtq6x5RuEWbNNeOHrvb2NWpb2SeXYPZnKgxhdI
	oqepOgqChI4PVHEvVRQOh+DyQ7F9FPl8T5PYWWCuDPK83LoVNjzJSmcAz/yqexDrnlPx7dk7Tka9Z
	LLuj8kr2zPVKS2fIZukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqNmc-0005Xq-FB; Sat, 11 Jan 2020 20:54:58 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqNmQ-0005WT-LR; Sat, 11 Jan 2020 20:54:47 +0000
Received: by mail-ed1-x542.google.com with SMTP id b8so5023170edx.7;
 Sat, 11 Jan 2020 12:54:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0OTy5bWu7ituTAMunYtNOtrElBjU8L+HwcC81VLSIUU=;
 b=dEMbuvbfWaeBtraw9zZnV+PFA3wKM6TgNhF/CzZBEfd1V8JUoS92jT6VjaJCrE9gXo
 AdA397m17nAsdbmHVzi/A54qDJGQkvCBDk0bzmkxK2xgkE8o1Y0YJ+7UD05EcPSpw5iq
 pWo0pQUZHHNAF51LhyEka/D/egFoXXB4bkAlTV1UDiuVSMGjJjMxiZGUvC5C3R5jD7tk
 wVdpcnNhF63CQHqqspIQbn4FMtAkNO7zNIWh6k9IEb/cfocRUIsu0e2abEycx5O+DdB4
 +kpfzn44pjqdPF4vqydMOPR69Ph2Pf4Rq4DDnJlYgKDIKnUXlhsXpF8lz1u5vH8jwda5
 6fAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0OTy5bWu7ituTAMunYtNOtrElBjU8L+HwcC81VLSIUU=;
 b=o9VRraCICShEswQhMuypgyAHAPimqbM3jd1g41jzdaupu6Ujx4J3OdHNR/jhn0qmfE
 TEFYpDH2Q2zs2RJG1sYf1XaYtkGvfMkoK1Rphi4qMeuDAXMHEQShYG34KUfR+sFUxP3j
 fhlM4W073AQ9P82+eKt//qEGyHM91hgGa63+JJqfYj2vQHV6MzBkGRpCvmltIUkpY3U8
 AknLzVG7dQFkEJTQLz9i3vzrvei7LBW5oZ7vi7tvnkOqFBEmvu4eXK/kejKj0FlUpYsE
 GpxsyZEowZkgdroie3sk7PPUWdVKbdb1px1OrLHgMKKlZdlxKveg+hm0F8L4Q0gVwkoQ
 KfKw==
X-Gm-Message-State: APjAAAXhvIibKQi3blQ5QaSr4rxGkfZwhsqePVxXeNItjqOuNTFF8OFf
 AwjhmCuAc81As8xnq7bCspx0K/EqPKKpVBLd0qUz/Or2
X-Google-Smtp-Source: APXvYqz0LCEetCL0C26+oJCqz1q7IMN4akVRCVVYqX4oiFOSFM3JsgRptl38/YKtB70YcL7gMACFa0zGeMazXQEl06o=
X-Received: by 2002:aa7:d511:: with SMTP id y17mr9783140edq.41.1578776085155; 
 Sat, 11 Jan 2020 12:54:45 -0800 (PST)
MIME-Version: 1.0
References: <1578634957-54826-1-git-send-email-hanjie.lin@amlogic.com>
 <1578634957-54826-2-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1578634957-54826-2-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 11 Jan 2020 21:54:34 +0100
Message-ID: <CAFBinCA-w6GnPzFCbmUFNrOY3PeW3=74+ToC9CvXoSAWoe+VLw@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_125446_707731_EE578E5C 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

On Fri, Jan 10, 2020 at 6:43 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
>
> Add the Amlogic A1 Family USB2 PHY Bindings
>
> It supports Host mode only.
>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  .../bindings/phy/amlogic,meson-a1-usb2-phy.yaml    | 62 ++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
there are only two differences to the existing
amlogic,meson-g12a-usb2-phy.yaml binding:
- different compatible string (the existing binding already has an
enum, so that would be easy to extend)
- new, mandatory power-domains property
(Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
has examples how to make properties mandatory based on the compatible
string)

have you considered merging this with the existing
amlogic,meson-g12a-usb2-phy.yaml binding?
this is not a "must have" in my opinion, I still want to hear your
opinion on this topic!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
