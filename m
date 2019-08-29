Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B11A15BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 12:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wellnuVvkMjM1V5WBWOL9dKfJOufYNr3+ckxh3BijOE=; b=KT4WNw77BS2H/s
	Mp3R+KOwJ0qPGzP88wGl5mIFMr38oXl10CJn2g/VSP+IeOnYedwBbLSW+PXWCd0DjK5chdM86fpdH
	RAuuBoaA4XNJ4kfhNSqWtOi+jNkXd2DSxHbWRXZIwz8XmKR7iod7WE/pU2/trQPs2PlJJsa8k+Mf9
	moxeDm3X927Bo8BHSr/2hnK7F/83yr8qowvKU5V662jU3zOoYK8v4cSa5T9ZGiUg79C+Bs69LFXE9
	evaaQRwNY7PS/KwkTCC6SDshOcfirbP+9GxxTLJnxUuVyT/NAtOoQgY5jd8Ny9OTGcFduiLoFbF6k
	9QMQoHxoI3lb/L1tW31g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HXp-0006fj-LP; Thu, 29 Aug 2019 10:20:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3HXI-0006OC-Et
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 10:20:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so3802868wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 03:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oV1Wry1j4F9UQSbEsy879mgw0vbzvWZi3E/2C9Xr/o4=;
 b=QtyNKj4rIaVLSEGCBYZ0g1rJmyc4gQIGoFjKmwhYraPr8ci/i0a2nu8t3ytdlAwEKt
 qf2uS2AZ8vbrvncCXHzySAjRTRNh6fxEer9JZEcOnvzbRnN/lKHb9GdwMJVsWLa5aEMJ
 jylk7kZTMFsu62btaZsIx3nrZAwFbRVUGZ2qLNClDlGGd8IFlc+BKgnkQdlhTxxvbJyf
 xyuMJLPZKERzHwGan5uQfIBAI/8kRwKpyeZOY9nYolYH//8KEmis+J6sdBTBN2BpuBq6
 d3tgTO7OtDtTDNvPXQ2OStQOjpE5AVGTekr3myLpv/HWgJx35lAgj31iInGbuU11oKoA
 W0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oV1Wry1j4F9UQSbEsy879mgw0vbzvWZi3E/2C9Xr/o4=;
 b=cjkpj3+FOxTIagQhPivR/v2ZMieIVZU5mcm+cMo/Ib72lQ8L4CqEZdlSNJN4xqBtPm
 M9LOVjEe3MgFTg1Li5nzD1cooMRSyAr4Ws9sls1cJ1zjFxfzOOV7Z0ZTmIcm8MKwlT80
 mWqGoZjhXDyAnBDtmqxSNi/2c8Rv2U1Atm8eDDAa3cvjvO5xWXdhu/8FMPpGQOD4E2qF
 FMNs8a92s14Y7x4rm5qePMTKfbpMZfBUOwNG6laoVqVjPRznOgt0dwt4Zr1gwTbjahHO
 Shuc1gECx1SoJdMKJDph4y4toyfQs8w8Xbk3Y8IVwE60sbt30UhLhdEzu22sdq9dbpBf
 +kkg==
X-Gm-Message-State: APjAAAXPBa4bFW8eSSOS3qvb9nfvXZ5zfiyxrjeo3Zuu04TVrbI3Bapl
 nE9qFerRx/s+h5cjLxohYNU=
X-Google-Smtp-Source: APXvYqxmfOlOdhM+4wMcogUraaxSOv9oE2aok+4QbA4Y5jS+6Avn/HUwUOSjibZaoiKClOF9gwjOww==
X-Received: by 2002:a7b:c929:: with SMTP id h9mr11206344wml.1.1567074010805;
 Thu, 29 Aug 2019 03:20:10 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id n9sm1994711wrp.54.2019.08.29.03.20.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 03:20:09 -0700 (PDT)
Date: Thu, 29 Aug 2019 12:20:09 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v2 01/15] arm64: dts: imx8qxp: add fallback compatible
 string for scu pd
Message-ID: <20190829102009.GA22728@optiplex>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563290089-11085-2-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_032012_673456_D2DEFB28 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/07/19, Dong Aisheng wrote:
> According to binding doc, add the fallback compatible string for
> scu pd.

This Patch series (v2) is running fine for some weeks on my iMX8QM Board.

So feel free to use my Tag:
Tested-by: Oliver Graute <oliver.graute@kococonnector.com>

Will there be an updated version of this Patch series which apply on
latest linux next?

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
