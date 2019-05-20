Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DE2241C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HATr68bjGswkr2iUjjQl6kPDWlASpWgUBoI4MDAANXw=; b=RuEESxwDUDxLYZ
	yKHFXGa7mUG3FEU2qdLnih+vr6BAZ93C23yITB7bRYESZpKoyX1NCpL8j+bD1VT8PS1tB/Uhlas4q
	cxx3wnWLAXd7GiAwiN6oV4eOEgqQXO9ZYEbC8awD0ePd2qy8cHVt29wzyZt5kdlV6rOievdOKlKf3
	SgvbY+j83YI1vb9r3ZBF+nJM/uSVB/uM2mBWulmkpq0RSl6ndybOUDkaaIiTItqs/sTKeMzB6uQti
	4kwr4u6lgYip0eUdSmR5JZdNrNtCn/5Ujntycj4kdsoufUqOtiSipmcVW7/2h4AOs9b/RvbcIjbMc
	IvRY7uh45WTYRk3h52IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoag-0004Z5-Ab; Mon, 20 May 2019 20:08:58 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoaW-0004XS-OX; Mon, 20 May 2019 20:08:50 +0000
Received: by mail-wm1-x333.google.com with SMTP id f204so623150wme.0;
 Mon, 20 May 2019 13:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gE13JPen70lcMMYSkQ0HyqWDIMF6fiHhH8f8FN2aii4=;
 b=fOG5Im971iCuPbnYpmVYbVF3G+VRwOao6B3Fo3ILm3lnQamKYXq7wZxB9dakHZdkMZ
 87SqakQueLuzs6r6+yu4F6K6LxRn8UpWMUKAIDS89GJbTpRi8L/uO1tkm4d0nE/PrpFc
 qwcKRtU8el51LdFqKBP2TGNE2/RJx4WRTYYZJOYeAfr3NFj41wcYxbhPbRCUEFlZna5k
 qSIZ+hTIp1xe1Jo5rySeQyDdnKsSidXhC6cgEeF2nVSqPh5HLH035uxYNnnXWkrYbKyI
 YrxMR8/7wQdh9119FeCOGgVsXnrJNWcBu+XvQvTnigGkZk4KH1WHtKVyR0Ynfl8CTNGU
 BGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gE13JPen70lcMMYSkQ0HyqWDIMF6fiHhH8f8FN2aii4=;
 b=qY5t8rN2r6K5eDVEo7UboHCQJSEvNARRydBfO+DURSJD1BpWq0ULFBwV309pPV3zMh
 aJKmET/1d9hi5dekBk6GaXlCAAuXtGgC9IDI0D0Bl+X2VsvRnoEsB4ElTHT9O3jFlX7X
 WtuVINyaKZeJPGOkO5jDsSAUjbtaytMQ6NK79vqLMnQsROm4tiZOS7Fb6F+G2ZnIDP8V
 JhAdeOb/sTOuGUK7AP/FL0GpC2KWHpbg4tZhdfFi/LU6L4GlQajkogQwjv5iDqsLytRQ
 f82OhAAa5ClXTvJWwVGJS7pYdJ5PNYqbzAmdjMvSQlbRWJ5XVXRt7IFN1YkH+wMN4tpb
 fH3Q==
X-Gm-Message-State: APjAAAWldSscdnZMhrkRfClelbKlQT74c8uPVfaaTYf2gY8p7c6Pkrcj
 xLURSNUloKWniQfV72v6vfs=
X-Google-Smtp-Source: APXvYqytU8M2tjA/trPL2Vcu2FJ/xCYKepRIwq6re0I7MsPFKJSM8JsrESii0HlWggbEz5V9+fZ76w==
X-Received: by 2002:a1c:2889:: with SMTP id o131mr588924wmo.101.1558382926819; 
 Mon, 20 May 2019 13:08:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id i185sm918627wmg.32.2019.05.20.13.08.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:08:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: balbes-150@yandex.ru, linux-amlogic@lists.infradead.org,
 khilman@baylibre.com
Subject: [PATCH 0/2] ARM: dts: add the GPU voltage supply on MXIII-Plus
Date: Mon, 20 May 2019 22:08:37 +0200
Message-Id: <20190520200839.22715-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_130848_819865_1558DB8C 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The mainline lima driver doesn't support DVFS yet. However, once it does
we want to be sure that the voltage supply is hooked up.
The goal of this series is to do just that.


Martin Blumenstingl (2):
  ARM: dts: meson8m2: mxiii-plus: rename the DCDC2 regulator
  ARM: dts: meson8m2: mxiii-plus: add the supply for the Mali GPU

 arch/arm/boot/dts/meson8m2-mxiii-plus.dts | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
