Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EC72B9C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWhky9UI9JdO22T37sGcagezNAJGjVxcjMvewLpXySI=; b=JkO0X0kfUs4Wzy
	xbGohGRQ0JpPLE+ISs/OdJwxZlFoLUAQqknIecFJC0lx/V9u4m42k0QyqyoltaWw5IXNFdAKkg2dt
	uIiMb1i+Z+jH2c5dR0U1W/6hVzFSG8O+BzwYy+BsFI2nfNkae+m/5s7OiMJqqzsEDP96DOpAn5lWQ
	E80dUa7vkSqk/EEXALhRMHgsGvPOzQbM9y49R4SBaAJfNzA6ZUx3ySLvLMex2ezH65SGVLy4dMOd5
	bphOAWN/6oawvSXhg71F88U0pEqwp8wiRfERtQ64yRZAuyq0p/qlRxL3g7loomWLzI882WD2huN9u
	ZHkDJ0qCqpniXORW6uWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK0w-0003JK-Bn; Mon, 27 May 2019 18:06:26 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK0n-0003IA-7Z; Mon, 27 May 2019 18:06:18 +0000
Received: by mail-oi1-x242.google.com with SMTP id w144so12411363oie.12;
 Mon, 27 May 2019 11:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=snK6jJsPt2cSi+KLqPDOwYhYAz49h47RS/7FICnk118=;
 b=HUmc6rirKmR1hS/gQsUVm0RGGqPT4N9PmeqPlzvBsEmT/AclV6qMqetS2k+ZqseZt1
 O+Vonuz3IKhAeIac/8ALVXzw3wyEX0O0KXVQr/aS+HZJZcBcA17jb2xhJETkOllXc+Wz
 lzNv6hMZa5n3nvVMipKtUhA6sEdtCOqtcfP9W1yPgc40bJsoseywMbjinhqauVzZzYDe
 2DdtFuaMlbN4WS4utWCYQDwCF20MxmO6klYN0kIEqQldYJlwfqFroerA+UJZGPTxW9d4
 5CVNp7lh14MpD36j0VFTNVHkO/i61eb1Tqq7GSTXPIU2pjympknGZG9RbML3wfZSQsAV
 a4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=snK6jJsPt2cSi+KLqPDOwYhYAz49h47RS/7FICnk118=;
 b=C5p+nxOgjXkVN0YnCcN2wwZW5nx1r4ZVOMBcn1hql5EGNycFvI/CpOzl0CtLaxRWmH
 a409ncYRt953vhYpV1+QLG0ZvhJCaia3fYD2xFwQJJPNMukjj4ASrmS/ZefoT6yLmVha
 9MAUyAJyCNJj5KXbC+P/1hJYkxHo9uk2i6xyOCVMPwZMlhpmFbtHtqjkkdeTNlfyw/WG
 oJ3Jy2Oac9QrZaHqGOS9k7c1+OU5zzTP6TgFTjKdLsPqTwfBCpqNAKsXRk2bdWiGpKrK
 DkzEMFkvfonFqoUqfnS3zgEn7VYyGrPaMoI8howoZ6juBDylz5BQBEVdWif849HC4Iq+
 suAQ==
X-Gm-Message-State: APjAAAWPfmofEW48RE7+xSpJHHPxelBK4wEVU4HRPeFxfUizR86l7uGC
 ArStyvKEPLreEEUwwM98As2LJBunRELiwaUwKNQ=
X-Google-Smtp-Source: APXvYqx9KJ2jcVtyv9sJYJEyKAm3S24vaMJ0KK9SArvolrcTJopXP7wsbVLGJgnh9WHreFlM6dw6JEOu0onvKFlRxFE=
X-Received: by 2002:aca:f144:: with SMTP id p65mr141486oih.47.1558980376467;
 Mon, 27 May 2019 11:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-3-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:06:05 +0200
Message-ID: <CAFBinCArHofRSpA+2Ti1gWzBPeOV8R9H-=gxkm9xFiiBt+4Vbg@mail.gmail.com>
Subject: Re: [PATCH v2 02/10] ARM: dts: meson6-atv1200: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110617_266357_5654605D 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
