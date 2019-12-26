Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9995512AE0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 19:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PnUkCqgH+5aLEHmePrcizpBcymjEoLLm1BUQJAag1+Y=; b=UpJbbeaevlo9Zd
	q5r7MnOmGs/z6U2ZPlyZhCAC1odu9exqUfl6Ixf1qTm+BYS9IJUS7e9iWofOo7MhA8Ugmo9ai5Bgm
	cjH2E3SUDqmDZlssnE4uzcRib1p01wWYUN2+HPo4JLQM+oXsbG7Kg/x+LxynsjmJBGqxn9g09a68l
	HXE/ch5nuVNsue6AXjwgKwVFa/4LfPFIC+iJ/OpD6VdOat1Q1fQqRhjD7uCEwpdu3f69ErJi6G6Ne
	SJY/RV6Z8NXHQp1KscQ0O+bfzgOmDB0iqrCP1xlfTpHAEpzwTJrDlqOTvsjCOO/i+QWyFBB82TDRC
	FJDbnA3fXjob8dGiIAUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYFm-0002dp-2e; Thu, 26 Dec 2019 18:52:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYFH-0002IH-Up; Thu, 26 Dec 2019 18:52:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id u2so6651561wmc.3;
 Thu, 26 Dec 2019 10:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ypv1P+w8u0b0xjjfk63+8/r3fcQQ50esgG/WxnES284=;
 b=F/35XYsCTf2aMj5zaXMWHKeSm3rrKNRco1feL0oBX2a3PYEiLiNAXf+YLSBNl5Xxlg
 orKHkmAhn5ACBZOz8ibgXQ18cgBNFtC1XwNvIT7Gr3H1SCjXScO0jOqAHKh1qUXXybvv
 xmPAcEhIgSXuAwALHZFy8OzlTezEQpwlqYOqGfvd5sglTbwFM/IXpk8yritCeSViRWbw
 m6yRCsaBiubozEzpqnmaxZUE9wuqBx1rrjxW8fD75pFWb45MeAYlFsJa0xk/WitRlMDd
 SlTU8M1IwGO0PJayZ8hPxsc7Cp5kfVsm4LNJup58YKp2g4c+jEf1Wd8nQ9rnZ/IujWa6
 kXBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ypv1P+w8u0b0xjjfk63+8/r3fcQQ50esgG/WxnES284=;
 b=dLpdkudEfKDUlZCDBsudbmzgW63FUdrHBd6iW8s2rNJbWmXKHDZxWszOBFLW37ufjL
 i4s+ueAXQQvMSSwTjiCwrRZ7XviXDwVESoK3Le+lB4yKJuLYWiWkznyO8GNZ1B1Roo2y
 0DkRV9K510wIanOsTABpw1XyYXKzLo9apGpyFRH1dw+0Z3rtbKSLEvPc5hfnhuOPa851
 559HjyrNmFD/5KGjQQLUMKPA0bL2lRQy7YF6Jak+oQf3RhbfXKjHpMxDT6wE+8eonPvU
 IeN/S2hTiDB2QqXA4o6WPa+IUD+IF72jeZZqD1UKpOEyDlTPvid8+06C/Llu1aiUA5nP
 9qpg==
X-Gm-Message-State: APjAAAV/vXzo3B6DOZio8o/NjoC8U7fTQzmsqwCbCY+IRpZukPbqcAcF
 47FTMMFWsHAAVvLUT0OuW98=
X-Google-Smtp-Source: APXvYqwMKe4kUhbmqrhzGeJU3YnHO6wYl9UjKxkT1wrIQ6Yam19y77XrTS8FzO1pKIASH4l19LKEqQ==
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr15914955wmm.1.1577386346270;
 Thu, 26 Dec 2019 10:52:26 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j12sm32129352wrt.55.2019.12.26.10.52.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 10:52:25 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, davem@davemloft.net,
 netdev@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 0/2] RTL8211F: RGMII RX/TX delay configuration improvements
Date: Thu, 26 Dec 2019 19:51:46 +0100
Message-Id: <20191226185148.3764251-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_105227_990700_92BA6079 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In discussion with Andrew [0] we figured out that it would be best to
make the RX delay of the RTL8211F PHY configurable (just like the TX
delay is already configurable).

While here I took the opportunity to add some logging to the TX delay
configuration as well.

There is no public documentation for the RX and TX delay registers.
I received this information a while ago (and created this RfC patch
back then: [1]). Realtek gave me permission to take the information
from the datasheet extracts and phase them in my own words and publish
that (I am not allowed to publish the datasheet extracts).

I have tested these patches on two boards:
- Amlogic Meson8b Odroid-C1
- Amlogic GXM Khadas VIM2
Both still behave as before these changes (iperf3 speeds are the same
in both directions: RX and TX), which is expected because they are
currently using phy-mode = "rgmii" with the RX delay not being generated
by the PHY.


[0] https://patchwork.ozlabs.org/patch/1215313/
[1] https://patchwork.ozlabs.org/patch/843946/


Martin Blumenstingl (2):
  net: phy: realtek: add logging for the RGMII TX delay configuration
  net: phy: realtek: add support for configuring the RX delay on
    RTL8211F

 drivers/net/phy/realtek.c | 59 +++++++++++++++++++++++++++++++++------
 1 file changed, 51 insertions(+), 8 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
