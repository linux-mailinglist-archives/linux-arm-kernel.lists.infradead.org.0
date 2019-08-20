Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94B496A29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diJ39nUnufwYzVDHwPR1spj2CxdDs6EnGXlGyE/HN8I=; b=WrqHLHNSbtLJF/
	11aN8MEQp7l6Iqgc+kJZOX4NuuCj6OywS3Z1EQODWBo4PyHCqIkarWEE8VNQHUF712NsoVRxL2rWH
	OcFtXg7ybEUXKRYOJzvkzYme2h0Rn969mom4Hk/xs+fjQ+l+ugLGmkGqtzTAG7aRKwSg8XDQBoKIj
	VpPha7cAwouXerEtCHzGW+ktBU4+c3PpMAJquovfT+2tNcCd/trlXHqf+BgFdK88Sk/CgGqCBvRmV
	sP4ee6ExAUT5TSvHjeN0Ra4ebway617u9XxzDLy9qFMtAjGyvJCAGBqRRqU55+1j/RrOP5LEz/Maf
	MICs3KUewTeD02sbPwzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0AeP-0001bt-CA; Tue, 20 Aug 2019 20:22:41 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ae9-0001Ua-DR; Tue, 20 Aug 2019 20:22:26 +0000
Received: by mail-ot1-x343.google.com with SMTP id w4so6273601ote.11;
 Tue, 20 Aug 2019 13:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6O3nF6OsIezS3m94/FyyV74f4w1BQyF9b2ftz/OG11g=;
 b=hrQo4lV2skKSXv8CtS6ag3XtN8M9PayYvljEnc7WxrhkY09nskwWr52OHiPXLlac/p
 JYYske9tLSwYCj7fKXR9ASj1nickrFwjy7/UUffeXRcRuv7kHgWy+zyk5Uk8wYhVKL3B
 OU+CqtU0ePFWo5Agui14q6YGolD28BEvzq5mnoEqVm5bv/BiF8gJS7cJH8hwEzjVrs+Z
 et7XHucKD362BCEzf202AbmP5JCpJHc4d6pgE97JaAyjQaQDnDxCcex0s3ONoftF3sCe
 Hghp7DgWk0/YUFJVeTs4VxTehrVte52Odt5PhDrNfRSntGPSXa3q30t67CZRzVR0oCoo
 JVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6O3nF6OsIezS3m94/FyyV74f4w1BQyF9b2ftz/OG11g=;
 b=Mi95rVPgJ6vEVzRZY4TjlE/9Iyqf8ooIANR6aLqtdl84Tw5aLFBPjo0TZeL6c5NI5a
 OWOhkFJmhD0M/PLL7t259zKFqPLTV3XLEG/5+lKAaiU+MCh9HB2Okxo0fwhiWAVC37pN
 ZS9PO7XignZt/9dOCTNaoKmOht5cp5MtbPi8V6XZAR+q8afLtp0ehJGtSrXKD499MFNN
 5iiC9tvS7ZWino4GOxzBfMLk4/V7ceRMdbENPLrklSLiPATzBrIZ77Wjn8jXWlcQ4eDa
 ZEtOfgNzeb2WJtmenj08JTl9jbKjc66QLZ9Gnbbbn2y5HA4d3CYIdEpBEbcOK3pnyxII
 coQg==
X-Gm-Message-State: APjAAAXo3lSojsdteX2spHdooEipGe+nB3DpkbvKRqGZtkw+il1o+uXR
 YZXEe8yzghB1S/zGAy8B4ZMS3cd7V6yKughQw6g=
X-Google-Smtp-Source: APXvYqx0K7h6tbDRl+C7T3XrBX8gwsSfp6tP2WE6DpcngUbYzTfI6pPfbkaRk0FBWUCRTaMk0XJuqy8HU08MhXtXY88=
X-Received: by 2002:a9d:6303:: with SMTP id q3mr18030706otk.81.1566332544240; 
 Tue, 20 Aug 2019 13:22:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-6-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:22:13 +0200
Message-ID: <CAFBinCB1fRP8-JaUN4sgwFpinUkQiXvo6COdP54-H9CYkmRKzQ@mail.gmail.com>
Subject: Re: [PATCH 05/14] arm64: dts: meson-gx: fix watchdog compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132225_607560_5D6F15E9 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

On Wed, Aug 14, 2019 at 4:30 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxbb-nanopi-k2.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']
> meson-gxl-s805x-libretech-ac.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
