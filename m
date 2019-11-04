Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA73EE738
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2ld7jn7nN/O6asXF23UZqPIYvL9iSdj0YOleyL4EvVQ=; b=HfT
	cu4R50uUtvLLjoCm9fKhjRPH3TM50O+wY92dJmIzdnmWTvRJ8dop+EIkdp8vqMFNmcV/uZYtP/c0Y
	UNAIbnf5rsVGXxNnVK5/CZlEJDXcAxnr1wI12RhAwTmenDCykW6QlelhXGyShf7ClYVMJDHk8H7sm
	lfLQDhYXHGq0hMO7b7VR/D6DOwW1BJkJ3ylzIj4Jk7CvaVD/OgwM++LWORQIUPCkWkUSHPAFVp/rI
	9rjMPw+PmDzzcxodNYPxYKMkJmzZxvmimBhVgP46mHSXBf6AVzZ8hRXr/2IywyHeznJ1Ogmo/DEWp
	EgifVbJtWfueo0HySmo1DJgoUCyu1QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgwp-0004Qb-2x; Mon, 04 Nov 2019 18:19:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgwe-0004Q1-Cq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:19:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so18255555wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=I+QRfJpzWYcc0VUlAj0QtfzbI2Rjy1BtEqPONYKKsns=;
 b=nrI6pyFxlJJ/Sh5yCFYgIIOi896ksb2VdZyU45EOv3Zbik2WxeX55euQZkTeLXI/UU
 uNsGBkBvwS9+MseS40qMVkNh87BdmAh5qoHY/H0UxjHs0B/1zevL6lIEEvjoYCGGBgDs
 ybFGmU42Rv8stZLkqQDDkUrKTWfxwOpezFtHQnWMX7z/DqQVwKCMQCXbzQ58f079T7nZ
 kAR9evzHmclrrmcuXa8W9vQ5jb33s6GU34VBJB+cLq1Mvuz6Rg8LspPMhOZlQaTL1NZU
 IGSiqD6JLtX8Ns55EwXuRoBhAZOLGX7H9JiVBR1jyc+C/KzflMWIgbNCyg8l7Vqn4PGH
 qG6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=I+QRfJpzWYcc0VUlAj0QtfzbI2Rjy1BtEqPONYKKsns=;
 b=QWjdqQwXn/UAHSCN5kPbwmkeFBs/ESk4UlMdCTEhmHtm1Hq0ZdJ4zB0Hsu/DgioYnx
 SBnyAo31qu6Cy1r5+NoH2ArgVGUiM9iEe0ZUw1/j0DQvqCLFrsOHWyXUvPtcdJAzbmO0
 TcI5hSFipfTv+pdRPmXj0SkHLoYsk55UUTxRpvA/11GUs+Ki/xQJ26M+LA2z9+/pGwse
 wnTFhlTiH++cWQhRJyd0aRKWR/AqwCwbppB5OjCwVfPDt+qNEMApE/7/uUOD38hFP6n6
 Fqpb+E/cUrxdPxJz17YYBHT8aDcDHTp7hQTBnCvvgY7EEVqc4bS1TxkqATWeSmw1sk/h
 Vj1Q==
X-Gm-Message-State: APjAAAX6ObunRa6GyRwoFyISsfQG4Q+k3u3tealkauhQRi6YNGm/XXWR
 AMCMTwKf8WzbCoyYGwZcwDG2pMsS
X-Google-Smtp-Source: APXvYqwSEOrggiVd5Rc/9kIWu4FLMEPqYNsz2bL+qeBa7mKcroomsBYJ5tLn/GC3BAy/gEMO83Beqw==
X-Received: by 2002:a5d:4748:: with SMTP id o8mr25403387wrs.239.1572891554760; 
 Mon, 04 Nov 2019 10:19:14 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w8sm23127580wrr.44.2019.11.04.10.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:19:14 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Couple of reset-brcmstb fixes
Date: Mon,  4 Nov 2019 10:15:00 -0800
Message-Id: <20191104181502.15679-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101916_461067_8C4C67F8 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

This series replaces the previously submitted fixes to the reset-brcmstb
driver and also fix the dt binding example.

Thank you!

Florian Fainelli (2):
  dt-bindings: reset: Fix brcmstb-reset example
  reset: brcmstb: Remove resource checks

 .../devicetree/bindings/reset/brcm,brcmstb-reset.txt        | 2 +-
 drivers/reset/reset-brcmstb.c                               | 6 ------
 2 files changed, 1 insertion(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
