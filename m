Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFAA3BF32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 00:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuqhr/Mmrd7W3L2T1VlIm3Mxh9mzQDgTLLiCDcN792M=; b=PEDQI9EbHp94v2
	Ud7+kYVgu/I8m/yJoSCAr6I0Aoer/cj82gob2Rremd6k0zD6sNbD8NEjjrO7tF/6XQy60suw7oJeT
	qYDfo12k7sqsy2ydhIIHPCOSkWza2n7Zyz+IXj47QlJrBPq4080T++WnpkFMOi3qxA0pwC0BoGOk9
	WxaZxrBpxLnaQCALlOTURo/PTYdyx0bqdCgFp6J6s8p01ey86nL7cza7p2k4HQXDL3/otf7RXGOpj
	ridgsNh6ahJUxDC7lFFPgRNv7jjGySYyGOI/rgvFE46kghLzYl279z/nmq9F7iclIdvNmztwUvehu
	KSKwDfO7MiiW6y9Lo1Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSTR-0006hi-PA; Mon, 10 Jun 2019 22:09:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haSTE-0006h7-VO
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 22:08:54 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93F162146E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 22:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560204532;
 bh=wa2HdHpzK5YZ98vLNvJM2KFuWOFO6C+Fp4cfd/H2ghc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ENEr1pjhpsDiMrdFl6+74MII5XYFnkJwxICsIsV8RVuHesr0AlQ6Ug/z78dXTDm+T
 89Y2I0a/mzkriuLOC9wMp35GQ8PVM/3sdZSM3UYigS7lxPbePPfWYsoUvJaNin9YSS
 Zk/5IZxmg6+AxRba0gfW/Mi4RVmdUfSzYt7lN4jc=
Received: by mail-qt1-f181.google.com with SMTP id x47so12181596qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 15:08:52 -0700 (PDT)
X-Gm-Message-State: APjAAAUuGMNe/70o1q1FAsxvaSvwoaAjryI8IqD7Ts/aXNFItt3xbhk9
 wjsGX59v+oGHfrkun5w6d1+61j5KSaM3zccVpQ==
X-Google-Smtp-Source: APXvYqzYXOOjmX8G+khXwwdebIogCYLWvQ9T2R8AhEyK2iWf0s4VXDco+E+jid7s4gmOxWq26X5IXOT0DcFDuZYtru0=
X-Received: by 2002:a05:6214:248:: with SMTP id
 k8mr26084007qvt.200.1560204531833; 
 Mon, 10 Jun 2019 15:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190531035348.7194-1-elder@linaro.org>
 <20190531035348.7194-3-elder@linaro.org>
In-Reply-To: <20190531035348.7194-3-elder@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 16:08:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLFk3=YN+V=RVxq9xWQTrPA9_0zW+eFrdXkGkCnM_sBkA@mail.gmail.com>
Message-ID: <CAL_JsqLFk3=YN+V=RVxq9xWQTrPA9_0zW+eFrdXkGkCnM_sBkA@mail.gmail.com>
Subject: Re: [PATCH v2 02/17] dt-bindings: soc: qcom: add IPA bindings
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_150853_019644_FD997283 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 syadagir@codeaurora.org, Eric Caruso <ejcaruso@google.com>,
 Arnd Bergmann <arnd@arndb.de>, netdev <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, subashab@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 9:53 PM Alex Elder <elder@linaro.org> wrote:
>
> Add the binding definitions for the "qcom,ipa" device tree node.
>
> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  .../devicetree/bindings/net/qcom,ipa.yaml     | 180 ++++++++++++++++++
>  1 file changed, 180 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/qcom,ipa.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> new file mode 100644
> index 000000000000..0037fc278a61
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> @@ -0,0 +1,180 @@
> +# SPDX-License-Identifier: GPL-2.0

New bindings are preferred to be dual GPL-2.0 and BSD-2-Clause. But
that's really a decision for the submitter.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
