Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAAA9055E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DofwD5y7L02fy2V5lYTK30Xcz1P4BLtccICHKTeo/Bw=; b=UWO0r74bDf8BHq
	/0JcEHG+9Jis9pVAoCTU5Hh0SeY80cbedCp1Jio3QanhiJRXkR6RnxpsdEhRPgscNiux6PRPsnI71
	VxcrRYxT8OuppxAqZegFrKZJkcMLLHL0UMUSjbQg9nZU+u/fheEz0q6GdzTzOZFBpvSjbiKfYSXrQ
	is0OAF+0Fl/s7bbkmdVYEjFdZiPsP2sbwyEpUZ/FFwU1iAvDNNMj8llnabXCydQ4UpKaGDgs2IGl2
	imYiZjuV+cD/12LWvE4tx1z0WAulEGTiaBrnv4IXqU6jvvVuRYICW8wapYXYpQlOj4WlBiKxcBOvf
	7dJN+sXn+bsv6rhXrLSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyei2-0003Hm-M5; Fri, 16 Aug 2019 16:04:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyehq-0003HK-FV
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:03:59 +0000
Received: by mail-pl1-x643.google.com with SMTP id go14so2321407plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 09:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GwGe81D2anB9mnM0YX892gY8U5CQnq5hIJv2VCFOwV4=;
 b=laK7fSDD4qkzN+zl86yItrHAB8NU8mXzryoe9aRGvoMMZlT0TxpGj1/Ha4P4gflWHA
 T99Qh9Pi4zx7Z0VZurGNIEsu74Zsjp9V9p/Fi9rz/9LDM9DoCNQtoWhDgUBnmAsYErIk
 e8pJeBfK8RmXHBAaDVFOxyPaOCVNfr1gPHaFwrnBScbTG3owz0zDyzXls3ghLKtqfiEE
 c5S9WehnKAuWOJ6MM90VVf63G7hpd3qP8MfGbYmHoNcO+ImWDT7IiNFF/W+PUctGEbir
 oXmAHYOyWkbDr8k2Uf7CfsCn7D6p/21Yq4QVbDbrBd+ZC4Okr5CbBa0aMCHd0xR8VEze
 WoJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=GwGe81D2anB9mnM0YX892gY8U5CQnq5hIJv2VCFOwV4=;
 b=ZMzfS2DvBWP5VUIOTIzucuGvd2GDMn28s33jDkXSoVNeJnRWeR5rZd+45vNeZRxY1l
 h7wUnIMZhk4IDq3fjtxNYV+M1aHOUNhBbwZYBYa4vTDJ7cBs1b744xyXk1/wHDR+Hv94
 k3kgW7heI0fyvF+N6pd4wprcvjZbXHHD2T/z/KYcM1d30mh9cQtycCiRC5WS4OJLxXEt
 qSng7jKgYa98nufmgVZHZAmlk08WrI/0ql/rIcCjYw3tUpF9vZBIhthzXZPHCiNlvax2
 pYkOx5FixbOe1hpMVoouE8aq4ollPfQG3QquNbS9ADqWPVZOAIMzMuMUQ96pRQWJEQlV
 toew==
X-Gm-Message-State: APjAAAWzqCyQHJeP9vqajSzw9W3784FaJt0S0/rsD5kdKGaJC5c/Syll
 nhmM1X42XOSWeRZhpRXyu9c=
X-Google-Smtp-Source: APXvYqzpm5dy7HXa9JCQorRwUEZmNlywT5j/avC3GHFnPAF1jfRW7adr1QAbkIJ+PGD5tvnPcTjpRQ==
X-Received: by 2002:a17:902:2f43:: with SMTP id
 s61mr10288124plb.238.1565971437722; 
 Fri, 16 Aug 2019 09:03:57 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.19])
 by smtp.gmail.com with ESMTPSA id m20sm7578607pff.79.2019.08.16.09.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 09:03:57 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/2] watchdog: aspeed: Add support for ast2600
Date: Sat, 17 Aug 2019 01:33:45 +0930
Message-Id: <20190816160347.23393-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_090358_516769_20C9AC58 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here's a small patch series to enable the ast2600 watchdog.

Joel Stanley (1):
  dt-bindings: watchdog: Add ast2600 compatible

Ryan Chen (1):
  watchdog: aspeed: Add support for AST2600

 Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 1 +
 drivers/watchdog/aspeed_wdt.c                             | 8 +++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
