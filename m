Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBC796A71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4CT4oRxMqFNPWEW+/Y3IFjCBMrTUqMhhUI1xkRDxck=; b=dB0YxYJDvdOn5t
	V9CNN/+ApxtpHzN1B7nqz5OchzrjXvIlN0+qmTjFdunQOVTAprVjDsK3XPlWYA3WWq6DSCdmxDxaR
	D7DnLUcvX4BT73w4KYF4nqL9mQVGSWk15AIXDi+V5czzes6sZZkwzd9jdr1wIFoLFzqXkJIrleOjg
	2RmN8NEz1If0rmDetNsa+d2wNGCBDHqwotmbTIjvdhdSafXaNqPtlu3OTDuG3pOAVj0VM6GH97aC/
	9hwQ7NrqJ2sg2f19+xFYZWNc4Ndzfz5MJYhnBGRfeb/TcJ02tY7zgdK5nK3gkcUcCGvHE2XuAb4Np
	qNW9Ga/GOrSbkjaZtJiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ahx-00044C-Vl; Tue, 20 Aug 2019 20:26:22 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ahm-00042G-Np; Tue, 20 Aug 2019 20:26:11 +0000
Received: by mail-ot1-x344.google.com with SMTP id m24so6274509otp.12;
 Tue, 20 Aug 2019 13:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=twYIezSLU/OVYsbr2IHsXTRqkIzdrg1CxaCIxhHJ0W4=;
 b=qtPpAFID3Om/7WrfwGpqo+WusqVG/L/xldtmFXjwmBDBEZmr07SFzZG7VMV4hPPY6T
 AxUYmYp0rbp6n5GApnTmNJegIPzAS061q30gKP+GRDtLijQfhcVO8K+S0nySmiU4tjyl
 M6wDQKrNRDFX5zV/OV77sPPTnGTk/EKR4uELvVJKK8/ydHprAq88WRHkxwLehgBYHIcK
 cvUVCbxPC0kwklPJMCtLc51yga3WnVaBWY2AyFu92kffq0ue7XFUU3RHIcJJjxfaVbWo
 BlLLRxucvDLhYEeU2WIq8WFRiXTLQGcTjjcUpErPK+TJUyMACc9oNF1udZkLzkXBaq7x
 BU8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=twYIezSLU/OVYsbr2IHsXTRqkIzdrg1CxaCIxhHJ0W4=;
 b=uGLBtgpGmn3PtRCbOW2/cyErbtt8JDIuuARg2QyKFYYHd0wM/qPs8LFZxgJJREF8ME
 6ZetnX1UYAFVbeqL50O6Y3KuFCikYiIFSR8Eoqv3ZCociMvlSFCk6kvB/gUYl2TbVaFv
 KX7+7Zep3Mv8O9IsJ93dMBh7iwMeqwSUMm7waMOK+Ri9DqXZ1EB0m5ut1V4HJGFVb5Uc
 ufjWYmyj9loQNOWcknESeHi9hexToDHV1c4UOpzqVTOjOIQpngvw4rSKNCEJQsjCCROp
 Q2pKRNFr+4vqKuR0qyh7NmkyboBrybNfKCjc3iqvemQ1m2Pk0wTfRrMusFsyInw5ZRT2
 kcfw==
X-Gm-Message-State: APjAAAWmgetBW4FrlLLpNWgNa8usQTTQ/r+DcgJ93bbJaTkzNphrCQKo
 W7LSbFeD4WQkFuXhiJu3rScvSXGPqU46z0NKWaY=
X-Google-Smtp-Source: APXvYqyerGVLGtwIyjcFiVjLmf45wgZ9hv1MOkh77AdzGvP0Bvu52F28OTfLpnlxRkTfP6wDOTfvooN+in+Ddu5+EGQ=
X-Received: by 2002:a9d:6c0e:: with SMTP id f14mr22577236otq.6.1566332769966; 
 Tue, 20 Aug 2019 13:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-8-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-8-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:25:59 +0200
Message-ID: <CAFBinCC9LS+-tM80d8EeyhwUJhV65h11e-M8J6UVy1iE1aD9Kg@mail.gmail.com>
Subject: Re: [PATCH 07/14] arm64: dts: meson-gx: fix periphs bus node name
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132610_772775_08F4B730 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 4:32 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxbb-nanopi-k2.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> meson-gxl-s805x-libretech-ac.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
