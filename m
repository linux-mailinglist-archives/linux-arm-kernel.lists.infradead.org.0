Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099661173E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OxVBMh9vo/QYqfpKxj6ef5w5nFDshIpOzHB2V0CZWTo=; b=nbfL68jP9lDJSKAwnWsrUHyK34
	/aDhcImQEthtu00fP+/LuNv+9m0tfYYCa/RWUu+vVCQMYmzqTz+zfaBMMKYtm64XZgwGm4XGwYJaB
	FyqgJdUSO579F3eEZSIs8gaPTI8ZHGnAxyjoBOK9kbDJ4ErGI11dqrAOYpP7V7g8hv94RCeLXcBRz
	pHKc2JPY/xJozgVjvy2raTP8DYGi89gkES5A2IxMDupqXfW3gA/G9TRuT+VOo//a3yyQlJY96QDtX
	EKDLG+tyAjf44wWeqJNEdlXWrQIs5Ghp5R2CDJwc6KOYyYkni7fNMxBPxNIOVGW8bjXISOI9OQ6gs
	WI8iOh7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNbU-0002qU-4f; Mon, 09 Dec 2019 18:17:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNYd-0007dO-QG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:14:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id j42so17231699wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FnJ75Uhb5jjpHnizeaX4CsLk/OHrkbiFhcnav79oqNs=;
 b=ZepRliXoJjh18TG0DzXYrDGdNUZ4IzAb77TKuwgOsSvPJaDz1TcDeZjX6wInGkCRVG
 ZkCL/tISTqSfi8mtaj94QzFCEVEJwUuYgPaEEugEb1Y2PZFP+9AJbuGLaqpp4H3EKwRb
 vVFHbyPM3bCNgWYTfZYzVqXJpWb6wvmgwzDLarUmlDXVP2oQZ4mTrBmx86Tsg9VZK1kg
 MKk7guwLpdHdO4FBDKB1jbt6NG8+DWARLOhEzy6OgZpMhsE93uez4hcOqiHgJ8s+oY9B
 0bCj4MBLeAgFynAfFteGsmUd5c0qK+nLz9Pm6Ia9P1/IeAcqxfsCJ+atrVhbYwZ+LWmP
 Ge5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FnJ75Uhb5jjpHnizeaX4CsLk/OHrkbiFhcnav79oqNs=;
 b=tW+dOJSFE8muCw0sad66RCC8NaxH2u4wBPoYsNiyTPqWLPKYE/GLdzZik2HAvt6Qfc
 fI981KYKEcm75ydyTMlqiLsez26ugsVeUho9olQ8UVR4VXAbnyiwqq+mGAO6Z5MeIFr3
 98A4qv1T92U0Noc6Vz8I3vVL4pQsLWCn0OdRZZxu6zNlimzV3NTyHJF6i1tJtMKNmOxE
 kQbaAmXIp8Z0Y52LPWOdgRuQDvSVxEUoRrrrHkvz8oZnqbOaP5pej7m5+1QOGv03JT16
 sNio3Hsa5V96ICFJPsLvzmrwqaDaR2/FMaTeY1iSqt/JSdnaKlz/PBlUGsqgZON+xERS
 PvgA==
X-Gm-Message-State: APjAAAVFZ1yig+OCRbNN78SVbXJb3w688P8ZgnImO4h/4kbRTanh7GOI
 exjtfyriQizf13BhDGglY0Y=
X-Google-Smtp-Source: APXvYqxanq81MjQQ/vCG8zEAT+l265qBKg7/XDRbvi4ifBvuFeVo9EKUzboncgcnArLlYX31z3RcAw==
X-Received: by 2002:adf:ffc7:: with SMTP id x7mr3541896wrs.159.1575915294194; 
 Mon, 09 Dec 2019 10:14:54 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q3sm327849wrn.33.2019.12.09.10.14.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:14:53 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: Cygnus: Fix MDIO node address/size cells
Date: Mon,  9 Dec 2019 10:14:49 -0800
Message-Id: <20191209181449.6307-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191206181909.10962-1-f.fainelli@gmail.com>
References: <20191206181909.10962-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101455_974695_E96F7E54 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, grygorii.strashko@ti.com,
 Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org,
 simon.horman@netronome.com, open list <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>, robh+dt@kernel.org,
 netdev@vger.kernel.org, rafal@milecki.pl, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  6 Dec 2019 10:19:09 -0800, Florian Fainelli <f.fainelli@gmail.com> wrote:
> The MDIO node on Cygnus had an reversed #address-cells and
>  #size-cells properties, correct those.
> 
> Fixes: 40c26d3af60a ("ARM: dts: Cygnus: Add the ethernet switch and ethernet PHY")
> Reported-by: Simon Horman <simon.horman@netronome.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
