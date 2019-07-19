Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A76E72E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 16:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpDs4JlUAcLrgRR+/pPKRCxg7uUPoBJPQM+54Dhcx7A=; b=WN8KjtQJ1dENrV
	Tjm8v6Nr/hIhmLfEGhVIFqsh+vrIxN7IxtaI39uyHNk5yG5NDNQt19JXm9ffAayFjhhK2nBqyTO1Q
	UplSpbufkWRAkmUZsFbC423W1N1v912v7kh6t/wwVbJxEO8gybwhyp08cJ8V+H5uIewCuY5HDISI5
	4M1FtQqvrAIBvKJqF3fYkx3KddNIXMmbhVMxkjr8X8V2V/9vDxYFgP9wcYiwbKFaCc9M9GS1w3XC+
	eWsEOvxgwS01zrMYL9pbyopi05ODDCYL0T31HkKcORFfgcOqs+i/tlsPk53C73O3f9CWH/bF7O9WF
	cuwN7U27Cly/lnlw08Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoTeu-0001gJ-J1; Fri, 19 Jul 2019 14:14:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoTeU-0001ff-3R
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 14:14:27 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6382321872
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 14:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563545665;
 bh=kF4C0rLKo/+VHRKsgi27GKIkFYRreK1n2xTBXnIo9gc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ykkNOiFKx4G8uPPplOyDIFgxgyOL3Cn4pEeXQNdvrx1SuECY1T4+kl7+1erZBMHit
 4poC0dcozMMWNRTjBHHois+rhADbfvnCixa/sQ0EVEoWgmXBPRVznhT2I9lHVSML5P
 UoY/wyNyp9FywRjNuib4aaaN/6vPQpCtocnq+7Yg=
Received: by mail-qt1-f182.google.com with SMTP id k10so31155098qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 07:14:25 -0700 (PDT)
X-Gm-Message-State: APjAAAW25Tglm6JKokKfF/keOdz627Nfif152Iwk/ALXJYFSSn2h732e
 7xDwONQiwOAjIe9lELXKkJSFZJojvu88qhqmDQ==
X-Google-Smtp-Source: APXvYqwdoLGbezC/uAf+2Ab30hXChXI///34VWXLnkSvpI9C8M/7R1bDtxX97JliY9U+1ZkAm89c18Jmjzp24uxAW7M=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr37222244qtf.110.1563545664593; 
 Fri, 19 Jul 2019 07:14:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
 <20190719070926.29114-2-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190719070926.29114-2-manivannan.sadhasivam@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 19 Jul 2019 08:14:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL5_czQVQbFiiDCEbJH1L0Ov0Jf7WuWSNjJTKdgF5mA+A@mail.gmail.com>
Message-ID: <CAL_JsqL5_czQVQbFiiDCEbJH1L0Ov0Jf7WuWSNjJTKdgF5mA+A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: Add Vendor prefix for Einfochips
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_071426_164267_1F32BC85 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Darshak.Patel@einfochips.com, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 1:09 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add devicetree vendor prefix for Einfochips.
> https://www.einfochips.com/
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
