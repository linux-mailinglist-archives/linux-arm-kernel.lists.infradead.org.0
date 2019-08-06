Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC0683448
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2FJnTnd6vbIJwDFlojGYapQRwMeFLXZhIXIRwNnCqo=; b=NE5b6xA/lRgQ0n
	zfn5m09pQZD9v6xUW9JvW4kizc5i6QBmQNSZKpyHzMuDga9F8eawRM/JXcxorSkrg7rFLSWXomg2K
	ODAXV1lAGKpZRecyUIy6H6vc36yE2gZgFPzdaOap/ZZHJldAkp0BzX4mPZudeUMgqlt5Phz3yCAfA
	9tHlxHstXbhUSRr/rVDpDSNX/vkihzYLREgN1gGbX9KZhQsLJBxjkk1HOvki8dk/LZlNDXKcTTOSo
	YgoVYiEpW9BHvhdmSw+o2tKjYsrOOzNYja1ZQukQNV1jX7jV0P0o1kawg/YJaXIcc4XzxQSwnXK1e
	tN8A2xY00IxKh4ZWycYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0lb-00045J-UW; Tue, 06 Aug 2019 14:48:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0lS-00044Z-C0; Tue, 06 Aug 2019 14:48:39 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4040214C6;
 Tue,  6 Aug 2019 14:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565102918;
 bh=x7+zuhPSgSXmr3tQYyWqjuUN30oPsXPwF0umtxRNEHY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=w19qnzWgKd1l9VJRONLsxahJe2Zq24AjsLOh/sS/sRdya6nJo0NcopWNDa+xlwwhp
 SNMhuFLrRJzo9AN2RT4Lh4pEmbuCY8hXM9gveqVbnExdRBM3Z8FAvp3moXTTWjQm5X
 N21od/+8QLv9Jso9txuCarmFtzgOq725DPDRolCQ=
Received: by mail-qt1-f175.google.com with SMTP id k10so15631731qtq.1;
 Tue, 06 Aug 2019 07:48:37 -0700 (PDT)
X-Gm-Message-State: APjAAAWvNsWccgsoduR5RpQwSxkC6t7HJ8dlpwH+n+7DewUzHv1NBBuW
 K9P3hHKeeXM2qhtzfcmSdqVs2aVOrbTCV2s7ag==
X-Google-Smtp-Source: APXvYqzdOZglR4quROk3FUKY2+tfejjSYSYfOGLsawyMXpxA6lYUzY//ZPC4x3/JKIJvpf2DMxrxuZM012h5EesF4sA=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr3347606qtb.224.1565102917107; 
 Tue, 06 Aug 2019 07:48:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190805124037.10597-1-andyshrk@gmail.com>
In-Reply-To: <20190805124037.10597-1-andyshrk@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 6 Aug 2019 08:48:25 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ6_J1pR-MYK5kmUN5Q+tX32UNFqLW81tmBf=pYxtAmjg@mail.gmail.com>
Message-ID: <CAL_JsqJ6_J1pR-MYK5kmUN5Q+tX32UNFqLW81tmBf=pYxtAmjg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC
To: Andy Yan <andyshrk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_074838_431984_FC114940 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 6:40 AM Andy Yan <andyshrk@gmail.com> wrote:
>
> P710 is a RK3399 based SBC, designed by Leez [0].
>
> Specification
> - Rockchip RK3399
> - 4/2GB LPDDR4
> - TF sd scard slot
> - eMMC
> - M.2 B-Key for 4G LTE
> - AP6256 for WiFi + BT
> - Gigabit ethernet
> - HDMI out
> - 40 pin header
> - USB 2.0 x 2
> - USB 3.0 x 1
> - USB 3.0 Type-C x 1
> - TYPE-C Power supply
>
> [0]https://leez.lenovo.com

I'm not really convinced Leez is a vendor. Looks like branding to me.
We have enough with company names changing, we don't need changing
brands too. Use 'lenovo'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
