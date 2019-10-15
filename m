Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FCDD844B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 01:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DoV9WE4tHPwWZLpT2n1zfqTrb7GyHtO2NnOwPGpylx4=; b=aFR1JTMuzHrRiHHPuVjEH7jeOY
	hXVq+6i/lCgUoHV2+vI3/flK033WU856uQTOCLGYfzsLroovhmajRV6Cx2czSgsxS0y8BV7RqHDHp
	iN1R5vhLIVh32r3ojSvYkrz9QfQEvy4VBkexRluX5WFgCFTgm6grVVRhnuRAC03THcJgpNomTkINv
	lrI2j4i/OOZU5fbPcwqA8C7NIqMXqtN9mD7Il9hwQ8NRPptMaUr1s/PIyKbcZfw7DJwSYm49x6M5t
	kskjp8QQWjH+6ZumbfkQ3Bkx2SghVkI6NOO5m4T01bA+uxSQh3Dlb/yyp2W/3c/S3UsNf021HrNk0
	sdCQP4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKW1V-0007Vt-UC; Tue, 15 Oct 2019 23:14:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKW1O-0007VK-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 23:14:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id w3so6146751pgt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 16:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zLV3yZ6h2VhlVH0j1u0lOQc1Y/lKJBR2XtrZuFRMBMk=;
 b=OOE3vB0RTLjbdD4WdZ7Yh1rDjVBnFHH2oxAzyS/B8CSHPB0lZu/pujtKnXcL4KJfk9
 PE8CEV19Ain5Ca3NRt73MMoYvvxSDAtOWRfKpHDErRckinETWQRTdWb1accSsQFIjbY5
 BDBNdx+WOQ+K2CHBK4fUmxDefTK4Ql68HHgE0MDAR5EOi5S84kO5NAg/Iap8/r8GlgBZ
 1IT4thOJjFkPa52nBFYS2rQAtNBm6Gg6EhDlYipI4VFKX52Rcfr72hXSOGz/ulDhgo8n
 Xl6Tc0Ov7cwvk18/molH8SgYFrjjrrtmtrotqN8HQ6Zj25ybRWefLK6DUgXHsm2H9UAQ
 4nYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zLV3yZ6h2VhlVH0j1u0lOQc1Y/lKJBR2XtrZuFRMBMk=;
 b=lnGqa1b0Ctx3je5CBJB49Gxr9CI9ZgESe82fXF4+kcZAd/ApNS2+pRVUU0bglsDYEB
 Ql3SKSbPg1D4QDo15qQipLHzWd+PZi7pQbYt39gCCjP17CbmlxPPUM+O/w7BGYF8d1Qj
 U6Hoog01s3MpCdviWluORBAoSUj3e7OyQGZJHOG5VmxzUk3oTtwEiYNCbkItRAkSgAMM
 qPH0lt1K6ztc84It4ROLown+S6r2cjo0b1IsFLdN5ZWnG/a+YE/ldLR5K/ZRa574MMkf
 Rz0ah5B8ZvbkY/AOtBRV4YTE6QU/F13Cp4pIAq1VaCkfzYECLECRTy5OO61BPMEoPWe2
 cSxQ==
X-Gm-Message-State: APjAAAUyno012DWm9dUC0xe5NqneZ9mMird7wai51/UATi1Vp5ymSRfT
 bY2yKxs/LWRvzkiI0byEoUY=
X-Google-Smtp-Source: APXvYqwJh/NSmepIzfPjD1ixc8XzbisZGJ3HyZZXYeyrMdtGSVdvaTtJP+PJ6ytQaTj/Y11G7LCGJw==
X-Received: by 2002:a62:6546:: with SMTP id z67mr41818426pfb.32.1571181269162; 
 Tue, 15 Oct 2019 16:14:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k124sm11301445pga.83.2019.10.15.16.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 16:14:28 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Dan Haab <riproute@gmail.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Luxul XWC-2000
Date: Tue, 15 Oct 2019 16:14:12 -0700
Message-Id: <20191015231412.5637-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1570031846-8330-1-git-send-email-dan.haab@luxul.com>
References: <1570031846-8330-1-git-send-email-dan.haab@luxul.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_161430_332971_DEFAEC2E 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Dan Haab <dan.haab@legrand.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 09:57:26 -0600, Dan Haab <riproute@gmail.com> wrote:
> From: Dan Haab <dan.haab@legrand.com>
> 
> It's a simple network device based on BCM47094 with just a single
> Ethernet port.
> 
> Signed-off-by: Dan Haab <dan.haab@legrand.com>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
