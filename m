Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A641637CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dfFtsGCvuox9plNUr72MrsMpnOnTGvMwtMiDBMyyES4=; b=Xze
	gE36LSp5KLYsUsY/JkrefaLACZzaUfTyEYULJhjKwvfmodQkKn97Bc7PQVYD1BCh9G9P74FIX1WVJ
	Z14gqO2aQ8D4tz1CHCHcEKvAcJ2dKr59Gk2ygHJqHH/5+3YtNy7Pks+s4SnlgtOSkiIitqW1D+NSh
	a8VyN7UWaQsu84vaw6kw/widozIhNYHmE5mk13Qu4FYMvGPePgBgQgbhWut//cljdijQFEo69ZRf/
	HIvsB8jJvDJsmTEQaIA50N1o6pPOy2hCGIJRKt010I/F1w99sOaLhuj2VgwJjpEK4rcftrGU0SaBs
	5mapmOllWvWaBeEYMtDRDx8uRXU2hQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4CkQ-0003ed-4T; Tue, 18 Feb 2020 23:57:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cin-0002H1-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:56:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id s1so11493091pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 15:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RaNnl3+uu7fV0u4Un9uuTw80YtZZSfmJ9Z7lllWiZwI=;
 b=q3+9YPzso4OBjcsYS2BGJQuc8RXnF5FAOBKDmsn4C+kUWEPNeBpu34WaqyCW892Rx9
 +ikfWY67U+3ZmXajhzgMqKeEuzNDfjI8hlYDQf+9PP/l7gSfgcQWQOdNP3T1TsPtP8+A
 Zti+38TKv0ZapaDQnVOb/EtYxZh8XbF58UqIb3qEDYAeQzer+jWuPd8ngsgNoBxbltmv
 5JMOSDtI+7J9nvpLyQcWwd28aWQWysec9iFlnQ/LHc9YML1AVMtDSdO08srWz0rdBQZG
 3YjIBU7P2osVOZBfqQ4Q6/v/xcALtHxkLUy2CDGlY/ADQIctpN6FXmaMhuX98ogMctJK
 5I+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RaNnl3+uu7fV0u4Un9uuTw80YtZZSfmJ9Z7lllWiZwI=;
 b=S7y13IyV0fPfBjM+k+RypeSnP10XlNtmXuUqAMbhr+kKbkDm+uszkmVq6l7s6RTf7H
 UTlX7RfLci3oQA58X2EjkNGSq3EmSTefUrw43ZL557NChN0Ul52o9/4O2/ItFXHuKmdJ
 Wq6q0HNB3n72aIstNAq8kPEkD3gwvIHlG8usOUJeu42Teiz4LsHVCmRjqXqE6D/d4tH5
 lQVW+xv8KXc94FoefCN5zmcIIofaxI5vTkIAxosHQjKPKiF+fUUQbvfZKIgRjmuBT0x+
 XPfsh4OGrthuTG7Yjpuf2fzRDDTh/gBDAviQTjx7+io583x8P4qElhmBDNnqcSyKSJrU
 FsGg==
X-Gm-Message-State: APjAAAURQKzT1+O3ik1agV/wSqkHaSy/iGBwfwapf7fQk6tV2JXa1Rzt
 pOhlPSxeSx0EwV0w8NGZvh4=
X-Google-Smtp-Source: APXvYqwZmgIEHqOxLQ1cyJyx3ogGpJoEg6ROKfneriZnTEoj6j1aqMsH+aDmEeM9a0OC3ahr/2pl2w==
X-Received: by 2002:a63:5807:: with SMTP id m7mr23349426pgb.83.1582070168618; 
 Tue, 18 Feb 2020 15:56:08 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::5:1718])
 by smtp.gmail.com with ESMTPSA id d3sm80558pjx.10.2020.02.18.15.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 15:56:08 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH 0/2] usb: gadget: aspeed: allow to customize vhub device
Date: Tue, 18 Feb 2020 15:55:58 -0800
Message-Id: <20200218235600.6763-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_155609_558014_A1B5B12B 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

This patch series allows people to customize IDs/strings in vhub's
device descriptor through device tree properties.

Patch #1 overrides IDs and strings in device descriptor if according
device tree properties are defined.

Patch #2 moves fixup-usb1-device-descriptor logic from get_descriptor
handler to "ast_vhub_fixup_dev_desc" function for consistency.

The patch series needs to be applied on top of "aspeed-g6: enable usb
support" patch set to avoid merge conflicts.

Tao Ren (2):
  usb: gadget: aspeed: allow to customize vhub device IDs/strings
  usb: gadget: aspeed: fixup usb1 device descriptor at init time

 drivers/usb/gadget/udc/aspeed-vhub/hub.c | 93 +++++++++++++++++-------
 1 file changed, 68 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
