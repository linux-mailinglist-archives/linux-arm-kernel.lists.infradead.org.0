Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE6C12B0DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 04:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Si0EYUF3FikQlPUD75foMA1Av5BVZPAv8PzsnZoLiLQ=; b=Hgz2VVDVdFIAmP040IKviQcRBw
	o+DB121mGt4XQjpE8t+AQ6bPDHmxJsCrqhyVv8+rkGsoH4rtOFCSe/VdLGQT5hjbd7OznIeto6hIX
	MEf+HsYBIbc5BdKJuss2nzpzzJ8ofEqpnSemERc8vmVeqnveXq1kRFR9Hhfr/ZhTTIITwmmHlMfiP
	PSM2GfjjVO/fpS1pP0PJ2ZoAjUTQLpkSIslvTleSLYgqQw9R74szv5h5mTiz5upovemTpOmQzLNM6
	LKlDt6j4DbnQFdu/6iOwZ9iqa+wBLsAzc/Sq+xESGBCzbt0mSt5YvuvZK7rqqUU5qmuRd65LXSFmx
	tz3/hU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikged-0000Vk-Hk; Fri, 27 Dec 2019 03:51:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikgeW-0000UR-Ie
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 03:51:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so25044968wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 19:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LJGZWYLF/oYH+IYqMO0aJyE+4yrYnOlbo7DEs+O617w=;
 b=r+Q0zYT4zwfDOWVnUpfwTCWKUWGJMY+bevNasGdqix6GgZnEAJ46YawUwO2NsbctTd
 iBdcHY/VwwBwZDJJC3T8VkRL1rGLaEMYCNueCpu5U0zyQ1/rcnApeomqx7erYXq5Z67z
 +4XBtw/S9e1pmFGlBryrDWWLu+pgf8lwihd2H+RM+jZC0DSYbx2DxERqcXe3d8rzOqDi
 xl+qXX+Qx2OIyof8g4cMccVj2VsTZ7SKsKnbYvFhE/C80AV7tEtyBGYl/Fvy0DTZHovp
 wQdSs8O2tD3sETD/dAakRuyyB4oZEW9wb9dhJG4NoygjtHF2fyqtQK7wC+eVleEgeB9X
 oobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LJGZWYLF/oYH+IYqMO0aJyE+4yrYnOlbo7DEs+O617w=;
 b=AKNiVA3sDe4p3soSizJ2iGoXzJPkm5Exy+Wn5i1gi5X4gtCiMsNVqsvXwuuj3MLFk0
 iKZCkhdX8dgy2JPamvb98719VFZ47gUoa4Kx9hBC/1eQovJsC+tzXgx1R05a41rTKZJA
 bUXx+7AQQamfFGfbEivj79Ar5YW3iCSIX5/jeS+L2jTt/+hAu4X7J+/F8sL15F+N+cX0
 Zr1VWpwKmkOKIGr6LUHiCebTtMd6KBf7m0XT8om4ExgHJlLSJ3d580E1LWcdL53WilU5
 xbdAlW3OMdrYbCWBZgCVbrIZ0KPD/Te4Ac+4lIudicrniNJSKazb/7pQd5ahTCyo2B2Q
 ySIA==
X-Gm-Message-State: APjAAAXnFpZdp/nzIWJDfKDMBu5OlQgmk1TJi1Zs+uDRdkPtP04BOBNL
 WxwSBRj0H3xOfi9ccsitkIc=
X-Google-Smtp-Source: APXvYqxqA4tnROpHjg5MouSdHDkHuqT/iZfyFVmbQNOC4zNLziYL+juYUaZRk3RxsF6rTY+zaLsNnw==
X-Received: by 2002:adf:fe90:: with SMTP id l16mr51018801wrr.265.1577418659402; 
 Thu, 26 Dec 2019 19:50:59 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w8sm10289618wmm.0.2019.12.26.19.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 19:50:58 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: bcm: Select ARM_AMBA for ARCH_BRCMSTB
Date: Thu, 26 Dec 2019 19:50:55 -0800
Message-Id: <20191227035055.23274-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220182115.26318-1-f.fainelli@gmail.com>
References: <20191220182115.26318-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_195104_615501_D5336912 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 Scott Branden <sbranden@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Dec 2019 10:21:15 -0800, Florian Fainelli <f.fainelli@gmail.com> wrote:
> BCM7211 uses a PL011 UART and is supported using ARCH_BRCMSTB, make sure
> that we can enable that driver by selecting ARM_AMBA.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to soc/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
