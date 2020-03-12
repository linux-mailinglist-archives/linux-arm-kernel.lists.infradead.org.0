Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E318182E1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZruXRKIjVeQSmQZAjlYQhwKnNAmnAkPyySQ/ajA/kE=; b=C3LHsn439Ur1Dh
	W8MvwI2CJFAvCgfG2uuN+Uo6E8z2o3gF7I06SbZXgWg1JZLK4vDLNBs5I1nFNRKf/aM2kvVXZJhRh
	FiABGyyakkMWguczcrP11HUtJ5mVu1GZNyQtqipbY2fIIA+gU1GftSmSDHDDH3HqpeiVvhAW9F450
	XGTqWr7hnNHn0ZZ0n8qbIYsU55+c/dKq75SyA2/tRhW+Ocgrp274T/uoNYbgmT+pBns5iRt5qXTE4
	YEPXe59g9M+gEMFjtCmHD0FabAoxHeWHx2TqRR3SteS/lWybsiWH1xAkk5oYetYj0Pm2rgQ7menyA
	wmqpbTXq5gcGb5cyWhsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLLy-0000HW-QE; Thu, 12 Mar 2020 10:46:14 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLLo-0000Gc-5w
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:46:07 +0000
Received: by mail-vs1-xe43.google.com with SMTP id c18so3340721vsq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 03:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=N5Ico3C325Jzu9GMlkuRSJ6WG8mBeI+uKqt4Ftv2/+E=;
 b=CVlRH3u5pxFhJo7LphUB6sCSb5/JtxxkvrApzEyOf8KUqKqlnoom9WTV491prc1koN
 CK7FhZCokP5SAn70UhOFimOihssB2VkgsjbMlZW9aNRYQN9hQn10LW92gITMTTkwn6or
 9erlg489gPljGfK4AOIcJDvUFWSKyTwWBljFMlzLlBvL0IQuHwnpTRESRgWMxnw2GXv8
 CrhpaiIRf1d4hJ+Fq4C5EPNVpuSuvN7dP6oIWI1Gyic+5FfO4TbOJez8MZ3szLJPUFFa
 h4mupStGIWHsDWXMVmK8zV2VRV/7afnqQJPDFmUc8J65+xeJmOkPKvumXx34CTPcR4DM
 3NYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=N5Ico3C325Jzu9GMlkuRSJ6WG8mBeI+uKqt4Ftv2/+E=;
 b=Emk4hHfIsOAF0e4TL8ir/7CKMBuCjCp/zohs0lVVHuebGwJGarQ5ikC61nk2w1U/wN
 01s3u+oKtyVnLTXFMBnz6bxN2Wqo+8IQyIAXApYd7UThQhzYciD7rrx4K2dIbr3HHwFP
 1YU5Vwe1Ex2xCstSJpwOyNX06eNyrt9rniAfaxhOvBBj+A7lXlr8KZZcWS7LqUjDtVRB
 j2lPSNI9uOaQaWynpT8CO2nfmKieKCWh4FQuQC/PUyabcOm+KGua2xElK6cGSzgLcWIo
 Vf38yNOt5Q31dmfbn3VL3rSmzNqBK26lfav75ppI2aluNzzTVtjZz+Hie4kyfGjdRogp
 6/aQ==
X-Gm-Message-State: ANhLgQ0c9ksvb9lwzaVO3QwDpa5uwKXAYY4H60whs4ECzHQ0A47eYtSo
 FfuKNQ/Hs5PlwK7Mgv2EIOSia2N9aea9415nef3V+Q==
X-Google-Smtp-Source: ADFU+vsgyuIiYgrQcK5GqD6i8p5v5NrSmSlYOaVuy0jz1OpUXHvnWHmyBVSNun22jeADPYYRX9B+IOGkpHggETCQUeE=
X-Received: by 2002:a67:7f04:: with SMTP id a4mr4891507vsd.57.1584009963273;
 Thu, 12 Mar 2020 03:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200308214230.15193-1-j.neuschaefer@gmx.net>
In-Reply-To: <20200308214230.15193-1-j.neuschaefer@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Mar 2020 11:45:52 +0100
Message-ID: <CACRpkdZuSvojs6i9QTsL4xUd4Xd_YYiuZBBptMYQCwLSUgJ7Ww@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: at91: Fix a typo ("descibe")
To: =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_034604_225307_05A94FAD 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXIgOCwgMjAyMCBhdCAxMDo0MiBQTSBKb25hdGhhbiBOZXVzY2jDpGZlcgo8ai5u
ZXVzY2hhZWZlckBnbXgubmV0PiB3cm90ZToKCj4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1
c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5ldD4KClBhdGNoIGFwcGxpZWQgd2l0aCBMdWRv
dmljJ3MgQUNLLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
