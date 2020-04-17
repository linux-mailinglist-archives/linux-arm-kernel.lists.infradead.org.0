Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A881AE549
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TurN0OK4Y+0EzO7KqInD3xALwo9CMqKQPF37b0pkZ8=; b=tdOK5rQDbSA6+e
	9RARCpa9x08zF8Kp09XoUmFjpu8HFinFlJbt8jiW3rABOw3lgeBXg9/mxdyUZdb+/WOs45uSQdgCi
	gqmp7O29GBd+EupMJEQv9JOEgQZ+ZTFGwJGDLj662dpkuMTAJWPFvi5fHX/gkZhbyur+3eOWIILPS
	L5nnJSpoY7A8DKRH9ZT0s0TdGziwO+p58E56DJEFZ8vo9GDK4GvHnBy9tmQQ+93bxRQC05hfoz9GB
	XWgE6XoeHavS7vXdXrUMnCva/0dIgg9epPJD9LGpY7B5Z015o8JnB2ui+a9xUepIvA4u64WfBHfle
	eCVRFJzeQpewH1YSC35A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWAs-0002kY-17; Fri, 17 Apr 2020 18:57:14 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWAh-0002io-6l; Fri, 17 Apr 2020 18:57:04 +0000
Received: by mail-ej1-x642.google.com with SMTP id re23so2334442ejb.4;
 Fri, 17 Apr 2020 11:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+2CABe3J87oGmGpGl7GwWQxi2qTyg12kyqBFsNfaKsE=;
 b=LH7a15W7hJM2SMiwrvKUtxmpOmy5YZ8zKeTytb3wlCIWmdcsBsacigCzJOC50Y3R2X
 wZxyzg6tBnruIJvdlkxMBP24IsBy7vRnEs6tcFsI0MjiENUQpk6Hr1ufNCdeUMI4CHJ2
 dKKH1+J1HjX/VURqfWfTUXmlvvQHgxhCXF4gjYAY4Iidu9sRZPFs1kslw/Lvfp7vsIFo
 ZS5YQDztSa8osx/j0GI340HqZ89y5ympFULCZlVSB0azc8wUhyPAlv5KrtFI8seJ7B3f
 UOLmDiSCTUl+9WCLuV2l6MG5WzmG8Y1AcuyX3Y40rS8PYfi+22u8GUCifnYAiGOxS6xH
 qSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+2CABe3J87oGmGpGl7GwWQxi2qTyg12kyqBFsNfaKsE=;
 b=dXmXIEJbvRR9cuN0Zd3ib5Gc5gQjDIOuQ4yqJbVMIuyZ45/KvBR1dwaZwsjmAqdI4o
 nzjwyXA0VRE+Gaow5ihUJkWsm4ytbxiBZUs8BexKNwK+uKC0X2/fR5IefwPTVyQK8szn
 3noc3YlXbrDvS77d9oDVUYzIWQ3ZrL1dezT1emEKT+FpaAKkjMtY+Rxm1e3IZWlJ9L1v
 euw8ORijULgLAdyBR44yKeiX7vm8hZd56mCEmGfSZ9M/3q32Z280MWPhe1Kf0Rm16zJJ
 pdjv5O6fR0iBvvg4NC7Tz0GPpviOhCZvo08brPS5p2KP+DdfHzxpqAFXhCcYKjD9cEuZ
 dBOg==
X-Gm-Message-State: AGi0Puau4nrSrZ0MqmcMNWUoX4io0xKlxWGx8wlJ0KQjfgZ1jHbmVdxX
 PuCEqHO3OxyrjeoFPTJRzkozvuhOQd/AneXrPFM=
X-Google-Smtp-Source: APiQypKzHWfnTx/hkbe2s0PfVHV5SSdTQJcOehGIUm+PYQs+05JqmtPuZ9jbqfFYl2MaC68tKOT+e3S/nyKHvhp9R6I=
X-Received: by 2002:a17:906:1199:: with SMTP id
 n25mr4615915eja.30.1587149821543; 
 Fri, 17 Apr 2020 11:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200416121910.12723-1-narmstrong@baylibre.com>
 <20200416121910.12723-2-narmstrong@baylibre.com>
In-Reply-To: <20200416121910.12723-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 17 Apr 2020 20:56:50 +0200
Message-ID: <CAFBinCDoM0d-5czQ4-FOTMPFN7r2FSSsfn9QCxF73GrEUsC7LA@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] usb: dwc3: meson-g12a: refactor usb init
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_115703_243102_77C4506B 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 2:19 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Refactor the USB init code patch to handle the Amlogic GXL/GXM needing
> to initialize the OTG port as Peripheral mode for the DWC2 IP to probe
> correctly.
>
> A secondary, post_init callback is added to setup the OTG PHY mode after
> powering up the PHYs and before probing the DWC2 and DWC3 controllers.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
