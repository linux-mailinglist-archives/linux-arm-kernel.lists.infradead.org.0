Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77A111FD3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9x0hoMsyVEZQFiblTGYq1Ha9CIknBOj6h8Ne/TfJNw0=; b=Dr9HCJgcXorcbBVmCLgL/w75S9
	1XeYrwcPFQaJ+G2ZvEp1OEDjTO42xD9NvxqZEz7C9VPxTcQR6+3i0SM7NwqRQ4HYEIIaHMQUmyFry
	mnXW0DR9J+WsjG8mGPs8jg8qSTvDswlfAUZ3bwzZ099bz/XB2CgvdSJJcpjjPAyKstN4N9a8mFXQx
	zhXIkuZvrm/9Pn/sVcOKpSHtgGUC8JJM0ctytJOIzZc0v6AxCiAsK0+ct6cCs5g099czpXOVvcgl+
	g3HHoqsWLoeWfb8HVTAa0AKjdf+MYBUQycwvjzRubDKOvjAITbUoZ/H4QUHaWT0hB/XLd/W6Mdvs3
	9EbtNbXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igh7k-0001tI-2V; Mon, 16 Dec 2019 03:32:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igh7Z-0001sU-Ll; Mon, 16 Dec 2019 03:32:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id x13so3830902plr.9;
 Sun, 15 Dec 2019 19:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qpVTc4tcUglBIv/YUnNYtkmKTbZEgyX3F7tDT+7xZvU=;
 b=cFFTXy2vz5jh9KdiKKjPPBUP5mQwXiFWt91lRJv0f35dZUzhtz5BMXvSuZoqPMBCeW
 IeV2BqhciVRDPIBDCQz5lL0jENYLkOo5VuE45VV+bF0mx4YGJzxINbz86r+dXQ0Wkb0v
 8EUJBQE2tul8OHHvP/6SfcGqCndOBH2lPhs6IVIqBhGj7FYLDK35VEABGez1ov2KJFHt
 85QfmDabsYV2ZNPgZWUus/5ltcLculC5Dh0xsxdXfLuw3E06ZLTJFAhLBIvhn4CRDGu8
 imME8XCtbptxU4NUL1ytk1IoBobv9a0oX8BG0j/v++85mcEgvPHtwbUS3y8EiGTFyDUQ
 EJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qpVTc4tcUglBIv/YUnNYtkmKTbZEgyX3F7tDT+7xZvU=;
 b=Hiko03Dxbx/xLpS8qfMtZYqNvQX/43GMWudZD81wXeDt8WqjRb7z/zea5w6JZa08fl
 BObxyE8uP8JUTPfSZgQ9BIg400AagDyM4fZkkRpbPVr2qfOgZ07QPXT31q4TvfUjoiPr
 pq2nl3pifJybfrC30QiVjM9CtdyN7aE0VzZfThghk6224tubKV3zeuY+NqSx/QdJu44W
 No8ls+RzRUDHZzRSIRvzlydd4QPWzy+vN8as4akk+DW2J/ay0v20GAtTqR6gObyskEPR
 1G158794Tpqt3AhQsVN62oKSNBBRlqwJyhns9dFD+jKPtgYOwdwo0Dn2FnSEDCrUm1GY
 +oAA==
X-Gm-Message-State: APjAAAXhKgrlyBtSiMO4OiXCVUDF/5WYEWNSVcj68f9QJom0xn2i2gUx
 yzW1ss/ElWD5H6x55d8EzTM=
X-Google-Smtp-Source: APXvYqyp9/I0lRWx3WKwBEci61s+yACCFwEJpSLYv/rp8GpXBQZNwGPKMtmRmjE3wBTDRRDGCXJaWQ==
X-Received: by 2002:a17:902:541:: with SMTP id
 59mr13821692plf.190.1576467152279; 
 Sun, 15 Dec 2019 19:32:32 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 78sm19052403pfu.65.2019.12.15.19.32.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 19:32:31 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3] ARM: bcm: Add missing sentinel to bcm2711_compat[]
Date: Sun, 15 Dec 2019 19:32:30 -0800
Message-Id: <20191216033230.26652-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <b8f2060dacd4c4f27e0e1791cb12462ce740927d.1576396141.git.hns@goldelico.com>
References: <b8f2060dacd4c4f27e0e1791cb12462ce740927d.1576396141.git.hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_193233_734845_2C60F2AD 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: letux-kernel@openphoenux.org, Tony Lindgren <tony@atomide.com>,
 linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rpi-kernel@lists.infradead.org, kernel@pyra-handheld.com,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 15 Dec 2019 08:49:02 +0100, "H. Nikolaus Schaller" <hns@goldelico.com> wrote:
> commit 781fa0a95424 ("ARM: bcm: Add support for BCM2711 SoC")
> 
> breaks boot of many other platforms (e.g. OMAP or i.MX6) if
> CONFIG_ARCH_BCM2835 is enabled in addition to some multiplatform
> config (e.g. omap2plus_defconfig). The symptom is that the OMAP
> based board does not show any activity beyond "Starting Kernel ..."
> even with earlycon.
> 
> Reverting the mentioned commit makes it work again.
> 
> The real fix is to add the missing NULL sentinel to the
> bcm2711_compat[] variable-length array.
> 
> Fixes: 781fa0a95424 ("ARM: bcm: Add support for BCM2711 SoC")
> Acked-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---

Applied to soc/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
