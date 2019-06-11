Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324B441741
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cvMOLmN2OR/6DKLOWDXfR+lnT5EAHOFt3x6V0cx4vtM=; b=hlQEfek6lfQqzUuTFH7kpvKerr
	TQhT/q4f43eUy1dgCuBTwUpWPLKtzo1j12o74iFRF+26KEfq/ZiKPpdbkZo9EtH8HEwxZt7P0YFky
	mz/EFEmo1Djey1VhQI8Y+THfTQCOnkFhVAg7g1z5+XQIZTJoVWGBcTk9Z3X0K7ApZzJG355+p6bKM
	/WKOa0bXy8B8t25TgU4jCnDxVhUq9PmR3caWcChHkFYfKMeqV8V6R9Wt/T5CN8RFDYSmyEYOOSRev
	qv4We/zOc1XISqTGjLmw+TMk3qzjAIg09fDW8sN2kWsUa3Ge3L6z2AW5Fk4PS/ViDOF56xvXeL3Vd
	dURZi5jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoj1-0000MK-R9; Tue, 11 Jun 2019 21:54:39 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haois-0000LY-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:54:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id c26so22351391edt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DHhMjd1fNN7IkriGi8xv0Blych3KQHIWLAG6ekYhHaU=;
 b=e8LUQDA0ucs+NpZtWxD/LJWddlKnLuSOXGX6Y6zjx9R6JyJVLVfwfq86T9reM2rrNC
 2ohulDkuA89z/5oTEbIIr9mwlhpN9nJVXWdYYlenHvLRdz5rht0bdymhI8/yu3D2ktL0
 x1kg/JxPRzw6LW0cKKHEfePtwxbsBcPSNnpvEDZESa4f0VcxHYpV+GZzFnYHmEd+CC1h
 2+ftkUN8WQ/VWse3L/CA+lPsPLR3RWNGM7Z9b4i3KHAs182b//CbCV5mkwllk1JR83ld
 ZNyNEbE5/CjvgRgvFNHxBwDLdcCHj3rzO8h6nvfFkoEkXaH2JKjt2QZFajDfMOgYN8cZ
 1x9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DHhMjd1fNN7IkriGi8xv0Blych3KQHIWLAG6ekYhHaU=;
 b=YIChQYOh0D66/JpR0ZrcVtOi1oBTkdPIIYtDsV+gBfcG3NDIzfEWvhYna6ya7pR/wY
 GP05CqTqJ7cChkfKM5jKWziR+sO1bTUeG3t8Hp7S9J2Z4QY4O37Jpo4mLeN3kuLA5Pdp
 isXnKtxRR5j5GYkuT/EOk1B+JJGV0sIiDC4INTYhwX9QxtFLvGJaD3DTcw4HBnPH1XVU
 zo6AXBYFYzjcfjVwzFWk4exYk1KhUvgMkTQAuq9nkPt2n71tZyzkzFjuYAAzSvy+a/YA
 Hsk4kF8hiMVBnsuMANt1vBZm3+7rN+LOUO3X4t83ZIX5mdk1YOOGZhQeXggVhWu8HDSU
 cq6w==
X-Gm-Message-State: APjAAAUWq44pwxDvBGH8ijQT9px/W6Kenyb05Ib8Fa1Z9DBlFG28Cr/G
 l5zpam4EClcNfKNQyupwt0o=
X-Google-Smtp-Source: APXvYqxa6B3yBQfXiX0KGyiJzxI3jbaWqHZPyTOBf9DKR2bvaQfBCmkV0iVTPijvFqtSl/LUQm5zqQ==
X-Received: by 2002:a50:a784:: with SMTP id i4mr14433341edc.3.1560290069503;
 Tue, 11 Jun 2019 14:54:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 23sm2498119eji.42.2019.06.11.14.54.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:54:28 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/7] ARM: dts: Cygnus: Fix most DTC W=1 warnings
Date: Tue, 11 Jun 2019 14:54:19 -0700
Message-Id: <20190611215419.10109-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-3-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
 <20190528230134.27007-3-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_145430_995078_3A7800D6 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 16:01:29 -0700, Florian Fainelli <f.fainelli@gmail.com> wrote:
> Fix the bulk of the unit_address_vs_reg warnings and unnecessary
> \#address-cells/#size-cells without "ranges" or child "reg" property
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
