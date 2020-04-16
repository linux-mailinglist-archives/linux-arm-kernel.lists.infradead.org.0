Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DEF1ABAB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WdJpYP6vCG8ZQaKNCoxYVxSZ2H7XXAlHgt/qKHi4co=; b=YROXzMDRwnWtxD
	/3uTU1h1XnyruA+dznBPOq8TfRrEWzOJ1kSdf1bOqF7NhOiPk6trRPGkjG7T1s88scnulgP9C10ks
	cx+qYc8hUQN1kVFto7ZVGth2+US9IpkwL6F6mdyXOYv/2rd6NOE89I9+rchzEU60f4ElmhGkVOgCu
	/KVAnAuS2Mu02G68pxxkVX0fh/lMgFny/liwHUP6ko4JlhLreX8IQrGmRtS4T9kUvBtyxs9uF5mhY
	CUKh8dQZDYE/06W5Ek+ZzcEKR0KITmK94OnbL4FfaItUmRIzA6Vb3Wm37NDpJkDc58T8CfBwEepl8
	Nq3FFmwYAJu7FNZbr5Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzSB-0004kz-RJ; Thu, 16 Apr 2020 08:00:55 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzRq-0004aa-Rw
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:00:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id j14so4855815lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tjVFjiLUKq2dceYjR/sUZuoN+VaM2KkSpDEryVFjJAM=;
 b=bUozIsQsOLIKrmIe04JjO05g7JBKyqXq8AdHzoY9+98g1GkgDs3t0ZDClZymhjwkrp
 MByC50ZFFHYsMPZGUI3oyH1zekRuiC/DmTVL+6fK2pnd31mlDaqeXshW2PrfW6TKGkh5
 dBeBVQy2o/c8U3eusS+I18vX7fIsdLrap/MTuqke74f8h1sfJsA/vNI7QewuTkLGLfiX
 LZDVWtncz77CnlPHYu7z1PwxOXGCgThpfqHN2sydIRa9pH9054gcPx/FnQbBWcbrFCu/
 B2wJoM2zJjIqKJYQ4ZUYjeTBW3+l3o13HlulzKtS/fh5gGg9WHIISWPjKIz6H5cx0w9h
 Nn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tjVFjiLUKq2dceYjR/sUZuoN+VaM2KkSpDEryVFjJAM=;
 b=W0FsrJLlGf2+SGS3mEGndGRq1LXVJ7nUXLMmP3lxE23Ajyi5sTX8Qj+jPioITAqsgp
 AZ3VWpiFI88pKuofCxg4untG+ydYdpX2tLnnlraXd86CfpxhhSVRzzjZEihYP6Ri4DYD
 OF501wXbedOQRBF4SCHHkGOEm43KJiIaF12ngZl8EXdCPR4WawN3OTtZXzw6N/N3lhzv
 YhtGRqMOigDO7bCusHvd/yDbWLuLtzgS5SN1iOkr3MgF+BWa6o1Zj+uFzrsE/RT2GaBu
 c8Fiq8TbttnzmRUGsFBBzjmbHST9RfQGwMIaOmcjReiMVmzwbb//XzfOc99WyLh/zfQN
 6iTQ==
X-Gm-Message-State: AGi0PuYRJUn0iV/R+Wy4kW9bkMD/w4jXwQ/tZJFFDkIBvE3Cv8JzKM44
 DS8mK0oBuNG5vbCFwINUEoI0uNhvF4tVvSb1ObXRcEoK
X-Google-Smtp-Source: APiQypLJmZ97wdSRNvt5K0Vot48JkDgvMOmnFHGu2O4iKZQqqK02fJBxbBO5EYfsbjVxASLotokCg8oMB6V5oELv+9k=
X-Received: by 2002:a05:6512:685:: with SMTP id
 t5mr5198837lfe.47.1587024032955; 
 Thu, 16 Apr 2020 01:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <9feeb04805e5a406fe22a92e3f280abda39ddda4.1586289920.git.sean.wang@mediatek.com>
 <42100afe6f97d28447c153bea6b54ea556cf95ca.1586289920.git.sean.wang@mediatek.com>
In-Reply-To: <42100afe6f97d28447c153bea6b54ea556cf95ca.1586289920.git.sean.wang@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 10:00:22 +0200
Message-ID: <CACRpkdbszsyw550SZHBx73SHhUeDsKYC7od4pQRvpH+OdorCHQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] pinctrl: mediatek: make MediaTek MT6765 pinctrl
 ready for buiding loadable module
To: Sean Wang <sean.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_010035_288686_7ABC2768 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 10:08 PM <sean.wang@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> This patch make pinctrl-mt6765 ready for building as loadable module.
>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> ---
> v6->v7: remove change-id

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
