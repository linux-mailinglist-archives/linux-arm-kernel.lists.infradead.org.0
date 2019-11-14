Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0ABFCFC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9ZedQcSRoxF6gQdlim0xAIw87UZ5XzdY3VXeL76Paqc=; b=K9EhIm+c1WNHPDXBtNKrYHwnFS
	P3hZGaSlEDofjS/Cbn67CLdPuonMBp5VNVprgG8KU3/fiNHuGnWT6hBBU5uhY8N9M7E+jmstT4MP1
	LmPWyyTN8z5nZt05Ycji2m5rEKZfRw47AP3a4hWO7YVanyP8zVpS5SGIILk5dkb3/TITBps/ge1nC
	wkZUDon5elC/MJR07FISynLqUT2ilM+ZImOgCPH8RDhS4LZyrgWkhQR63TFiNFz09mxGi0j/cObGS
	NTW9HpNMXldQSf6GTimT1jtiHBxWwkp/8HYolSn0LDCff/qQVcQAbG0xzd7m22pdIH3Gy0ooodbwK
	AX8GMRQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLqh-0002HZ-TT; Thu, 14 Nov 2019 20:36:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLqY-0002GD-4Q
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 20:36:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so7679453wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 12:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/T0Rg4n36uJouyisIYq+OO8Wawxqm7AHTLdrmHhfwqQ=;
 b=QjAuB1h0TJNq+R/eBV5ZaGcnL2pZ5kGnbAeZWcn1gpJybTwSKK/Zzadbrd0n9U/yUy
 A59YXwKP3qzMaUKNBWpi4YkXeZzrkEmeSBTv0YRXNIIyofOzs0YPu2HdFCTcRBP8uCzQ
 sPp6eNcJMJz895oTZKAoQYjao7O3RuvJ0UHg07Zi2snQageqQjTWd1cG23TIjpbWyaVS
 PaYnTDeikzJTl8aLycPmtk8Kgqe/zcnWWngaUtIeR0YB41jH5PcQLna4pdrlhmKv0q6g
 lltmj/tddiZlXNUG5Clig0ZA3Qc5KIhFDYVE6lSgR5srqWM7rCaiOQDkwcioJdP4aKeX
 GXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/T0Rg4n36uJouyisIYq+OO8Wawxqm7AHTLdrmHhfwqQ=;
 b=S/vS8cync1Xvqdq1sLi8hWR1dOobMvnhG0wtjwtHcMM37j3Dr3+tVjtnC0h8pO4uiJ
 M2oC9/P4hJWMa6bXulp0rAThX8i91wVMjfER5kVyptuOma68h9ZxTtUayKlUV1JWG3NW
 4IUwwm1jNi4CsWWoBqr8m+9d65TX18dr6VAtYfgnsvXly3KFEvIDT0wrjSiKKqS49kvU
 Z+Mlhm9QFihnxc1368xXOYyxFNtmY9frWFM/rmyK5+O4jYK75F6Ujy4Amtc2UQgoWv6f
 i5aKIShxzSYCkw2zyKnALjcnmN/1QZtHhE/4vERC1WFAljZiH8k421VcJkwd2A/CjotL
 BY9g==
X-Gm-Message-State: APjAAAU8UXr27lziS0MSCq0JcfptdehIlD5NIq8EMSsAOmcRaLD47t8Q
 Bxv+bU3JVfIW61+xPBK0KlY=
X-Google-Smtp-Source: APXvYqxco0B6kyD8XmcSzehMoYkUCYFnw99z4LvXd73jRYCdNM2xfHk1C1VpFemgIurnM6vbrKHahg==
X-Received: by 2002:a1c:62c5:: with SMTP id w188mr9861447wmb.77.1573763764596; 
 Thu, 14 Nov 2019 12:36:04 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g184sm7914263wma.8.2019.11.14.12.36.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 12:36:03 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH V5 net-next 7/7] ARM: dts: bcm2711-rpi-4: Enable GENET
 support
Date: Thu, 14 Nov 2019 12:35:59 -0800
Message-Id: <20191114203559.1250-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1573501766-21154-8-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
 <1573501766-21154-8-git-send-email-wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_123606_168674_EDCD7AC1 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 20:49:26 +0100, Stefan Wahren <wahrenst@gmx.net> wrote:
> This enables the Gigabit Ethernet support on the Raspberry Pi 4.
> The defined PHY mode is equivalent to the default register settings
> in the downstream tree.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
