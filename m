Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBE016611E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s7F02goOTfeFhTz0g6R85mC6eS31A1xE1TMIpUkYV+g=; b=iOa
	DO0vA6ZsNUrxlzOjSv0EkCQ+pq9jf9W2a14yyce2Mh52FyKlz8oP7QzkgzqGGcm+0P/E30e/jSETX
	TTiomLsJgFJWuM5LGlktlr0CjKtsTFDcXrA80E8/nuB+Wa+8RZhcJHN6ZuDnWK12VUnRX05ZyBffl
	WYWFo/oSLfUAz6w4Kbl9UuV87J4u1sbfQbOKuJV/ZF2IrzRVOXtuGmqvX6/hTA1ocBt7sTZJ51/x4
	efxXAN8jtEh5BUudCr9Thcfukuq8pWXz0LmY5bnmXZKFOpe6mTMW/WrWnUMTDf+3Cy5pHpUfzxwij
	mPdftEa7bS4UUx8xNxEV9kUdiaeh00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nuq-0001Vo-4C; Thu, 20 Feb 2020 15:39:04 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nuj-0001VM-10; Thu, 20 Feb 2020 15:38:58 +0000
Received: by mail-lf1-x144.google.com with SMTP id n25so3480760lfl.0;
 Thu, 20 Feb 2020 07:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LTSTcBgb9GGJQllk/olrBiwlUBbpPRVx+sqTluRMzLs=;
 b=SWh6C6VJobFRpWMlRyr9Ir9oQp9/szZB1jyFZRDk+ZrhKC2bkfTXQMYeQIARVZpm0r
 TOWj0G3U9aDhmnR+8o4jlbZcdL2sRDk4+lj+C5B+MRk9b8tnmMTQMtV1PxQJNzAw2pwT
 Tx8mSXkH5ETJp6KyFGAEpyirq/WzJa9B84AWRBKl4vLKKx2nbH+eLeA4m0mCJrZlAQsl
 1IQv8vu92Opd0LdrF68FanQmRXzvMFodiA3UufFAGiByXZEEJaZxOuPcMycNhsYyCumo
 SW2QQK8xcNAmu6vt4hwdcJcab+Dh+uqtqPa22KHYu/HBc7gGoyLNhnrKnFbGvgTvOxuj
 SM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LTSTcBgb9GGJQllk/olrBiwlUBbpPRVx+sqTluRMzLs=;
 b=XrgPj/RfiF5COe2W/t01JHbsJv/upgKdISUgQmTJwE0jXaTWF7fGqklnlozsAVvHuY
 LpAg0j5CcvnBJ99ogoTxGKGe8hVb1OU2NW/ZTQ6FfkAcOJbQCeGEEZ1OG3EynxYbwAQe
 w5gtKqD+4007wYAmCZFuuiJY7+DfnNRBK6qhxY1HMojhLk/x6g7Zag8CoVEX8IPiG0+5
 vLemDLKcHPUo9Aj4Af+BxvL0OFBK8CVRcOSydd8zL0ZV5SfqJd9sHgvH1vyleOpSTXtQ
 9mLPyJ9n4D3ZjAhOXye0NjIvrmgLQ3C9u//+LXF1Uq0mgsWSVpX4Bscje4aIJS4rRAy/
 aXGg==
X-Gm-Message-State: APjAAAUwsZaP6B8GxCCH+MMLQD3YEY8JzoHUh6YU1U8Pa2ZUQM0TgWA2
 eM2ZxVA0sbi0jrBkEvuwl48=
X-Google-Smtp-Source: APXvYqyxn2s0jyOgdFy3o8g+SEhzmAWcmuIT+Q8DAV3EzVkzptKp/H9zuaGay43R3j85QjPRMaUAeQ==
X-Received: by 2002:a05:6512:6cb:: with SMTP id
 u11mr7885481lff.69.1582213135029; 
 Thu, 20 Feb 2020 07:38:55 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id f26sm2000083ljn.104.2020.02.20.07.38.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 07:38:54 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-gxbb-odroid-c2: add rc-odroid ir keymap
Date: Thu, 20 Feb 2020 19:38:05 +0400
Message-Id: <1582213085-11656-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_073857_068596_78DD43A8 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the rc-odroid keymap to the Odroid C2 device-tree.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 6ded279..b46ef98 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -248,6 +248,7 @@
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
 	pinctrl-names = "default";
+	linux,rc-map-name = "rc-odroid";
 };
 
 &gpio_ao {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
