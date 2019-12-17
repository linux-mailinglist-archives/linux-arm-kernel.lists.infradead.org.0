Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D6F121F55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Kb/+9K9wlNd5/79kUtDB0wWCVdXRC6EjMAnPXezqBI=; b=c9MgZnIAYBZuAe4gtSae9vo45r
	9UYPNvKQ8/z/R8gHOMgiWvrMNjGlgXEWQNLCc0uMLEcQLu4xR2+gsD29lQVoSpY22dRwqMJzcdY2R
	5/jsWpr4czJRrMSoV+vCXop2i1izsYORd6+8BaQo/UAU2cgHEkl613pwBbTrEqijbarFaw+S8WryF
	TQ7pJI/u4umVk/xwmLqrUKK3sqMMRKt2g7TLpR6OzC85M13vQppAjbHav/XtTdJMv0IiO3ulD+RPu
	QKaBwmEQF/pjkAWIuHXyI482t24F29ARlZ8IRrMh0n8vIx0B0KZIEMUXjAPW9mRq1FD/0Y68/lZqt
	pX/OIMlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0Wg-0000lO-8K; Tue, 17 Dec 2019 00:15:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0WY-0000kv-77
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:15:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so1177990wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 16:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jYYyHoQRxGSOdiAM34+0Cuf2pCrblmn75emCeEW+TKg=;
 b=XIMMf9/VfNUTzK8xC5swP5gKINuVvSOppAERn4cJimmEiPI7utbo5lBwpIurvsULlN
 ZRAxW9hPLiaKopQGzZyVA3rp4qegJVGHtd8DWy2GgqQIakE5jtD8/UcYq3RclPCDwkme
 +dAOs+3NHnBUdhR1LaC62xAaNksRJPEMTOdhPLyW4+7bXGZJARbEnEjv54AtH+ABe1lm
 yjhZ+EWm1DYQrDoUXtM9M8Sglk7iDOZQJoc+5KhbCInab1uvaRILKajs9DFwZ8VKRov/
 0EANTx0IWmnOzFm/epTvWxi/jO1QouLdNffbetBAeXMW5F5e0j6w8b0a/0bQVmfKGRvh
 S3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jYYyHoQRxGSOdiAM34+0Cuf2pCrblmn75emCeEW+TKg=;
 b=hgBlstWJgGhEGu8trWiayuSTGE4Alwl2goJ3EsIkCaccc2zbaEpzMK+FIjzAkuZrd0
 6KPlc2CvlcUJ2LyKKMMiHKtasiCYENl8IoHrx4Xdj+THdvFx4Yf9tK0TfzTKg8BNY5LO
 AYsxzVkyoVtIJ4DgF/XPfdxInubmH/jzuJ9lIghKNlgihX/+mHsMhBr9+BZ/ca7PSnAo
 1mieCtQdUffR+Yl+itmGL3ynfyc9q+vPwpinTkEDjeKD8WKqMFtwuDs8e6ovKczI2oZS
 ara3GcRW8/aO2WRfrrQBat8GM3eKcSya60jrJozeTiexkF4NAsyfXKJWNhzLw/mNPiXx
 Novw==
X-Gm-Message-State: APjAAAX1FLq5n+797S3z7fhOxlBCgvhVTIe0XkrBqrV9MnGOWvmtHxj+
 qg0ScGbukhBybuXq7VzZo0Mm6W4o
X-Google-Smtp-Source: APXvYqxv88Tu8puIy5rItp/JvAkWSBThhnCLZh4MZ+XkbDdxa+gknsDt7gomIObMs3IrnIu2iHpQnw==
X-Received: by 2002:a1c:960c:: with SMTP id y12mr1858359wmd.9.1576541736489;
 Mon, 16 Dec 2019 16:15:36 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z4sm1049924wme.17.2019.12.16.16.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 16:15:35 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: NSP: Use hardware I2C for BCM958625HR
Date: Mon, 16 Dec 2019 16:15:32 -0800
Message-Id: <20191217001532.13807-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213195102.23789-1-f.fainelli@gmail.com>
References: <20191213195102.23789-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_161538_281395_CAC841A5 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 11:51:02 -0800, Florian Fainelli <f.fainelli@gmail.com> wrote:
> Now that the i2c-bcm-iproc driver has been fixed to permit reading more
> than 63 bytes in a single transaction with commit fd01eecdf959 ("i2c:
> iproc: Fix i2c master read more than 63 bytes") we no longer need to
> bitbang i2c over GPIOs which was necessary before to allow the
> PHYLINK/SFP subsystems to read SFP modules.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
