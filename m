Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CE19C45C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 16:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1HyeBOPHssU43+0Ug2yKJ+eh/OStvMK56xtybY6zfF0=; b=PnqciECqzeiEYk
	kVGrjFzEoi4M+d7lbj9Hv7CrOg7jACrntW/U3wT0DkppODyMD3C1jL4Ig1iA2USWsEm4Ova3lJVNc
	4D37VtdV4yK4GblIS0xrYj9+etsokhZAZJYv4K1Qf6zhvsUG+EwUHKr8vA7S+JjA36OdVHMAx1hEi
	fAN0JHt9POtF/dC3GZP4vO6l30aa7wV7slRzt8WhX9Hn/0nHBI4jlszwZpV6t7M/J5h+jwDLgmfI+
	VHfGxT7gdyrsbjOiauPaXS3oyXiIsh1zfl5ENwNbrPxmA7XykI9QyAd3AcKJNzWhlr2/MdRcU5HyX
	80fdd9KFCGTYZXnxEX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1tMX-00073C-7G; Sun, 25 Aug 2019 14:19:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1tML-00072d-B6
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 14:19:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id e11so8790262pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 07:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RtYk7exTF7NfCD8WVZ5loNoPWEQYfaksEbf8ILjY4KQ=;
 b=O3BjAdJkNpamh1SmbCMA1Bzi6HhC+cUCkqC7QLbjPCkm51Ep5jVb4UAe6KoQhTxQbC
 1RvTU9evIGER0O0LJVvFEdZUW0RapKuldVzLsZR7aL+UzsZhZwpxgGXHBPABGJpMBnlw
 ZWAcsgxFfHCbIqJP/zWmESqilkuefaMSlU8sxFzmgxCFfGFwtTIWjt7JyXfK+S6r1A6v
 vCOH1TYFdS4tyOO0D2t/NtR0w6w1jCmVXbuXr6zTQDHNDKGeAy1JbazapR0bR22q4URD
 ZB1mH459wif49S4XnE670N4/zmMGR+B90TN56WGDMgSl3LUEXJVfjcD/5sbkyR4U//D3
 xRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=RtYk7exTF7NfCD8WVZ5loNoPWEQYfaksEbf8ILjY4KQ=;
 b=DPw12KFH/2qwatZE2Sjxi8BPQg33LZHcZApWeml1WFXXH58M04HDcCTAzqFZIV4jvW
 5T9pwudm7t9lflM4D3nqabiyBJDiyKrioZ4oRa4HDenQmDRfYPVZJ8stspYwE0hclXUT
 So83OV3fqSZau15BrRJeNnO+Nz0Kheerf5e8tqxP2amMPcywXrgTxRQtDABtvX2VZqsR
 bEKoiQViZ1YmL4wGcZAdG8+5k3onAerzDFWSAXhQbGOyr2UXrN2u3iJrSvI0MLohLoqX
 ZP/4twgaKu9+D2eM96JChExWiPcsgZcf9PM3aMlF9/tRDsK17QXGhJeLRpBXpBBM6ipW
 hQpw==
X-Gm-Message-State: APjAAAUm76cZgbAADzs6VxkmvAZ8RyVY/jTrxYhUL5CtH28/DSBlAYLk
 t3OLUd+dZQo/UE+xTGImfz0=
X-Google-Smtp-Source: APXvYqw+BdGM2bYgXLSTAm2CCYaNa7tim2PpUW6H7sQva3iK/gVHzmXGpFoQosg2DoIgat46BIqllg==
X-Received: by 2002:a63:bf01:: with SMTP id v1mr11997789pgf.278.1566742746257; 
 Sun, 25 Aug 2019 07:19:06 -0700 (PDT)
Received: from voyager.ozlabs.ibm.com (pa49-199-217-21.pa.vic.optusnet.com.au.
 [49.199.217.21])
 by smtp.gmail.com with ESMTPSA id w1sm7734562pjt.30.2019.08.25.07.19.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 07:19:05 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 0/2] clk: Add driver for ast2600
Date: Sun, 25 Aug 2019 23:48:46 +0930
Message-Id: <20190825141848.17346-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_071909_421890_F2DA4746 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello clock maintainers,

v2 of the clock driver addresses most review comments from Stephen, and
contains a few fixes found while testing on hardware.

Stephen, I did not get a chance to move to the new parent registration scheme.
If you would be comfortable with taking these patches for 5.4 I can work
on to moving to the new parent scheme next merge window, for both the
ast2600 and the existing driver.

Joel Stanley (2):
  clk: aspeed: Move structures to header
  clk: Add support for AST2600 SoC

 drivers/clk/Makefile                      |   1 +
 drivers/clk/clk-aspeed.c                  |  67 +-
 drivers/clk/clk-aspeed.h                  |  82 +++
 drivers/clk/clk-ast2600.c                 | 704 ++++++++++++++++++++++
 include/dt-bindings/clock/ast2600-clock.h | 113 ++++
 5 files changed, 903 insertions(+), 64 deletions(-)
 create mode 100644 drivers/clk/clk-aspeed.h
 create mode 100644 drivers/clk/clk-ast2600.c
 create mode 100644 include/dt-bindings/clock/ast2600-clock.h

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
