Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6331D6C208
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 22:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsdQ+pk98/tGdMfdJdg18amtqqyC1s84h95LWDsUKuU=; b=avX+L8jfVR3UO/
	LTe9Iz4IpmsBUuch3FIAjNhgLyCmxXfdAcmMq6KQE9N/9IT/hniD2cV1QTHmB1j00On2/7N78YSdr
	jD1Kd0BdSzxLhXbX/B3bReNp0uKeqBababAhbTIJOffrA5aRc7h9Vr+eADHZw3mfJtdGkI5nMQtjV
	35mVI2gMjsVlVUSdoOWtQzp8P6N4VNvLe0mR48jGjoj9O7u+oEglTx+2M7DxNKkU0IRbYWcM6UVDt
	cenQfC+j6XNy0RMpiJoxW4vwdzx9/3Ej79Tgh/rbu0TNsR/GcsDzi33nI9Jp7ZO8yD9EIUGMYw+KC
	teWzK+lRcpyPMHoHI1hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnqOQ-0006g6-Il; Wed, 17 Jul 2019 20:19:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnqOC-0006fl-2F
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 20:19:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so26157229wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 13:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kTmO6laa8AMlEy3FVJ9aY/qrcEHg2mrLH4K7ieCaV2g=;
 b=XjxMWmXICKBvNudqL+OqoYbuuGqPjYFZTGiZiCahDP2nMQG9wXTlspMk7AfaYjOQfK
 kLHfU29/nmqs7tZkWlAe3S8ivfMV4X3Ow9DVpdY34C3s40AxxzR47YxTVRWcnhtB7kHH
 SU7/V/6rVMby7JnW7sm0bD6nfUyXXwdGtrA380+qzDIFggxDhBwMwNdbYEDrF+OOnPlJ
 H4usVBXvkovuZ9gsV710V9UQjhxA/6iGmu50dMZ70PqeotLIb4NyY6HTLJ1Ft8b/hgD5
 LJFmN64p5qTPR0EPiMoXBr2CM2mU9pk29n1xi7yglhAdJje+782QPwFgEk6RxQy0CK7n
 /G8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kTmO6laa8AMlEy3FVJ9aY/qrcEHg2mrLH4K7ieCaV2g=;
 b=IQfv2XnFJiinvs8pbL/Tc+0Rmjxl7uzJ/iq85XJ+QiVSp9j6tdnCTaIXqn7Vo/a5al
 GUx1p4yyLYvVD0Y3b6MwOSLx/wbk1u91WZlXGfE1NVNvWs+mLu/lGFG6H7WAWsrx13HZ
 RfXkyhRDW/CffWIii0Mft3XPzRXPTzieX2/wi8g+WTB+uTlZ923gSAdOTNiTQErAESVH
 7WDs/F2XHS6xFt/03jk4wNLbWXikz7btUFvBoL2I3rvm8VQqObHDYseuI6jOehNv90No
 6elEDIIESjou2n8cZoiKDwF6YFjzuyzrA4Hq2k/NpHDR3mLTOmsDdzvWAbI5HgLnkJNX
 ElLA==
X-Gm-Message-State: APjAAAVSxKy9XApL17af3NBJtDQFI0CL7NbK3xIqi+AaLqkEMaJ348ZS
 1+Fe5Ixo9K6wraP4h8OhqLMz633a1CJOvMcLWwM=
X-Google-Smtp-Source: APXvYqwU9dJ05+8rynzhhNBicgBPmijgGoBBliwmzdrpt/5iiUPQNt2RvS/2MnRfvnaqnA6up+jW2OIgcJT5839RZwA=
X-Received: by 2002:a05:6000:14b:: with SMTP id
 r11mr45124961wrx.196.1563394738526; 
 Wed, 17 Jul 2019 13:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190703190404.21136-1-daniel.baluta@nxp.com>
In-Reply-To: <20190703190404.21136-1-daniel.baluta@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 17 Jul 2019 23:18:47 +0300
Message-ID: <CAEnQRZAagcb5Qzh1ZhAR0g3kQNyR3u1GJXFqwExnzDp-YWTDxw@mail.gmail.com>
Subject: Re: [PATCH 0/3] Add power domain range for MU side b / IRQSTR_DSP
To: Daniel Baluta <daniel.baluta@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 "S.j. Wang" <shengjiu.wang@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_131900_108230_06C22A13 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aisheng/Shengjiu,

Care to help with review on this?

On Wed, Jul 3, 2019 at 10:06 PM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> This patch adds power domain range for MU side b and irqsteer in
> preparation for adding support for DSP <-> AP IPC communication.
>
> Daniel Baluta (3):
>   firmware: imx: scu-pid: Rename mu PD range to mu_a
>   firmware: imx: scu-pd: Add mu_b side PD range
>   firmware: imx: scu-pd: Add IRQSTR_DSP PD range
>
>  drivers/firmware/imx/scu-pd.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
