Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D619E13AD6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SLvMGR99PC5UIoxs35O33CJjZdVAMdtPgRS++SB82NY=; b=KUAZeXuZMguMrD
	LpUMTdXuHWviyTFr1zsSqlxni1T3MsckxtzmrzttALn3LeG9ekwJDHnvf9WP68mkFo4oqWzN+nFt4
	WwNu0vr/7LO2f2GzwGqaxUIavtHE9M+YkKDxJx5xSAB+5o80dFxsJ+QrNwOSt0izXTW8P5SJeH4Tu
	2429nIsRIw5wYsimGLJ6SdxA1Z11ODPENgW+4ShG0rFqTTUGKoFeRg4LLWvDKalcZQguQlPf2y9jR
	Djv84uYJdFNjV/z1fAXaKtlH0Q7HP0tON0iyVFT/Yh9N2AhKefv0o5J78bQmc74/GilEdZgucfvL8
	cFXZFsrYQ9CpzO6JJ1dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNyr-00029f-TT; Tue, 14 Jan 2020 15:19:45 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNyY-00028B-OV
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:19:30 +0000
Received: by mail-pg1-x530.google.com with SMTP id k197so6526417pga.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Blm5wTiE5tQruAK/YOnvK7ORBP3I4AIr+5nnogB08Js=;
 b=KJ7h318yoZcCOqNvMpHfvFuV5m7UOVddyKhbCESfxQXHvIW3RY1G6lozyKRHxNy3iB
 x4pRcwNYeDjhh94cUywIbhirrh1DDA9xKqE6z1zjMtHvzMDWJvs1qqzIcDfvfbHEumi3
 ZEsWxHhtSH4i27vc5I+nk6WpVPx6qIyXyXgSVYO9QHTUcwLMDNfqbItDZaQI/oh0eDhT
 OBUOVGm64rh7MMeiXZmiz5elW0pPkUed597qFBfbbbPdtNwa6THBT4IU1EDz/ZPt6bFe
 cjgOa9N1iJIgiDx4KWaFLOtGkRIZveiutBezMVuwHlgIxkwE7BpCWEJZDJdUGJWSa4/9
 RT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Blm5wTiE5tQruAK/YOnvK7ORBP3I4AIr+5nnogB08Js=;
 b=WKx6rTj4C4KKQzzr1SlatK1WhAT1RcDRdy7m5MGl0IiMp8RHGqSmg+Eng4SYBJH+OA
 jXshwCXG5clwKWJWIc2C/34LCgs1ziXE+f4/ddgYv1np93W5vs/IrXORJrVm1/v7TxAI
 Pflg8cahfpylSydkKZVudJYpSOTrwrNub67Sq98BqyEFC0EAlGQfIFzAM8lqhj2jcnbs
 vwi+Zrkj6bRzvltosAVs/KO7/ht6Tt2l+jqZ6dCvsAL4nflrdLLgBtrxBJA8QWVaXSOi
 mEa7aOwRvWVinli1m21cSXzlYlsMZFhWeToLGyvSI0H998tG+aY+0wtrebwa5EkRuKL5
 GR2g==
X-Gm-Message-State: APjAAAUPSXL+f2JVYq8S7knG0DvhRHBwlK/pAM2YBhbwYb/UahE11fA1
 XitB8ni3XzvJoy7VFpAvwcO7Nnl/
X-Google-Smtp-Source: APXvYqymo0T3qiC6GnnuQMNBtlZxD4FeMrNZhKd7v753KqwX3OyuZdxiC+lHs6IvP4nvI7twfrtIKQ==
X-Received: by 2002:a63:5c1c:: with SMTP id q28mr26632494pgb.245.1579015164721; 
 Tue, 14 Jan 2020 07:19:24 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 207sm18834425pfu.88.2020.01.14.07.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:19:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] Voltage monitor on ZII's VF610 boards
Date: Tue, 14 Jan 2020 07:19:01 -0800
Message-Id: <20200114151906.25491-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071926_797862_D05A628C 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Everyone:

This series configures voltage supply rail monitoring on all
applicable ZII VF610 boards. Should be pretty straightforward, but let
me know if any changes are necessary.

Thanks,
Andrey Smirnov

Andrey Smirnov (5):
  ARM: dts: vf610-zii-ssmb-spu3: Add voltage monitor DT node
  ARM: dts: vf610-zii-ssmb-dtu: Add voltage monitor DT node
  ARM: dts: vf610-zii-spb4: Add voltage monitor DT node
  ARM: dts: vf610-zii-dev: Add voltage monitor DT node
  ARM: dts: vf610-zii-cfu1: Add voltage monitor DT node

 arch/arm/boot/dts/vf610-zii-cfu1.dts      | 8 ++++++++
 arch/arm/boot/dts/vf610-zii-dev.dtsi      | 8 ++++++++
 arch/arm/boot/dts/vf610-zii-spb4.dts      | 8 ++++++++
 arch/arm/boot/dts/vf610-zii-ssmb-dtu.dts  | 8 ++++++++
 arch/arm/boot/dts/vf610-zii-ssmb-spu3.dts | 8 ++++++++
 5 files changed, 40 insertions(+)

--
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
