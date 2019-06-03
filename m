Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EB3326C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 04:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/31F1YXxT+4cVjMA3PDxBNNDaaJkiAVnXjrfUEHzZw=; b=B3Ds9B1oFT3//H
	Zza1I5aqoCXFVUeMS7EuHjfWKJA/fEZHr2Ed2D91I+8ITJrsJNutS75kewJutL2iz7wy3WIEXV55k
	c3BTQ+4gDH0dMcP3SGb518IBaMXvLE8vuHpMdVap9L/ielbhtt2jC7feHXPLZFOqIDMDUJAqCigLV
	QzEPMVyKLSZUNrt0+JYO4KUHPwIdX/cVG4F3kljbHRnOnjhCGYA3ev4ZlEsTEC0eALJQVmJ4rRGPi
	n9o6YDmANMqKcCr0ldFMwY7IlEX5e4B99SBPWj0w8OGlNi3/0E2oaIDd2U/gsWNr3rB82DE7wm25t
	x7PdMeZ2oYZGcck99I7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXd1h-0007GJ-Od; Mon, 03 Jun 2019 02:48:45 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXd1a-0007FN-Bk
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 02:48:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so3561118lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 19:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C39z48dT4cw82rVIn1K+CbAu/jegU5y+sxR7gF6uO+I=;
 b=urIYmDURC0bvf3Ucz7YsBrIWg5eMQIponz+Pxkb/eV9piukxxId/2OWfuKkGH2hkKA
 r/VBNM5WVI0OxTtlbhbO/t6rspN3eb76pxRhHICiMxRIEdmOfi8nQTfK7ZUULWFw7oaL
 75wnDH3wxFSfm4QBfscKXjAFxysb/VPBhZZNpO6L1n1vksX785ldOR+Zrb6fGut2XLXt
 wuwkWKdeydqT6p5WHeBWdNZU++DQ7hDfsu1eNo/0GCJQpRqh0dhSfeBDvLooE/AnyQng
 8vVN5PIwQt0+Cqq1VTKYAqG5miD8XWcHXi3E8BMCPqwukUqGJ+ccUaVwXDm8pN/Wt1LI
 Xwkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C39z48dT4cw82rVIn1K+CbAu/jegU5y+sxR7gF6uO+I=;
 b=TJHLtQXRycyDoJJwzde9qBz+D/iPR60LCdexP+pr1z98VrgJIcxDyprv6JveIzaC5W
 8nIWgnj8vCo6y7O8L29au0igjvA28K/H/RolqrMUvtinlEZi0f22HMK+y4rC/Gp9Vz/c
 fQAooweec0lQdrFnslaopX0eBAGQ12uTSfDA+7M60wo3RtUjkiDGEGSk79pCCUFp96+l
 sFyWt7OlEmAUYytskioT0ZOcYSPAHVUbxcu2kKRN0ptftXjminntDTs6E6zUOLM+Nr62
 TZgMhFIUSJ6DoOsIYYwQz+O21FZcL9Y3KuqmcUPLdhd9Xi4609EAXOOUp/x95CnH7Mjm
 0HDQ==
X-Gm-Message-State: APjAAAVS2t+xtqL71gYr56Ul1vjDeaDpGv3VWUJZs/orvgZ/LPLlQCSb
 nJ0lIylTykfDKjxTrLKgh85Qa+7HOLJJC/oHJcA=
X-Google-Smtp-Source: APXvYqxAyGdiaZ+w+cYB8umtQAviM0JQI2N2QJGsGxd55Saz01+W66hBjgtHwFxEDz5PS3hi/3bkmn3WhI8AIMTuC/U=
X-Received: by 2002:a2e:9185:: with SMTP id f5mr9457522ljg.51.1559530115662;
 Sun, 02 Jun 2019 19:48:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190603004820.36247-1-Anson.Huang@nxp.com>
In-Reply-To: <20190603004820.36247-1-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 2 Jun 2019 23:48:33 -0300
Message-ID: <CAOMZO5B_1HTg6i2Aybv1Hdm4jXg=1R7FRbOnkAXjjG0mk3RZ=A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Fix build warnings
To: Yongcai Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_194838_425661_A0B6F70B 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Ping Bai <ping.bai@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, viresh kumar <viresh.kumar@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Sun, Jun 2, 2019 at 9:46 PM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> This patch fixes below build warning with "W=1":

I have already sent patches to fix these warnings.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
