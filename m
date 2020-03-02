Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8804175C1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1e61fwuql3rDvOY2LtrrQvLD3hQ47N+FmZ9fznxHrvE=; b=JJ/cEoM4DVRFZS
	D8AwAFBRauk5O/eoSUxWeu4EWNRJ2wF01Z319kyuTqjY7zdXOyhC74IhaN9vPvlEFN1gvTJPgDK02
	IqX8XP1POGvhic+I6UzDkErEPcJO4O7l9/eO4/g5zELJ2A2zmYzGJSXc3b3QNacO+8yWE3Gesi6LD
	qybJDmAsg7mbPiH87ZBl6vFw7zvmYNiWNvzt6nD4RpL8sYRpZb3UR9wzBkgbQW9gY4AHysKFQYOKF
	WenuKysNm7KyLhH2KEybdLM8uqBlA3DSf+DNkyqbGYuI4C5IPQMbaE+kCw2TIhttpAl/zD4Fx+xPh
	0846KZYjFVtG7QzolDvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lS0-0006hZ-VF; Mon, 02 Mar 2020 13:49:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lRq-0006fu-FI
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 13:49:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id i10so13976356wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 05:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=pDQHChPAvHbaHiAh1rx2hc7lXXqfrv2AqyVIgjj3sL4=;
 b=UH5EmQ8xNHA0Plu/McRn1qzyUYWuxXbSKQ2Os9L0yoktOYu7tCx3sdJI7YWZDxYoHd
 +YL3OEUKvM/W7hKB41X+4FFEjSxBJAVk5gdh5ny/LUcvZAIIrr1B3WQhGeUbo8nhyhjJ
 YErz9cLbumJ9EU8Q1wTQxX1Bo4aRM5DcDqFGnmdskcTtTl60EykI71bjpWhvL433KI6k
 1zp5xmHgz0vxdOb2LAhL2niLWDwbVPa+UYR0WaVrxCd+4X1KV0gISqCbaTXsch8ZTvpP
 2pSH5mZIJxey3CFXFP6hifTlnIokOwzOBrOrJD7jVSHNogev7ThF6WI4H0vnNCqvkDfL
 J1iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=pDQHChPAvHbaHiAh1rx2hc7lXXqfrv2AqyVIgjj3sL4=;
 b=ukMkgf7O/S+3u9UJTx4QrAEhBOIXtkKYW0DSpZhh7V1Rvh4eECBLa+Kg9P0tGyodg4
 AakQEuTDCaFwqwx0glQof1alZhywyVlF77wo1osLjYYv0uYQ9bQ9xqspMoXwsGa6XFLH
 v7ha4G1gi6SLNm3of6/zNQwHA/ub3dzTF0skWlm5F/88+Y5cVNN9kLeOteIvArvWPIvW
 0OW0TmIeNOhJ/LYnxxOyWi4EnWRhmmQ1rHx7Dq6MQE6egOpTpEr+7BH94hkaXdYjpu4p
 ltPdsQFQg3hCJlg0qrXFCZKDmk6o3RvnxQyjiqbXHm14OFP2KiP43r3i3S3Bu1am7DtZ
 nXqA==
X-Gm-Message-State: ANhLgQ13WKP/HYSkCk5la2VUBIhKd40EJ52kgPjbsMQseFvFlFVuDowL
 bOhvwg8r7p0QS99IShs3UAZn/bT0rummSQ==
X-Google-Smtp-Source: ADFU+vvG6MBPGRkXYyxVAEaRWeNUehBlIcQSHO6fOGOEKIiRp511b6KjpX5fIWmrSFxV9Fue65UAYA==
X-Received: by 2002:a1c:2d88:: with SMTP id t130mr7393177wmt.68.1583156963877; 
 Mon, 02 Mar 2020 05:49:23 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h10sm16163783wml.18.2020.03.02.05.49.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 05:49:23 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson-g12b: fix N2/VIM3 audio card model names
In-Reply-To: <1583135051-95529-1-git-send-email-christianshewitt@gmail.com>
References: <1583135051-95529-1-git-send-email-christianshewitt@gmail.com>
Date: Mon, 02 Mar 2020 14:49:22 +0100
Message-ID: <7h8skisw7x.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_054930_512476_D30C50D1 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This is largely cosmetic, but Odroid N2 and Khadas VIM3 are G12B devices so
> correct the card model names to reflect this.
>
> Fixes: aa7d5873bf6e ("arm64: dts: meson-g12b-odroid-n2: add sound card")
> Fixes: c6d29c66e582 ("arm64: dts: meson-g12b-khadas-vim3: add initial device-tree")

nit: no blank lines between Fixes tags and others (cf

> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Queued for v5.7,

Thanks for the cleanup,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
