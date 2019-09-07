Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B99AC7B5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 18:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d36RqwYNhV6LBof79aY0R5zoYt0W0jnv/IqUtCMPSIw=; b=niM/x5eTA6rUJd
	xYTWYIOl4Uj8563n/xy1+MZ4Yqyr/nYQFlfQm6kMe6iMouMU8UquHtxTPGjzoFHzsWv0uTDz4uA++
	Lb3b/Bh/fThiokbZoeKN7Svy85CLh33+pq/3F+o5IjSEYC5c9g4hBHXnghgPkTiVHd5AimElzh25c
	Qe937o8aD2ra23zhWbj1SeOvyMQf2ccuW8k4Z6L+/9KrvR6ylB/xQOkeOyego1fPZtcPobK/FyjtM
	eLQuw5AG4pmIcsrM5PAKUmJLGkXEHgOmCqn74wGK5x0aB9nJIWqB8ilosBtsCsFDF9KsPccLf4VOc
	mgMPVWFinbwfMR3Vztzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6dwL-0004BP-Ik; Sat, 07 Sep 2019 16:51:57 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6dw9-0004AK-AA; Sat, 07 Sep 2019 16:51:46 +0000
Received: by mail-pl1-x62d.google.com with SMTP id y1so4601502plp.9;
 Sat, 07 Sep 2019 09:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XqUaOhrKnokp+U3BIhPoQDVqzR2PKGp9qPpm7e89sj8=;
 b=rJO3Xx+LJilHSOb9TezJLprHbKLa2dVOr3TaqvRVliNReXln4ikSTBUFy1tINhdqbJ
 3nKy9dg+tTVf3PB4Q5TT7gmvcrI4S+fonQh0IeQ+3PyyCxK8PERFscpbBQCdyP9kvwtD
 j5dKgwau3ziI1vhYat1Mf0s84GvZUKlFEb2tLczomkR8g+BAGq4PVN9Nzt8Fw6KPhlfj
 WxWpGpNFrSnLkhqKZwOv3wCv1c9LppF7TgesGuEQ/qDa4q2fVdTi497CoXWq10A8tfxE
 EUgumPkeV8CHvoYTlkpL8yyLFWysH49yvmanA7lpEocj1Gw/MboNRnbIy9M5S20xBOXu
 HQkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XqUaOhrKnokp+U3BIhPoQDVqzR2PKGp9qPpm7e89sj8=;
 b=P5EF2tqNrDQNS+34+z+T/G6I2K5WLeFEwi22rnah8CAie6Ld5GiTXLz2d2uUjck/9n
 BqrI+5qGpwZXw4W7YJA4HbQ+WDqmKohuOO4QiFWJx9EN4QQIycwjv0rRi18C6wDgj4Ib
 xEuCt89tF5vTUN/PoPJNuM3EgHKcF8My/9baw8f6s8W2xemghFCUFfQpoFgBibY8E6bp
 Cibj3sQnDTGr/aziNj9oXWGikkvKGWl+vV7P+9KHB+MILNdqoxo23YW1N+9Uu03OrzcM
 0Fe4jiLpH/6LDdwdRGG/2YVTLOsGC8f5Gknj1f5CSK0aS5aShswWeqRy3rYaC5cQEUn9
 LKdg==
X-Gm-Message-State: APjAAAV0Rp2ubBm9ap5LM4j0adpfycTmW7UEb4d7CLnw781sEB2t+6Z+
 9a+AJVgQKmFPtWdoZd3/cec=
X-Google-Smtp-Source: APXvYqzvVkIDHOF9Yw52KIee27ayrvwR/SoHofhN/T9/LVtP7i2DCkkwvkpYy39Yp0g2ee8MuwIUZQ==
X-Received: by 2002:a17:902:be12:: with SMTP id
 r18mr14697890pls.341.1567875103917; 
 Sat, 07 Sep 2019 09:51:43 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id v27sm20028215pgn.76.2019.09.07.09.51.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Sep 2019 09:51:43 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [RFCv1 0/1] Odroid C2: Enable DVFS for cpu
Date: Sat,  7 Sep 2019 16:51:31 +0000
Message-Id: <20190907165132.464-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_095145_354494_408516E3 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enable DVFS on GXBB Odroid C2.

DVFS has been tested by running the arm64 cpuburn
[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
PM-QA testing
[2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]

Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM

Patch based on my linu-next-20190904 on top of my previous patch's.

Best Regards
-Anand

Anand Moon (1):
  arm64: dts: meson: odroid-c2: Enable SCPI DVFS for cpu

 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
