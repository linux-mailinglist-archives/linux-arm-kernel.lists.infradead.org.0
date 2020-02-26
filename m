Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C99116FF36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 13:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0N0Kk30sAb9rbsVfVpdmByx2QvPhiUvXmevf54OM30=; b=I5aNM1YfF4L5yh
	x40u2lje3XwryTmHc1w09sdJaCJzbt898zlC9L60fBHTGXFLa3KWw7paAbnOZEt8zR7D/MLWT06YQ
	AUkuv1/2/1Al1FvZHrAIcevZbleAc96v2TYA1Y+dVrzpnJYYt4gGb6vzHvkZYBmpsy1aHKtGL7hcb
	+KIkRCNgJkxjbjGy7oAgQ4UnRhXM3+7BNLPCCzRb2ruFVdVdoyv0qvn+ixyX6Voj5zHr+v01/d9m8
	TqOEBoByPI5yXZF2/4k5KjVr9b+SbnOeG60Yn9nKsDotSgKNLXaQzdOh3az+fxDPqx2x9PxssFuHg
	boGeV8NRiGmENWn4WBlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6w1w-00020c-Oa; Wed, 26 Feb 2020 12:43:12 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6w1m-00020H-QP
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 12:43:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so2943004ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 04:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=naHmwMkEZlsq2F2BdV78t7a2n6KXkH4cArO0DzqKw9s=;
 b=oQ1YXDo6+jB9aH9a05GU0xwO2NeTx0pZ2jpQW5sC7FObezAamb9GLR1j9y80Vd7PW4
 5XEffKqjS2T8VLrsMUL0B2r14bi6hf7ak0FjH/qafJEHkGVUiPpOwEC2K/SotBZqNBdT
 I+xDbdHSXNJZgX2OTKDz5Vc3iMPuXVCPpvMLeAy3NPWzFm1nmue6F3HMibuTpfGnayE+
 SyzzsNrJ6YpQLC0V2Bkc85eHEJ8Yu/7h9Bj3XtOnkGKqumkYA9Zv2fUGZW4rRP7XZJG1
 HxEaYpF9FFJMrft2C6sK5HsayCuwHzrqHHWgJ8KAOXTKT0rjr9T+KJL5lwtaAOtbpBc5
 7TkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=naHmwMkEZlsq2F2BdV78t7a2n6KXkH4cArO0DzqKw9s=;
 b=BKvDTlDF9POqIY8MVkNakOUTZEiKJkRcDAKtjXLBc0G2pXGNNDQQsqTp6Emsc+wtpf
 myFALS9iPVukd07v35q7rJFanKFSGb6jxX7rtRXFc2EvyeX73IpuZHSwX3qUGIvvP1Ws
 5KVJVXihA+BldYgVeoZYy1zHNpb2eCJU1q3PpNAqMkepMFuutSfLlvkwICg/Sf/ng3hU
 4+DcDTxLPJFVPeeIJWJtvmYIscx9VmD7SPU4T82COlIDY3SwCcmMWFxFOdhq0+xMoCxn
 xbm1LiXTV8XF4DY/d4bMRvk2dTKgpMmEqQpHLeggOVX9HlY1Wm7RxKxOUOtFcobc/ii6
 /bwQ==
X-Gm-Message-State: APjAAAXPONoLwNpzPmvH/ST6jSi/PdQgsF1Py2aclbtbwLj4Y8FCbjGO
 9LeYW3DCiLGsGgeLB+kwNfJWKh7cSG3TG9IV87g=
X-Google-Smtp-Source: ADFU+vtwr9qHZQRp7nOQn9p0PoE3msDjcGJRvRyC8H+RwcRzDCO3GQIm5dNAC1Bue/fML340D2kMrue/X63xSXz+WfQ=
X-Received: by 2002:a05:651c:d4:: with SMTP id
 20mr2838816ljr.269.1582720979846; 
 Wed, 26 Feb 2020 04:42:59 -0800 (PST)
MIME-Version: 1.0
References: <20200224062917.4895-1-martin.kepplinger@puri.sm>
 <20200224062917.4895-2-martin.kepplinger@puri.sm>
In-Reply-To: <20200224062917.4895-2-martin.kepplinger@puri.sm>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 26 Feb 2020 09:42:49 -0300
Message-ID: <CAOMZO5BxS-+1=NVgZ4nJcneVGMr7B8sLL+gYidXfgrvPSRB0JQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] arm64: dts: librem5-devkit: enable sai2 and sai6
 audio interface
To: Martin Kepplinger <martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_044302_859342_38CC9FAC 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 kernel@puri.sm, Yongcai Huang <Anson.Huang@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Mon, Feb 24, 2020 at 3:31 AM Martin Kepplinger
<martin.kepplinger@puri.sm> wrote:
>
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
>
> Add missing sai2 and sai6 audio interface and pinctrl definitions for the
> Librem 5 devkit.
>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>

Maybe you could rearrange patches 1 and 2 like this:

Add simcom 7100 modem support
Add sgtl5000 support

This way it is clearer where SAI2 and SAI6 ports are actually used.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
