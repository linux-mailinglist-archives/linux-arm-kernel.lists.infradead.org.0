Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E93CFFE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1L8IYYEQbs3XUP1eqO+HeQ9ZJ+u6XmYpd+iv1knpf+E=; b=XJdIWTPLwrYeFH
	Cxni/cW0S+Ujrq4/CuEKs/qpsVWaBZZRTUyskvO1A/5rqw3gUT8etemYdQ90wE7Yf+ZFoChcOkhfU
	zXpylgo1q5EJgS80WiUcFryB2YKcgbW1qFpIsI/vCyROPvfWlxXTa7Nl7/1xVjEeNwqK8n99cMeNq
	iHViSLbWihwMcvq3y+Mbwj/ht/R6hLPIoHcPvbdLXRtkLflfmtHlWIxhbQ3ELU8F5c3zxO6vYol94
	zrRcIEvcDC4GGd1ojZpPM0P+H5qN1ibgDQrcW0fp1+Dgz9G9J/W7nTyt8zJqqDpdDfzHGEIBmMqSY
	9tVzy3MX0fiHX6GxD7cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtIx-0007sy-Ly; Tue, 08 Oct 2019 17:29:47 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtIp-0007sX-WE; Tue, 08 Oct 2019 17:29:41 +0000
Received: by mail-ot1-x341.google.com with SMTP id 60so14757389otu.0;
 Tue, 08 Oct 2019 10:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eKu2yueVNgRFpAUd8185a7uHA6JiCaBaoe2JcBRlEts=;
 b=G9y99tj3v+V4iLG0bqYPs3+tPbnpm+K8PGhBA4ulOWisBfs2mqDJ5CCVcxua9X0Bzx
 TVb6f0KBhJy1bc0l/MMaIsdrzarm2gYuYU9syVv1oPFNOeThISGEZ7Te3Nl1Do4fcAts
 6aNd2x2aW8/U3xy9lGvYlbPdehJm7w5ixP6MhLXb6OZ4g6U97xVFakR9uCo7wfBxUEvM
 CVsTNGDcMCWPv/2wa7pmOUIdy3fSENuSbsO9XA2/gPYh8ehyc5qK0NkzRqq1oUdLiifS
 oZae8ODfAnBk743TO+QxLUlcXA+oX+61WnMPrOhKnethMHPGIsmV2T15IM39OkAhV1fQ
 KZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eKu2yueVNgRFpAUd8185a7uHA6JiCaBaoe2JcBRlEts=;
 b=Gq0kMDXU+ePQdcLgMk2CweH0L6OpxEvpIFEHpj3A7VuaGSJSlOahP7rFGdkzDs9KZX
 f18JZf0dM5H81epclKSB3ydFA7LYXPpc+qu7JmEb4VTazpyRfBw2wrLnE5hBHVC/QSZG
 Cl1pdPmSszAbYzN3zOsO7rSphThm9XENCA572PMPYMrrA2vtnn5LbCJl8Qn7mituZgCi
 wmVaO5KpWg6cz6XZsAj1CmSjm6rBHaU8qENOQ3UIpsY+l7MkS2z67SdPAkYArYHLM1IY
 FfqyOZsRJXQaDijSJHEjou9XsHqUFmHSAQY9fc5bzuYES33jBojylJWfaair6b542tck
 2B8Q==
X-Gm-Message-State: APjAAAX77tKCi6qQR/s+Qz96/VaHH0Q3B81NHqLNSIPqBjfte7M6q5/F
 Cghx1uypaxeu1BJZL7VFS4PodFDbUsdeRdStHD8=
X-Google-Smtp-Source: APXvYqzPWuVdtFGE/YccaquQ9QBrKyV7COFmAU7bcwEA7+/a8q74QRmUfb+jPHM6v3jDSj1K4d99J4XdiezQ+Ultij4=
X-Received: by 2002:a05:6830:150d:: with SMTP id
 k13mr25811500otp.98.1570555778900; 
 Tue, 08 Oct 2019 10:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191008102751.GA10401@saurav> <7h7e5f5lbd.fsf@baylibre.com>
In-Reply-To: <7h7e5f5lbd.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 8 Oct 2019 19:29:28 +0200
Message-ID: <CAFBinCBxwcuSd7RYpJ0PvLM3-O1SHuXsbvaLFwO48z-hRs+hsQ@mail.gmail.com>
Subject: Re: [PATCH] usb: dwc3: dwc3-meson-g12a.c: use
 devm_platform_ioremap_resource()
To: Saurav Girepunje <saurav.girepunje@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_102940_032400_E2743953 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, saurav.girepunje@hotmail.com,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Saurav,

On Tue, Oct 8, 2019 at 5:06 PM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Saurav Girepunje <saurav.girepunje@gmail.com> writes:
>
> > Use the new helper that wraps the calls to platform_get_resource()
> > and devm_ioremap_resource() together in dwc3_meson_g12a_probe().
> >
> > Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
the following commit is already in mainline:

commit c6e4999cd930b8bd11dd8d4767e871b47f502845
Author: YueHaibing <yuehaibing@huawei.com>
Date:   Fri Aug 2 21:04:08 2019 +0800
   usb: dwc3: meson-g12a: use devm_platform_ioremap_resource() to simplify code


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
