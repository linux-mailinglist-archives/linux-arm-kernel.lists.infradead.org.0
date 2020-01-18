Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B671415B6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 04:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8m1GyZT7pxYF3DP9vxTtogp3sy5rKdmdXHpHA6Myijk=; b=gS0KhSbVM01TaqEu5Nz5bH+Xhi
	hhO5n9NtsW7ct7rlt/ShLb+0WpykEVyjbgJnE+utPeKNrzLKUO5WTlgLe/LogRFCw+te7dw8jDKQb
	FQXIVzr1FFaJTfLoU8MxTHPrFEdee2eA+xiQ7Ja48Sr2nMVN59hQLvrjakWEd1S5W89pXwUuxS616
	/3qgoKWi71ihQbzUDJrkTStiRJLLjomhCaQkH4/rXI5GOG0MHlWw/DDrR2dpacFc66NSAWWKYy2E5
	cTTcn063JcLxzvYWSosWwxVsFGPKLL/m5L1AKcp9Ke5x7kS4tPoUGvHqstz8mtPMGo+C9tWsb2NZs
	2bqjg9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iseo7-0000uT-Pz; Sat, 18 Jan 2020 03:29:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isenz-0000tv-MR
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 03:29:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so24483656wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 19:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p49Wm5TIipoPoWYJQRhTaTUVmzt9tld3rbPgWlPsRQg=;
 b=VagtExoc/d9viv4PRIK+3E8iDOLEhhXOf065c8FFqI7T3MHc2iLfANL2wvyKLt86Xb
 T9PHSXH2eCKsPHZupVs0Pagvd/zzyOv7zdgqM1Au2HjDcgVPGjWFbo3AVw4rvD0nFoUf
 hTG9lvyUmlc/damz5OCEXc/IXlgb1m+J4sTrHlqfn+0IQi41Wm1ooOM5wm5iMIS0xFsg
 aTIVvqzZfudiplpzIC8X8MpzilsP0yVMGkaGLn/+6Hu/f9KC/sinIum/Gdi9cZpslZ5y
 5kCRIZDDP6/ut2HQ7Qs5WL7AFjR394NmA+Xod2NyBq5K67mhR7w6heN93rEoMzUa6Tni
 O4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p49Wm5TIipoPoWYJQRhTaTUVmzt9tld3rbPgWlPsRQg=;
 b=okmdKUD5K8FQcYaMCYUDw7NqnV8LypOiNVk3G4ZIDEujQJb5eri079VcOb6mo9bMKq
 6GAQv4AC6wA2V/WbasKXn2dj7AMS8VMnoyvhGYvc1PIVlrY5WYOfGKyxzRkwyX6k94o6
 e2BKW7GxdBgDSS8vekJgokqjmFKvtGZc1Fm8gvFB0DQP5/dkIO1DOQEGOL+JLUD4aX2N
 9MTZg8Ve0OtLwOuxyEXoruptQy41nO2P3/cdER5K+g8jjAr+1XpITKovEsr7WENefkKk
 xrmN618toG3UISOAEs9x8KhebSorAfuE5FvsMse4dzMsYBfc9SAmBlTMWR3g2VAx3NCz
 bItA==
X-Gm-Message-State: APjAAAWollb2HzrA4kzWRVtTvvUFCTptiG4acgCeZxRqkZWTGy6+aI29
 02SNEovIdQxuiJ02stE4lQ8=
X-Google-Smtp-Source: APXvYqy0d+nCURKQV76DBTGnhzkarJpkRkInIvHOCJxIzPBBBFvSRBZnc85+MU+9MNX4zlm080vynw==
X-Received: by 2002:a5d:4692:: with SMTP id u18mr6408196wrq.206.1579318182384; 
 Fri, 17 Jan 2020 19:29:42 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g21sm1730101wmh.17.2020.01.17.19.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 19:29:41 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/3 part 2 v3] Broadcom maintainers changes for 5.6
Date: Fri, 17 Jan 2020 19:29:35 -0800
Message-Id: <20200118032935.1346-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117222705.25391-3-f.fainelli@gmail.com>
References: <20200117222705.25391-3-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_192947_758002_BF5FFB97 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/maintainers

for you to fetch changes up to e0b70940536a45dea784f2d013f1d796798dc3ba:

  MAINTAINERS: Add brcmstb PCIe controller entry (2020-01-17 19:23:03 -0800)

----------------------------------------------------------------
This pull request contains Broadcom SoCs MAINTAINERS file updates for
5.6, please pull the following:

- Nicolas adds an entry for the Broadcom STB PCIe Root Complex files for
  both BCM7xxx (actual STB SoCs) and BCM2711 (Raspberry Pi 4).

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      MAINTAINERS: Add brcmstb PCIe controller entry

 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
